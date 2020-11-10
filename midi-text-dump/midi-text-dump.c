/**
 * midi-text-dump.c
 * Convert a standard MIDI file to a text representation (string of bytes in hex)
 * Acronyms: VLV = "Variable Length Value"
 * MSB = "Most Significant Byte", SMSB = "2nd Most Significant Byte"
 * LSB = "Least Significant Byte", SLSB = "2nd Least Significant Byte"
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct MIDIEvent
{
    unsigned int deltatime;
    unsigned int datalength;
    unsigned char *data;
};

struct MIDITrack
{
    int length;
    unsigned char *unparsed_data;
    int numEvents;
    struct MIDIEvent *events;
};

struct MIDIFile
{
    char *name;
    int numtracks;
    int format;
    int timevalue;
    int timescheme;
    struct MIDITrack *tracks;
};

/*prints binary MIDI file in a clear, aligned way*/
void printHexAsText(unsigned char *bytelist, int size)
{
    int bytesperline = 16;

    for (int h = 0; h < size; h++)
    {
        unsigned char val = *(bytelist + h);

        if (val == 0)
            printf("00"); //print 00 instead of 0
        else if ((val > 0) && (val < 16))
            printf("0%X", val); //single hex digit 1 thru F
        else
            printf("%X", val); //everything else

        --bytesperline;

        //newline every 16 bytes, easier to compare to hex editor display
        if (bytesperline == 0)
        {
            printf("\n");
            bytesperline = 16;
        }
        else
        {
            printf(" ");
        }
    }

    printf("\n"); //print a final newline
}

/***************************************************************************/
void printXML(struct MIDIFile *f)
{
    printf("<?xml version=\"1.0\"?>\n");
    printf("<midifile name=%s trackcount=%d format=%d timescheme=%d timevalue=%d>\n",
           f->name, f->numtracks, f->format, f->timescheme, f->timevalue);

    for (int i = 0; i < f->numtracks; i++)
    {
        printf("    <track number=%d eventcount=%d>\n", (i + 1), f->tracks[i].numEvents);

        for (int j = 0; j < f->tracks[i].numEvents; j++)
        {
            printf("        <event deltatime=%d datalength=%d>\n",
                   f->tracks[i].events[j].deltatime, f->tracks[i].events[j].datalength);

            printf("            ");

            for (int k = 0; k < f->tracks[i].events[j].datalength; k++)
            {
                if ((f->tracks[i].events[j].data[k] <= 0xF) && (f->tracks[i].events[j].data[k] >= 0x0))
                {
                    printf("0%X ", f->tracks[i].events[j].data[k]);
                }
                else
                {
                    printf("%X ", f->tracks[i].events[j].data[k]);
                }
            }
            printf("\n        </event>\n");
        }
        printf("    </track>\n");
    }

    printf("</midifile>");
}

/***************************************************************************/
int getNumTracks(unsigned char *bytelist, int size)
{
    int numtracks;

    if (size >= 14)
    {
        numtracks = (bytelist[10] + bytelist[11]);
    }
    else
    {
        numtracks = -1;
    }

    return numtracks;
}

/***************************************************************************/
int getFormat(unsigned char *bytelist, int size)
{
    int format;

    if (size >= 14)
    {
        format = (bytelist[8] + bytelist[9]);
    }
    else
    {
        format = -1;
    }

    return format;
}

/***************************************************************************/
int getTimeScheme(unsigned char *bytelist, int size)
{
    int timescheme;

    if (bytelist[12] <= 127)
    {
        timescheme = 0;
    }
    else
    {
        timescheme = bytelist[12];
    }

    return timescheme;
}

/***************************************************************************/
int getTimeValue(unsigned char *bytelist, int size, int timescheme)
{
    int timevalue;

    if (timescheme == 0)
    {
        timevalue = bytelist[12];
        timevalue = timevalue << 8;
        timevalue += bytelist[13];
    }
    else
    {
        timevalue = bytelist[13];
    }

    return timevalue;
}

/***************************************************************************/
// VLV = "Variable Length Value"
// MSB = "Most Significant Byte", SMSB = "2nd Most Significant Byte"
// LSB = "Least Significant Byte", SLSB = "2nd Least Significant Byte"
int processVLV(char MSB, char SMSB, char SLSB, char LSB)
{
    unsigned int result = 0;

    result += (MSB & 0b01111111);
    result <<= 7;

    result += (SMSB & 0b01111111);
    result <<= 7;

    result += (SLSB & 0b01111111);
    result <<= 7;

    result += LSB;

    return result;
}

