	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.intel_syntax noprefix
	.globl	_printHexAsText         ## -- Begin function printHexAsText
	.p2align	4, 0x90
_printHexAsText:                        ## @printHexAsText
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 20]
	mov	r8b, byte ptr [rcx + rdx]
	mov	byte ptr [rbp - 21], r8b
	movzx	esi, byte ptr [rbp - 21]
	cmp	esi, 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	jmp	LBB0_9
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 0
	jle	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 16
	jge	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	movzx	esi, byte ptr [rbp - 21]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movzx	esi, byte ptr [rbp - 21]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 16], 0
	jne	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], 0
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_13:
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_getNumTracks           ## -- Begin function getNumTracks
	.p2align	4, 0x90
_getNumTracks:                          ## @getNumTracks
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	cmp	dword ptr [rbp - 12], 14
	jl	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 10]
	mov	rax, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rax + 11]
	add	ecx, edx
	mov	dword ptr [rbp - 16], ecx
	jmp	LBB1_3
LBB1_2:
	mov	dword ptr [rbp - 16], -1
LBB1_3:
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_getFormat              ## -- Begin function getFormat
	.p2align	4, 0x90
_getFormat:                             ## @getFormat
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	cmp	dword ptr [rbp - 12], 14
	jl	LBB2_2
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 8]
	mov	rax, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rax + 9]
	add	ecx, edx
	mov	dword ptr [rbp - 16], ecx
	jmp	LBB2_3
LBB2_2:
	mov	dword ptr [rbp - 16], -1
LBB2_3:
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_getTimeScheme          ## -- Begin function getTimeScheme
	.p2align	4, 0x90
_getTimeScheme:                         ## @getTimeScheme
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 12]
	cmp	ecx, 127
	jg	LBB3_2
## %bb.1:
	mov	dword ptr [rbp - 16], 0
	jmp	LBB3_3
LBB3_2:
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 12]
	mov	dword ptr [rbp - 16], ecx
LBB3_3:
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_getTimeValue           ## -- Begin function getTimeValue
	.p2align	4, 0x90
_getTimeValue:                          ## @getTimeValue
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	cmp	dword ptr [rbp - 16], 0
	jne	LBB4_2
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 12]
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rbp - 20]
	shl	ecx, 8
	mov	dword ptr [rbp - 20], ecx
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 13]
	add	ecx, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], ecx
	jmp	LBB4_3
LBB4_2:
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 13]
	mov	dword ptr [rbp - 20], ecx
LBB4_3:
	mov	eax, dword ptr [rbp - 20]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_processVLV             ## -- Begin function processVLV
	.p2align	4, 0x90
_processVLV:                            ## @processVLV
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
                                        ## kill: def $cl killed $cl killed $ecx
                                        ## kill: def $dl killed $dl killed $edx
                                        ## kill: def $sil killed $sil killed $esi
                                        ## kill: def $dil killed $dil killed $edi
	mov	byte ptr [rbp - 1], dil
	mov	byte ptr [rbp - 2], sil
	mov	byte ptr [rbp - 3], dl
	mov	byte ptr [rbp - 4], cl
	mov	dword ptr [rbp - 8], 0
	movsx	eax, byte ptr [rbp - 1]
	and	eax, 127
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	shl	eax, 8
	mov	dword ptr [rbp - 8], eax
	movsx	eax, byte ptr [rbp - 2]
	and	eax, 127
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	shl	eax, 8
	mov	dword ptr [rbp - 8], eax
	movsx	eax, byte ptr [rbp - 3]
	and	eax, 127
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	shl	eax, 8
	mov	dword ptr [rbp - 8], eax
	movsx	eax, byte ptr [rbp - 4]
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_getMIDIEventLength     ## -- Begin function getMIDIEventLength
	.p2align	4, 0x90
_getMIDIEventLength:                    ## @getMIDIEventLength
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], 0
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 127
	jg	LBB6_2
## %bb.1:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_12
LBB6_2:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 127
	jle	LBB6_5
## %bb.3:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_5
## %bb.4:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 2
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_11
LBB6_5:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 127
	jle	LBB6_9
## %bb.6:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_9
## %bb.7:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_9
## %bb.8:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 3
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_10
LBB6_9:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 4
	mov	dword ptr [rbp - 28], eax
LBB6_10:
	jmp	LBB6_11
LBB6_11:
	jmp	LBB6_12
LBB6_12:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 128
	jl	LBB6_14
## %bb.13:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 191
	jle	LBB6_16
LBB6_14:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 224
	jl	LBB6_17
## %bb.15:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 239
	jg	LBB6_17
LBB6_16:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 24]
	mov	byte ptr [rax], dl
	mov	esi, dword ptr [rbp - 28]
	add	esi, 3
	mov	dword ptr [rbp - 28], esi
	jmp	LBB6_102
LBB6_17:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 192
	jl	LBB6_20
## %bb.18:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 223
	jg	LBB6_20
## %bb.19:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 24]
	mov	byte ptr [rax], dl
	mov	esi, dword ptr [rbp - 28]
	add	esi, 2
	mov	dword ptr [rbp - 28], esi
	jmp	LBB6_101
LBB6_20:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 255
	jne	LBB6_69
## %bb.21:
	mov	rax, qword ptr [rbp - 24]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 47
	jne	LBB6_24
## %bb.22:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 0
	jne	LBB6_24
## %bb.23:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 3
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_68
LBB6_24:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 32
	jne	LBB6_26
## %bb.25:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 1
	je	LBB6_28
LBB6_26:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 33
	jne	LBB6_29
## %bb.27:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 1
	jne	LBB6_29
LBB6_28:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 4
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_67
LBB6_29:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 89
	jne	LBB6_31
## %bb.30:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 2
	je	LBB6_33
LBB6_31:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 0
	jne	LBB6_34
## %bb.32:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 2
	jne	LBB6_34
LBB6_33:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 5
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_66
LBB6_34:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 81
	jne	LBB6_37
## %bb.35:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 3
	jne	LBB6_37
## %bb.36:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 6
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_65
LBB6_37:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 88
	jne	LBB6_40
## %bb.38:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 4
	jne	LBB6_40
## %bb.39:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 7
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_64
LBB6_40:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 84
	jne	LBB6_43
## %bb.41:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 5
	jne	LBB6_43
