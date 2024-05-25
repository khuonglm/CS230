
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 43 20 00 	mov    0x2043a5(%rip),%rax        # 604ff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 43 20 00    	pushq  0x2043a2(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 43 20 00    	jmpq   *0x2043a4(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 6050a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 6050a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 6050b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 6050b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050f0 <gethostname@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <exit@plt>:
  400e30:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050f8 <exit@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <connect@plt>:
  400e40:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605100 <connect@GLIBC_2.2.5>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__fprintf_chk@plt>:
  400e50:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605108 <__fprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <__sprintf_chk@plt>:
  400e60:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605110 <__sprintf_chk@GLIBC_2.3.4>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605118 <socket@GLIBC_2.2.5>
  400e76:	68 20 00 00 00       	pushq  $0x20
  400e7b:	e9 e0 fd ff ff       	jmpq   400c60 <.plt>

Disassembly of section .text:

0000000000400e80 <_start>:
  400e80:	31 ed                	xor    %ebp,%ebp
  400e82:	49 89 d1             	mov    %rdx,%r9
  400e85:	5e                   	pop    %rsi
  400e86:	48 89 e2             	mov    %rsp,%rdx
  400e89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e8d:	50                   	push   %rax
  400e8e:	54                   	push   %rsp
  400e8f:	49 c7 c0 30 31 40 00 	mov    $0x403130,%r8
  400e96:	48 c7 c1 c0 30 40 00 	mov    $0x4030c0,%rcx
  400e9d:	48 c7 c7 8e 11 40 00 	mov    $0x40118e,%rdi
  400ea4:	ff 15 46 41 20 00    	callq  *0x204146(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400eaa:	f4                   	hlt    
  400eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400eb0 <_dl_relocate_static_pie>:
  400eb0:	f3 c3                	repz retq 
  400eb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400eb9:	00 00 00 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <deregister_tm_clones>:
  400ec0:	55                   	push   %rbp
  400ec1:	b8 90 54 60 00       	mov    $0x605490,%eax
  400ec6:	48 3d 90 54 60 00    	cmp    $0x605490,%rax
  400ecc:	48 89 e5             	mov    %rsp,%rbp
  400ecf:	74 17                	je     400ee8 <deregister_tm_clones+0x28>
  400ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed6:	48 85 c0             	test   %rax,%rax
  400ed9:	74 0d                	je     400ee8 <deregister_tm_clones+0x28>
  400edb:	5d                   	pop    %rbp
  400edc:	bf 90 54 60 00       	mov    $0x605490,%edi
  400ee1:	ff e0                	jmpq   *%rax
  400ee3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ee8:	5d                   	pop    %rbp
  400ee9:	c3                   	retq   
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <register_tm_clones>:
  400ef0:	be 90 54 60 00       	mov    $0x605490,%esi
  400ef5:	55                   	push   %rbp
  400ef6:	48 81 ee 90 54 60 00 	sub    $0x605490,%rsi
  400efd:	48 89 e5             	mov    %rsp,%rbp
  400f00:	48 c1 fe 03          	sar    $0x3,%rsi
  400f04:	48 89 f0             	mov    %rsi,%rax
  400f07:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f0b:	48 01 c6             	add    %rax,%rsi
  400f0e:	48 d1 fe             	sar    %rsi
  400f11:	74 15                	je     400f28 <register_tm_clones+0x38>
  400f13:	b8 00 00 00 00       	mov    $0x0,%eax
  400f18:	48 85 c0             	test   %rax,%rax
  400f1b:	74 0b                	je     400f28 <register_tm_clones+0x38>
  400f1d:	5d                   	pop    %rbp
  400f1e:	bf 90 54 60 00       	mov    $0x605490,%edi
  400f23:	ff e0                	jmpq   *%rax
  400f25:	0f 1f 00             	nopl   (%rax)
  400f28:	5d                   	pop    %rbp
  400f29:	c3                   	retq   
  400f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	80 3d 91 45 20 00 00 	cmpb   $0x0,0x204591(%rip)        # 6054c8 <completed.7698>
  400f37:	75 17                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f39:	55                   	push   %rbp
  400f3a:	48 89 e5             	mov    %rsp,%rbp
  400f3d:	e8 7e ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f42:	c6 05 7f 45 20 00 01 	movb   $0x1,0x20457f(%rip)        # 6054c8 <completed.7698>
  400f49:	5d                   	pop    %rbp
  400f4a:	c3                   	retq   
  400f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f50:	f3 c3                	repz retq 
  400f52:	0f 1f 40 00          	nopl   0x0(%rax)
  400f56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f5d:	00 00 00 

0000000000400f60 <frame_dummy>:
  400f60:	55                   	push   %rbp
  400f61:	48 89 e5             	mov    %rsp,%rbp
  400f64:	5d                   	pop    %rbp
  400f65:	eb 89                	jmp    400ef0 <register_tm_clones>

0000000000400f67 <usage>:
  400f67:	48 83 ec 08          	sub    $0x8,%rsp
  400f6b:	48 89 fa             	mov    %rdi,%rdx
  400f6e:	83 3d 93 45 20 00 00 	cmpl   $0x0,0x204593(%rip)        # 605508 <is_checker>
  400f75:	74 50                	je     400fc7 <usage+0x60>
  400f77:	48 8d 35 ca 21 00 00 	lea    0x21ca(%rip),%rsi        # 403148 <_IO_stdin_used+0x8>
  400f7e:	bf 01 00 00 00       	mov    $0x1,%edi
  400f83:	b8 00 00 00 00       	mov    $0x0,%eax
  400f88:	e8 53 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400f8d:	48 8d 3d ec 21 00 00 	lea    0x21ec(%rip),%rdi        # 403180 <_IO_stdin_used+0x40>
  400f94:	e8 27 fd ff ff       	callq  400cc0 <puts@plt>
  400f99:	48 8d 3d 58 23 00 00 	lea    0x2358(%rip),%rdi        # 4032f8 <_IO_stdin_used+0x1b8>
  400fa0:	e8 1b fd ff ff       	callq  400cc0 <puts@plt>
  400fa5:	48 8d 3d fc 21 00 00 	lea    0x21fc(%rip),%rdi        # 4031a8 <_IO_stdin_used+0x68>
  400fac:	e8 0f fd ff ff       	callq  400cc0 <puts@plt>
  400fb1:	48 8d 3d 5a 23 00 00 	lea    0x235a(%rip),%rdi        # 403312 <_IO_stdin_used+0x1d2>
  400fb8:	e8 03 fd ff ff       	callq  400cc0 <puts@plt>
  400fbd:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc2:	e8 69 fe ff ff       	callq  400e30 <exit@plt>
  400fc7:	48 8d 35 60 23 00 00 	lea    0x2360(%rip),%rsi        # 40332e <_IO_stdin_used+0x1ee>
  400fce:	bf 01 00 00 00       	mov    $0x1,%edi
  400fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd8:	e8 03 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400fdd:	48 8d 3d ec 21 00 00 	lea    0x21ec(%rip),%rdi        # 4031d0 <_IO_stdin_used+0x90>
  400fe4:	e8 d7 fc ff ff       	callq  400cc0 <puts@plt>
  400fe9:	48 8d 3d 08 22 00 00 	lea    0x2208(%rip),%rdi        # 4031f8 <_IO_stdin_used+0xb8>
  400ff0:	e8 cb fc ff ff       	callq  400cc0 <puts@plt>
  400ff5:	48 8d 3d 50 23 00 00 	lea    0x2350(%rip),%rdi        # 40334c <_IO_stdin_used+0x20c>
  400ffc:	e8 bf fc ff ff       	callq  400cc0 <puts@plt>
  401001:	eb ba                	jmp    400fbd <usage+0x56>

0000000000401003 <initialize_target>:
  401003:	55                   	push   %rbp
  401004:	53                   	push   %rbx
  401005:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  40100c:	89 f5                	mov    %esi,%ebp
  40100e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401015:	00 00 
  401017:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40101e:	00 
  40101f:	31 c0                	xor    %eax,%eax
  401021:	89 3d d1 44 20 00    	mov    %edi,0x2044d1(%rip)        # 6054f8 <check_level>
  401027:	8b 3d 03 41 20 00    	mov    0x204103(%rip),%edi        # 605130 <target_id>
  40102d:	e8 64 20 00 00       	callq  403096 <gencookie>
  401032:	89 05 cc 44 20 00    	mov    %eax,0x2044cc(%rip)        # 605504 <cookie>
  401038:	89 c7                	mov    %eax,%edi
  40103a:	e8 57 20 00 00       	callq  403096 <gencookie>
  40103f:	89 05 bb 44 20 00    	mov    %eax,0x2044bb(%rip)        # 605500 <authkey>
  401045:	8b 05 e5 40 20 00    	mov    0x2040e5(%rip),%eax        # 605130 <target_id>
  40104b:	8d 78 01             	lea    0x1(%rax),%edi
  40104e:	e8 3d fc ff ff       	callq  400c90 <srandom@plt>
  401053:	e8 48 fd ff ff       	callq  400da0 <random@plt>
  401058:	89 c7                	mov    %eax,%edi
  40105a:	e8 1a 03 00 00       	callq  401379 <scramble>
  40105f:	89 c3                	mov    %eax,%ebx
  401061:	85 ed                	test   %ebp,%ebp
  401063:	75 54                	jne    4010b9 <initialize_target+0xb6>
  401065:	b8 00 00 00 00       	mov    $0x0,%eax
  40106a:	01 d8                	add    %ebx,%eax
  40106c:	0f b7 c0             	movzwl %ax,%eax
  40106f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401076:	89 c0                	mov    %eax,%eax
  401078:	48 89 05 01 44 20 00 	mov    %rax,0x204401(%rip)        # 605480 <buf_offset>
  40107f:	c6 05 a2 50 20 00 72 	movb   $0x72,0x2050a2(%rip)        # 606128 <target_prefix>
  401086:	83 3d fb 43 20 00 00 	cmpl   $0x0,0x2043fb(%rip)        # 605488 <notify>
  40108d:	74 09                	je     401098 <initialize_target+0x95>
  40108f:	83 3d 72 44 20 00 00 	cmpl   $0x0,0x204472(%rip)        # 605508 <is_checker>
  401096:	74 39                	je     4010d1 <initialize_target+0xce>
  401098:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40109f:	00 
  4010a0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4010a7:	00 00 
  4010a9:	0f 85 da 00 00 00    	jne    401189 <initialize_target+0x186>
  4010af:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4010b6:	5b                   	pop    %rbx
  4010b7:	5d                   	pop    %rbp
  4010b8:	c3                   	retq   
  4010b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4010be:	e8 cd fc ff ff       	callq  400d90 <time@plt>
  4010c3:	89 c7                	mov    %eax,%edi
  4010c5:	e8 c6 fb ff ff       	callq  400c90 <srandom@plt>
  4010ca:	e8 d1 fc ff ff       	callq  400da0 <random@plt>
  4010cf:	eb 99                	jmp    40106a <initialize_target+0x67>
  4010d1:	48 89 e7             	mov    %rsp,%rdi
  4010d4:	be 00 01 00 00       	mov    $0x100,%esi
  4010d9:	e8 42 fd ff ff       	callq  400e20 <gethostname@plt>
  4010de:	89 c5                	mov    %eax,%ebp
  4010e0:	85 c0                	test   %eax,%eax
  4010e2:	75 26                	jne    40110a <initialize_target+0x107>
  4010e4:	89 c3                	mov    %eax,%ebx
  4010e6:	48 63 c3             	movslq %ebx,%rax
  4010e9:	48 8d 15 70 40 20 00 	lea    0x204070(%rip),%rdx        # 605160 <host_table>
  4010f0:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4010f4:	48 85 ff             	test   %rdi,%rdi
  4010f7:	74 2c                	je     401125 <initialize_target+0x122>
  4010f9:	48 89 e6             	mov    %rsp,%rsi
  4010fc:	e8 6f fb ff ff       	callq  400c70 <strcasecmp@plt>
  401101:	85 c0                	test   %eax,%eax
  401103:	74 1b                	je     401120 <initialize_target+0x11d>
  401105:	83 c3 01             	add    $0x1,%ebx
  401108:	eb dc                	jmp    4010e6 <initialize_target+0xe3>
  40110a:	48 8d 3d 17 21 00 00 	lea    0x2117(%rip),%rdi        # 403228 <_IO_stdin_used+0xe8>
  401111:	e8 aa fb ff ff       	callq  400cc0 <puts@plt>
  401116:	bf 08 00 00 00       	mov    $0x8,%edi
  40111b:	e8 10 fd ff ff       	callq  400e30 <exit@plt>
  401120:	bd 01 00 00 00       	mov    $0x1,%ebp
  401125:	85 ed                	test   %ebp,%ebp
  401127:	74 3d                	je     401166 <initialize_target+0x163>
  401129:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401130:	00 
  401131:	e8 90 1c 00 00       	callq  402dc6 <init_driver>
  401136:	85 c0                	test   %eax,%eax
  401138:	0f 89 5a ff ff ff    	jns    401098 <initialize_target+0x95>
  40113e:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401145:	00 
  401146:	48 8d 35 53 21 00 00 	lea    0x2153(%rip),%rsi        # 4032a0 <_IO_stdin_used+0x160>
  40114d:	bf 01 00 00 00       	mov    $0x1,%edi
  401152:	b8 00 00 00 00       	mov    $0x0,%eax
  401157:	e8 84 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 ca fc ff ff       	callq  400e30 <exit@plt>
  401166:	48 89 e2             	mov    %rsp,%rdx
  401169:	48 8d 35 f0 20 00 00 	lea    0x20f0(%rip),%rsi        # 403260 <_IO_stdin_used+0x120>
  401170:	bf 01 00 00 00       	mov    $0x1,%edi
  401175:	b8 00 00 00 00       	mov    $0x0,%eax
  40117a:	e8 61 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40117f:	bf 08 00 00 00       	mov    $0x8,%edi
  401184:	e8 a7 fc ff ff       	callq  400e30 <exit@plt>
  401189:	e8 52 fb ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040118e <main>:
  40118e:	41 56                	push   %r14
  401190:	41 55                	push   %r13
  401192:	41 54                	push   %r12
  401194:	55                   	push   %rbp
  401195:	53                   	push   %rbx
  401196:	41 89 fc             	mov    %edi,%r12d
  401199:	48 89 f3             	mov    %rsi,%rbx
  40119c:	48 c7 c6 cd 20 40 00 	mov    $0x4020cd,%rsi
  4011a3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011a8:	e8 93 fb ff ff       	callq  400d40 <signal@plt>
  4011ad:	48 c7 c6 79 20 40 00 	mov    $0x402079,%rsi
  4011b4:	bf 07 00 00 00       	mov    $0x7,%edi
  4011b9:	e8 82 fb ff ff       	callq  400d40 <signal@plt>
  4011be:	48 c7 c6 21 21 40 00 	mov    $0x402121,%rsi
  4011c5:	bf 04 00 00 00       	mov    $0x4,%edi
  4011ca:	e8 71 fb ff ff       	callq  400d40 <signal@plt>
  4011cf:	83 3d 32 43 20 00 00 	cmpl   $0x0,0x204332(%rip)        # 605508 <is_checker>
  4011d6:	75 26                	jne    4011fe <main+0x70>
  4011d8:	48 8d 2d 86 21 00 00 	lea    0x2186(%rip),%rbp        # 403365 <_IO_stdin_used+0x225>
  4011df:	48 8b 05 ba 42 20 00 	mov    0x2042ba(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4011e6:	48 89 05 03 43 20 00 	mov    %rax,0x204303(%rip)        # 6054f0 <infile>
  4011ed:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011f3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011f9:	e9 8d 00 00 00       	jmpq   40128b <main+0xfd>
  4011fe:	48 c7 c6 75 21 40 00 	mov    $0x402175,%rsi
  401205:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120a:	e8 31 fb ff ff       	callq  400d40 <signal@plt>
  40120f:	bf 05 00 00 00       	mov    $0x5,%edi
  401214:	e8 f7 fa ff ff       	callq  400d10 <alarm@plt>
  401219:	48 8d 2d 4a 21 00 00 	lea    0x214a(%rip),%rbp        # 40336a <_IO_stdin_used+0x22a>
  401220:	eb bd                	jmp    4011df <main+0x51>
  401222:	48 8b 3b             	mov    (%rbx),%rdi
  401225:	e8 3d fd ff ff       	callq  400f67 <usage>
  40122a:	48 8d 35 d3 23 00 00 	lea    0x23d3(%rip),%rsi        # 403604 <_IO_stdin_used+0x4c4>
  401231:	48 8b 3d 70 42 20 00 	mov    0x204270(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401238:	e8 b3 fb ff ff       	callq  400df0 <fopen@plt>
  40123d:	48 89 05 ac 42 20 00 	mov    %rax,0x2042ac(%rip)        # 6054f0 <infile>
  401244:	48 85 c0             	test   %rax,%rax
  401247:	75 42                	jne    40128b <main+0xfd>
  401249:	48 8b 0d 58 42 20 00 	mov    0x204258(%rip),%rcx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401250:	48 8d 15 1b 21 00 00 	lea    0x211b(%rip),%rdx        # 403372 <_IO_stdin_used+0x232>
  401257:	be 01 00 00 00       	mov    $0x1,%esi
  40125c:	48 8b 3d 5d 42 20 00 	mov    0x20425d(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401263:	e8 e8 fb ff ff       	callq  400e50 <__fprintf_chk@plt>
  401268:	b8 01 00 00 00       	mov    $0x1,%eax
  40126d:	e9 d9 00 00 00       	jmpq   40134b <main+0x1bd>
  401272:	ba 10 00 00 00       	mov    $0x10,%edx
  401277:	be 00 00 00 00       	mov    $0x0,%esi
  40127c:	48 8b 3d 25 42 20 00 	mov    0x204225(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401283:	e8 88 fb ff ff       	callq  400e10 <strtoul@plt>
  401288:	41 89 c6             	mov    %eax,%r14d
  40128b:	48 89 ea             	mov    %rbp,%rdx
  40128e:	48 89 de             	mov    %rbx,%rsi
  401291:	44 89 e7             	mov    %r12d,%edi
  401294:	e8 67 fb ff ff       	callq  400e00 <getopt@plt>
  401299:	3c ff                	cmp    $0xff,%al
  40129b:	74 62                	je     4012ff <main+0x171>
  40129d:	0f be d0             	movsbl %al,%edx
  4012a0:	83 e8 61             	sub    $0x61,%eax
  4012a3:	3c 10                	cmp    $0x10,%al
  4012a5:	77 3a                	ja     4012e1 <main+0x153>
  4012a7:	0f b6 c0             	movzbl %al,%eax
  4012aa:	48 8d 0d ff 20 00 00 	lea    0x20ff(%rip),%rcx        # 4033b0 <_IO_stdin_used+0x270>
  4012b1:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  4012b5:	48 01 c8             	add    %rcx,%rax
  4012b8:	ff e0                	jmpq   *%rax
  4012ba:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012bf:	be 00 00 00 00       	mov    $0x0,%esi
  4012c4:	48 8b 3d dd 41 20 00 	mov    0x2041dd(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4012cb:	e8 a0 fa ff ff       	callq  400d70 <strtol@plt>
  4012d0:	41 89 c5             	mov    %eax,%r13d
  4012d3:	eb b6                	jmp    40128b <main+0xfd>
  4012d5:	c7 05 a9 41 20 00 00 	movl   $0x0,0x2041a9(%rip)        # 605488 <notify>
  4012dc:	00 00 00 
  4012df:	eb aa                	jmp    40128b <main+0xfd>
  4012e1:	48 8d 35 a7 20 00 00 	lea    0x20a7(%rip),%rsi        # 40338f <_IO_stdin_used+0x24f>
  4012e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4012ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f2:	e8 e9 fa ff ff       	callq  400de0 <__printf_chk@plt>
  4012f7:	48 8b 3b             	mov    (%rbx),%rdi
  4012fa:	e8 68 fc ff ff       	callq  400f67 <usage>
  4012ff:	be 01 00 00 00       	mov    $0x1,%esi
  401304:	44 89 ef             	mov    %r13d,%edi
  401307:	e8 f7 fc ff ff       	callq  401003 <initialize_target>
  40130c:	83 3d f5 41 20 00 00 	cmpl   $0x0,0x2041f5(%rip)        # 605508 <is_checker>
  401313:	74 09                	je     40131e <main+0x190>
  401315:	44 39 35 e4 41 20 00 	cmp    %r14d,0x2041e4(%rip)        # 605500 <authkey>
  40131c:	75 36                	jne    401354 <main+0x1c6>
  40131e:	8b 15 e0 41 20 00    	mov    0x2041e0(%rip),%edx        # 605504 <cookie>
  401324:	48 8d 35 77 20 00 00 	lea    0x2077(%rip),%rsi        # 4033a2 <_IO_stdin_used+0x262>
  40132b:	bf 01 00 00 00       	mov    $0x1,%edi
  401330:	b8 00 00 00 00       	mov    $0x0,%eax
  401335:	e8 a6 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40133a:	48 8b 3d 3f 41 20 00 	mov    0x20413f(%rip),%rdi        # 605480 <buf_offset>
  401341:	e8 86 0e 00 00       	callq  4021cc <launch>
  401346:	b8 00 00 00 00       	mov    $0x0,%eax
  40134b:	5b                   	pop    %rbx
  40134c:	5d                   	pop    %rbp
  40134d:	41 5c                	pop    %r12
  40134f:	41 5d                	pop    %r13
  401351:	41 5e                	pop    %r14
  401353:	c3                   	retq   
  401354:	44 89 f2             	mov    %r14d,%edx
  401357:	48 8d 35 6a 1f 00 00 	lea    0x1f6a(%rip),%rsi        # 4032c8 <_IO_stdin_used+0x188>
  40135e:	bf 01 00 00 00       	mov    $0x1,%edi
  401363:	b8 00 00 00 00       	mov    $0x0,%eax
  401368:	e8 73 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40136d:	b8 00 00 00 00       	mov    $0x0,%eax
  401372:	e8 62 09 00 00       	callq  401cd9 <check_fail>
  401377:	eb a5                	jmp    40131e <main+0x190>

0000000000401379 <scramble>:
  401379:	48 83 ec 38          	sub    $0x38,%rsp
  40137d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401384:	00 00 
  401386:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40138b:	31 c0                	xor    %eax,%eax
  40138d:	eb 10                	jmp    40139f <scramble+0x26>
  40138f:	69 d0 99 fa 00 00    	imul   $0xfa99,%eax,%edx
  401395:	01 fa                	add    %edi,%edx
  401397:	89 c1                	mov    %eax,%ecx
  401399:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40139c:	83 c0 01             	add    $0x1,%eax
  40139f:	83 f8 09             	cmp    $0x9,%eax
  4013a2:	76 eb                	jbe    40138f <scramble+0x16>
  4013a4:	8b 04 24             	mov    (%rsp),%eax
  4013a7:	69 c0 be 47 00 00    	imul   $0x47be,%eax,%eax
  4013ad:	89 04 24             	mov    %eax,(%rsp)
  4013b0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4013b4:	69 c0 5c aa 00 00    	imul   $0xaa5c,%eax,%eax
  4013ba:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4013be:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4013c2:	69 c0 b8 49 00 00    	imul   $0x49b8,%eax,%eax
  4013c8:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4013cc:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013d0:	69 c0 0b ed 00 00    	imul   $0xed0b,%eax,%eax
  4013d6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013da:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4013de:	69 c0 00 61 00 00    	imul   $0x6100,%eax,%eax
  4013e4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4013e8:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4013ec:	69 c0 78 08 00 00    	imul   $0x878,%eax,%eax
  4013f2:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4013f6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4013fa:	69 c0 92 cf 00 00    	imul   $0xcf92,%eax,%eax
  401400:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401404:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401408:	69 c0 01 cc 00 00    	imul   $0xcc01,%eax,%eax
  40140e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401412:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401416:	69 c0 33 93 00 00    	imul   $0x9333,%eax,%eax
  40141c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401420:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401424:	69 c0 a7 8e 00 00    	imul   $0x8ea7,%eax,%eax
  40142a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40142e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401432:	69 c0 63 1b 00 00    	imul   $0x1b63,%eax,%eax
  401438:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40143c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401440:	69 c0 61 da 00 00    	imul   $0xda61,%eax,%eax
  401446:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40144a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40144e:	69 c0 d4 16 00 00    	imul   $0x16d4,%eax,%eax
  401454:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401458:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40145c:	69 c0 24 33 00 00    	imul   $0x3324,%eax,%eax
  401462:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401466:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40146a:	69 c0 fc b3 00 00    	imul   $0xb3fc,%eax,%eax
  401470:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401474:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401478:	69 c0 f6 96 00 00    	imul   $0x96f6,%eax,%eax
  40147e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401482:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401486:	69 c0 51 d4 00 00    	imul   $0xd451,%eax,%eax
  40148c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401490:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401494:	69 c0 a7 42 00 00    	imul   $0x42a7,%eax,%eax
  40149a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40149e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014a2:	69 c0 66 b5 00 00    	imul   $0xb566,%eax,%eax
  4014a8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014ac:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014b0:	69 c0 96 7d 00 00    	imul   $0x7d96,%eax,%eax
  4014b6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014ba:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014be:	69 c0 be e8 00 00    	imul   $0xe8be,%eax,%eax
  4014c4:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014c8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014cc:	69 c0 5b c6 00 00    	imul   $0xc65b,%eax,%eax
  4014d2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014d6:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014da:	69 c0 1d c8 00 00    	imul   $0xc81d,%eax,%eax
  4014e0:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014e4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014e8:	69 c0 7c 81 00 00    	imul   $0x817c,%eax,%eax
  4014ee:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014f2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014f6:	69 c0 5e a6 00 00    	imul   $0xa65e,%eax,%eax
  4014fc:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401500:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401504:	69 c0 ed ab 00 00    	imul   $0xabed,%eax,%eax
  40150a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40150e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401512:	69 c0 68 99 00 00    	imul   $0x9968,%eax,%eax
  401518:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40151c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401520:	69 c0 c8 51 00 00    	imul   $0x51c8,%eax,%eax
  401526:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40152a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40152e:	69 c0 9f 62 00 00    	imul   $0x629f,%eax,%eax
  401534:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401538:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40153c:	69 c0 9a 4c 00 00    	imul   $0x4c9a,%eax,%eax
  401542:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401546:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40154a:	69 c0 2d a0 00 00    	imul   $0xa02d,%eax,%eax
  401550:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401554:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401558:	69 c0 55 12 00 00    	imul   $0x1255,%eax,%eax
  40155e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401562:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401566:	69 c0 e2 24 00 00    	imul   $0x24e2,%eax,%eax
  40156c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401570:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401574:	69 c0 87 92 00 00    	imul   $0x9287,%eax,%eax
  40157a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40157e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401582:	69 c0 ae 84 00 00    	imul   $0x84ae,%eax,%eax
  401588:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40158c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401590:	69 c0 af f0 00 00    	imul   $0xf0af,%eax,%eax
  401596:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40159a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40159e:	69 c0 2c 96 00 00    	imul   $0x962c,%eax,%eax
  4015a4:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015a8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015ac:	69 c0 bd 25 00 00    	imul   $0x25bd,%eax,%eax
  4015b2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015b6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015ba:	69 c0 66 49 00 00    	imul   $0x4966,%eax,%eax
  4015c0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015c4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015c8:	69 c0 9b b9 00 00    	imul   $0xb99b,%eax,%eax
  4015ce:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015d2:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015d6:	69 c0 5d b7 00 00    	imul   $0xb75d,%eax,%eax
  4015dc:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015e0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015e4:	69 c0 85 b1 00 00    	imul   $0xb185,%eax,%eax
  4015ea:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015ee:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015f2:	69 c0 d6 eb 00 00    	imul   $0xebd6,%eax,%eax
  4015f8:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015fc:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401600:	69 c0 02 01 00 00    	imul   $0x102,%eax,%eax
  401606:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40160a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40160e:	69 c0 39 88 00 00    	imul   $0x8839,%eax,%eax
  401614:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401618:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40161c:	69 c0 10 65 00 00    	imul   $0x6510,%eax,%eax
  401622:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401626:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40162a:	69 c0 2c 31 00 00    	imul   $0x312c,%eax,%eax
  401630:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401634:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401638:	69 c0 e4 9c 00 00    	imul   $0x9ce4,%eax,%eax
  40163e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401642:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401646:	69 c0 62 cc 00 00    	imul   $0xcc62,%eax,%eax
  40164c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401650:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401654:	69 c0 58 30 00 00    	imul   $0x3058,%eax,%eax
  40165a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40165e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401662:	69 c0 89 3f 00 00    	imul   $0x3f89,%eax,%eax
  401668:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40166c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401670:	69 c0 7e be 00 00    	imul   $0xbe7e,%eax,%eax
  401676:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40167a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40167e:	69 c0 12 d8 00 00    	imul   $0xd812,%eax,%eax
  401684:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401688:	8b 04 24             	mov    (%rsp),%eax
  40168b:	69 c0 ff 33 00 00    	imul   $0x33ff,%eax,%eax
  401691:	89 04 24             	mov    %eax,(%rsp)
  401694:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401698:	69 c0 75 8b 00 00    	imul   $0x8b75,%eax,%eax
  40169e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016a2:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016a6:	69 c0 3d 11 00 00    	imul   $0x113d,%eax,%eax
  4016ac:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016b0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016b4:	69 c0 22 53 00 00    	imul   $0x5322,%eax,%eax
  4016ba:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016be:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016c2:	69 c0 97 93 00 00    	imul   $0x9397,%eax,%eax
  4016c8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016cc:	8b 04 24             	mov    (%rsp),%eax
  4016cf:	69 c0 10 c6 00 00    	imul   $0xc610,%eax,%eax
  4016d5:	89 04 24             	mov    %eax,(%rsp)
  4016d8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016dc:	69 c0 6e 8d 00 00    	imul   $0x8d6e,%eax,%eax
  4016e2:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016e6:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016ea:	69 c0 36 e2 00 00    	imul   $0xe236,%eax,%eax
  4016f0:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016f4:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016f8:	69 c0 b0 76 00 00    	imul   $0x76b0,%eax,%eax
  4016fe:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401702:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401706:	69 c0 e5 69 00 00    	imul   $0x69e5,%eax,%eax
  40170c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401710:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401714:	69 c0 72 69 00 00    	imul   $0x6972,%eax,%eax
  40171a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40171e:	8b 04 24             	mov    (%rsp),%eax
  401721:	69 c0 00 43 00 00    	imul   $0x4300,%eax,%eax
  401727:	89 04 24             	mov    %eax,(%rsp)
  40172a:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40172e:	69 c0 58 87 00 00    	imul   $0x8758,%eax,%eax
  401734:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401738:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40173c:	69 c0 d1 ba 00 00    	imul   $0xbad1,%eax,%eax
  401742:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401746:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40174a:	69 c0 3e 58 00 00    	imul   $0x583e,%eax,%eax
  401750:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401754:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401758:	69 c0 12 2a 00 00    	imul   $0x2a12,%eax,%eax
  40175e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401762:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401766:	69 c0 5c b4 00 00    	imul   $0xb45c,%eax,%eax
  40176c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401770:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401774:	69 c0 d8 79 00 00    	imul   $0x79d8,%eax,%eax
  40177a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40177e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401782:	69 c0 59 f8 00 00    	imul   $0xf859,%eax,%eax
  401788:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40178c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401790:	69 c0 5b 88 00 00    	imul   $0x885b,%eax,%eax
  401796:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40179a:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40179e:	69 c0 f4 0b 00 00    	imul   $0xbf4,%eax,%eax
  4017a4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017a8:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017ac:	69 c0 8a 20 00 00    	imul   $0x208a,%eax,%eax
  4017b2:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017b6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017ba:	69 c0 b5 9c 00 00    	imul   $0x9cb5,%eax,%eax
  4017c0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017c4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017c8:	69 c0 e1 8b 00 00    	imul   $0x8be1,%eax,%eax
  4017ce:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017d2:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017d6:	69 c0 24 16 00 00    	imul   $0x1624,%eax,%eax
  4017dc:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017e0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017e4:	69 c0 f9 26 00 00    	imul   $0x26f9,%eax,%eax
  4017ea:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017ee:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017f2:	69 c0 0e 2c 00 00    	imul   $0x2c0e,%eax,%eax
  4017f8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017fc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401800:	69 c0 60 19 00 00    	imul   $0x1960,%eax,%eax
  401806:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40180a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40180e:	69 c0 82 ec 00 00    	imul   $0xec82,%eax,%eax
  401814:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401818:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40181c:	69 c0 3d f9 00 00    	imul   $0xf93d,%eax,%eax
  401822:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401826:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40182a:	69 c0 15 67 00 00    	imul   $0x6715,%eax,%eax
  401830:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401834:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401838:	69 c0 ff d0 00 00    	imul   $0xd0ff,%eax,%eax
  40183e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401842:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401846:	69 c0 d6 d8 00 00    	imul   $0xd8d6,%eax,%eax
  40184c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401850:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401854:	69 c0 0a e1 00 00    	imul   $0xe10a,%eax,%eax
  40185a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40185e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401862:	69 c0 d2 17 00 00    	imul   $0x17d2,%eax,%eax
  401868:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40186c:	8b 04 24             	mov    (%rsp),%eax
  40186f:	69 c0 1f 5d 00 00    	imul   $0x5d1f,%eax,%eax
  401875:	89 04 24             	mov    %eax,(%rsp)
  401878:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40187c:	69 c0 d1 b7 00 00    	imul   $0xb7d1,%eax,%eax
  401882:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401886:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40188a:	69 c0 29 bd 00 00    	imul   $0xbd29,%eax,%eax
  401890:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401894:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401898:	69 c0 6b 80 00 00    	imul   $0x806b,%eax,%eax
  40189e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018a2:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018a6:	69 c0 eb 67 00 00    	imul   $0x67eb,%eax,%eax
  4018ac:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018b0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018b4:	69 c0 d1 3e 00 00    	imul   $0x3ed1,%eax,%eax
  4018ba:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018be:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018c2:	69 c0 25 16 00 00    	imul   $0x1625,%eax,%eax
  4018c8:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018cc:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018d0:	69 c0 de f8 00 00    	imul   $0xf8de,%eax,%eax
  4018d6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018da:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018de:	69 c0 45 1e 00 00    	imul   $0x1e45,%eax,%eax
  4018e4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018e8:	8b 04 24             	mov    (%rsp),%eax
  4018eb:	69 c0 b6 03 00 00    	imul   $0x3b6,%eax,%eax
  4018f1:	89 04 24             	mov    %eax,(%rsp)
  4018f4:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018f8:	69 c0 21 2a 00 00    	imul   $0x2a21,%eax,%eax
  4018fe:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401902:	8b 04 24             	mov    (%rsp),%eax
  401905:	69 c0 d1 3a 00 00    	imul   $0x3ad1,%eax,%eax
  40190b:	89 04 24             	mov    %eax,(%rsp)
  40190e:	ba 00 00 00 00       	mov    $0x0,%edx
  401913:	b8 00 00 00 00       	mov    $0x0,%eax
  401918:	eb 0a                	jmp    401924 <scramble+0x5ab>
  40191a:	89 d1                	mov    %edx,%ecx
  40191c:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40191f:	01 c8                	add    %ecx,%eax
  401921:	83 c2 01             	add    $0x1,%edx
  401924:	83 fa 09             	cmp    $0x9,%edx
  401927:	76 f1                	jbe    40191a <scramble+0x5a1>
  401929:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40192e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401935:	00 00 
  401937:	75 05                	jne    40193e <scramble+0x5c5>
  401939:	48 83 c4 38          	add    $0x38,%rsp
  40193d:	c3                   	retq   
  40193e:	e8 9d f3 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401943 <getbuf>:
  401943:	48 83 ec 38          	sub    $0x38,%rsp
  401947:	48 89 e7             	mov    %rsp,%rdi
  40194a:	e8 c2 03 00 00       	callq  401d11 <Gets>
  40194f:	b8 01 00 00 00       	mov    $0x1,%eax
  401954:	48 83 c4 38          	add    $0x38,%rsp
  401958:	c3                   	retq   

0000000000401959 <touch1>:
  401959:	48 83 ec 08          	sub    $0x8,%rsp
  40195d:	c7 05 95 3b 20 00 01 	movl   $0x1,0x203b95(%rip)        # 6054fc <vlevel>
  401964:	00 00 00 
  401967:	48 8d 3d db 1a 00 00 	lea    0x1adb(%rip),%rdi        # 403449 <_IO_stdin_used+0x309>
  40196e:	e8 4d f3 ff ff       	callq  400cc0 <puts@plt>
  401973:	bf 01 00 00 00       	mov    $0x1,%edi
  401978:	e8 04 06 00 00       	callq  401f81 <validate>
  40197d:	bf 00 00 00 00       	mov    $0x0,%edi
  401982:	e8 a9 f4 ff ff       	callq  400e30 <exit@plt>

0000000000401987 <touch2>:
  401987:	48 83 ec 08          	sub    $0x8,%rsp
  40198b:	89 fa                	mov    %edi,%edx
  40198d:	c7 05 65 3b 20 00 02 	movl   $0x2,0x203b65(%rip)        # 6054fc <vlevel>
  401994:	00 00 00 
  401997:	39 3d 67 3b 20 00    	cmp    %edi,0x203b67(%rip)        # 605504 <cookie>
  40199d:	74 2a                	je     4019c9 <touch2+0x42>
  40199f:	48 8d 35 f2 1a 00 00 	lea    0x1af2(%rip),%rsi        # 403498 <_IO_stdin_used+0x358>
  4019a6:	bf 01 00 00 00       	mov    $0x1,%edi
  4019ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4019b0:	e8 2b f4 ff ff       	callq  400de0 <__printf_chk@plt>
  4019b5:	bf 02 00 00 00       	mov    $0x2,%edi
  4019ba:	e8 92 06 00 00       	callq  402051 <fail>
  4019bf:	bf 00 00 00 00       	mov    $0x0,%edi
  4019c4:	e8 67 f4 ff ff       	callq  400e30 <exit@plt>
  4019c9:	48 8d 35 a0 1a 00 00 	lea    0x1aa0(%rip),%rsi        # 403470 <_IO_stdin_used+0x330>
  4019d0:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4019da:	e8 01 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  4019df:	bf 02 00 00 00       	mov    $0x2,%edi
  4019e4:	e8 98 05 00 00       	callq  401f81 <validate>
  4019e9:	eb d4                	jmp    4019bf <touch2+0x38>

00000000004019eb <hexmatch>:
  4019eb:	41 54                	push   %r12
  4019ed:	55                   	push   %rbp
  4019ee:	53                   	push   %rbx
  4019ef:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4019f3:	89 fd                	mov    %edi,%ebp
  4019f5:	48 89 f3             	mov    %rsi,%rbx
  4019f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019ff:	00 00 
  401a01:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401a06:	31 c0                	xor    %eax,%eax
  401a08:	e8 93 f3 ff ff       	callq  400da0 <random@plt>
  401a0d:	48 89 c1             	mov    %rax,%rcx
  401a10:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401a17:	0a d7 a3 
  401a1a:	48 f7 ea             	imul   %rdx
  401a1d:	48 01 ca             	add    %rcx,%rdx
  401a20:	48 c1 fa 06          	sar    $0x6,%rdx
  401a24:	48 89 c8             	mov    %rcx,%rax
  401a27:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a2b:	48 29 c2             	sub    %rax,%rdx
  401a2e:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401a32:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a36:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a3d:	00 
  401a3e:	48 29 c1             	sub    %rax,%rcx
  401a41:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401a45:	41 89 e8             	mov    %ebp,%r8d
  401a48:	48 8d 0d 17 1a 00 00 	lea    0x1a17(%rip),%rcx        # 403466 <_IO_stdin_used+0x326>
  401a4f:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401a56:	be 01 00 00 00       	mov    $0x1,%esi
  401a5b:	4c 89 e7             	mov    %r12,%rdi
  401a5e:	b8 00 00 00 00       	mov    $0x0,%eax
  401a63:	e8 f8 f3 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401a68:	ba 09 00 00 00       	mov    $0x9,%edx
  401a6d:	4c 89 e6             	mov    %r12,%rsi
  401a70:	48 89 df             	mov    %rbx,%rdi
  401a73:	e8 28 f2 ff ff       	callq  400ca0 <strncmp@plt>
  401a78:	85 c0                	test   %eax,%eax
  401a7a:	0f 94 c0             	sete   %al
  401a7d:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401a82:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401a89:	00 00 
  401a8b:	75 0c                	jne    401a99 <hexmatch+0xae>
  401a8d:	0f b6 c0             	movzbl %al,%eax
  401a90:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401a94:	5b                   	pop    %rbx
  401a95:	5d                   	pop    %rbp
  401a96:	41 5c                	pop    %r12
  401a98:	c3                   	retq   
  401a99:	e8 42 f2 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401a9e <touch3>:
  401a9e:	53                   	push   %rbx
  401a9f:	48 89 fb             	mov    %rdi,%rbx
  401aa2:	c7 05 50 3a 20 00 03 	movl   $0x3,0x203a50(%rip)        # 6054fc <vlevel>
  401aa9:	00 00 00 
  401aac:	48 89 fe             	mov    %rdi,%rsi
  401aaf:	8b 3d 4f 3a 20 00    	mov    0x203a4f(%rip),%edi        # 605504 <cookie>
  401ab5:	e8 31 ff ff ff       	callq  4019eb <hexmatch>
  401aba:	85 c0                	test   %eax,%eax
  401abc:	74 0b                	je     401ac9 <touch3+0x2b>
  401abe:	8b 4b 0c             	mov    0xc(%rbx),%ecx
  401ac1:	3b 0d 3d 3a 20 00    	cmp    0x203a3d(%rip),%ecx        # 605504 <cookie>
  401ac7:	74 30                	je     401af9 <touch3+0x5b>
  401ac9:	8b 4b 0c             	mov    0xc(%rbx),%ecx
  401acc:	48 89 da             	mov    %rbx,%rdx
  401acf:	48 8d 35 1a 1a 00 00 	lea    0x1a1a(%rip),%rsi        # 4034f0 <_IO_stdin_used+0x3b0>
  401ad6:	bf 01 00 00 00       	mov    $0x1,%edi
  401adb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae0:	e8 fb f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401ae5:	bf 03 00 00 00       	mov    $0x3,%edi
  401aea:	e8 62 05 00 00       	callq  402051 <fail>
  401aef:	bf 00 00 00 00       	mov    $0x0,%edi
  401af4:	e8 37 f3 ff ff       	callq  400e30 <exit@plt>
  401af9:	48 89 da             	mov    %rbx,%rdx
  401afc:	48 8d 35 bd 19 00 00 	lea    0x19bd(%rip),%rsi        # 4034c0 <_IO_stdin_used+0x380>
  401b03:	bf 01 00 00 00       	mov    $0x1,%edi
  401b08:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0d:	e8 ce f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401b12:	bf 03 00 00 00       	mov    $0x3,%edi
  401b17:	e8 65 04 00 00       	callq  401f81 <validate>
  401b1c:	eb d1                	jmp    401aef <touch3+0x51>

0000000000401b1e <test>:
  401b1e:	48 83 ec 08          	sub    $0x8,%rsp
  401b22:	b8 00 00 00 00       	mov    $0x0,%eax
  401b27:	e8 17 fe ff ff       	callq  401943 <getbuf>
  401b2c:	89 c2                	mov    %eax,%edx
  401b2e:	48 8d 35 eb 19 00 00 	lea    0x19eb(%rip),%rsi        # 403520 <_IO_stdin_used+0x3e0>
  401b35:	bf 01 00 00 00       	mov    $0x1,%edi
  401b3a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b3f:	e8 9c f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401b44:	48 83 c4 08          	add    $0x8,%rsp
  401b48:	c3                   	retq   

0000000000401b49 <start_farm>:
  401b49:	b8 01 00 00 00       	mov    $0x1,%eax
  401b4e:	c3                   	retq   

0000000000401b4f <addval_383>:
  401b4f:	8d 87 2d 58 90 90    	lea    -0x6f6fa7d3(%rdi),%eax /* 401b52 pop %rax */
  401b55:	c3                   	retq   

0000000000401b56 <addval_489>:
  401b56:	8d 87 4c 89 c7 c3    	lea    -0x3c3876b4(%rdi),%eax /*/
  401b5c:	c3                   	retq   

0000000000401b5d <setval_422>:
  401b5d:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi) /* 401b5f movq $rax, $rdi */
  401b63:	c3                   	retq   

0000000000401b64 <setval_159>:
  401b64:	c7 07 58 94 90 90    	movl   $0x90909458,(%rdi) /*/
  401b6a:	c3                   	retq   

0000000000401b6b <getval_304>:
  401b6b:	b8 de 07 0c 58       	mov    $0x580c07de,%eax /*/
  401b70:	c3                   	retq   

0000000000401b71 <setval_268>:
  401b71:	c7 07 58 90 94 c3    	movl   $0xc3949058,(%rdi) /*/
  401b77:	c3                   	retq   

0000000000401b78 <getval_213>:
  401b78:	b8 48 89 c7 c7       	mov    $0xc7c78948,%eax /*/
  401b7d:	c3                   	retq   

0000000000401b7e <setval_313>:
  401b7e:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi) /*/
  401b84:	c3                   	retq   

0000000000401b85 <mid_farm>:
  401b85:	b8 01 00 00 00       	mov    $0x1,%eax /*/
  401b8a:	c3                   	retq   

0000000000401b8b <add_xy>:
  401b8b:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax /* rax = rdi + rsi/
  401b8f:	c3                   	retq   

0000000000401b90 <setval_400>:
  401b90:	c7 07 89 ca 18 d2    	movl   $0xd218ca89,(%rdi) /*/
  401b96:	c3                   	retq   

0000000000401b97 <setval_292>:
  401b97:	c7 07 89 c1 30 c0    	movl   $0xc030c189,(%rdi) /*/
  401b9d:	c3                   	retq   

0000000000401b9e <getval_275>:
  401b9e:	b8 c5 89 ca c1       	mov    $0xc1ca89c5,%eax /*/
  401ba3:	c3                   	retq   

0000000000401ba4 <setval_386>:
  401ba4:	c7 07 ff 88 ca 90    	movl   $0x90ca88ff,(%rdi) /*/
  401baa:	c3                   	retq   

0000000000401bab <addval_266>:
  401bab:	8d 87 48 99 e0 90    	lea    -0x6f1f66b8(%rdi),%eax /* 401bb0 nop */
  401bb1:	c3                   	retq   

0000000000401bb2 <addval_188>:
  401bb2:	8d 87 8b d6 84 d2    	lea    -0x2d7b2975(%rdi),%eax /*/
  401bb8:	c3                   	retq   

0000000000401bb9 <addval_450>:
  401bb9:	8d 87 48 89 e0 c2    	lea    -0x3d1f76b8(%rdi),%eax /*/
  401bbf:	c3                   	retq   

0000000000401bc0 <getval_351>:
  401bc0:	b8 b0 08 89 e0       	mov    $0xe08908b0,%eax /* 401bc3 mov %esp,%eax */
  401bc5:	c3                   	retq   

0000000000401bc6 <getval_251>:
  401bc6:	b8 58 48 81 e0       	mov    $0xe0814858,%eax /*/
  401bcb:	c3                   	retq   

0000000000401bcc <getval_469>:
  401bcc:	b8 81 d6 38 c0       	mov    $0xc038d681,%eax /*/
  401bd1:	c3                   	retq   

0000000000401bd2 <addval_336>:
  401bd2:	8d 87 89 ca 08 db    	lea    -0x24f73577(%rdi),%eax /* 401bd4 mov %ecx, %edx */
  401bd8:	c3                   	retq   

0000000000401bd9 <addval_364>:
  401bd9:	8d 87 89 c1 48 c9    	lea    -0x36b73e77(%rdi),%eax /*/
  401bdf:	c3                   	retq   

0000000000401be0 <getval_154>:
  401be0:	b8 48 99 e0 c3       	mov    $0xc3e09948,%eax /*/
  401be5:	c3                   	retq   

0000000000401be6 <getval_197>:
  401be6:	b8 81 c1 90 c3       	mov    $0xc390c181,%eax /*/
  401beb:	c3                   	retq   

0000000000401bec <addval_247>:
  401bec:	8d 87 89 c1 48 d2    	lea    -0x2db73e77(%rdi),%eax  /*/
  401bf2:	c3                   	retq   

0000000000401bf3 <setval_147>:
  401bf3:	c7 07 89 d6 92 90    	movl   $0x9092d689,(%rdi) /*/
  401bf9:	c3                   	retq   

0000000000401bfa <getval_412>:
  401bfa:	b8 89 d6 28 d2       	mov    $0xd228d689,%eax /*/
  401bff:	c3                   	retq   

0000000000401c00 <setval_133>:
  401c00:	c7 07 88 d6 08 c9    	movl   $0xc908d688,(%rdi) /*/
  401c06:	c3                   	retq   

0000000000401c07 <addval_179>:
  401c07:	8d 87 89 c1 90 c3    	lea    -0x3c6f3e77(%rdi),%eax /* 401c09 eax, ecx*/
  401c0d:	c3                   	retq   

0000000000401c0e <getval_494>:
  401c0e:	b8 89 c1 38 d2       	mov    $0xd238c189,%eax /* 401c0f eax, ecx*/
  401c13:	c3                   	retq   

0000000000401c14 <getval_216>:
  401c14:	b8 89 d6 c3 0e       	mov    $0xec3d689,%eax /* 401c15 edx, esi */
  401c19:	c3                   	retq   

0000000000401c1a <getval_423>:
  401c1a:	b8 89 ca 84 db       	mov    $0xdb84ca89,%eax /* 401c1b ecx, edx */
  401c1f:	c3                   	retq   

0000000000401c20 <getval_126>:
  401c20:	b8 89 c1 94 90       	mov    $0x9094c189,%eax /*/
  401c25:	c3                   	retq   

0000000000401c26 <addval_103>:
  401c26:	8d 87 89 d6 84 c0    	lea    -0x3f7b2977(%rdi),%eax /*/
  401c2c:	c3                   	retq   

0000000000401c2d <setval_225>:
  401c2d:	c7 07 89 ca a4 c0    	movl   $0xc0a4ca89,(%rdi) /*/
  401c33:	c3                   	retq   

0000000000401c34 <addval_239>:
  401c34:	8d 87 9d 48 89 e0    	lea    -0x1f76b763(%rdi),%eax /* 401c37 mov rsp, rax*/
  401c3a:	c3                   	retq   

0000000000401c3b <getval_413>:
  401c3b:	b8 09 c1 38 c9       	mov    $0xc938c109,%eax /*/
  401c40:	c3                   	retq   

0000000000401c41 <addval_290>:
  401c41:	8d 87 48 09 e0 c3    	lea    -0x3c1ff6b8(%rdi),%eax /*/
  401c47:	c3                   	retq   

0000000000401c48 <getval_348>:
  401c48:	b8 88 d6 c3 0a       	mov    $0xac3d688,%eax /*/
  401c4d:	c3                   	retq   

0000000000401c4e <setval_114>:
  401c4e:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi) /*/
  401c54:	c3                   	retq   

0000000000401c55 <addval_145>:
  401c55:	8d 87 89 ca c2 a2    	lea    -0x5d3d3577(%rdi),%eax /*/
  401c5b:	c3                   	retq   

0000000000401c5c <setval_355>:
  401c5c:	c7 07 89 ca 18 c0    	movl   $0xc018ca89,(%rdi) /*/
  401c62:	c3                   	retq   

0000000000401c63 <end_farm>:
  401c63:	b8 01 00 00 00       	mov    $0x1,%eax
  401c68:	c3                   	retq   

0000000000401c69 <save_char>:
  401c69:	8b 05 b5 44 20 00    	mov    0x2044b5(%rip),%eax        # 606124 <gets_cnt>
  401c6f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c74:	7f 4a                	jg     401cc0 <save_char+0x57>
  401c76:	89 f9                	mov    %edi,%ecx
  401c78:	c0 e9 04             	shr    $0x4,%cl
  401c7b:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c7e:	4c 8d 05 bb 1b 00 00 	lea    0x1bbb(%rip),%r8        # 403840 <trans_char>
  401c85:	83 e1 0f             	and    $0xf,%ecx
  401c88:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401c8d:	48 8d 0d 8c 38 20 00 	lea    0x20388c(%rip),%rcx        # 605520 <gets_buf>
  401c94:	48 63 f2             	movslq %edx,%rsi
  401c97:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401c9b:	8d 72 01             	lea    0x1(%rdx),%esi
  401c9e:	83 e7 0f             	and    $0xf,%edi
  401ca1:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401ca6:	48 63 f6             	movslq %esi,%rsi
  401ca9:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401cad:	83 c2 02             	add    $0x2,%edx
  401cb0:	48 63 d2             	movslq %edx,%rdx
  401cb3:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401cb7:	83 c0 01             	add    $0x1,%eax
  401cba:	89 05 64 44 20 00    	mov    %eax,0x204464(%rip)        # 606124 <gets_cnt>
  401cc0:	f3 c3                	repz retq 

0000000000401cc2 <save_term>:
  401cc2:	8b 05 5c 44 20 00    	mov    0x20445c(%rip),%eax        # 606124 <gets_cnt>
  401cc8:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401ccb:	48 98                	cltq   
  401ccd:	48 8d 15 4c 38 20 00 	lea    0x20384c(%rip),%rdx        # 605520 <gets_buf>
  401cd4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401cd8:	c3                   	retq   

0000000000401cd9 <check_fail>:
  401cd9:	48 83 ec 08          	sub    $0x8,%rsp
  401cdd:	0f be 15 44 44 20 00 	movsbl 0x204444(%rip),%edx        # 606128 <target_prefix>
  401ce4:	4c 8d 05 35 38 20 00 	lea    0x203835(%rip),%r8        # 605520 <gets_buf>
  401ceb:	8b 0d 07 38 20 00    	mov    0x203807(%rip),%ecx        # 6054f8 <check_level>
  401cf1:	48 8d 35 4a 18 00 00 	lea    0x184a(%rip),%rsi        # 403542 <_IO_stdin_used+0x402>
  401cf8:	bf 01 00 00 00       	mov    $0x1,%edi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 d9 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d07:	bf 01 00 00 00       	mov    $0x1,%edi
  401d0c:	e8 1f f1 ff ff       	callq  400e30 <exit@plt>

0000000000401d11 <Gets>:
  401d11:	41 54                	push   %r12
  401d13:	55                   	push   %rbp
  401d14:	53                   	push   %rbx
  401d15:	49 89 fc             	mov    %rdi,%r12
  401d18:	c7 05 02 44 20 00 00 	movl   $0x0,0x204402(%rip)        # 606124 <gets_cnt>
  401d1f:	00 00 00 
  401d22:	48 89 fb             	mov    %rdi,%rbx
  401d25:	eb 11                	jmp    401d38 <Gets+0x27>
  401d27:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d2b:	88 03                	mov    %al,(%rbx)
  401d2d:	0f b6 f8             	movzbl %al,%edi
  401d30:	e8 34 ff ff ff       	callq  401c69 <save_char>
  401d35:	48 89 eb             	mov    %rbp,%rbx
  401d38:	48 8b 3d b1 37 20 00 	mov    0x2037b1(%rip),%rdi        # 6054f0 <infile>
  401d3f:	e8 6c f0 ff ff       	callq  400db0 <_IO_getc@plt>
  401d44:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d47:	74 05                	je     401d4e <Gets+0x3d>
  401d49:	83 f8 0a             	cmp    $0xa,%eax
  401d4c:	75 d9                	jne    401d27 <Gets+0x16>
  401d4e:	c6 03 00             	movb   $0x0,(%rbx)
  401d51:	b8 00 00 00 00       	mov    $0x0,%eax
  401d56:	e8 67 ff ff ff       	callq  401cc2 <save_term>
  401d5b:	4c 89 e0             	mov    %r12,%rax
  401d5e:	5b                   	pop    %rbx
  401d5f:	5d                   	pop    %rbp
  401d60:	41 5c                	pop    %r12
  401d62:	c3                   	retq   

0000000000401d63 <notify_server>:
  401d63:	55                   	push   %rbp
  401d64:	53                   	push   %rbx
  401d65:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401d6c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d73:	00 00 
  401d75:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d7c:	00 
  401d7d:	31 c0                	xor    %eax,%eax
  401d7f:	83 3d 82 37 20 00 00 	cmpl   $0x0,0x203782(%rip)        # 605508 <is_checker>
  401d86:	0f 85 d2 00 00 00    	jne    401e5e <notify_server+0xfb>
  401d8c:	89 fb                	mov    %edi,%ebx
  401d8e:	8b 05 90 43 20 00    	mov    0x204390(%rip),%eax        # 606124 <gets_cnt>
  401d94:	83 c0 64             	add    $0x64,%eax
  401d97:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d9c:	0f 8f dd 00 00 00    	jg     401e7f <notify_server+0x11c>
  401da2:	0f be 05 7f 43 20 00 	movsbl 0x20437f(%rip),%eax        # 606128 <target_prefix>
  401da9:	83 3d d8 36 20 00 00 	cmpl   $0x0,0x2036d8(%rip)        # 605488 <notify>
  401db0:	0f 84 e9 00 00 00    	je     401e9f <notify_server+0x13c>
  401db6:	8b 15 44 37 20 00    	mov    0x203744(%rip),%edx        # 605500 <authkey>
  401dbc:	85 db                	test   %ebx,%ebx
  401dbe:	0f 84 e5 00 00 00    	je     401ea9 <notify_server+0x146>
  401dc4:	48 8d 2d 8d 17 00 00 	lea    0x178d(%rip),%rbp        # 403558 <_IO_stdin_used+0x418>
  401dcb:	48 89 e7             	mov    %rsp,%rdi
  401dce:	48 8d 0d 4b 37 20 00 	lea    0x20374b(%rip),%rcx        # 605520 <gets_buf>
  401dd5:	51                   	push   %rcx
  401dd6:	56                   	push   %rsi
  401dd7:	50                   	push   %rax
  401dd8:	52                   	push   %rdx
  401dd9:	49 89 e9             	mov    %rbp,%r9
  401ddc:	44 8b 05 4d 33 20 00 	mov    0x20334d(%rip),%r8d        # 605130 <target_id>
  401de3:	48 8d 0d 78 17 00 00 	lea    0x1778(%rip),%rcx        # 403562 <_IO_stdin_used+0x422>
  401dea:	ba 00 20 00 00       	mov    $0x2000,%edx
  401def:	be 01 00 00 00       	mov    $0x1,%esi
  401df4:	b8 00 00 00 00       	mov    $0x0,%eax
  401df9:	e8 62 f0 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401dfe:	48 83 c4 20          	add    $0x20,%rsp
  401e02:	83 3d 7f 36 20 00 00 	cmpl   $0x0,0x20367f(%rip)        # 605488 <notify>
  401e09:	0f 84 df 00 00 00    	je     401eee <notify_server+0x18b>
  401e0f:	85 db                	test   %ebx,%ebx
  401e11:	0f 84 c6 00 00 00    	je     401edd <notify_server+0x17a>
  401e17:	48 89 e1             	mov    %rsp,%rcx
  401e1a:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401e21:	00 
  401e22:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e28:	48 8b 15 19 33 20 00 	mov    0x203319(%rip),%rdx        # 605148 <lab>
  401e2f:	48 8b 35 1a 33 20 00 	mov    0x20331a(%rip),%rsi        # 605150 <course>
  401e36:	48 8b 3d 03 33 20 00 	mov    0x203303(%rip),%rdi        # 605140 <user_id>
  401e3d:	e8 af 11 00 00       	callq  402ff1 <driver_post>
  401e42:	85 c0                	test   %eax,%eax
  401e44:	78 6f                	js     401eb5 <notify_server+0x152>
  401e46:	48 8d 3d 5b 18 00 00 	lea    0x185b(%rip),%rdi        # 4036a8 <_IO_stdin_used+0x568>
  401e4d:	e8 6e ee ff ff       	callq  400cc0 <puts@plt>
  401e52:	48 8d 3d 31 17 00 00 	lea    0x1731(%rip),%rdi        # 40358a <_IO_stdin_used+0x44a>
  401e59:	e8 62 ee ff ff       	callq  400cc0 <puts@plt>
  401e5e:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401e65:	00 
  401e66:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e6d:	00 00 
  401e6f:	0f 85 07 01 00 00    	jne    401f7c <notify_server+0x219>
  401e75:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401e7c:	5b                   	pop    %rbx
  401e7d:	5d                   	pop    %rbp
  401e7e:	c3                   	retq   
  401e7f:	48 8d 35 f2 17 00 00 	lea    0x17f2(%rip),%rsi        # 403678 <_IO_stdin_used+0x538>
  401e86:	bf 01 00 00 00       	mov    $0x1,%edi
  401e8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e90:	e8 4b ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e95:	bf 01 00 00 00       	mov    $0x1,%edi
  401e9a:	e8 91 ef ff ff       	callq  400e30 <exit@plt>
  401e9f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401ea4:	e9 13 ff ff ff       	jmpq   401dbc <notify_server+0x59>
  401ea9:	48 8d 2d ad 16 00 00 	lea    0x16ad(%rip),%rbp        # 40355d <_IO_stdin_used+0x41d>
  401eb0:	e9 16 ff ff ff       	jmpq   401dcb <notify_server+0x68>
  401eb5:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401ebc:	00 
  401ebd:	48 8d 35 ba 16 00 00 	lea    0x16ba(%rip),%rsi        # 40357e <_IO_stdin_used+0x43e>
  401ec4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ece:	e8 0d ef ff ff       	callq  400de0 <__printf_chk@plt>
  401ed3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed8:	e8 53 ef ff ff       	callq  400e30 <exit@plt>
  401edd:	48 8d 3d b0 16 00 00 	lea    0x16b0(%rip),%rdi        # 403594 <_IO_stdin_used+0x454>
  401ee4:	e8 d7 ed ff ff       	callq  400cc0 <puts@plt>
  401ee9:	e9 70 ff ff ff       	jmpq   401e5e <notify_server+0xfb>
  401eee:	48 89 ea             	mov    %rbp,%rdx
  401ef1:	48 8d 35 e8 17 00 00 	lea    0x17e8(%rip),%rsi        # 4036e0 <_IO_stdin_used+0x5a0>
  401ef8:	bf 01 00 00 00       	mov    $0x1,%edi
  401efd:	b8 00 00 00 00       	mov    $0x0,%eax
  401f02:	e8 d9 ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f07:	48 8b 15 32 32 20 00 	mov    0x203232(%rip),%rdx        # 605140 <user_id>
  401f0e:	48 8d 35 86 16 00 00 	lea    0x1686(%rip),%rsi        # 40359b <_IO_stdin_used+0x45b>
  401f15:	bf 01 00 00 00       	mov    $0x1,%edi
  401f1a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1f:	e8 bc ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f24:	48 8b 15 25 32 20 00 	mov    0x203225(%rip),%rdx        # 605150 <course>
  401f2b:	48 8d 35 76 16 00 00 	lea    0x1676(%rip),%rsi        # 4035a8 <_IO_stdin_used+0x468>
  401f32:	bf 01 00 00 00       	mov    $0x1,%edi
  401f37:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3c:	e8 9f ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f41:	48 8b 15 00 32 20 00 	mov    0x203200(%rip),%rdx        # 605148 <lab>
  401f48:	48 8d 35 65 16 00 00 	lea    0x1665(%rip),%rsi        # 4035b4 <_IO_stdin_used+0x474>
  401f4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401f54:	b8 00 00 00 00       	mov    $0x0,%eax
  401f59:	e8 82 ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f5e:	48 89 e2             	mov    %rsp,%rdx
  401f61:	48 8d 35 55 16 00 00 	lea    0x1655(%rip),%rsi        # 4035bd <_IO_stdin_used+0x47d>
  401f68:	bf 01 00 00 00       	mov    $0x1,%edi
  401f6d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f72:	e8 69 ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f77:	e9 e2 fe ff ff       	jmpq   401e5e <notify_server+0xfb>
  401f7c:	e8 5f ed ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401f81 <validate>:
  401f81:	53                   	push   %rbx
  401f82:	89 fb                	mov    %edi,%ebx
  401f84:	83 3d 7d 35 20 00 00 	cmpl   $0x0,0x20357d(%rip)        # 605508 <is_checker>
  401f8b:	74 72                	je     401fff <validate+0x7e>
  401f8d:	39 3d 69 35 20 00    	cmp    %edi,0x203569(%rip)        # 6054fc <vlevel>
  401f93:	75 32                	jne    401fc7 <validate+0x46>
  401f95:	8b 15 5d 35 20 00    	mov    0x20355d(%rip),%edx        # 6054f8 <check_level>
  401f9b:	39 fa                	cmp    %edi,%edx
  401f9d:	75 3e                	jne    401fdd <validate+0x5c>
  401f9f:	0f be 15 82 41 20 00 	movsbl 0x204182(%rip),%edx        # 606128 <target_prefix>
  401fa6:	4c 8d 05 73 35 20 00 	lea    0x203573(%rip),%r8        # 605520 <gets_buf>
  401fad:	89 f9                	mov    %edi,%ecx
  401faf:	48 8d 35 31 16 00 00 	lea    0x1631(%rip),%rsi        # 4035e7 <_IO_stdin_used+0x4a7>
  401fb6:	bf 01 00 00 00       	mov    $0x1,%edi
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 1b ee ff ff       	callq  400de0 <__printf_chk@plt>
  401fc5:	5b                   	pop    %rbx
  401fc6:	c3                   	retq   
  401fc7:	48 8d 3d fb 15 00 00 	lea    0x15fb(%rip),%rdi        # 4035c9 <_IO_stdin_used+0x489>
  401fce:	e8 ed ec ff ff       	callq  400cc0 <puts@plt>
  401fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd8:	e8 fc fc ff ff       	callq  401cd9 <check_fail>
  401fdd:	89 f9                	mov    %edi,%ecx
  401fdf:	48 8d 35 22 17 00 00 	lea    0x1722(%rip),%rsi        # 403708 <_IO_stdin_used+0x5c8>
  401fe6:	bf 01 00 00 00       	mov    $0x1,%edi
  401feb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff0:	e8 eb ed ff ff       	callq  400de0 <__printf_chk@plt>
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 da fc ff ff       	callq  401cd9 <check_fail>
  401fff:	39 3d f7 34 20 00    	cmp    %edi,0x2034f7(%rip)        # 6054fc <vlevel>
  402005:	74 1a                	je     402021 <validate+0xa0>
  402007:	48 8d 3d bb 15 00 00 	lea    0x15bb(%rip),%rdi        # 4035c9 <_IO_stdin_used+0x489>
  40200e:	e8 ad ec ff ff       	callq  400cc0 <puts@plt>
  402013:	89 de                	mov    %ebx,%esi
  402015:	bf 00 00 00 00       	mov    $0x0,%edi
  40201a:	e8 44 fd ff ff       	callq  401d63 <notify_server>
  40201f:	eb a4                	jmp    401fc5 <validate+0x44>
  402021:	0f be 0d 00 41 20 00 	movsbl 0x204100(%rip),%ecx        # 606128 <target_prefix>
  402028:	89 fa                	mov    %edi,%edx
  40202a:	48 8d 35 ff 16 00 00 	lea    0x16ff(%rip),%rsi        # 403730 <_IO_stdin_used+0x5f0>
  402031:	bf 01 00 00 00       	mov    $0x1,%edi
  402036:	b8 00 00 00 00       	mov    $0x0,%eax
  40203b:	e8 a0 ed ff ff       	callq  400de0 <__printf_chk@plt>
  402040:	89 de                	mov    %ebx,%esi
  402042:	bf 01 00 00 00       	mov    $0x1,%edi
  402047:	e8 17 fd ff ff       	callq  401d63 <notify_server>
  40204c:	e9 74 ff ff ff       	jmpq   401fc5 <validate+0x44>

0000000000402051 <fail>:
  402051:	48 83 ec 08          	sub    $0x8,%rsp
  402055:	83 3d ac 34 20 00 00 	cmpl   $0x0,0x2034ac(%rip)        # 605508 <is_checker>
  40205c:	75 11                	jne    40206f <fail+0x1e>
  40205e:	89 fe                	mov    %edi,%esi
  402060:	bf 00 00 00 00       	mov    $0x0,%edi
  402065:	e8 f9 fc ff ff       	callq  401d63 <notify_server>
  40206a:	48 83 c4 08          	add    $0x8,%rsp
  40206e:	c3                   	retq   
  40206f:	b8 00 00 00 00       	mov    $0x0,%eax
  402074:	e8 60 fc ff ff       	callq  401cd9 <check_fail>

0000000000402079 <bushandler>:
  402079:	48 83 ec 08          	sub    $0x8,%rsp
  40207d:	83 3d 84 34 20 00 00 	cmpl   $0x0,0x203484(%rip)        # 605508 <is_checker>
  402084:	74 16                	je     40209c <bushandler+0x23>
  402086:	48 8d 3d 6f 15 00 00 	lea    0x156f(%rip),%rdi        # 4035fc <_IO_stdin_used+0x4bc>
  40208d:	e8 2e ec ff ff       	callq  400cc0 <puts@plt>
  402092:	b8 00 00 00 00       	mov    $0x0,%eax
  402097:	e8 3d fc ff ff       	callq  401cd9 <check_fail>
  40209c:	48 8d 3d c5 16 00 00 	lea    0x16c5(%rip),%rdi        # 403768 <_IO_stdin_used+0x628>
  4020a3:	e8 18 ec ff ff       	callq  400cc0 <puts@plt>
  4020a8:	48 8d 3d 57 15 00 00 	lea    0x1557(%rip),%rdi        # 403606 <_IO_stdin_used+0x4c6>
  4020af:	e8 0c ec ff ff       	callq  400cc0 <puts@plt>
  4020b4:	be 00 00 00 00       	mov    $0x0,%esi
  4020b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4020be:	e8 a0 fc ff ff       	callq  401d63 <notify_server>
  4020c3:	bf 01 00 00 00       	mov    $0x1,%edi
  4020c8:	e8 63 ed ff ff       	callq  400e30 <exit@plt>

00000000004020cd <seghandler>:
  4020cd:	48 83 ec 08          	sub    $0x8,%rsp
  4020d1:	83 3d 30 34 20 00 00 	cmpl   $0x0,0x203430(%rip)        # 605508 <is_checker>
  4020d8:	74 16                	je     4020f0 <seghandler+0x23>
  4020da:	48 8d 3d 3b 15 00 00 	lea    0x153b(%rip),%rdi        # 40361c <_IO_stdin_used+0x4dc>
  4020e1:	e8 da eb ff ff       	callq  400cc0 <puts@plt>
  4020e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020eb:	e8 e9 fb ff ff       	callq  401cd9 <check_fail>
  4020f0:	48 8d 3d 91 16 00 00 	lea    0x1691(%rip),%rdi        # 403788 <_IO_stdin_used+0x648>
  4020f7:	e8 c4 eb ff ff       	callq  400cc0 <puts@plt>
  4020fc:	48 8d 3d 03 15 00 00 	lea    0x1503(%rip),%rdi        # 403606 <_IO_stdin_used+0x4c6>
  402103:	e8 b8 eb ff ff       	callq  400cc0 <puts@plt>
  402108:	be 00 00 00 00       	mov    $0x0,%esi
  40210d:	bf 00 00 00 00       	mov    $0x0,%edi
  402112:	e8 4c fc ff ff       	callq  401d63 <notify_server>
  402117:	bf 01 00 00 00       	mov    $0x1,%edi
  40211c:	e8 0f ed ff ff       	callq  400e30 <exit@plt>

0000000000402121 <illegalhandler>:
  402121:	48 83 ec 08          	sub    $0x8,%rsp
  402125:	83 3d dc 33 20 00 00 	cmpl   $0x0,0x2033dc(%rip)        # 605508 <is_checker>
  40212c:	74 16                	je     402144 <illegalhandler+0x23>
  40212e:	48 8d 3d fa 14 00 00 	lea    0x14fa(%rip),%rdi        # 40362f <_IO_stdin_used+0x4ef>
  402135:	e8 86 eb ff ff       	callq  400cc0 <puts@plt>
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 95 fb ff ff       	callq  401cd9 <check_fail>
  402144:	48 8d 3d 65 16 00 00 	lea    0x1665(%rip),%rdi        # 4037b0 <_IO_stdin_used+0x670>
  40214b:	e8 70 eb ff ff       	callq  400cc0 <puts@plt>
  402150:	48 8d 3d af 14 00 00 	lea    0x14af(%rip),%rdi        # 403606 <_IO_stdin_used+0x4c6>
  402157:	e8 64 eb ff ff       	callq  400cc0 <puts@plt>
  40215c:	be 00 00 00 00       	mov    $0x0,%esi
  402161:	bf 00 00 00 00       	mov    $0x0,%edi
  402166:	e8 f8 fb ff ff       	callq  401d63 <notify_server>
  40216b:	bf 01 00 00 00       	mov    $0x1,%edi
  402170:	e8 bb ec ff ff       	callq  400e30 <exit@plt>

0000000000402175 <sigalrmhandler>:
  402175:	48 83 ec 08          	sub    $0x8,%rsp
  402179:	83 3d 88 33 20 00 00 	cmpl   $0x0,0x203388(%rip)        # 605508 <is_checker>
  402180:	74 16                	je     402198 <sigalrmhandler+0x23>
  402182:	48 8d 3d ba 14 00 00 	lea    0x14ba(%rip),%rdi        # 403643 <_IO_stdin_used+0x503>
  402189:	e8 32 eb ff ff       	callq  400cc0 <puts@plt>
  40218e:	b8 00 00 00 00       	mov    $0x0,%eax
  402193:	e8 41 fb ff ff       	callq  401cd9 <check_fail>
  402198:	ba 05 00 00 00       	mov    $0x5,%edx
  40219d:	48 8d 35 3c 16 00 00 	lea    0x163c(%rip),%rsi        # 4037e0 <_IO_stdin_used+0x6a0>
  4021a4:	bf 01 00 00 00       	mov    $0x1,%edi
  4021a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ae:	e8 2d ec ff ff       	callq  400de0 <__printf_chk@plt>
  4021b3:	be 00 00 00 00       	mov    $0x0,%esi
  4021b8:	bf 00 00 00 00       	mov    $0x0,%edi
  4021bd:	e8 a1 fb ff ff       	callq  401d63 <notify_server>
  4021c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c7:	e8 64 ec ff ff       	callq  400e30 <exit@plt>

00000000004021cc <launch>:
  4021cc:	55                   	push   %rbp
  4021cd:	48 89 e5             	mov    %rsp,%rbp
  4021d0:	48 83 ec 10          	sub    $0x10,%rsp
  4021d4:	48 89 fa             	mov    %rdi,%rdx
  4021d7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021de:	00 00 
  4021e0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4021e4:	31 c0                	xor    %eax,%eax
  4021e6:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4021ea:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4021ee:	48 29 c4             	sub    %rax,%rsp
  4021f1:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4021f6:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4021fa:	be f4 00 00 00       	mov    $0xf4,%esi
  4021ff:	e8 fc ea ff ff       	callq  400d00 <memset@plt>
  402204:	48 8b 05 95 32 20 00 	mov    0x203295(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  40220b:	48 39 05 de 32 20 00 	cmp    %rax,0x2032de(%rip)        # 6054f0 <infile>
  402212:	74 3a                	je     40224e <launch+0x82>
  402214:	c7 05 de 32 20 00 00 	movl   $0x0,0x2032de(%rip)        # 6054fc <vlevel>
  40221b:	00 00 00 
  40221e:	b8 00 00 00 00       	mov    $0x0,%eax
  402223:	e8 f6 f8 ff ff       	callq  401b1e <test>
  402228:	83 3d d9 32 20 00 00 	cmpl   $0x0,0x2032d9(%rip)        # 605508 <is_checker>
  40222f:	75 35                	jne    402266 <launch+0x9a>
  402231:	48 8d 3d 2b 14 00 00 	lea    0x142b(%rip),%rdi        # 403663 <_IO_stdin_used+0x523>
  402238:	e8 83 ea ff ff       	callq  400cc0 <puts@plt>
  40223d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402241:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402248:	00 00 
  40224a:	75 30                	jne    40227c <launch+0xb0>
  40224c:	c9                   	leaveq 
  40224d:	c3                   	retq   
  40224e:	48 8d 35 f6 13 00 00 	lea    0x13f6(%rip),%rsi        # 40364b <_IO_stdin_used+0x50b>
  402255:	bf 01 00 00 00       	mov    $0x1,%edi
  40225a:	b8 00 00 00 00       	mov    $0x0,%eax
  40225f:	e8 7c eb ff ff       	callq  400de0 <__printf_chk@plt>
  402264:	eb ae                	jmp    402214 <launch+0x48>
  402266:	48 8d 3d eb 13 00 00 	lea    0x13eb(%rip),%rdi        # 403658 <_IO_stdin_used+0x518>
  40226d:	e8 4e ea ff ff       	callq  400cc0 <puts@plt>
  402272:	b8 00 00 00 00       	mov    $0x0,%eax
  402277:	e8 5d fa ff ff       	callq  401cd9 <check_fail>
  40227c:	e8 5f ea ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402281 <stable_launch>:
  402281:	53                   	push   %rbx
  402282:	48 89 3d 5f 32 20 00 	mov    %rdi,0x20325f(%rip)        # 6054e8 <global_offset>
  402289:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40228f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402295:	b9 32 01 00 00       	mov    $0x132,%ecx
  40229a:	ba 07 00 00 00       	mov    $0x7,%edx
  40229f:	be 00 00 10 00       	mov    $0x100000,%esi
  4022a4:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4022a9:	e8 42 ea ff ff       	callq  400cf0 <mmap@plt>
  4022ae:	48 89 c3             	mov    %rax,%rbx
  4022b1:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4022b7:	75 43                	jne    4022fc <stable_launch+0x7b>
  4022b9:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4022c0:	48 89 15 69 3e 20 00 	mov    %rdx,0x203e69(%rip)        # 606130 <stack_top>
  4022c7:	48 89 e0             	mov    %rsp,%rax
  4022ca:	48 89 d4             	mov    %rdx,%rsp
  4022cd:	48 89 c2             	mov    %rax,%rdx
  4022d0:	48 89 15 09 32 20 00 	mov    %rdx,0x203209(%rip)        # 6054e0 <global_save_stack>
  4022d7:	48 8b 3d 0a 32 20 00 	mov    0x20320a(%rip),%rdi        # 6054e8 <global_offset>
  4022de:	e8 e9 fe ff ff       	callq  4021cc <launch>
  4022e3:	48 8b 05 f6 31 20 00 	mov    0x2031f6(%rip),%rax        # 6054e0 <global_save_stack>
  4022ea:	48 89 c4             	mov    %rax,%rsp
  4022ed:	be 00 00 10 00       	mov    $0x100000,%esi
  4022f2:	48 89 df             	mov    %rbx,%rdi
  4022f5:	e8 d6 ea ff ff       	callq  400dd0 <munmap@plt>
  4022fa:	5b                   	pop    %rbx
  4022fb:	c3                   	retq   
  4022fc:	be 00 00 10 00       	mov    $0x100000,%esi
  402301:	48 89 c7             	mov    %rax,%rdi
  402304:	e8 c7 ea ff ff       	callq  400dd0 <munmap@plt>
  402309:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40230e:	48 8d 15 03 15 00 00 	lea    0x1503(%rip),%rdx        # 403818 <_IO_stdin_used+0x6d8>
  402315:	be 01 00 00 00       	mov    $0x1,%esi
  40231a:	48 8b 3d 9f 31 20 00 	mov    0x20319f(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402321:	b8 00 00 00 00       	mov    $0x0,%eax
  402326:	e8 25 eb ff ff       	callq  400e50 <__fprintf_chk@plt>
  40232b:	bf 01 00 00 00       	mov    $0x1,%edi
  402330:	e8 fb ea ff ff       	callq  400e30 <exit@plt>

0000000000402335 <rio_readinitb>:
  402335:	89 37                	mov    %esi,(%rdi)
  402337:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40233e:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402342:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402346:	c3                   	retq   

0000000000402347 <sigalrm_handler>:
  402347:	48 83 ec 08          	sub    $0x8,%rsp
  40234b:	b9 00 00 00 00       	mov    $0x0,%ecx
  402350:	48 8d 15 f9 14 00 00 	lea    0x14f9(%rip),%rdx        # 403850 <trans_char+0x10>
  402357:	be 01 00 00 00       	mov    $0x1,%esi
  40235c:	48 8b 3d 5d 31 20 00 	mov    0x20315d(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402363:	b8 00 00 00 00       	mov    $0x0,%eax
  402368:	e8 e3 ea ff ff       	callq  400e50 <__fprintf_chk@plt>
  40236d:	bf 01 00 00 00       	mov    $0x1,%edi
  402372:	e8 b9 ea ff ff       	callq  400e30 <exit@plt>

0000000000402377 <rio_writen>:
  402377:	41 55                	push   %r13
  402379:	41 54                	push   %r12
  40237b:	55                   	push   %rbp
  40237c:	53                   	push   %rbx
  40237d:	48 83 ec 08          	sub    $0x8,%rsp
  402381:	41 89 fc             	mov    %edi,%r12d
  402384:	48 89 f5             	mov    %rsi,%rbp
  402387:	49 89 d5             	mov    %rdx,%r13
  40238a:	48 89 d3             	mov    %rdx,%rbx
  40238d:	eb 06                	jmp    402395 <rio_writen+0x1e>
  40238f:	48 29 c3             	sub    %rax,%rbx
  402392:	48 01 c5             	add    %rax,%rbp
  402395:	48 85 db             	test   %rbx,%rbx
  402398:	74 24                	je     4023be <rio_writen+0x47>
  40239a:	48 89 da             	mov    %rbx,%rdx
  40239d:	48 89 ee             	mov    %rbp,%rsi
  4023a0:	44 89 e7             	mov    %r12d,%edi
  4023a3:	e8 28 e9 ff ff       	callq  400cd0 <write@plt>
  4023a8:	48 85 c0             	test   %rax,%rax
  4023ab:	7f e2                	jg     40238f <rio_writen+0x18>
  4023ad:	e8 ce e8 ff ff       	callq  400c80 <__errno_location@plt>
  4023b2:	83 38 04             	cmpl   $0x4,(%rax)
  4023b5:	75 15                	jne    4023cc <rio_writen+0x55>
  4023b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023bc:	eb d1                	jmp    40238f <rio_writen+0x18>
  4023be:	4c 89 e8             	mov    %r13,%rax
  4023c1:	48 83 c4 08          	add    $0x8,%rsp
  4023c5:	5b                   	pop    %rbx
  4023c6:	5d                   	pop    %rbp
  4023c7:	41 5c                	pop    %r12
  4023c9:	41 5d                	pop    %r13
  4023cb:	c3                   	retq   
  4023cc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023d3:	eb ec                	jmp    4023c1 <rio_writen+0x4a>

00000000004023d5 <rio_read>:
  4023d5:	41 55                	push   %r13
  4023d7:	41 54                	push   %r12
  4023d9:	55                   	push   %rbp
  4023da:	53                   	push   %rbx
  4023db:	48 83 ec 08          	sub    $0x8,%rsp
  4023df:	48 89 fb             	mov    %rdi,%rbx
  4023e2:	49 89 f5             	mov    %rsi,%r13
  4023e5:	49 89 d4             	mov    %rdx,%r12
  4023e8:	eb 0a                	jmp    4023f4 <rio_read+0x1f>
  4023ea:	e8 91 e8 ff ff       	callq  400c80 <__errno_location@plt>
  4023ef:	83 38 04             	cmpl   $0x4,(%rax)
  4023f2:	75 5c                	jne    402450 <rio_read+0x7b>
  4023f4:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4023f7:	85 ed                	test   %ebp,%ebp
  4023f9:	7f 24                	jg     40241f <rio_read+0x4a>
  4023fb:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4023ff:	8b 3b                	mov    (%rbx),%edi
  402401:	ba 00 20 00 00       	mov    $0x2000,%edx
  402406:	48 89 ee             	mov    %rbp,%rsi
  402409:	e8 22 e9 ff ff       	callq  400d30 <read@plt>
  40240e:	89 43 04             	mov    %eax,0x4(%rbx)
  402411:	85 c0                	test   %eax,%eax
  402413:	78 d5                	js     4023ea <rio_read+0x15>
  402415:	85 c0                	test   %eax,%eax
  402417:	74 40                	je     402459 <rio_read+0x84>
  402419:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40241d:	eb d5                	jmp    4023f4 <rio_read+0x1f>
  40241f:	89 e8                	mov    %ebp,%eax
  402421:	4c 39 e0             	cmp    %r12,%rax
  402424:	72 03                	jb     402429 <rio_read+0x54>
  402426:	44 89 e5             	mov    %r12d,%ebp
  402429:	4c 63 e5             	movslq %ebp,%r12
  40242c:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402430:	4c 89 e2             	mov    %r12,%rdx
  402433:	4c 89 ef             	mov    %r13,%rdi
  402436:	e8 45 e9 ff ff       	callq  400d80 <memcpy@plt>
  40243b:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40243f:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402442:	4c 89 e0             	mov    %r12,%rax
  402445:	48 83 c4 08          	add    $0x8,%rsp
  402449:	5b                   	pop    %rbx
  40244a:	5d                   	pop    %rbp
  40244b:	41 5c                	pop    %r12
  40244d:	41 5d                	pop    %r13
  40244f:	c3                   	retq   
  402450:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402457:	eb ec                	jmp    402445 <rio_read+0x70>
  402459:	b8 00 00 00 00       	mov    $0x0,%eax
  40245e:	eb e5                	jmp    402445 <rio_read+0x70>

0000000000402460 <rio_readlineb>:
  402460:	41 55                	push   %r13
  402462:	41 54                	push   %r12
  402464:	55                   	push   %rbp
  402465:	53                   	push   %rbx
  402466:	48 83 ec 18          	sub    $0x18,%rsp
  40246a:	49 89 fd             	mov    %rdi,%r13
  40246d:	48 89 f5             	mov    %rsi,%rbp
  402470:	49 89 d4             	mov    %rdx,%r12
  402473:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40247a:	00 00 
  40247c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402481:	31 c0                	xor    %eax,%eax
  402483:	bb 01 00 00 00       	mov    $0x1,%ebx
  402488:	4c 39 e3             	cmp    %r12,%rbx
  40248b:	73 47                	jae    4024d4 <rio_readlineb+0x74>
  40248d:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402492:	ba 01 00 00 00       	mov    $0x1,%edx
  402497:	4c 89 ef             	mov    %r13,%rdi
  40249a:	e8 36 ff ff ff       	callq  4023d5 <rio_read>
  40249f:	83 f8 01             	cmp    $0x1,%eax
  4024a2:	75 1c                	jne    4024c0 <rio_readlineb+0x60>
  4024a4:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4024a8:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4024ad:	88 55 00             	mov    %dl,0x0(%rbp)
  4024b0:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4024b5:	74 1a                	je     4024d1 <rio_readlineb+0x71>
  4024b7:	48 83 c3 01          	add    $0x1,%rbx
  4024bb:	48 89 c5             	mov    %rax,%rbp
  4024be:	eb c8                	jmp    402488 <rio_readlineb+0x28>
  4024c0:	85 c0                	test   %eax,%eax
  4024c2:	75 32                	jne    4024f6 <rio_readlineb+0x96>
  4024c4:	48 83 fb 01          	cmp    $0x1,%rbx
  4024c8:	75 0a                	jne    4024d4 <rio_readlineb+0x74>
  4024ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4024cf:	eb 0a                	jmp    4024db <rio_readlineb+0x7b>
  4024d1:	48 89 c5             	mov    %rax,%rbp
  4024d4:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4024d8:	48 89 d8             	mov    %rbx,%rax
  4024db:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4024e0:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4024e7:	00 00 
  4024e9:	75 14                	jne    4024ff <rio_readlineb+0x9f>
  4024eb:	48 83 c4 18          	add    $0x18,%rsp
  4024ef:	5b                   	pop    %rbx
  4024f0:	5d                   	pop    %rbp
  4024f1:	41 5c                	pop    %r12
  4024f3:	41 5d                	pop    %r13
  4024f5:	c3                   	retq   
  4024f6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024fd:	eb dc                	jmp    4024db <rio_readlineb+0x7b>
  4024ff:	e8 dc e7 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402504 <urlencode>:
  402504:	41 54                	push   %r12
  402506:	55                   	push   %rbp
  402507:	53                   	push   %rbx
  402508:	48 83 ec 10          	sub    $0x10,%rsp
  40250c:	48 89 fb             	mov    %rdi,%rbx
  40250f:	48 89 f5             	mov    %rsi,%rbp
  402512:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402519:	00 00 
  40251b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402520:	31 c0                	xor    %eax,%eax
  402522:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402529:	f2 ae                	repnz scas %es:(%rdi),%al
  40252b:	48 89 ce             	mov    %rcx,%rsi
  40252e:	48 f7 d6             	not    %rsi
  402531:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402534:	eb 0f                	jmp    402545 <urlencode+0x41>
  402536:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40253a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40253e:	48 83 c3 01          	add    $0x1,%rbx
  402542:	44 89 e0             	mov    %r12d,%eax
  402545:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402549:	85 c0                	test   %eax,%eax
  40254b:	0f 84 a8 00 00 00    	je     4025f9 <urlencode+0xf5>
  402551:	44 0f b6 03          	movzbl (%rbx),%r8d
  402555:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402559:	0f 94 c2             	sete   %dl
  40255c:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402560:	0f 94 c0             	sete   %al
  402563:	08 c2                	or     %al,%dl
  402565:	75 cf                	jne    402536 <urlencode+0x32>
  402567:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40256b:	74 c9                	je     402536 <urlencode+0x32>
  40256d:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402571:	74 c3                	je     402536 <urlencode+0x32>
  402573:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402577:	3c 09                	cmp    $0x9,%al
  402579:	76 bb                	jbe    402536 <urlencode+0x32>
  40257b:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40257f:	3c 19                	cmp    $0x19,%al
  402581:	76 b3                	jbe    402536 <urlencode+0x32>
  402583:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402587:	3c 19                	cmp    $0x19,%al
  402589:	76 ab                	jbe    402536 <urlencode+0x32>
  40258b:	41 80 f8 20          	cmp    $0x20,%r8b
  40258f:	74 56                	je     4025e7 <urlencode+0xe3>
  402591:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402595:	3c 5f                	cmp    $0x5f,%al
  402597:	0f 96 c2             	setbe  %dl
  40259a:	41 80 f8 09          	cmp    $0x9,%r8b
  40259e:	0f 94 c0             	sete   %al
  4025a1:	08 c2                	or     %al,%dl
  4025a3:	74 4f                	je     4025f4 <urlencode+0xf0>
  4025a5:	48 89 e7             	mov    %rsp,%rdi
  4025a8:	45 0f b6 c0          	movzbl %r8b,%r8d
  4025ac:	48 8d 0d 35 13 00 00 	lea    0x1335(%rip),%rcx        # 4038e8 <trans_char+0xa8>
  4025b3:	ba 08 00 00 00       	mov    $0x8,%edx
  4025b8:	be 01 00 00 00       	mov    $0x1,%esi
  4025bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c2:	e8 99 e8 ff ff       	callq  400e60 <__sprintf_chk@plt>
  4025c7:	0f b6 04 24          	movzbl (%rsp),%eax
  4025cb:	88 45 00             	mov    %al,0x0(%rbp)
  4025ce:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4025d3:	88 45 01             	mov    %al,0x1(%rbp)
  4025d6:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4025db:	88 45 02             	mov    %al,0x2(%rbp)
  4025de:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4025e2:	e9 57 ff ff ff       	jmpq   40253e <urlencode+0x3a>
  4025e7:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4025eb:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4025ef:	e9 4a ff ff ff       	jmpq   40253e <urlencode+0x3a>
  4025f4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025f9:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4025fe:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402605:	00 00 
  402607:	75 09                	jne    402612 <urlencode+0x10e>
  402609:	48 83 c4 10          	add    $0x10,%rsp
  40260d:	5b                   	pop    %rbx
  40260e:	5d                   	pop    %rbp
  40260f:	41 5c                	pop    %r12
  402611:	c3                   	retq   
  402612:	e8 c9 e6 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402617 <submitr>:
  402617:	41 57                	push   %r15
  402619:	41 56                	push   %r14
  40261b:	41 55                	push   %r13
  40261d:	41 54                	push   %r12
  40261f:	55                   	push   %rbp
  402620:	53                   	push   %rbx
  402621:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402628:	49 89 fd             	mov    %rdi,%r13
  40262b:	89 74 24 14          	mov    %esi,0x14(%rsp)
  40262f:	49 89 d7             	mov    %rdx,%r15
  402632:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402637:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40263c:	4d 89 ce             	mov    %r9,%r14
  40263f:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402646:	00 
  402647:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40264e:	00 00 
  402650:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402657:	00 
  402658:	31 c0                	xor    %eax,%eax
  40265a:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402661:	00 
  402662:	ba 00 00 00 00       	mov    $0x0,%edx
  402667:	be 01 00 00 00       	mov    $0x1,%esi
  40266c:	bf 02 00 00 00       	mov    $0x2,%edi
  402671:	e8 fa e7 ff ff       	callq  400e70 <socket@plt>
  402676:	85 c0                	test   %eax,%eax
  402678:	0f 88 a9 02 00 00    	js     402927 <submitr+0x310>
  40267e:	89 c3                	mov    %eax,%ebx
  402680:	4c 89 ef             	mov    %r13,%rdi
  402683:	e8 c8 e6 ff ff       	callq  400d50 <gethostbyname@plt>
  402688:	48 85 c0             	test   %rax,%rax
  40268b:	0f 84 e2 02 00 00    	je     402973 <submitr+0x35c>
  402691:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402696:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  40269d:	00 00 
  40269f:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  4026a6:	00 
  4026a7:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  4026ae:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4026b5:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026b9:	48 8b 40 18          	mov    0x18(%rax),%rax
  4026bd:	48 8b 30             	mov    (%rax),%rsi
  4026c0:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  4026c5:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4026ca:	e8 91 e6 ff ff       	callq  400d60 <__memmove_chk@plt>
  4026cf:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4026d4:	66 c1 c8 08          	ror    $0x8,%ax
  4026d8:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  4026dd:	ba 10 00 00 00       	mov    $0x10,%edx
  4026e2:	4c 89 e6             	mov    %r12,%rsi
  4026e5:	89 df                	mov    %ebx,%edi
  4026e7:	e8 54 e7 ff ff       	callq  400e40 <connect@plt>
  4026ec:	85 c0                	test   %eax,%eax
  4026ee:	0f 88 e7 02 00 00    	js     4029db <submitr+0x3c4>
  4026f4:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4026fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402700:	48 89 f1             	mov    %rsi,%rcx
  402703:	4c 89 f7             	mov    %r14,%rdi
  402706:	f2 ae                	repnz scas %es:(%rdi),%al
  402708:	48 89 ca             	mov    %rcx,%rdx
  40270b:	48 f7 d2             	not    %rdx
  40270e:	48 89 f1             	mov    %rsi,%rcx
  402711:	4c 89 ff             	mov    %r15,%rdi
  402714:	f2 ae                	repnz scas %es:(%rdi),%al
  402716:	48 f7 d1             	not    %rcx
  402719:	49 89 c8             	mov    %rcx,%r8
  40271c:	48 89 f1             	mov    %rsi,%rcx
  40271f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402724:	f2 ae                	repnz scas %es:(%rdi),%al
  402726:	48 f7 d1             	not    %rcx
  402729:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40272e:	48 89 f1             	mov    %rsi,%rcx
  402731:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402736:	f2 ae                	repnz scas %es:(%rdi),%al
  402738:	48 89 c8             	mov    %rcx,%rax
  40273b:	48 f7 d0             	not    %rax
  40273e:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402743:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402748:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40274f:	00 
  402750:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402756:	0f 87 d9 02 00 00    	ja     402a35 <submitr+0x41e>
  40275c:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402763:	00 
  402764:	b9 00 04 00 00       	mov    $0x400,%ecx
  402769:	b8 00 00 00 00       	mov    $0x0,%eax
  40276e:	48 89 f7             	mov    %rsi,%rdi
  402771:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402774:	4c 89 f7             	mov    %r14,%rdi
  402777:	e8 88 fd ff ff       	callq  402504 <urlencode>
  40277c:	85 c0                	test   %eax,%eax
  40277e:	0f 88 24 03 00 00    	js     402aa8 <submitr+0x491>
  402784:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  40278b:	00 
  40278c:	41 55                	push   %r13
  40278e:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  402795:	00 
  402796:	50                   	push   %rax
  402797:	4d 89 f9             	mov    %r15,%r9
  40279a:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40279f:	48 8d 0d d2 10 00 00 	lea    0x10d2(%rip),%rcx        # 403878 <trans_char+0x38>
  4027a6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027ab:	be 01 00 00 00       	mov    $0x1,%esi
  4027b0:	4c 89 e7             	mov    %r12,%rdi
  4027b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4027b8:	e8 a3 e6 ff ff       	callq  400e60 <__sprintf_chk@plt>
  4027bd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4027c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c9:	4c 89 e7             	mov    %r12,%rdi
  4027cc:	f2 ae                	repnz scas %es:(%rdi),%al
  4027ce:	48 89 ca             	mov    %rcx,%rdx
  4027d1:	48 f7 d2             	not    %rdx
  4027d4:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4027d8:	4c 89 e6             	mov    %r12,%rsi
  4027db:	89 df                	mov    %ebx,%edi
  4027dd:	e8 95 fb ff ff       	callq  402377 <rio_writen>
  4027e2:	48 83 c4 10          	add    $0x10,%rsp
  4027e6:	48 85 c0             	test   %rax,%rax
  4027e9:	0f 88 44 03 00 00    	js     402b33 <submitr+0x51c>
  4027ef:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  4027f4:	89 de                	mov    %ebx,%esi
  4027f6:	4c 89 e7             	mov    %r12,%rdi
  4027f9:	e8 37 fb ff ff       	callq  402335 <rio_readinitb>
  4027fe:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402805:	00 
  402806:	ba 00 20 00 00       	mov    $0x2000,%edx
  40280b:	4c 89 e7             	mov    %r12,%rdi
  40280e:	e8 4d fc ff ff       	callq  402460 <rio_readlineb>
  402813:	48 85 c0             	test   %rax,%rax
  402816:	0f 8e 86 03 00 00    	jle    402ba2 <submitr+0x58b>
  40281c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402821:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402828:	00 
  402829:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402830:	00 
  402831:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402838:	00 
  402839:	48 8d 35 af 10 00 00 	lea    0x10af(%rip),%rsi        # 4038ef <trans_char+0xaf>
  402840:	b8 00 00 00 00       	mov    $0x0,%eax
  402845:	e8 76 e5 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  40284a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402851:	00 
  402852:	b9 03 00 00 00       	mov    $0x3,%ecx
  402857:	48 8d 3d a8 10 00 00 	lea    0x10a8(%rip),%rdi        # 403906 <trans_char+0xc6>
  40285e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402860:	0f 97 c0             	seta   %al
  402863:	1c 00                	sbb    $0x0,%al
  402865:	84 c0                	test   %al,%al
  402867:	0f 84 b3 03 00 00    	je     402c20 <submitr+0x609>
  40286d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402874:	00 
  402875:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40287a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40287f:	e8 dc fb ff ff       	callq  402460 <rio_readlineb>
  402884:	48 85 c0             	test   %rax,%rax
  402887:	7f c1                	jg     40284a <submitr+0x233>
  402889:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402890:	3a 20 43 
  402893:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40289a:	20 75 6e 
  40289d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028a1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028a5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028ac:	74 6f 20 
  4028af:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4028b6:	68 65 61 
  4028b9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028bd:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028c1:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4028c8:	66 72 6f 
  4028cb:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  4028d2:	20 72 65 
  4028d5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028d9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028dd:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4028e4:	73 65 72 
  4028e7:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028eb:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4028f2:	89 df                	mov    %ebx,%edi
  4028f4:	e8 27 e4 ff ff       	callq  400d20 <close@plt>
  4028f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028fe:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402905:	00 
  402906:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40290d:	00 00 
  40290f:	0f 85 7e 04 00 00    	jne    402d93 <submitr+0x77c>
  402915:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  40291c:	5b                   	pop    %rbx
  40291d:	5d                   	pop    %rbp
  40291e:	41 5c                	pop    %r12
  402920:	41 5d                	pop    %r13
  402922:	41 5e                	pop    %r14
  402924:	41 5f                	pop    %r15
  402926:	c3                   	retq   
  402927:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40292e:	3a 20 43 
  402931:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402938:	20 75 6e 
  40293b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40293f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402943:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40294a:	74 6f 20 
  40294d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402954:	65 20 73 
  402957:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40295b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40295f:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402966:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40296c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402971:	eb 8b                	jmp    4028fe <submitr+0x2e7>
  402973:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40297a:	3a 20 44 
  40297d:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402984:	20 75 6e 
  402987:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40298b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40298f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402996:	74 6f 20 
  402999:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4029a0:	76 65 20 
  4029a3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029a7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029ab:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4029b2:	72 20 61 
  4029b5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029b9:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4029c0:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4029c6:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4029ca:	89 df                	mov    %ebx,%edi
  4029cc:	e8 4f e3 ff ff       	callq  400d20 <close@plt>
  4029d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029d6:	e9 23 ff ff ff       	jmpq   4028fe <submitr+0x2e7>
  4029db:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4029e2:	3a 20 55 
  4029e5:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4029ec:	20 74 6f 
  4029ef:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029f3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029f7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4029fe:	65 63 74 
  402a01:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402a08:	68 65 20 
  402a0b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a0f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a13:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402a1a:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402a20:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402a24:	89 df                	mov    %ebx,%edi
  402a26:	e8 f5 e2 ff ff       	callq  400d20 <close@plt>
  402a2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a30:	e9 c9 fe ff ff       	jmpq   4028fe <submitr+0x2e7>
  402a35:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a3c:	3a 20 52 
  402a3f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a46:	20 73 74 
  402a49:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a4d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a51:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402a58:	74 6f 6f 
  402a5b:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402a62:	65 2e 20 
  402a65:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a69:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a6d:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402a74:	61 73 65 
  402a77:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402a7e:	49 54 52 
  402a81:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a85:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a89:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402a90:	55 46 00 
  402a93:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a97:	89 df                	mov    %ebx,%edi
  402a99:	e8 82 e2 ff ff       	callq  400d20 <close@plt>
  402a9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aa3:	e9 56 fe ff ff       	jmpq   4028fe <submitr+0x2e7>
  402aa8:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402aaf:	3a 20 52 
  402ab2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402ab9:	20 73 74 
  402abc:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ac0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ac4:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402acb:	63 6f 6e 
  402ace:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402ad5:	20 61 6e 
  402ad8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402adc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ae0:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402ae7:	67 61 6c 
  402aea:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402af1:	6e 70 72 
  402af4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402af8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402afc:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402b03:	6c 65 20 
  402b06:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402b0d:	63 74 65 
  402b10:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b14:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402b18:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402b1e:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402b22:	89 df                	mov    %ebx,%edi
  402b24:	e8 f7 e1 ff ff       	callq  400d20 <close@plt>
  402b29:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b2e:	e9 cb fd ff ff       	jmpq   4028fe <submitr+0x2e7>
  402b33:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b3a:	3a 20 43 
  402b3d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b44:	20 75 6e 
  402b47:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b4b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b4f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b56:	74 6f 20 
  402b59:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402b60:	20 74 6f 
  402b63:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b67:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b6b:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402b72:	72 65 73 
  402b75:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402b7c:	65 72 76 
  402b7f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b83:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b87:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402b8d:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402b91:	89 df                	mov    %ebx,%edi
  402b93:	e8 88 e1 ff ff       	callq  400d20 <close@plt>
  402b98:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b9d:	e9 5c fd ff ff       	jmpq   4028fe <submitr+0x2e7>
  402ba2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ba9:	3a 20 43 
  402bac:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402bb3:	20 75 6e 
  402bb6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bba:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bbe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bc5:	74 6f 20 
  402bc8:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402bcf:	66 69 72 
  402bd2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bd6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bda:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402be1:	61 64 65 
  402be4:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402beb:	6d 20 72 
  402bee:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bf2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402bf6:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402bfd:	20 73 65 
  402c00:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c04:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402c0b:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402c0f:	89 df                	mov    %ebx,%edi
  402c11:	e8 0a e1 ff ff       	callq  400d20 <close@plt>
  402c16:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c1b:	e9 de fc ff ff       	jmpq   4028fe <submitr+0x2e7>
  402c20:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c27:	00 
  402c28:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c2d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c32:	e8 29 f8 ff ff       	callq  402460 <rio_readlineb>
  402c37:	48 85 c0             	test   %rax,%rax
  402c3a:	0f 8e 96 00 00 00    	jle    402cd6 <submitr+0x6bf>
  402c40:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402c45:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402c4c:	0f 85 08 01 00 00    	jne    402d5a <submitr+0x743>
  402c52:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c59:	00 
  402c5a:	48 89 ef             	mov    %rbp,%rdi
  402c5d:	e8 4e e0 ff ff       	callq  400cb0 <strcpy@plt>
  402c62:	89 df                	mov    %ebx,%edi
  402c64:	e8 b7 e0 ff ff       	callq  400d20 <close@plt>
  402c69:	b9 04 00 00 00       	mov    $0x4,%ecx
  402c6e:	48 8d 3d 8b 0c 00 00 	lea    0xc8b(%rip),%rdi        # 403900 <trans_char+0xc0>
  402c75:	48 89 ee             	mov    %rbp,%rsi
  402c78:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c7a:	0f 97 c0             	seta   %al
  402c7d:	1c 00                	sbb    $0x0,%al
  402c7f:	0f be c0             	movsbl %al,%eax
  402c82:	85 c0                	test   %eax,%eax
  402c84:	0f 84 74 fc ff ff    	je     4028fe <submitr+0x2e7>
  402c8a:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c8f:	48 8d 3d 6e 0c 00 00 	lea    0xc6e(%rip),%rdi        # 403904 <trans_char+0xc4>
  402c96:	48 89 ee             	mov    %rbp,%rsi
  402c99:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c9b:	0f 97 c0             	seta   %al
  402c9e:	1c 00                	sbb    $0x0,%al
  402ca0:	0f be c0             	movsbl %al,%eax
  402ca3:	85 c0                	test   %eax,%eax
  402ca5:	0f 84 53 fc ff ff    	je     4028fe <submitr+0x2e7>
  402cab:	b9 03 00 00 00       	mov    $0x3,%ecx
  402cb0:	48 8d 3d 52 0c 00 00 	lea    0xc52(%rip),%rdi        # 403909 <trans_char+0xc9>
  402cb7:	48 89 ee             	mov    %rbp,%rsi
  402cba:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cbc:	0f 97 c0             	seta   %al
  402cbf:	1c 00                	sbb    $0x0,%al
  402cc1:	0f be c0             	movsbl %al,%eax
  402cc4:	85 c0                	test   %eax,%eax
  402cc6:	0f 84 32 fc ff ff    	je     4028fe <submitr+0x2e7>
  402ccc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cd1:	e9 28 fc ff ff       	jmpq   4028fe <submitr+0x2e7>
  402cd6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cdd:	3a 20 43 
  402ce0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ce7:	20 75 6e 
  402cea:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402cee:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402cf2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cf9:	74 6f 20 
  402cfc:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402d03:	73 74 61 
  402d06:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d0a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d0e:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402d15:	65 73 73 
  402d18:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402d1f:	72 6f 6d 
  402d22:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d26:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d2a:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402d31:	6c 74 20 
  402d34:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402d38:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402d3f:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402d45:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402d49:	89 df                	mov    %ebx,%edi
  402d4b:	e8 d0 df ff ff       	callq  400d20 <close@plt>
  402d50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d55:	e9 a4 fb ff ff       	jmpq   4028fe <submitr+0x2e7>
  402d5a:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402d61:	00 
  402d62:	48 8d 0d 4f 0b 00 00 	lea    0xb4f(%rip),%rcx        # 4038b8 <trans_char+0x78>
  402d69:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402d70:	be 01 00 00 00       	mov    $0x1,%esi
  402d75:	48 89 ef             	mov    %rbp,%rdi
  402d78:	b8 00 00 00 00       	mov    $0x0,%eax
  402d7d:	e8 de e0 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402d82:	89 df                	mov    %ebx,%edi
  402d84:	e8 97 df ff ff       	callq  400d20 <close@plt>
  402d89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d8e:	e9 6b fb ff ff       	jmpq   4028fe <submitr+0x2e7>
  402d93:	e8 48 df ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402d98 <init_timeout>:
  402d98:	85 ff                	test   %edi,%edi
  402d9a:	74 28                	je     402dc4 <init_timeout+0x2c>
  402d9c:	53                   	push   %rbx
  402d9d:	89 fb                	mov    %edi,%ebx
  402d9f:	85 ff                	test   %edi,%edi
  402da1:	78 1a                	js     402dbd <init_timeout+0x25>
  402da3:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 402347 <sigalrm_handler>
  402daa:	bf 0e 00 00 00       	mov    $0xe,%edi
  402daf:	e8 8c df ff ff       	callq  400d40 <signal@plt>
  402db4:	89 df                	mov    %ebx,%edi
  402db6:	e8 55 df ff ff       	callq  400d10 <alarm@plt>
  402dbb:	5b                   	pop    %rbx
  402dbc:	c3                   	retq   
  402dbd:	bb 00 00 00 00       	mov    $0x0,%ebx
  402dc2:	eb df                	jmp    402da3 <init_timeout+0xb>
  402dc4:	f3 c3                	repz retq 

0000000000402dc6 <init_driver>:
  402dc6:	41 54                	push   %r12
  402dc8:	55                   	push   %rbp
  402dc9:	53                   	push   %rbx
  402dca:	48 83 ec 20          	sub    $0x20,%rsp
  402dce:	49 89 fc             	mov    %rdi,%r12
  402dd1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402dd8:	00 00 
  402dda:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ddf:	31 c0                	xor    %eax,%eax
  402de1:	be 01 00 00 00       	mov    $0x1,%esi
  402de6:	bf 0d 00 00 00       	mov    $0xd,%edi
  402deb:	e8 50 df ff ff       	callq  400d40 <signal@plt>
  402df0:	be 01 00 00 00       	mov    $0x1,%esi
  402df5:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402dfa:	e8 41 df ff ff       	callq  400d40 <signal@plt>
  402dff:	be 01 00 00 00       	mov    $0x1,%esi
  402e04:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e09:	e8 32 df ff ff       	callq  400d40 <signal@plt>
  402e0e:	ba 00 00 00 00       	mov    $0x0,%edx
  402e13:	be 01 00 00 00       	mov    $0x1,%esi
  402e18:	bf 02 00 00 00       	mov    $0x2,%edi
  402e1d:	e8 4e e0 ff ff       	callq  400e70 <socket@plt>
  402e22:	85 c0                	test   %eax,%eax
  402e24:	0f 88 a3 00 00 00    	js     402ecd <init_driver+0x107>
  402e2a:	89 c3                	mov    %eax,%ebx
  402e2c:	48 8d 3d d9 0a 00 00 	lea    0xad9(%rip),%rdi        # 40390c <trans_char+0xcc>
  402e33:	e8 18 df ff ff       	callq  400d50 <gethostbyname@plt>
  402e38:	48 85 c0             	test   %rax,%rax
  402e3b:	0f 84 df 00 00 00    	je     402f20 <init_driver+0x15a>
  402e41:	48 89 e5             	mov    %rsp,%rbp
  402e44:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402e4b:	00 00 
  402e4d:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402e54:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402e5a:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e60:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e64:	48 8b 40 18          	mov    0x18(%rax),%rax
  402e68:	48 8b 30             	mov    (%rax),%rsi
  402e6b:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402e6f:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402e74:	e8 e7 de ff ff       	callq  400d60 <__memmove_chk@plt>
  402e79:	66 c7 44 24 02 8e 65 	movw   $0x658e,0x2(%rsp)
  402e80:	ba 10 00 00 00       	mov    $0x10,%edx
  402e85:	48 89 ee             	mov    %rbp,%rsi
  402e88:	89 df                	mov    %ebx,%edi
  402e8a:	e8 b1 df ff ff       	callq  400e40 <connect@plt>
  402e8f:	85 c0                	test   %eax,%eax
  402e91:	0f 88 fb 00 00 00    	js     402f92 <init_driver+0x1cc>
  402e97:	89 df                	mov    %ebx,%edi
  402e99:	e8 82 de ff ff       	callq  400d20 <close@plt>
  402e9e:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402ea5:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402eab:	b8 00 00 00 00       	mov    $0x0,%eax
  402eb0:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402eb5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402ebc:	00 00 
  402ebe:	0f 85 28 01 00 00    	jne    402fec <init_driver+0x226>
  402ec4:	48 83 c4 20          	add    $0x20,%rsp
  402ec8:	5b                   	pop    %rbx
  402ec9:	5d                   	pop    %rbp
  402eca:	41 5c                	pop    %r12
  402ecc:	c3                   	retq   
  402ecd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ed4:	3a 20 43 
  402ed7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ede:	20 75 6e 
  402ee1:	49 89 04 24          	mov    %rax,(%r12)
  402ee5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402eea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ef1:	74 6f 20 
  402ef4:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402efb:	65 20 73 
  402efe:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f03:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f08:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402f0f:	6b 65 
  402f11:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402f18:	00 
  402f19:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f1e:	eb 90                	jmp    402eb0 <init_driver+0xea>
  402f20:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f27:	3a 20 44 
  402f2a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f31:	20 75 6e 
  402f34:	49 89 04 24          	mov    %rax,(%r12)
  402f38:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f3d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f44:	74 6f 20 
  402f47:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f4e:	76 65 20 
  402f51:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f56:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f5b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402f62:	72 20 61 
  402f65:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402f6a:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402f71:	72 65 
  402f73:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402f7a:	73 
  402f7b:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402f81:	89 df                	mov    %ebx,%edi
  402f83:	e8 98 dd ff ff       	callq  400d20 <close@plt>
  402f88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f8d:	e9 1e ff ff ff       	jmpq   402eb0 <init_driver+0xea>
  402f92:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f99:	3a 20 55 
  402f9c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402fa3:	20 74 6f 
  402fa6:	49 89 04 24          	mov    %rax,(%r12)
  402faa:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402faf:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402fb6:	65 63 74 
  402fb9:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402fc0:	65 72 76 
  402fc3:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402fc8:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402fcd:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402fd4:	72 
  402fd5:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402fdb:	89 df                	mov    %ebx,%edi
  402fdd:	e8 3e dd ff ff       	callq  400d20 <close@plt>
  402fe2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fe7:	e9 c4 fe ff ff       	jmpq   402eb0 <init_driver+0xea>
  402fec:	e8 ef dc ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402ff1 <driver_post>:
  402ff1:	53                   	push   %rbx
  402ff2:	4c 89 cb             	mov    %r9,%rbx
  402ff5:	45 85 c0             	test   %r8d,%r8d
  402ff8:	75 18                	jne    403012 <driver_post+0x21>
  402ffa:	48 85 ff             	test   %rdi,%rdi
  402ffd:	74 05                	je     403004 <driver_post+0x13>
  402fff:	80 3f 00             	cmpb   $0x0,(%rdi)
  403002:	75 37                	jne    40303b <driver_post+0x4a>
  403004:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403009:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40300d:	44 89 c0             	mov    %r8d,%eax
  403010:	5b                   	pop    %rbx
  403011:	c3                   	retq   
  403012:	48 89 ca             	mov    %rcx,%rdx
  403015:	48 8d 35 ff 08 00 00 	lea    0x8ff(%rip),%rsi        # 40391b <trans_char+0xdb>
  40301c:	bf 01 00 00 00       	mov    $0x1,%edi
  403021:	b8 00 00 00 00       	mov    $0x0,%eax
  403026:	e8 b5 dd ff ff       	callq  400de0 <__printf_chk@plt>
  40302b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403030:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403034:	b8 00 00 00 00       	mov    $0x0,%eax
  403039:	eb d5                	jmp    403010 <driver_post+0x1f>
  40303b:	48 83 ec 08          	sub    $0x8,%rsp
  40303f:	41 51                	push   %r9
  403041:	49 89 c9             	mov    %rcx,%r9
  403044:	49 89 d0             	mov    %rdx,%r8
  403047:	48 89 f9             	mov    %rdi,%rcx
  40304a:	48 89 f2             	mov    %rsi,%rdx
  40304d:	be 65 8e 00 00       	mov    $0x8e65,%esi
  403052:	48 8d 3d b3 08 00 00 	lea    0x8b3(%rip),%rdi        # 40390c <trans_char+0xcc>
  403059:	e8 b9 f5 ff ff       	callq  402617 <submitr>
  40305e:	48 83 c4 10          	add    $0x10,%rsp
  403062:	eb ac                	jmp    403010 <driver_post+0x1f>

0000000000403064 <check>:
  403064:	89 f8                	mov    %edi,%eax
  403066:	c1 e8 1c             	shr    $0x1c,%eax
  403069:	85 c0                	test   %eax,%eax
  40306b:	74 1d                	je     40308a <check+0x26>
  40306d:	b9 00 00 00 00       	mov    $0x0,%ecx
  403072:	83 f9 1f             	cmp    $0x1f,%ecx
  403075:	7f 0d                	jg     403084 <check+0x20>
  403077:	89 f8                	mov    %edi,%eax
  403079:	d3 e8                	shr    %cl,%eax
  40307b:	3c 0a                	cmp    $0xa,%al
  40307d:	74 11                	je     403090 <check+0x2c>
  40307f:	83 c1 08             	add    $0x8,%ecx
  403082:	eb ee                	jmp    403072 <check+0xe>
  403084:	b8 01 00 00 00       	mov    $0x1,%eax
  403089:	c3                   	retq   
  40308a:	b8 00 00 00 00       	mov    $0x0,%eax
  40308f:	c3                   	retq   
  403090:	b8 00 00 00 00       	mov    $0x0,%eax
  403095:	c3                   	retq   

0000000000403096 <gencookie>:
  403096:	53                   	push   %rbx
  403097:	83 c7 01             	add    $0x1,%edi
  40309a:	e8 f1 db ff ff       	callq  400c90 <srandom@plt>
  40309f:	e8 fc dc ff ff       	callq  400da0 <random@plt>
  4030a4:	89 c3                	mov    %eax,%ebx
  4030a6:	89 c7                	mov    %eax,%edi
  4030a8:	e8 b7 ff ff ff       	callq  403064 <check>
  4030ad:	85 c0                	test   %eax,%eax
  4030af:	74 ee                	je     40309f <gencookie+0x9>
  4030b1:	89 d8                	mov    %ebx,%eax
  4030b3:	5b                   	pop    %rbx
  4030b4:	c3                   	retq   
  4030b5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4030bc:	00 00 00 
  4030bf:	90                   	nop

00000000004030c0 <__libc_csu_init>:
  4030c0:	41 57                	push   %r15
  4030c2:	41 56                	push   %r14
  4030c4:	49 89 d7             	mov    %rdx,%r15
  4030c7:	41 55                	push   %r13
  4030c9:	41 54                	push   %r12
  4030cb:	4c 8d 25 3e 1d 20 00 	lea    0x201d3e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  4030d2:	55                   	push   %rbp
  4030d3:	48 8d 2d 3e 1d 20 00 	lea    0x201d3e(%rip),%rbp        # 604e18 <__init_array_end>
  4030da:	53                   	push   %rbx
  4030db:	41 89 fd             	mov    %edi,%r13d
  4030de:	49 89 f6             	mov    %rsi,%r14
  4030e1:	4c 29 e5             	sub    %r12,%rbp
  4030e4:	48 83 ec 08          	sub    $0x8,%rsp
  4030e8:	48 c1 fd 03          	sar    $0x3,%rbp
  4030ec:	e8 57 db ff ff       	callq  400c48 <_init>
  4030f1:	48 85 ed             	test   %rbp,%rbp
  4030f4:	74 20                	je     403116 <__libc_csu_init+0x56>
  4030f6:	31 db                	xor    %ebx,%ebx
  4030f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4030ff:	00 
  403100:	4c 89 fa             	mov    %r15,%rdx
  403103:	4c 89 f6             	mov    %r14,%rsi
  403106:	44 89 ef             	mov    %r13d,%edi
  403109:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40310d:	48 83 c3 01          	add    $0x1,%rbx
  403111:	48 39 dd             	cmp    %rbx,%rbp
  403114:	75 ea                	jne    403100 <__libc_csu_init+0x40>
  403116:	48 83 c4 08          	add    $0x8,%rsp
  40311a:	5b                   	pop    %rbx
  40311b:	5d                   	pop    %rbp
  40311c:	41 5c                	pop    %r12
  40311e:	41 5d                	pop    %r13
  403120:	41 5e                	pop    %r14
  403122:	41 5f                	pop    %r15
  403124:	c3                   	retq   
  403125:	90                   	nop
  403126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40312d:	00 00 00 

0000000000403130 <__libc_csu_fini>:
  403130:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403134 <_fini>:
  403134:	48 83 ec 08          	sub    $0x8,%rsp
  403138:	48 83 c4 08          	add    $0x8,%rsp
  40313c:	c3                   	retq   