int getMIDIEventLength(unsigned char *data, int size, int i, unsigned char *runningstatus)
{
    int result = 0;

    /*deltatime length*/
    if (data[i] <= 0x7F)
    {
        result++;
    }
    else if ((data[i] > 0x7F) && (data[i + 1] <= 0x7F))
    {
        result += 2;
    }
    else if ((data[i] > 0x7F) && (data[i + 1] > 0x7F) && (data[i + 2] <= 0x7F))
    {
        result += 3;
    }
    else
    {
        result += 4;
    }

    /*event length*/
    if ((data[i] >= 0x80 && data[i] <= 0xBF) || (data[i] >= 0xE0 && data[i] <= 0xEF))
    {
        *runningstatus = data[i];
        result += 3;
    }
    else if (data[i] >= 0xC0 && data[i] <= 0xDF)
    {
        *runningstatus = data[i];
        result += 2;
    }
    else if (data[i] == 0xFF)
    {
        *runningstatus = 0;

        if ((data[i + 1] == 0x2F) && (data[i + 2] == 0x00))
        {
            /*end of track*/
            result += 3;
        }
        else if ((data[i + 1] == 0x20 && data[i + 2] == 0x01) || (data[i + 1] == 0x21 && data[i + 2] == 0x01))
        {
            /*MIDI Channel prefix  -or-  MIDI port*/
            result += 4;
        }
        else if ((data[i + 1] == 0x59 && data[i + 2] == 0x02) || ((data[i + 1] == 0x00) && (data[i + 2] == 02)))
        {
            /*key signature  -or-  sequence number*/
            result += 5;
        }
        else if (data[i + 1] == 0x51 && data[i + 2] == 0x03)
        {
            /*set tempo*/
            result += 6;
        }
        else if (data[i + 1] == 0x58 && data[i + 2] == 0x04)
        {
            /*time signature*/
            result += 7;
        }
        else if (data[i + 1] == 0x54 && data[i + 2] == 0x05)
        {
            /*SMTPE Offset*/
            result += 8;
        }
        else if ((data[i + 1] >= 0x01 && data[i + 1] <= 0x09) || (data[i + 1] == 0x7F))
        {
            result += 2;

            if ((data[i] > 127) && (data[i + 1] <= 127))
            {
                result += processVLV(0, 0, data[i], data[i + 1]); //two byte length
                result += 2;
            }
            else if ((data[i] > 127) && (data[i + 1] > 127) && (data[i + 2] <= 127))
            {
                result += (processVLV(0, data[i], data[i + 1], data[i + 2])); //three byte length
                result += 3;
            }
            else if ((data[i] > 127) && (data[i + 1] > 127) && (data[i + 2] > 127) && (data[i + 3] <= 127))
            {
                result += (processVLV(data[i], data[i + 1], data[i + 2], data[i + 3])); //four byte length
                result += 4;
            }
            else
            {
                result += (data[i]); //just a one byte value
                result++;
            }
        }
    }
    else if (data[i] == 0xF0 || data[i] == 0xF7)
    {
        *runningstatus = 0;

        if ((data[i + 1] > 127) && (data[i + 2] <= 127))
        {
            result += processVLV(0, 0, data[i + 1], data[i + 2]); //two byte length
            result += 3;
        }
        else if ((data[i + 1] > 127) && (data[i + 2] > 127) && (data[i + 3] <= 127))
        {
            result += processVLV(0, data[i + 1], data[i + 2], data[i + 3]); //three byte length
            result += 4;
        }
        else if ((data[i + 1] > 127) && (data[i + 2] > 127) && (data[i + 3] > 127) && (data[i + 4] <= 127))
        {
            result += processVLV(data[i + 1], data[i + 2], data[i + 3], data[i + 4]); //four byte length
            result += 5;
        }
        else
        {
            result += (data[i + 1]); //just a one byte value
            result += 2;
        }
    }
    else if (*runningstatus)
    {
        if ((*runningstatus >= 0x80 && *runningstatus <= 0xBF) || (*runningstatus >= 0xE0 && *runningstatus <= 0xEF))
        {
            result += 2;
        }
        else if (*runningstatus >= 0xC0 && *runningstatus <= 0xDF)
        {
            result += 1;
        }
    }

    return result;
}