## %bb.42:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 8
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_63
LBB6_43:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 1
	jl	LBB6_45
## %bb.44:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 9
	jle	LBB6_46
LBB6_45:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jne	LBB6_62
LBB6_46:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 2
	mov	dword ptr [rbp - 28], eax
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 16]
	movzx	eax, byte ptr [rcx + rdx]
	cmp	eax, 127
	jle	LBB6_49
## %bb.47:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_49
## %bb.48:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 16]
	mov	sil, byte ptr [rcx + rdx]
	mov	rcx, qword ptr [rbp - 8]
	mov	edi, dword ptr [rbp - 16]
	add	edi, 1
	movsxd	rdx, edi
	mov	edi, eax
	mov	byte ptr [rbp - 29], sil ## 1-byte Spill
	mov	esi, eax
	mov	r8b, byte ptr [rbp - 29] ## 1-byte Reload
	movsx	eax, r8b
	mov	qword ptr [rbp - 40], rdx ## 8-byte Spill
	mov	edx, eax
	mov	r9, qword ptr [rbp - 40] ## 8-byte Reload
	movsx	ecx, byte ptr [rcx + r9]
	call	_processVLV
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, 2
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_61
LBB6_49:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 127
	jle	LBB6_53
## %bb.50:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_53
## %bb.51:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_53
## %bb.52:
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	movsxd	rcx, esi
	mov	r8b, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 2
	movsxd	rcx, esi
	movsx	esi, dl
	movsx	edx, r8b
	movsx	ecx, byte ptr [rax + rcx]
	call	_processVLV
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, 3
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_60
LBB6_53:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 127
	jle	LBB6_58
## %bb.54:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_58
## %bb.55:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_58
## %bb.56:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_58
## %bb.57:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	movsxd	rcx, esi
	mov	dil, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 2
	movsxd	rcx, esi
	mov	r8b, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 3
	movsxd	rcx, esi
	movsx	esi, dl
	mov	byte ptr [rbp - 41], dil ## 1-byte Spill
	mov	edi, esi
	mov	dl, byte ptr [rbp - 41] ## 1-byte Reload
	movsx	esi, dl
	movsx	edx, r8b
	movsx	ecx, byte ptr [rax + rcx]
	call	_processVLV
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, 4
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_59
LBB6_58:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	add	edx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], edx
	mov	edx, dword ptr [rbp - 28]
	add	edx, 1
	mov	dword ptr [rbp - 28], edx
LBB6_59:
	jmp	LBB6_60
LBB6_60:
	jmp	LBB6_61
LBB6_61:
	jmp	LBB6_62
LBB6_62:
	jmp	LBB6_63
LBB6_63:
	jmp	LBB6_64
LBB6_64:
	jmp	LBB6_65
LBB6_65:
	jmp	LBB6_66
LBB6_66:
	jmp	LBB6_67
LBB6_67:
	jmp	LBB6_68
LBB6_68:
	jmp	LBB6_100
LBB6_69:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 240
	je	LBB6_71
## %bb.70:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 247
	jne	LBB6_87
LBB6_71:
	mov	rax, qword ptr [rbp - 24]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_74
## %bb.72:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_74
## %bb.73:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	add	edx, 1
	movsxd	rsi, edx
	mov	dil, byte ptr [rcx + rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	add	edx, 2
	movsxd	rsi, edx
	mov	byte ptr [rbp - 42], dil ## 1-byte Spill
	mov	edi, eax
	mov	qword ptr [rbp - 56], rsi ## 8-byte Spill
	mov	esi, eax
	mov	r8b, byte ptr [rbp - 42] ## 1-byte Reload
	movsx	edx, r8b
	mov	r9, qword ptr [rbp - 56] ## 8-byte Reload
	movsx	ecx, byte ptr [rcx + r9]
	call	_processVLV
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, 3
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_86
LBB6_74:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_78
## %bb.75:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_78
## %bb.76:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_78
## %bb.77:
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	movsxd	rdx, ecx
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 64], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 64] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, 4
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_85
LBB6_78:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_83
## %bb.79:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_83
## %bb.80:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB6_83
## %bb.81:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 4
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB6_83
## %bb.82:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	movsxd	rdx, ecx
	mov	dil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	movsxd	rdx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 4
	movsxd	rdx, ecx
	movsx	ecx, sil
	mov	byte ptr [rbp - 65], dil ## 1-byte Spill
	mov	edi, ecx
	mov	sil, byte ptr [rbp - 65] ## 1-byte Reload
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 80], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 80] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, 5
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_84
LBB6_83:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	add	ecx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, 2
	mov	dword ptr [rbp - 28], ecx
LBB6_84:
	jmp	LBB6_85
LBB6_85:
	jmp	LBB6_86
LBB6_86:
	jmp	LBB6_99
LBB6_87:
	mov	rax, qword ptr [rbp - 24]
	cmp	byte ptr [rax], 0
	je	LBB6_98
## %bb.88:
	mov	rax, qword ptr [rbp - 24]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 128
	jl	LBB6_90
## %bb.89:
	mov	rax, qword ptr [rbp - 24]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 191
	jle	LBB6_92
LBB6_90:
	mov	rax, qword ptr [rbp - 24]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 224
	jl	LBB6_93
## %bb.91:
	mov	rax, qword ptr [rbp - 24]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 239
	jg	LBB6_93
LBB6_92:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 2
	mov	dword ptr [rbp - 28], eax
	jmp	LBB6_97
LBB6_93:
	mov	rax, qword ptr [rbp - 24]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 192
	jl	LBB6_96
## %bb.94:
	mov	rax, qword ptr [rbp - 24]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 223
	jg	LBB6_96
## %bb.95:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
LBB6_96:
	jmp	LBB6_97
LBB6_97:
	jmp	LBB6_98
LBB6_98:
	jmp	LBB6_99
LBB6_99:
	jmp	LBB6_100
LBB6_100:
	jmp	LBB6_101
LBB6_101:
	jmp	LBB6_102
LBB6_102:
	mov	eax, dword ptr [rbp - 28]
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_getVLVLength           ## -- Begin function getVLVLength
	.p2align	4, 0x90
_getVLVLength:                          ## @getVLVLength
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], eax
	mov	dword ptr [rbp - 24], 0
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 20]
	movzx	eax, byte ptr [rcx + rdi]
	cmp	eax, 127
	jg	LBB7_2
