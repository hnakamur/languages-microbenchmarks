
c/code:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <memset@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <memset@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <srand@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <srand@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <strtol@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <strtol@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <time@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <time@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <rand@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <rand@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	ff 25 4a 2f 00 00    	jmp    *0x2f4a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1096:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	45 31 c0             	xor    %r8d,%r8d
    10b6:	31 c9                	xor    %ecx,%ecx
    10b8:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1190 <main>
    10bf:	ff 15 fb 2e 00 00    	call   *0x2efb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10c5:	f4                   	hlt
    10c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cd:	00 00 00 

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4040 <__TMC_END__>
    10d7:	48 8d 05 62 2f 00 00 	lea    0x2f62(%rip),%rax        # 4040 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 de 2e 00 00 	mov    0x2ede(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmp    *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4040 <__TMC_END__>
    1107:	48 8d 35 32 2f 00 00 	lea    0x2f32(%rip),%rsi        # 4040 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    $1,%rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 ad 2e 00 00 	mov    0x2ead(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmp    *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	80 3d f5 2e 00 00 00 	cmpb   $0x0,0x2ef5(%rip)        # 4040 <__TMC_END__>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d 8a 2e 00 00 	cmpq   $0x0,0x2e8a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d d6 2e 00 00 	mov    0x2ed6(%rip),%rdi        # 4038 <__dso_handle>
    1162:	e8 29 ff ff ff       	call   1090 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	call   10d0 <deregister_tm_clones>
    116c:	c6 05 cd 2e 00 00 01 	movb   $0x1,0x2ecd(%rip)        # 4040 <__TMC_END__>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	ret
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	e9 77 ff ff ff       	jmp    1100 <register_tm_clones>
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001190 <main>:
#include "stdio.h"
#include "stdlib.h"
#include "stdint.h"
#include "time.h"

int main (int argc, char** argv) {
    1190:	41 57                	push   %r15
    1192:	41 56                	push   %r14
    1194:	53                   	push   %rbx
    1195:	48 81 ec 40 9c 00 00 	sub    $0x9c40,%rsp
  int u = atoi(argv[1]);               // Get an input number from the command line
    119c:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11a0:	45 31 f6             	xor    %r14d,%r14d

#ifdef __USE_EXTERN_INLINES
__extern_inline int
__NTH (atoi (const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
    11a3:	31 f6                	xor    %esi,%esi
    11a5:	ba 0a 00 00 00       	mov    $0xa,%edx
    11aa:	e8 b1 fe ff ff       	call   1060 <strtol@plt>
    11af:	48 89 c3             	mov    %rax,%rbx
  srand(time(NULL));                   // FIX random seed
    11b2:	31 ff                	xor    %edi,%edi
    11b4:	e8 b7 fe ff ff       	call   1070 <time@plt>
    11b9:	89 c7                	mov    %eax,%edi
    11bb:	e8 90 fe ff ff       	call   1050 <srand@plt>
  int r = rand() % 10000;              // Get a random integer 0 <= r < 10k
    11c0:	e8 bb fe ff ff       	call   1080 <rand@plt>
    11c5:	4c 63 f8             	movslq %eax,%r15
    11c8:	49 69 c7 ad 8b db 68 	imul   $0x68db8bad,%r15,%rax
    11cf:	48 89 c1             	mov    %rax,%rcx
    11d2:	48 c1 e9 3f          	shr    $0x3f,%rcx
    11d6:	48 c1 f8 2c          	sar    $0x2c,%rax
    11da:	01 c8                	add    %ecx,%eax
    11dc:	69 c0 10 27 00 00    	imul   $0x2710,%eax,%eax
    11e2:	41 29 c7             	sub    %eax,%r15d
    11e5:	48 89 e7             	mov    %rsp,%rdi
  int32_t a[10000] = {0};              // Array of 10k elements initialized to 0
    11e8:	ba 40 9c 00 00       	mov    $0x9c40,%edx
    11ed:	31 f6                	xor    %esi,%esi
    11ef:	e8 4c fe ff ff       	call   1040 <memset@plt>
    11f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    11fb:	00 00 00 00 00 
    1200:	42 8b 34 b4          	mov    (%rsp,%r14,4),%esi
    1204:	31 c9                	xor    %ecx,%ecx
    1206:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    120d:	00 00 00 
  for (int i = 0; i < 10000; i++) {    // 10k outer loop iterations
    for (int j = 0; j < 100000; j++) { // 100k inner loop iterations, per outer loop iteration
      a[i] = a[i] + j%u;               // Simple sum
    1210:	89 c8                	mov    %ecx,%eax
    1212:	99                   	cltd
    1213:	f7 fb                	idiv   %ebx
    1215:	89 d7                	mov    %edx,%edi
    1217:	01 f7                	add    %esi,%edi
    1219:	8d 41 01             	lea    0x1(%rcx),%eax
    121c:	99                   	cltd
    121d:	f7 fb                	idiv   %ebx
    121f:	41 89 d0             	mov    %edx,%r8d
    1222:	41 01 f8             	add    %edi,%r8d
    1225:	8d 41 02             	lea    0x2(%rcx),%eax
    1228:	99                   	cltd
    1229:	f7 fb                	idiv   %ebx
    122b:	89 d7                	mov    %edx,%edi
    122d:	8d 41 03             	lea    0x3(%rcx),%eax
    1230:	99                   	cltd
    1231:	f7 fb                	idiv   %ebx
    1233:	89 d6                	mov    %edx,%esi
    1235:	01 fe                	add    %edi,%esi
    1237:	44 01 c6             	add    %r8d,%esi
    for (int j = 0; j < 100000; j++) { // 100k inner loop iterations, per outer loop iteration
    123a:	83 c1 04             	add    $0x4,%ecx
    123d:	81 f9 a0 86 01 00    	cmp    $0x186a0,%ecx
    1243:	75 cb                	jne    1210 <main+0x80>
    }
    a[i] += r;                         // Add a random value to each element in array
    1245:	44 01 fe             	add    %r15d,%esi
    1248:	42 89 34 b4          	mov    %esi,(%rsp,%r14,4)
  for (int i = 0; i < 10000; i++) {    // 10k outer loop iterations
    124c:	49 ff c6             	inc    %r14
    124f:	49 81 fe 10 27 00 00 	cmp    $0x2710,%r14
    1256:	75 a8                	jne    1200 <main+0x70>
  }
  printf("%d\n", a[r]);                // Print out a single element from the array
    1258:	49 63 c7             	movslq %r15d,%rax
    125b:	8b 34 84             	mov    (%rsp,%rax,4),%esi
    125e:	48 8d 3d 9f 0d 00 00 	lea    0xd9f(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1265:	31 c0                	xor    %eax,%eax
    1267:	e8 c4 fd ff ff       	call   1030 <printf@plt>
}
    126c:	31 c0                	xor    %eax,%eax
    126e:	48 81 c4 40 9c 00 00 	add    $0x9c40,%rsp
    1275:	5b                   	pop    %rbx
    1276:	41 5e                	pop    %r14
    1278:	41 5f                	pop    %r15
    127a:	c3                   	ret

Disassembly of section .fini:

000000000000127c <_fini>:
    127c:	f3 0f 1e fa          	endbr64
    1280:	48 83 ec 08          	sub    $0x8,%rsp
    1284:	48 83 c4 08          	add    $0x8,%rsp
    1288:	c3                   	ret