int getVLVLength(unsigned char *data, int size, int startIndex)
{
    int i = startIndex;
    int result = 0;

    if (data[i] <= 0x7F)
    {
        result++;
    }
    else if ((data[i] > 0x7F) && (data[i + 1] <= 0x7F))
    {
        result += 2;
    }
    else if ((data[i] > 0x7F) && (data[i + 1] > 0x7F) && (data[i + 2] <= 0x7F))
    {
        result += 3;
    }
    else
    {
        result += 4;
    }

    return result;
}

int countMIDIEvents(unsigned char *data, int size)
{
    unsigned int i = 0;
    unsigned int numEvents = 0;
    unsigned char runningstatus = 0;

    while (i < size)
    {
        /*deltatime length*/
        i += getVLVLength(data, size, i);

        /*event length*/
        if ((data[i] >= 0x80 && data[i] <= 0xBF) || (data[i] >= 0xE0 && data[i] <= 0xEF))
        {
            runningstatus = data[i];
            i += 3;
        }
        else if (data[i] >= 0xC0 && data[i] <= 0xDF)
        {
            runningstatus = data[i];
            i += 2;
        }
        else if ((data[i] == 0xFF) || (data[i] == 0xF0) || (data[i] == 0xF7))
        {
            runningstatus = 0;

            if (data[i] == 0xFF)
                i += 2;
            else
                i++;

            if ((data[i] > 127) && (data[i + 1] <= 127))
            {
                i += processVLV(0, 0, data[i], data[i + 1]); //two byte length
                i += 2;
            }
            else if ((data[i] > 127) && (data[i + 1] > 127) && (data[i + 2] <= 127))
            {
                i += (processVLV(0, data[i], data[i + 1], data[i + 2])); //three byte length
                i += 3;
            }
            else if ((data[i] > 127) && (data[i + 1] > 127) && (data[i + 2] > 127) && (data[i + 3] <= 127))
            {
                i += (processVLV(data[i], data[i + 1], data[i + 2], data[i + 3])); //four byte length
                i += 4;
            }
            else
            {
                i += (data[i]); //just a one byte value
                i++;
            }
        }
        else if (runningstatus)
        {
            if ((runningstatus >= 0x80 && runningstatus <= 0xBF) || (runningstatus >= 0xE0 && runningstatus <= 0xEF))
            {
                i += 2;
            }
            else if (runningstatus >= 0xC0 && runningstatus <= 0xDF)
            {
                i += 1;
            }
        }

        numEvents++;
    }

    return numEvents;
}

void allocateAndCopyBytes(unsigned char *data, struct MIDIEvent *events,
                          unsigned int eventsProcessed, unsigned int size, unsigned int start)
{
    events[eventsProcessed].data = malloc(size);

    for (int i = 0; i < size; i++)
    {
        events[eventsProcessed].data[i] = data[start + i];
    }
}