## %bb.1:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB7_12
LBB7_2:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 127
	jle	LBB7_5
## %bb.3:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB7_5
## %bb.4:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 2
	mov	dword ptr [rbp - 24], eax
	jmp	LBB7_11
LBB7_5:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 127
	jle	LBB7_9
## %bb.6:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, 1
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB7_9
## %bb.7:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, 2
	movsxd	rdx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB7_9
## %bb.8:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 3
	mov	dword ptr [rbp - 24], eax
	jmp	LBB7_10
LBB7_9:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 4
	mov	dword ptr [rbp - 24], eax
LBB7_10:
	jmp	LBB7_11
LBB7_11:
	jmp	LBB7_12
LBB7_12:
	mov	eax, dword ptr [rbp - 24]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_countMIDIEvents        ## -- Begin function countMIDIEvents
	.p2align	4, 0x90
_countMIDIEvents:                       ## @countMIDIEvents
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
	mov	byte ptr [rbp - 21], 0
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jae	LBB8_47
## %bb.2:                               ##   in Loop: Header=BB8_1 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	call	_getVLVLength
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 16]
	mov	edi, eax
	movzx	eax, byte ptr [rcx + rdi]
	cmp	eax, 128
	jl	LBB8_4
## %bb.3:                               ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 191
	jle	LBB8_6
LBB8_4:                                 ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 224
	jl	LBB8_7
## %bb.5:                               ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 239
	jg	LBB8_7
LBB8_6:                                 ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	byte ptr [rbp - 21], sil
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	mov	dword ptr [rbp - 16], ecx
	jmp	LBB8_46
LBB8_7:                                 ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 192
	jl	LBB8_10
## %bb.8:                               ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 223
	jg	LBB8_10
## %bb.9:                               ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	byte ptr [rbp - 21], sil
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	mov	dword ptr [rbp - 16], ecx
	jmp	LBB8_45
LBB8_10:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 255
	je	LBB8_13
## %bb.11:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 240
	je	LBB8_13
## %bb.12:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 247
	jne	LBB8_32
LBB8_13:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	byte ptr [rbp - 21], 0
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 255
	jne	LBB8_15
## %bb.14:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 2
	mov	dword ptr [rbp - 16], eax
	jmp	LBB8_16
LBB8_15:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
LBB8_16:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB8_19
## %bb.17:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB8_19
## %bb.18:                              ##   in Loop: Header=BB8_1 Depth=1
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	mov	esi, edx
	mov	dil, byte ptr [rcx + rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	add	edx, 1
	mov	edx, edx
	mov	esi, edx
	mov	byte ptr [rbp - 22], dil ## 1-byte Spill
	mov	edi, eax
	mov	qword ptr [rbp - 32], rsi ## 8-byte Spill
	mov	esi, eax
	mov	r8b, byte ptr [rbp - 22] ## 1-byte Reload
	movsx	edx, r8b
	mov	r9, qword ptr [rbp - 32] ## 8-byte Reload
	movsx	ecx, byte ptr [rcx + r9]
	call	_processVLV
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	add	eax, 2
	mov	dword ptr [rbp - 16], eax
	jmp	LBB8_31
LBB8_19:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB8_23
## %bb.20:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB8_23
## %bb.21:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB8_23
## %bb.22:                              ##   in Loop: Header=BB8_1 Depth=1
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 40], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 40] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	add	eax, 3
	mov	dword ptr [rbp - 16], eax
	jmp	LBB8_30
LBB8_23:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB8_28
## %bb.24:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB8_28
## %bb.25:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB8_28
## %bb.26:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB8_28
## %bb.27:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	dil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movsx	ecx, sil
	mov	byte ptr [rbp - 41], dil ## 1-byte Spill
	mov	edi, ecx
	mov	sil, byte ptr [rbp - 41] ## 1-byte Reload
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 56], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 56] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	add	eax, 4
	mov	dword ptr [rbp - 16], eax
	jmp	LBB8_29
LBB8_28:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	add	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], ecx
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
LBB8_29:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_30
LBB8_30:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_31
LBB8_31:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_44
LBB8_32:                                ##   in Loop: Header=BB8_1 Depth=1
	cmp	byte ptr [rbp - 21], 0
	je	LBB8_43
## %bb.33:                              ##   in Loop: Header=BB8_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 128
	jl	LBB8_35
## %bb.34:                              ##   in Loop: Header=BB8_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 191
	jle	LBB8_37
LBB8_35:                                ##   in Loop: Header=BB8_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 224
	jl	LBB8_38
## %bb.36:                              ##   in Loop: Header=BB8_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 239
	jg	LBB8_38
LBB8_37:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 2
	mov	dword ptr [rbp - 16], eax
	jmp	LBB8_42
LBB8_38:                                ##   in Loop: Header=BB8_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 192
	jl	LBB8_41
## %bb.39:                              ##   in Loop: Header=BB8_1 Depth=1
	movzx	eax, byte ptr [rbp - 21]
	cmp	eax, 223
	jg	LBB8_41
## %bb.40:                              ##   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
LBB8_41:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_42
LBB8_42:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_43
LBB8_43:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_44
LBB8_44:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_45
LBB8_45:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_46
LBB8_46:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB8_1
LBB8_47:
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_allocateAndCopyBytes   ## -- Begin function allocateAndCopyBytes
	.p2align	4, 0x90
_allocateAndCopyBytes:                  ## @allocateAndCopyBytes
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 24], ecx
	mov	dword ptr [rbp - 28], r8d
	mov	eax, dword ptr [rbp - 24]
	mov	edi, eax
	call	_malloc
	mov	rsi, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	mov	edi, ecx
	shl	rdi, 4
	add	rsi, rdi
	mov	qword ptr [rsi + 8], rax
	mov	dword ptr [rbp - 32], 0
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 24]
	jae	LBB9_4
## %bb.2:                               ##   in Loop: Header=BB9_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, dword ptr [rbp - 32]
	mov	ecx, ecx
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	rax, qword ptr [rax + 8]
	movsxd	rdx, dword ptr [rbp - 32]
	mov	byte ptr [rax + rdx], sil
## %bb.3:                               ##   in Loop: Header=BB9_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB9_1
LBB9_4:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_parseMIDIEvents        ## -- Begin function parseMIDIEvents
	.p2align	4, 0x90
_parseMIDIEvents:                       ## @parseMIDIEvents
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 0
	mov	dword ptr [rbp - 36], 0
	mov	byte ptr [rbp - 37], 0
LBB10_1:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 12]
	jae	LBB10_103
## %bb.2:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_4
## %bb.3:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	dword ptr [rbp - 36], ecx
	jmp	LBB10_14
LBB10_4:                                ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_7
## %bb.5:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_7
## %bb.6:                               ##   in Loop: Header=BB10_1 Depth=1
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	mov	esi, edx
	mov	dil, byte ptr [rcx + rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	add	edx, 1
	mov	edx, edx
	mov	esi, edx
	mov	byte ptr [rbp - 38], dil ## 1-byte Spill
	mov	edi, eax
	mov	qword ptr [rbp - 48], rsi ## 8-byte Spill
	mov	esi, eax
	mov	r8b, byte ptr [rbp - 38] ## 1-byte Reload
	movsx	edx, r8b
	mov	r9, qword ptr [rbp - 48] ## 8-byte Reload
	movsx	ecx, byte ptr [rcx + r9]
	call	_processVLV
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 36]
	add	eax, 2
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_13
LBB10_7:                                ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_11
## %bb.8:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_11
## %bb.9:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_11
## %bb.10:                              ##   in Loop: Header=BB10_1 Depth=1
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 56], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 56] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 36]
	add	eax, 3
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_12
LBB10_11:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	dil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movsx	ecx, sil
	mov	byte ptr [rbp - 57], dil ## 1-byte Spill
	mov	edi, ecx
	mov	sil, byte ptr [rbp - 57] ## 1-byte Reload
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 72], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 72] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 36]
	add	eax, 4
	mov	dword ptr [rbp - 36], eax
LBB10_12:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_13
LBB10_13:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_14
LBB10_14:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 128
	jl	LBB10_16
## %bb.15:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 191
	jle	LBB10_18
LBB10_16:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 224
	jl	LBB10_19
## %bb.17:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 239
	jg	LBB10_19
LBB10_18:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	byte ptr [rbp - 37], sil
	mov	ecx, dword ptr [rbp - 28]
	mov	rax, qword ptr [rbp - 24]
	mov	edi, dword ptr [rbp - 32]
	mov	edx, edi
	shl	rdx, 4
	add	rax, rdx
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	dword ptr [rax + 4], 3
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r8d, ecx
	shl	r8, 4
	add	rax, r8
	mov	ecx, dword ptr [rax + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	esi, ecx
	shl	rsi, 4
	add	rax, rsi
	mov	ecx, dword ptr [rax + 4]
	add	ecx, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], ecx
	jmp	LBB10_102
LBB10_19:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 192
	jl	LBB10_22
## %bb.20:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 223
	jg	LBB10_22
## %bb.21:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	byte ptr [rbp - 37], sil
	mov	ecx, dword ptr [rbp - 28]
	mov	rax, qword ptr [rbp - 24]
	mov	edi, dword ptr [rbp - 32]
	mov	edx, edi
	shl	rdx, 4
	add	rax, rdx
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	dword ptr [rax + 4], 2
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r8d, ecx
	shl	r8, 4
	add	rax, r8
	mov	ecx, dword ptr [rax + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	esi, ecx
	shl	rsi, 4
	add	rax, rsi
	mov	ecx, dword ptr [rax + 4]
	add	ecx, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], ecx
	jmp	LBB10_101
LBB10_22:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 255
	jne	LBB10_71
## %bb.23:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	byte ptr [rbp - 37], 0
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 89
	jne	LBB10_25
## %bb.24:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 2
	je	LBB10_27
LBB10_25:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 0
	jne	LBB10_28
## %bb.26:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 2
	jne	LBB10_28