void parseMIDIEvents(unsigned char *data, int size, struct MIDIEvent *events)
{
    unsigned int deltatime = 0;
    unsigned int eventsProcessed = 0;
    unsigned int i = 0;
    unsigned char runningstatus = 0;

    while (i < size)
    {
        /*read deltatime*/
        if (data[i] <= 0x7F)
        {
            deltatime = data[i];
            i++;
        }
        else if ((data[i] > 0x7F) && (data[i + 1] <= 0x7F))
        {
            deltatime = processVLV(0, 0, data[i], data[i + 1]);
            i += 2;
        }
        else if ((data[i] > 0x7F) && (data[i + 1] > 0x7F) && (data[i + 2] <= 0x7F))
        {
            deltatime = processVLV(0, data[i], data[i + 1], data[i + 2]);
            i += 3;
        }
        else
        {
            deltatime = processVLV(data[i], data[i + 1], data[i + 2], data[i + 3]);
            i += 4;
        }

        /*read event data*/
        if ((data[i] >= 0x80 && data[i] <= 0xBF) || (data[i] >= 0xE0 && data[i] <= 0xEF))
        {
            runningstatus = data[i];
            events[eventsProcessed].deltatime = deltatime;
            events[eventsProcessed].datalength = 3;
            allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
            i += events[eventsProcessed].datalength;
        }
        else if (data[i] >= 0xC0 && data[i] <= 0xDF)
        {
            runningstatus = data[i];
            events[eventsProcessed].deltatime = deltatime;
            events[eventsProcessed].datalength = 2;
            allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
            i += events[eventsProcessed].datalength;
        }
        else if (data[i] == 0xFF)
        {
            runningstatus = 0;

            if ((data[i + 1] == 0x59 && data[i + 2] == 0x02) || ((data[i + 1] == 0x00) && (data[i + 2] == 02)))
            {
                /*key signature  -or-  sequence number*/
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 5;
                allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
                i += events[eventsProcessed].datalength;
            }
            else if (data[i + 1] == 0x58 && data[i + 2] == 0x04)
            {
                /*time signature*/
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 7;
                allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
                i += events[eventsProcessed].datalength;
            }
            else if (data[i + 1] == 0x54 && data[i + 2] == 0x05)
            {
                /*SMTPE Offset*/
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 8;
                allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
                i += events[eventsProcessed].datalength;
            }
            else if (data[i + 1] == 0x51 && data[i + 2] == 0x03)
            {
                /*set tempo*/
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 6;
                allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
                i += events[eventsProcessed].datalength;
            }
            else if ((data[i + 1] == 0x20 && data[i + 2] == 0x01) || (data[i + 1] == 0x21 && data[i + 2] == 0x01))
            {
                /*set MIDI Channel prefix   -or-   MIDI Port*/
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 4;
                allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
                i += events[eventsProcessed].datalength;
            }
            else if ((data[i + 1] == 0x2F) && (data[i + 2] == 0x00))
            {
                /*end of track*/
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 3;
                allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
                i += events[eventsProcessed].datalength;
            }
            else if ((data[i + 1] >= 0x01 && data[i + 1] <= 0x09) || data[i + 1] == 0x7F)
            {
                events[eventsProcessed].deltatime = deltatime;

                if ((data[i + 2] > 127) && (data[i + 3] <= 127))
                {
                    events[eventsProcessed].datalength = processVLV(0, 0, data[i + 2], data[i + 3]); //two byte length
                    events[eventsProcessed].datalength += 2;
                }
                else if ((data[i + 2] > 127) && (data[i + 3] > 127) && (data[i + 4] <= 127))
                {
                    events[eventsProcessed].datalength = processVLV(0, data[i + 2], data[i + 3], data[i + 4]); //three byte length
                    events[eventsProcessed].datalength += 3;
                }
                else if ((data[i + 2] > 127) && (data[i + 3] > 127) && (data[i + 4] > 127) && (data[i + 5] <= 127))
                {
                    events[eventsProcessed].datalength = processVLV(data[i + 2], data[i + 3], data[i + 4], data[i + 5]); //four byte length
                    events[eventsProcessed].datalength += 4;
                }
                else
                {
                    events[eventsProcessed].datalength = (data[i + 2]); //just a one byte value
                    events[eventsProcessed].datalength += 1;
                }

                events[eventsProcessed].datalength += 2;
                allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
                i += events[eventsProcessed].datalength;
            }
        }
        else if (data[i] == 0xF0 || data[i] == 0xF7)
        {
            runningstatus = 0;

            if ((data[i + 1] > 127) && (data[i + 2] <= 127))
            {
                events[eventsProcessed].datalength = processVLV(0, 0, data[i + 1], data[i + 2]); //two byte length
                events[eventsProcessed].datalength += 3;
            }
            else if ((data[i + 1] > 127) && (data[i + 2] > 127) && (data[i + 3] <= 127))
            {
                events[eventsProcessed].datalength = processVLV(0, data[i + 1], data[i + 2], data[i + 3]); //three byte length
                events[eventsProcessed].datalength += 4;
            }
            else if ((data[i + 1] > 127) && (data[i + 2] > 127) && (data[i + 3] > 127) && (data[i + 4] <= 127))
            {
                events[eventsProcessed].datalength = processVLV(data[i + 1], data[i + 2], data[i + 3], data[i + 4]); //four byte length
                events[eventsProcessed].datalength += 5;
            }
            else
            {
                events[eventsProcessed].datalength = (data[i + 1]); //just a one byte value
                events[eventsProcessed].datalength += 2;
            }

            events[eventsProcessed].deltatime = deltatime;
            allocateAndCopyBytes(data, events, eventsProcessed, events[eventsProcessed].datalength, i);
            i += events[eventsProcessed].datalength;
        }
        else
        { /*running status*/
            if ((runningstatus >= 0x80 && runningstatus <= 0xBF) || (runningstatus >= 0xE0 && runningstatus <= 0xEF))
            {
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 3;
                events[eventsProcessed].data = malloc(3);

                events[eventsProcessed].data[0] = runningstatus;

                events[eventsProcessed].data[1] = data[i];
                i++;

                events[eventsProcessed].data[2] = data[i];
                i++;
            }
            else if (runningstatus >= 0xC0 && runningstatus <= 0xDF)
            {
                events[eventsProcessed].deltatime = deltatime;
                events[eventsProcessed].datalength = 2;
                events[eventsProcessed].data = malloc(2);

                events[eventsProcessed].data[0] = runningstatus;

                events[eventsProcessed].data[1] = data[i];
                i++;
            }
        }

        eventsProcessed++;
    }
}