LBB10_27:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 5
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r8d, eax
	shl	r8, 4
	add	rcx, r8
	mov	ecx, dword ptr [rcx + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rsi, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	edi, eax
	shl	rdi, 4
	add	rsi, rdi
	mov	eax, dword ptr [rsi + 4]
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_70
LBB10_28:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 88
	jne	LBB10_31
## %bb.29:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 4
	jne	LBB10_31
## %bb.30:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 7
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r8d, eax
	shl	r8, 4
	add	rcx, r8
	mov	ecx, dword ptr [rcx + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rsi, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	edi, eax
	shl	rdi, 4
	add	rsi, rdi
	mov	eax, dword ptr [rsi + 4]
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_69
LBB10_31:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 84
	jne	LBB10_34
## %bb.32:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 5
	jne	LBB10_34
## %bb.33:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r8d, eax
	shl	r8, 4
	add	rcx, r8
	mov	ecx, dword ptr [rcx + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rsi, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	edi, eax
	shl	rdi, 4
	add	rsi, rdi
	mov	eax, dword ptr [rsi + 4]
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_68
LBB10_34:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 81
	jne	LBB10_37
## %bb.35:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 3
	jne	LBB10_37
## %bb.36:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 6
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r8d, eax
	shl	r8, 4
	add	rcx, r8
	mov	ecx, dword ptr [rcx + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rsi, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	edi, eax
	shl	rdi, 4
	add	rsi, rdi
	mov	eax, dword ptr [rsi + 4]
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_67
LBB10_37:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 32
	jne	LBB10_39
## %bb.38:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 1
	je	LBB10_41
LBB10_39:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 33
	jne	LBB10_42
## %bb.40:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 1
	jne	LBB10_42
LBB10_41:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 4
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r8d, eax
	shl	r8, 4
	add	rcx, r8
	mov	ecx, dword ptr [rcx + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rsi, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	edi, eax
	shl	rdi, 4
	add	rsi, rdi
	mov	eax, dword ptr [rsi + 4]
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_66
LBB10_42:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 47
	jne	LBB10_45
## %bb.43:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 0
	jne	LBB10_45
## %bb.44:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 3
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r8d, eax
	shl	r8, 4
	add	rcx, r8
	mov	ecx, dword ptr [rcx + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rsi, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	edi, eax
	shl	rdi, 4
	add	rsi, rdi
	mov	eax, dword ptr [rsi + 4]
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_65
LBB10_45:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 1
	jl	LBB10_47
## %bb.46:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 9
	jle	LBB10_48
LBB10_47:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jne	LBB10_64
LBB10_48:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 36]
	add	eax, 2
	mov	eax, eax
	mov	esi, eax
	movzx	eax, byte ptr [rcx + rsi]
	cmp	eax, 127
	jle	LBB10_51
## %bb.49:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_51
## %bb.50:                              ##   in Loop: Header=BB10_1 Depth=1
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	add	edx, 2
	mov	edx, edx
	mov	esi, edx
	mov	dil, byte ptr [rcx + rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	add	edx, 3
	mov	edx, edx
	mov	esi, edx
	mov	byte ptr [rbp - 73], dil ## 1-byte Spill
	mov	edi, eax
	mov	qword ptr [rbp - 88], rsi ## 8-byte Spill
	mov	esi, eax
	mov	r8b, byte ptr [rbp - 73] ## 1-byte Reload
	movsx	edx, r8b
	mov	r9, qword ptr [rbp - 88] ## 8-byte Reload
	movsx	ecx, byte ptr [rcx + r9]
	call	_processVLV
	mov	r9, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r10d, ecx
	shl	r10, 4
	add	r9, r10
	mov	dword ptr [r9 + 4], eax
	mov	r9, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r10d, eax
	shl	r10, 4
	add	r9, r10
	mov	eax, dword ptr [r9 + 4]
	add	eax, 2
	mov	dword ptr [r9 + 4], eax
	jmp	LBB10_63
LBB10_51:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_55
## %bb.52:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_55
## %bb.53:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 4
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_55
## %bb.54:                              ##   in Loop: Header=BB10_1 Depth=1
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 4
	mov	ecx, ecx
	mov	edx, ecx
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 96], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 96] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	mov	r9, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r10d, ecx
	shl	r10, 4
	add	r9, r10
	mov	dword ptr [r9 + 4], eax
	mov	r9, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r10d, eax
	shl	r10, 4
	add	r9, r10
	mov	eax, dword ptr [r9 + 4]
	add	eax, 3
	mov	dword ptr [r9 + 4], eax
	jmp	LBB10_62
LBB10_55:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_60
## %bb.56:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_60
## %bb.57:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 4
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_60
## %bb.58:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 5
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_60
## %bb.59:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	mov	dil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 4
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 5
	mov	ecx, ecx
	mov	edx, ecx
	movsx	ecx, sil
	mov	byte ptr [rbp - 97], dil ## 1-byte Spill
	mov	edi, ecx
	mov	sil, byte ptr [rbp - 97] ## 1-byte Reload
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 112], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 112] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	mov	r9, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r10d, ecx
	shl	r10, 4
	add	r9, r10
	mov	dword ptr [r9 + 4], eax
	mov	r9, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r10d, eax
	shl	r10, 4
	add	r9, r10
	mov	eax, dword ptr [r9 + 4]
	add	eax, 4
	mov	dword ptr [r9 + 4], eax
	jmp	LBB10_61
LBB10_60:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 24]
	mov	esi, dword ptr [rbp - 32]
	mov	edx, esi
	shl	rdx, 4
	add	rax, rdx
	mov	dword ptr [rax + 4], ecx
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	ecx, dword ptr [rax + 4]
	add	ecx, 1
	mov	dword ptr [rax + 4], ecx
LBB10_61:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_62
LBB10_62:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_63
LBB10_63:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	ecx, dword ptr [rax + 4]
	add	ecx, 2
	mov	dword ptr [rax + 4], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r8d, ecx
	shl	r8, 4
	add	rax, r8
	mov	ecx, dword ptr [rax + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	esi, ecx
	shl	rsi, 4
	add	rax, rsi
	mov	ecx, dword ptr [rax + 4]
	add	ecx, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], ecx
LBB10_64:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_65
LBB10_65:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_66
LBB10_66:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_67
LBB10_67:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_68
LBB10_68:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_69
LBB10_69:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_70
LBB10_70:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_100
LBB10_71:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 240
	je	LBB10_73
## %bb.72:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 247
	jne	LBB10_89
LBB10_73:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	byte ptr [rbp - 37], 0
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_76
## %bb.74:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_76
## %bb.75:                              ##   in Loop: Header=BB10_1 Depth=1
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	add	edx, 1
	mov	edx, edx
	mov	esi, edx
	mov	dil, byte ptr [rcx + rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	add	edx, 2
	mov	edx, edx
	mov	esi, edx
	mov	byte ptr [rbp - 113], dil ## 1-byte Spill
	mov	edi, eax
	mov	qword ptr [rbp - 128], rsi ## 8-byte Spill
	mov	esi, eax
	mov	r8b, byte ptr [rbp - 113] ## 1-byte Reload
	movsx	edx, r8b
	mov	r9, qword ptr [rbp - 128] ## 8-byte Reload
	movsx	ecx, byte ptr [rcx + r9]
	call	_processVLV
	mov	r9, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r10d, ecx
	shl	r10, 4
	add	r9, r10
	mov	dword ptr [r9 + 4], eax
	mov	r9, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r10d, eax
	shl	r10, 4
	add	r9, r10
	mov	eax, dword ptr [r9 + 4]
	add	eax, 3
	mov	dword ptr [r9 + 4], eax
	jmp	LBB10_88
LBB10_76:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_80
## %bb.77:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_80
## %bb.78:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_80
## %bb.79:                              ##   in Loop: Header=BB10_1 Depth=1
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 136], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 136] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	mov	r9, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r10d, ecx
	shl	r10, 4
	add	r9, r10
	mov	dword ptr [r9 + 4], eax
	mov	r9, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r10d, eax
	shl	r10, 4
	add	r9, r10
	mov	eax, dword ptr [r9 + 4]
	add	eax, 4
	mov	dword ptr [r9 + 4], eax
	jmp	LBB10_87
LBB10_80:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_85
## %bb.81:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_85
## %bb.82:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jle	LBB10_85
## %bb.83:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 4
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	cmp	ecx, 127
	jg	LBB10_85