int main(int argc, char *argv[])
{
    FILE *in_file;

    if (argc != 2)
    {
        printf("Usage: midi-text-dump <midi_file>\n");
        return -1;
    }
    else
    {
        if ((in_file = fopen(*++argv, "rb")) == NULL)
        {
            printf("Can't open file %s\n", *argv);
            return -1;
        }
        else
        {
            int numBytes = 0;

            fseek(in_file, 0L, SEEK_END);
            numBytes = ftell(in_file);

            if (numBytes <= 0)
            {
                printf("File is empty.");
                return -1;
            }

            rewind(in_file);

            /*read the MIDI file and put each byte in an array, in order*/
            unsigned char *raw_data_array = malloc(numBytes);
            for (int i = 0; i < numBytes; i++)
            {
                raw_data_array[i] = getc(in_file);
            }

            fclose(in_file);

            /*done reading file data, now start building the MIDIFile data structure*/
            struct MIDIFile *f = malloc(sizeof(struct MIDIFile));

            /*get header chunk data*/
            f->name = *argv;
            f->numtracks = getNumTracks(raw_data_array, numBytes);
            f->format = getFormat(raw_data_array, numBytes);
            f->timescheme = getTimeScheme(raw_data_array, numBytes);
            f->timevalue = getTimeValue(raw_data_array, numBytes, f->timescheme);

            /*build the basic MIDITrack structures*/
            f->tracks = malloc(f->numtracks * sizeof(struct MIDITrack));

            /*track 1 will always being at this index in a valid file*/
            int tcurrentindex = 14;
            int tsize = 0;

            /*this next section reads the array of file data (raw_data_array),
             computes the size (in bytes) of each track,
             and loads the track's data into each MIDITrack struct*/
            for (int i = 0; i < (f->numtracks); i++)
            {
                tcurrentindex += 4;
                tsize = raw_data_array[tcurrentindex];
                tsize = (tsize << 8);

                tcurrentindex++;
                tsize += raw_data_array[tcurrentindex];
                tsize = (tsize << 8);

                tcurrentindex++;
                tsize += raw_data_array[tcurrentindex];
                tsize = (tsize << 8);

                tcurrentindex++;
                tsize += raw_data_array[tcurrentindex];

                /*store track size (in bytes)*/
                f->tracks[i].length = tsize;

                /*copy track data from the array of file data (raw_data_array)
                and store it in the MIDITrack struct*/

                f->tracks[i].unparsed_data = malloc(tsize);
                tcurrentindex++;

                for (int j = 0; j < tsize; j++)
                {
                    f->tracks[i].unparsed_data[j] = raw_data_array[tcurrentindex];
                    tcurrentindex++;
                }
            }

            printf("\n");
            printHexAsText(raw_data_array, numBytes);
            printf("\n");

            /*raw track data has been loaded into appropriate structs, 
            so we don't need raw_data_array anymore*/
            free(raw_data_array);

            /*now build a MIDIEvent list for each track, finishing each MIDITrack structure*/
            for (int i = 0; i < f->numtracks; i++)
            {
                f->tracks[i].numEvents = countMIDIEvents(f->tracks[i].unparsed_data, f->tracks[i].length);
                f->tracks[i].events = malloc(f->tracks[i].numEvents * sizeof(struct MIDIEvent));
                parseMIDIEvents(f->tracks[i].unparsed_data, f->tracks[i].length, f->tracks[i].events);
            }

            /*MIDIFile is completely parsed, now print*/
            printXML(f);
            printf("\n");

            /*from here on out, we're done, so free everything*/
            for (int i = 0; i < f->numtracks; i++)
            {
                for (int j = 0; j < f->tracks[i].numEvents; j++)
                {
                    free(f->tracks[i].events[j].data);
                }

                free(f->tracks[i].events);
                free(f->tracks[i].unparsed_data);
            }

            free(f->tracks);
            free(f);
        }
    }
}