## %bb.84:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	dil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 3
	mov	ecx, ecx
	mov	edx, ecx
	mov	r8b, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 4
	mov	ecx, ecx
	mov	edx, ecx
	movsx	ecx, sil
	mov	byte ptr [rbp - 137], dil ## 1-byte Spill
	mov	edi, ecx
	mov	sil, byte ptr [rbp - 137] ## 1-byte Reload
	movsx	esi, sil
	movsx	ecx, r8b
	mov	qword ptr [rbp - 152], rdx ## 8-byte Spill
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 152] ## 8-byte Reload
	movsx	ecx, byte ptr [rax + r9]
	call	_processVLV
	mov	r9, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	r10d, ecx
	shl	r10, 4
	add	r9, r10
	mov	dword ptr [r9 + 4], eax
	mov	r9, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r10d, eax
	shl	r10, 4
	add	r9, r10
	mov	eax, dword ptr [r9 + 4]
	add	eax, 5
	mov	dword ptr [r9 + 4], eax
	jmp	LBB10_86
LBB10_85:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	movzx	ecx, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 24]
	mov	esi, dword ptr [rbp - 32]
	mov	edx, esi
	shl	rdx, 4
	add	rax, rdx
	mov	dword ptr [rax + 4], ecx
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 32]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	ecx, dword ptr [rax + 4]
	add	ecx, 2
	mov	dword ptr [rax + 4], ecx
LBB10_86:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_87
LBB10_87:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_88
LBB10_88:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	r8d, eax
	shl	r8, 4
	add	rcx, r8
	mov	ecx, dword ptr [rcx + 4]
	mov	r8d, dword ptr [rbp - 36]
	call	_allocateAndCopyBytes
	mov	rsi, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	edi, eax
	shl	rdi, 4
	add	rsi, rdi
	mov	eax, dword ptr [rsi + 4]
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	jmp	LBB10_99
LBB10_89:                               ##   in Loop: Header=BB10_1 Depth=1
	movzx	eax, byte ptr [rbp - 37]
	cmp	eax, 128
	jl	LBB10_91
## %bb.90:                              ##   in Loop: Header=BB10_1 Depth=1
	movzx	eax, byte ptr [rbp - 37]
	cmp	eax, 191
	jle	LBB10_93
LBB10_91:                               ##   in Loop: Header=BB10_1 Depth=1
	movzx	eax, byte ptr [rbp - 37]
	cmp	eax, 224
	jl	LBB10_94
## %bb.92:                              ##   in Loop: Header=BB10_1 Depth=1
	movzx	eax, byte ptr [rbp - 37]
	cmp	eax, 239
	jg	LBB10_94
LBB10_93:                               ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 3
	mov	edi, 3
	call	_malloc
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	qword ptr [rcx + 8], rax
	mov	r8b, byte ptr [rbp - 37]
	mov	rax, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, edx
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	mov	byte ptr [rax], r8b
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	mov	ecx, edx
	mov	r8b, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, edx
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	mov	byte ptr [rax + 1], r8b
	mov	edx, dword ptr [rbp - 36]
	add	edx, 1
	mov	dword ptr [rbp - 36], edx
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	mov	ecx, edx
	mov	r8b, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, edx
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	mov	byte ptr [rax + 2], r8b
	mov	edx, dword ptr [rbp - 36]
	add	edx, 1
	mov	dword ptr [rbp - 36], edx
	jmp	LBB10_98
LBB10_94:                               ##   in Loop: Header=BB10_1 Depth=1
	movzx	eax, byte ptr [rbp - 37]
	cmp	eax, 192
	jl	LBB10_97
## %bb.95:                              ##   in Loop: Header=BB10_1 Depth=1
	movzx	eax, byte ptr [rbp - 37]
	cmp	eax, 223
	jg	LBB10_97
## %bb.96:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	mov	esi, eax
	shl	rsi, 4
	add	rcx, rsi
	mov	dword ptr [rcx + 4], 2
	mov	edi, 2
	call	_malloc
	mov	rcx, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	esi, edx
	shl	rsi, 4
	add	rcx, rsi
	mov	qword ptr [rcx + 8], rax
	mov	r8b, byte ptr [rbp - 37]
	mov	rax, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, edx
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	mov	byte ptr [rax], r8b
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	mov	ecx, edx
	mov	r8b, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, edx
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	mov	byte ptr [rax + 1], r8b
	mov	edx, dword ptr [rbp - 36]
	add	edx, 1
	mov	dword ptr [rbp - 36], edx
LBB10_97:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_98
LBB10_98:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_99
LBB10_99:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_100
LBB10_100:                              ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_101
LBB10_101:                              ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_102
LBB10_102:                              ##   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB10_1
LBB10_103:
	add	rsp, 160
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_printXML               ## -- Begin function printXML
	.p2align	4, 0x90
_printXML:                              ## @printXML
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rcx + 12]
	mov	rdi, qword ptr [rbp - 8]
	mov	r8d, dword ptr [rdi + 20]
	mov	rdi, qword ptr [rbp - 8]
	mov	r9d, dword ptr [rdi + 16]
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], 0
LBB11_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_3 Depth 2
                                        ##       Child Loop BB11_5 Depth 3
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rcx + 8]
	jge	LBB11_16
## %bb.2:                               ##   in Loop: Header=BB11_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 12]
	shl	rdx, 5
	add	rcx, rdx
	mov	edx, dword ptr [rcx + 16]
	lea	rdi, [rip + L_.str.7]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], 0
LBB11_3:                                ##   Parent Loop BB11_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB11_5 Depth 3
	mov	eax, dword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 12]
	shl	rdx, 5
	add	rcx, rdx
	cmp	eax, dword ptr [rcx + 16]
	jge	LBB11_14
## %bb.4:                               ##   in Loop: Header=BB11_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 12]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 16]
	shl	rcx, 4
	add	rax, rcx
	mov	esi, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 12]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 16]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rax + 4]
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 0
LBB11_5:                                ##   Parent Loop BB11_1 Depth=1
                                        ##     Parent Loop BB11_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 12]
	shl	rdx, 5
	add	rcx, rdx
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 16]
	shl	rdx, 4
	add	rcx, rdx
	cmp	eax, dword ptr [rcx + 4]
	jae	LBB11_12
## %bb.6:                               ##   in Loop: Header=BB11_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 12]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 16]
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 15
	jg	LBB11_9
## %bb.7:                               ##   in Loop: Header=BB11_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 12]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 16]
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movzx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	jl	LBB11_9
## %bb.8:                               ##   in Loop: Header=BB11_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 12]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 16]
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movzx	esi, byte ptr [rax + rcx]
	lea	rdi, [rip + L_.str.10]
	mov	al, 0
	call	_printf
	jmp	LBB11_10
LBB11_9:                                ##   in Loop: Header=BB11_5 Depth=3
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 12]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 16]
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movzx	esi, byte ptr [rax + rcx]
	lea	rdi, [rip + L_.str.11]
	mov	al, 0
	call	_printf
LBB11_10:                               ##   in Loop: Header=BB11_5 Depth=3
	jmp	LBB11_11
LBB11_11:                               ##   in Loop: Header=BB11_5 Depth=3
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB11_5
LBB11_12:                               ##   in Loop: Header=BB11_3 Depth=2
	lea	rdi, [rip + L_.str.12]
	mov	al, 0
	call	_printf
## %bb.13:                              ##   in Loop: Header=BB11_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB11_3
LBB11_14:                               ##   in Loop: Header=BB11_1 Depth=1
	lea	rdi, [rip + L_.str.13]
	mov	al, 0
	call	_printf
## %bb.15:                              ##   in Loop: Header=BB11_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB11_1
LBB11_16:
	lea	rdi, [rip + L_.str.14]
	mov	al, 0
	call	_printf
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 2
	je	LBB12_2
## %bb.1:
	lea	rdi, [rip + L_.str.15]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -1
	jmp	LBB12_32
LBB12_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 16], rcx
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rip + L_.str.16]
	call	_fopen
	mov	qword ptr [rbp - 24], rax
	cmp	rax, 0
	jne	LBB12_4
## %bb.3:
	mov	rax, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rip + L_.str.17]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -1
	jmp	LBB12_32
LBB12_4:
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 28], 0
	mov	rdi, qword ptr [rbp - 24]
	mov	edx, 2
	call	_fseek
	mov	rdi, qword ptr [rbp - 24]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	call	_ftell
                                        ## kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 28], eax
	cmp	dword ptr [rbp - 28], 0
	jg	LBB12_6
## %bb.5:
	lea	rdi, [rip + L_.str.18]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -1
	jmp	LBB12_32
LBB12_6:
	mov	rdi, qword ptr [rbp - 24]
	call	_rewind
	movsxd	rdi, dword ptr [rbp - 28]
	call	_malloc
	mov	qword ptr [rbp - 40], rax
	mov	dword ptr [rbp - 44], 0
LBB12_7:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 44]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB12_10
## %bb.8:                               ##   in Loop: Header=BB12_7 Depth=1
	mov	rdi, qword ptr [rbp - 24]
	call	_getc
                                        ## kill: def $al killed $al killed $eax
	mov	rcx, qword ptr [rbp - 40]
	movsxd	rdx, dword ptr [rbp - 44]
	mov	byte ptr [rcx + rdx], al
## %bb.9:                               ##   in Loop: Header=BB12_7 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB12_7
LBB12_10:
	mov	rdi, qword ptr [rbp - 24]
	call	_fclose
	mov	edi, 32
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	call	_malloc
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 56]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 40]
	mov	esi, dword ptr [rbp - 28]
	call	_getNumTracks
	mov	rcx, qword ptr [rbp - 56]
	mov	dword ptr [rcx + 8], eax
	mov	rdi, qword ptr [rbp - 40]
	mov	esi, dword ptr [rbp - 28]
	call	_getFormat
	mov	rcx, qword ptr [rbp - 56]
	mov	dword ptr [rcx + 12], eax
	mov	rdi, qword ptr [rbp - 40]
	mov	esi, dword ptr [rbp - 28]
	call	_getTimeScheme
	mov	rcx, qword ptr [rbp - 56]
	mov	dword ptr [rcx + 20], eax
	mov	rdi, qword ptr [rbp - 40]
	mov	esi, dword ptr [rbp - 28]
	mov	rcx, qword ptr [rbp - 56]
	mov	edx, dword ptr [rcx + 20]
	call	_getTimeValue
	mov	rcx, qword ptr [rbp - 56]
	mov	dword ptr [rcx + 16], eax
	mov	rcx, qword ptr [rbp - 56]
	movsxd	rcx, dword ptr [rcx + 8]
	shl	rcx, 5
	mov	rdi, rcx
	call	_malloc
	mov	rcx, qword ptr [rbp - 56]
	mov	qword ptr [rcx + 24], rax
	mov	dword ptr [rbp - 60], 14
	mov	dword ptr [rbp - 64], 0
	mov	dword ptr [rbp - 68], 0
LBB12_11:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_13 Depth 2
	mov	eax, dword ptr [rbp - 68]
	mov	rcx, qword ptr [rbp - 56]
	cmp	eax, dword ptr [rcx + 8]
	jge	LBB12_18
## %bb.12:                              ##   in Loop: Header=BB12_11 Depth=1
	mov	eax, dword ptr [rbp - 60]
	add	eax, 4
	mov	dword ptr [rbp - 60], eax
	mov	rcx, qword ptr [rbp - 40]
	movsxd	rdx, dword ptr [rbp - 60]
	movzx	eax, byte ptr [rcx + rdx]
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 64]
	shl	eax, 8
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	mov	rcx, qword ptr [rbp - 40]
	movsxd	rdx, dword ptr [rbp - 60]
	movzx	eax, byte ptr [rcx + rdx]
	add	eax, dword ptr [rbp - 64]
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 64]
	shl	eax, 8
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	mov	rcx, qword ptr [rbp - 40]
	movsxd	rdx, dword ptr [rbp - 60]
	movzx	eax, byte ptr [rcx + rdx]
	add	eax, dword ptr [rbp - 64]
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 64]
	shl	eax, 8
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	mov	rcx, qword ptr [rbp - 40]
	movsxd	rdx, dword ptr [rbp - 60]
	movzx	eax, byte ptr [rcx + rdx]
	add	eax, dword ptr [rbp - 64]
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 64]
	mov	rcx, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 68]
	shl	rdx, 5
	add	rcx, rdx
	mov	dword ptr [rcx], eax
	movsxd	rdi, dword ptr [rbp - 64]
	call	_malloc
	mov	rcx, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 68]
	shl	rdx, 5
	add	rcx, rdx
	mov	qword ptr [rcx + 8], rax
	mov	esi, dword ptr [rbp - 60]
	add	esi, 1
	mov	dword ptr [rbp - 60], esi
	mov	dword ptr [rbp - 72], 0
LBB12_13:                               ##   Parent Loop BB12_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 72]
	cmp	eax, dword ptr [rbp - 64]
	jge	LBB12_16
## %bb.14:                              ##   in Loop: Header=BB12_13 Depth=2
	mov	rax, qword ptr [rbp - 40]
	movsxd	rcx, dword ptr [rbp - 60]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 68]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 72]
	mov	byte ptr [rax + rcx], dl
	mov	esi, dword ptr [rbp - 60]
	add	esi, 1
	mov	dword ptr [rbp - 60], esi
## %bb.15:                              ##   in Loop: Header=BB12_13 Depth=2
	mov	eax, dword ptr [rbp - 72]
	add	eax, 1
	mov	dword ptr [rbp - 72], eax
	jmp	LBB12_13
LBB12_16:                               ##   in Loop: Header=BB12_11 Depth=1
	jmp	LBB12_17
LBB12_17:                               ##   in Loop: Header=BB12_11 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB12_11
LBB12_18:
	mov	rdi, qword ptr [rbp - 40]
	call	_free
	mov	dword ptr [rbp - 76], 0
LBB12_19:                               ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 76]
	mov	rcx, qword ptr [rbp - 56]
	cmp	eax, dword ptr [rcx + 8]
	jge	LBB12_22
## %bb.20:                              ##   in Loop: Header=BB12_19 Depth=1
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 76]
	shl	rcx, 5
	add	rax, rcx
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 76]
	shl	rcx, 5
	add	rax, rcx
	mov	esi, dword ptr [rax]
	call	_countMIDIEvents
	mov	rcx, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 76]
	shl	rdx, 5
	add	rcx, rdx
	mov	dword ptr [rcx + 16], eax
	mov	rcx, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 76]
	shl	rdx, 5
	add	rcx, rdx
	movsxd	rcx, dword ptr [rcx + 16]
	shl	rcx, 4
	mov	rdi, rcx
	call	_malloc
	mov	rcx, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 76]
	shl	rdx, 5
	add	rcx, rdx
	mov	qword ptr [rcx + 24], rax
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 76]
	shl	rcx, 5
	add	rax, rcx
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 76]
	shl	rcx, 5
	add	rax, rcx
	mov	esi, dword ptr [rax]
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 76]
	shl	rcx, 5
	add	rax, rcx
	mov	rdx, qword ptr [rax + 24]
	call	_parseMIDIEvents
## %bb.21:                              ##   in Loop: Header=BB12_19 Depth=1
	mov	eax, dword ptr [rbp - 76]
	add	eax, 1
	mov	dword ptr [rbp - 76], eax
	jmp	LBB12_19
LBB12_22:
	mov	rdi, qword ptr [rbp - 56]
	call	_printXML
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 80], 0
LBB12_23:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_25 Depth 2
	mov	eax, dword ptr [rbp - 80]
	mov	rcx, qword ptr [rbp - 56]
	cmp	eax, dword ptr [rcx + 8]
	jge	LBB12_30
## %bb.24:                              ##   in Loop: Header=BB12_23 Depth=1
	mov	dword ptr [rbp - 84], 0
LBB12_25:                               ##   Parent Loop BB12_23 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 84]
	mov	rcx, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rcx + 24]
	movsxd	rdx, dword ptr [rbp - 80]
	shl	rdx, 5
	add	rcx, rdx
	cmp	eax, dword ptr [rcx + 16]
	jge	LBB12_28
## %bb.26:                              ##   in Loop: Header=BB12_25 Depth=2
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 80]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 84]
	shl	rcx, 4
	add	rax, rcx
	mov	rdi, qword ptr [rax + 8]
	call	_free
## %bb.27:                              ##   in Loop: Header=BB12_25 Depth=2
	mov	eax, dword ptr [rbp - 84]
	add	eax, 1
	mov	dword ptr [rbp - 84], eax
	jmp	LBB12_25
LBB12_28:                               ##   in Loop: Header=BB12_23 Depth=1
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 80]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 24]
	mov	rdi, rax
	call	_free
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	movsxd	rcx, dword ptr [rbp - 80]
	shl	rcx, 5
	add	rax, rcx
	mov	rdi, qword ptr [rax + 8]
	call	_free
## %bb.29:                              ##   in Loop: Header=BB12_23 Depth=1
	mov	eax, dword ptr [rbp - 80]
	add	eax, 1
	mov	dword ptr [rbp - 80], eax
	jmp	LBB12_23
LBB12_30:
	mov	rax, qword ptr [rbp - 56]
	mov	rax, qword ptr [rax + 24]
	mov	rdi, rax
	call	_free
	mov	rax, qword ptr [rbp - 56]
	mov	rdi, rax
	call	_free
## %bb.31:
	jmp	LBB12_32
LBB12_32:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 96
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"[%4d]:"

L_.str.1:                               ## @.str.1
	.asciz	"[00]"

L_.str.2:                               ## @.str.2
	.asciz	"[0%X]"

L_.str.3:                               ## @.str.3
	.asciz	"[%X]"

L_.str.4:                               ## @.str.4
	.asciz	"\n"

L_.str.5:                               ## @.str.5
	.asciz	"<?xml version=\"1.0\"?>\n"

L_.str.6:                               ## @.str.6
	.asciz	"<midifile name=%s trackcount=%d format=%d timescheme=%d timevalue=%d>\n"

L_.str.7:                               ## @.str.7
	.asciz	"    <track number=%d eventcount=%d>\n"

L_.str.8:                               ## @.str.8
	.asciz	"        <event deltatime=%d datalength=%d>\n"

L_.str.9:                               ## @.str.9
	.asciz	"            "

L_.str.10:                              ## @.str.10
	.asciz	"0%X "

L_.str.11:                              ## @.str.11
	.asciz	"%X "

L_.str.12:                              ## @.str.12
	.asciz	"\n        </event>\n"

L_.str.13:                              ## @.str.13
	.asciz	"    </track>\n"

L_.str.14:                              ## @.str.14
	.asciz	"</midifile>"

L_.str.15:                              ## @.str.15
	.asciz	"Usage: midi-text-dump <midi_file>\n"

L_.str.16:                              ## @.str.16
	.asciz	"rb"

L_.str.17:                              ## @.str.17
	.asciz	"Can't open file %s\n"

L_.str.18:                              ## @.str.18
	.asciz	"File is empty."


.subsections_via_symbols
