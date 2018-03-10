Loaded disassembler from /usr/share/jdk1.8.0_72/jre/lib/amd64/hsdis-amd64.so
Decoding compiled method 0x00007fe8f1100d90:
Code:
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1100f20: mov    0x8(%rsi),%r10d
  0x00007fe8f1100f24: shl    $0x3,%r10
  0x00007fe8f1100f28: cmp    %rax,%r10
  0x00007fe8f1100f2b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1100f31: nopw   0x0(%rax,%rax,1)
  0x00007fe8f1100f3c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1100f40: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1100f47: push   %rbp
  0x00007fe8f1100f48: sub    $0x30,%rsp
  0x00007fe8f1100f4c: mov    $0x7fe8ea6e16f8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1100f56: mov    0xdc(%rax),%edi
  0x00007fe8f1100f5c: add    $0x8,%edi
  0x00007fe8f1100f5f: mov    %edi,0xdc(%rax)
  0x00007fe8f1100f65: mov    $0x7fe8ea501618,%rax  ;   {metadata({method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1100f6f: and    $0x1ff8,%edi
  0x00007fe8f1100f75: cmp    $0x0,%edi
  0x00007fe8f1100f78: je     0x00007fe8f1101346  ;*aload_0
                                                ; - java.lang.String::equals@0 (line 977)

  0x00007fe8f1100f7e: cmp    %rdx,%rsi
  0x00007fe8f1100f81: mov    $0x7fe8ea6e16f8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1100f8b: mov    $0x108,%rdi
  0x00007fe8f1100f95: jne    0x00007fe8f1100fa5
  0x00007fe8f1100f9b: mov    $0x118,%rdi
  0x00007fe8f1100fa5: mov    (%rax,%rdi,1),%rbx
  0x00007fe8f1100fa9: lea    0x1(%rbx),%rbx
  0x00007fe8f1100fad: mov    %rbx,(%rax,%rdi,1)
  0x00007fe8f1100fb1: je     0x00007fe8f1101335  ;*if_acmpne
                                                ; - java.lang.String::equals@2 (line 977)

  0x00007fe8f1100fb7: cmp    $0x0,%rdx
  0x00007fe8f1100fbb: jne    0x00007fe8f1100fd6
  0x00007fe8f1100fbd: mov    $0x7fe8ea6e16f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1100fc7: orl    $0x100,0x120(%rbx)
  0x00007fe8f1100fd1: jmpq   0x00007fe8f1101096
  0x00007fe8f1100fd6: mov    $0x7c00016d0,%rcx  ;   {metadata('java/lang/String')}
  0x00007fe8f1100fe0: mov    0x8(%rdx),%edi
  0x00007fe8f1100fe3: shl    $0x3,%rdi
  0x00007fe8f1100fe7: cmp    %rdi,%rcx
  0x00007fe8f1100fea: jne    0x00007fe8f110107a
  0x00007fe8f1100ff0: mov    $0x7fe8ea6e16f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1100ffa: mov    0x8(%rdx),%ecx
  0x00007fe8f1100ffd: shl    $0x3,%rcx
  0x00007fe8f1101001: cmp    0x130(%rbx),%rcx
  0x00007fe8f1101008: jne    0x00007fe8f1101017
  0x00007fe8f110100a: addq   $0x1,0x138(%rbx)
  0x00007fe8f1101012: jmpq   0x00007fe8f110109b
  0x00007fe8f1101017: cmp    0x140(%rbx),%rcx
  0x00007fe8f110101e: jne    0x00007fe8f110102d
  0x00007fe8f1101020: addq   $0x1,0x148(%rbx)
  0x00007fe8f1101028: jmpq   0x00007fe8f110109b
  0x00007fe8f110102d: cmpq   $0x0,0x130(%rbx)
  0x00007fe8f1101038: jne    0x00007fe8f1101051
  0x00007fe8f110103a: mov    %rcx,0x130(%rbx)
  0x00007fe8f1101041: movq   $0x1,0x138(%rbx)
  0x00007fe8f110104c: jmpq   0x00007fe8f110109b
  0x00007fe8f1101051: cmpq   $0x0,0x140(%rbx)
  0x00007fe8f110105c: jne    0x00007fe8f1101075
  0x00007fe8f110105e: mov    %rcx,0x140(%rbx)
  0x00007fe8f1101065: movq   $0x1,0x148(%rbx)
  0x00007fe8f1101070: jmpq   0x00007fe8f110109b
  0x00007fe8f1101075: jmpq   0x00007fe8f110109b
  0x00007fe8f110107a: mov    $0x7fe8ea6e16f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1101084: subq   $0x1,0x128(%rbx)
  0x00007fe8f110108c: jmpq   0x00007fe8f1101096
  0x00007fe8f1101091: jmpq   0x00007fe8f110109b
  0x00007fe8f1101096: xor    %rax,%rax
  0x00007fe8f1101099: jmp    0x00007fe8f11010a5
  0x00007fe8f110109b: mov    $0x1,%rax          ;*instanceof
                                                ; - java.lang.String::equals@8 (line 980)

  0x00007fe8f11010a5: cmp    $0x0,%eax
  0x00007fe8f11010a8: mov    $0x7fe8ea6e16f8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f11010b2: mov    $0x158,%rdi
  0x00007fe8f11010bc: je     0x00007fe8f11010cc
  0x00007fe8f11010c2: mov    $0x168,%rdi
  0x00007fe8f11010cc: mov    (%rax,%rdi,1),%rbx
  0x00007fe8f11010d0: lea    0x1(%rbx),%rbx
  0x00007fe8f11010d4: mov    %rbx,(%rax,%rdi,1)
  0x00007fe8f11010d8: je     0x00007fe8f1101324  ;*ifeq
                                                ; - java.lang.String::equals@11 (line 980)

  0x00007fe8f11010de: cmp    $0x0,%rdx
  0x00007fe8f11010e2: jne    0x00007fe8f11010fd
  0x00007fe8f11010e4: mov    $0x7fe8ea6e16f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f11010ee: orl    $0x100,0x170(%rbx)
  0x00007fe8f11010f8: jmpq   0x00007fe8f11011bd
  0x00007fe8f11010fd: mov    $0x7c00016d0,%rax  ;   {metadata('java/lang/String')}
  0x00007fe8f1101107: mov    0x8(%rdx),%edi
  0x00007fe8f110110a: shl    $0x3,%rdi
  0x00007fe8f110110e: cmp    %rdi,%rax
  0x00007fe8f1101111: jne    0x00007fe8f11011a1
  0x00007fe8f1101117: mov    $0x7fe8ea6e16f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1101121: mov    0x8(%rdx),%eax
  0x00007fe8f1101124: shl    $0x3,%rax
  0x00007fe8f1101128: cmp    0x180(%rbx),%rax
  0x00007fe8f110112f: jne    0x00007fe8f110113e
  0x00007fe8f1101131: addq   $0x1,0x188(%rbx)
  0x00007fe8f1101139: jmpq   0x00007fe8f11011bd
  0x00007fe8f110113e: cmp    0x190(%rbx),%rax
  0x00007fe8f1101145: jne    0x00007fe8f1101154
  0x00007fe8f1101147: addq   $0x1,0x198(%rbx)
  0x00007fe8f110114f: jmpq   0x00007fe8f11011bd
  0x00007fe8f1101154: cmpq   $0x0,0x180(%rbx)
  0x00007fe8f110115f: jne    0x00007fe8f1101178
  0x00007fe8f1101161: mov    %rax,0x180(%rbx)
  0x00007fe8f1101168: movq   $0x1,0x188(%rbx)
  0x00007fe8f1101173: jmpq   0x00007fe8f11011bd
  0x00007fe8f1101178: cmpq   $0x0,0x190(%rbx)
  0x00007fe8f1101183: jne    0x00007fe8f110119c
  0x00007fe8f1101185: mov    %rax,0x190(%rbx)
  0x00007fe8f110118c: movq   $0x1,0x198(%rbx)
  0x00007fe8f1101197: jmpq   0x00007fe8f11011bd
  0x00007fe8f110119c: jmpq   0x00007fe8f11011bd
  0x00007fe8f11011a1: mov    $0x7fe8ea6e16f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f11011ab: subq   $0x1,0x178(%rbx)
  0x00007fe8f11011b3: jmpq   0x00007fe8f110135d
  0x00007fe8f11011b8: jmpq   0x00007fe8f11011bd
  0x00007fe8f11011bd: mov    %rdx,%rax          ;*checkcast
                                                ; - java.lang.String::equals@15 (line 981)

  0x00007fe8f11011c0: mov    0xc(%rsi),%esi
  0x00007fe8f11011c3: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::equals@20 (line 982)

  0x00007fe8f11011c7: mov    0xc(%rsi),%edi     ;*arraylength
                                                ; - java.lang.String::equals@23 (line 982)
                                                ; implicit exception: dispatches to 0x00007fe8f1101366
  0x00007fe8f11011ca: mov    0xc(%rax),%eax     ; implicit exception: dispatches to 0x00007fe8f110136b
  0x00007fe8f11011cd: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::equals@27 (line 983)

  0x00007fe8f11011d1: mov    0xc(%rax),%ebx     ;*arraylength
                                                ; - java.lang.String::equals@30 (line 983)
                                                ; implicit exception: dispatches to 0x00007fe8f1101370
  0x00007fe8f11011d4: cmp    %ebx,%edi
  0x00007fe8f11011d6: mov    $0x7fe8ea6e16f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f11011e0: mov    $0x1a8,%rdx
  0x00007fe8f11011ea: jne    0x00007fe8f11011fa
  0x00007fe8f11011f0: mov    $0x1b8,%rdx
  0x00007fe8f11011fa: mov    (%rbx,%rdx,1),%rcx
  0x00007fe8f11011fe: lea    0x1(%rcx),%rcx
  0x00007fe8f1101202: mov    %rcx,(%rbx,%rdx,1)
  0x00007fe8f1101206: jne    0x00007fe8f1101324  ;*if_icmpne
                                                ; - java.lang.String::equals@31 (line 983)

  0x00007fe8f110120c: mov    $0x0,%ebx
  0x00007fe8f1101211: jmpq   0x00007fe8f11012bf  ;*iload_3
                                                ; - java.lang.String::equals@49 (line 987)

  0x00007fe8f1101216: xchg   %ax,%ax
  0x00007fe8f1101218: movslq %ebx,%rdi
  0x00007fe8f110121b: cmp    0xc(%rsi),%ebx
  0x00007fe8f110121e: jae    0x00007fe8f1101375
  0x00007fe8f1101224: movzwl 0x10(%rsi,%rdi,2),%edi  ;*caload
                                                ; - java.lang.String::equals@60 (line 988)

  0x00007fe8f1101229: movslq %ebx,%rcx
  0x00007fe8f110122c: cmp    0xc(%rax),%ebx
  0x00007fe8f110122f: jae    0x00007fe8f110137e
  0x00007fe8f1101235: movzwl 0x10(%rax,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::equals@65 (line 988)

  0x00007fe8f110123a: cmp    %ecx,%edi
  0x00007fe8f110123c: mov    $0x7fe8ea6e16f8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1101246: mov    $0x1e8,%rcx
  0x00007fe8f1101250: je     0x00007fe8f1101260
  0x00007fe8f1101256: mov    $0x1f8,%rcx
  0x00007fe8f1101260: mov    (%rdi,%rcx,1),%r8
  0x00007fe8f1101264: lea    0x1(%r8),%r8
  0x00007fe8f1101268: mov    %r8,(%rdi,%rcx,1)
  0x00007fe8f110126c: jne    0x00007fe8f1101302  ;*if_icmpeq
                                                ; - java.lang.String::equals@66 (line 988)

  0x00007fe8f1101272: inc    %ebx
  0x00007fe8f1101274: mov    $0x7fe8ea6e16f8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f110127e: mov    0xe0(%rdi),%ecx
  0x00007fe8f1101284: add    $0x8,%ecx
  0x00007fe8f1101287: mov    %ecx,0xe0(%rdi)
  0x00007fe8f110128d: mov    $0x7fe8ea501618,%rdi  ;   {metadata({method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f1101297: and    $0xfff8,%ecx
  0x00007fe8f110129d: cmp    $0x0,%ecx
  0x00007fe8f11012a0: je     0x00007fe8f1101387  ; OopMap{rax=Oop rsi=Oop off=902}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 990)

  0x00007fe8f11012a6: test   %eax,0x17565e54(%rip)        # 0x00007fe908667100
                                                ;   {poll}
  0x00007fe8f11012ac: mov    $0x7fe8ea6e16f8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f11012b6: incl   0x208(%rdi)
  0x00007fe8f11012bc: mov    %rdx,%rdi          ;*goto
                                                ; - java.lang.String::equals@74 (line 990)

  0x00007fe8f11012bf: mov    %rdi,%rdx
  0x00007fe8f11012c2: dec    %edx
  0x00007fe8f11012c4: cmp    $0x0,%edi
  0x00007fe8f11012c7: mov    $0x7fe8ea6e16f8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea501618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007fe8f11012d1: mov    $0x1c8,%rcx
  0x00007fe8f11012db: je     0x00007fe8f11012eb
  0x00007fe8f11012e1: mov    $0x1d8,%rcx
  0x00007fe8f11012eb: mov    (%rdi,%rcx,1),%r8
  0x00007fe8f11012ef: lea    0x1(%r8),%r8
  0x00007fe8f11012f3: mov    %r8,(%rdi,%rcx,1)
  0x00007fe8f11012f7: je     0x00007fe8f1101313
  0x00007fe8f11012fd: jmpq   0x00007fe8f1101218  ;*ifeq
                                                ; - java.lang.String::equals@53 (line 987)

  0x00007fe8f1101302: mov    $0x0,%eax
  0x00007fe8f1101307: add    $0x30,%rsp
  0x00007fe8f110130b: pop    %rbp
  0x00007fe8f110130c: test   %eax,0x17565dee(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1101312: retq                      ;*ireturn
                                                ; - java.lang.String::equals@70 (line 989)

  0x00007fe8f1101313: mov    $0x1,%eax
  0x00007fe8f1101318: add    $0x30,%rsp
  0x00007fe8f110131c: pop    %rbp
  0x00007fe8f110131d: test   %eax,0x17565ddd(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1101323: retq                      ;*ireturn
                                                ; - java.lang.String::equals@78 (line 992)

  0x00007fe8f1101324: mov    $0x0,%eax
  0x00007fe8f1101329: add    $0x30,%rsp
  0x00007fe8f110132d: pop    %rbp
  0x00007fe8f110132e: test   %eax,0x17565dcc(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1101334: retq                      ;*ireturn
                                                ; - java.lang.String::equals@80 (line 995)

  0x00007fe8f1101335: mov    $0x1,%eax
  0x00007fe8f110133a: add    $0x30,%rsp
  0x00007fe8f110133e: pop    %rbp
  0x00007fe8f110133f: test   %eax,0x17565dbb(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1101345: retq   
  0x00007fe8f1101346: mov    %rax,0x8(%rsp)
  0x00007fe8f110134b: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1101353: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop rdx=Oop off=1080}
                                                ;*synchronization entry
                                                ; - java.lang.String::equals@-1 (line 977)
                                                ;   {runtime_call}
  0x00007fe8f1101358: jmpq   0x00007fe8f1100f7e
  0x00007fe8f110135d: mov    %rdx,(%rsp)
  0x00007fe8f1101361: callq  0x00007fe8f10fb7c0  ; OopMap{rsi=Oop off=1094}
                                                ;*checkcast
                                                ; - java.lang.String::equals@15 (line 981)
                                                ;   {runtime_call}
  0x00007fe8f1101366: callq  0x00007fe8f10f9680  ; OopMap{rax=Oop rsi=Oop off=1099}
                                                ;*arraylength
                                                ; - java.lang.String::equals@23 (line 982)
                                                ;   {runtime_call}
  0x00007fe8f110136b: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop off=1104}
                                                ;*getfield value
                                                ; - java.lang.String::equals@27 (line 983)
                                                ;   {runtime_call}
  0x00007fe8f1101370: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop rax=Oop off=1109}
                                                ;*arraylength
                                                ; - java.lang.String::equals@30 (line 983)
                                                ;   {runtime_call}
  0x00007fe8f1101375: mov    %rbx,(%rsp)
  0x00007fe8f1101379: callq  0x00007fe8f106bc40  ; OopMap{rax=Oop rsi=Oop off=1118}
                                                ;*caload
                                                ; - java.lang.String::equals@60 (line 988)
                                                ;   {runtime_call}
  0x00007fe8f110137e: mov    %rbx,(%rsp)
  0x00007fe8f1101382: callq  0x00007fe8f106bc40  ; OopMap{rax=Oop rsi=Oop off=1127}
                                                ;*caload
                                                ; - java.lang.String::equals@65 (line 988)
                                                ;   {runtime_call}
  0x00007fe8f1101387: mov    %rdi,0x8(%rsp)
  0x00007fe8f110138c: movq   $0x4a,(%rsp)
  0x00007fe8f1101394: callq  0x00007fe8f10fd5a0  ; OopMap{rax=Oop rsi=Oop off=1145}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 990)
                                                ;   {runtime_call}
  0x00007fe8f1101399: jmpq   0x00007fe8f11012a6
  0x00007fe8f110139e: nop    
  0x00007fe8f110139f: nop    
  0x00007fe8f11013a0: mov    0x2a8(%r15),%rax
  0x00007fe8f11013a7: mov    $0x0,%r10
  0x00007fe8f11013b1: mov    %r10,0x2a8(%r15)
  0x00007fe8f11013b8: mov    $0x0,%r10
  0x00007fe8f11013c2: mov    %r10,0x2b0(%r15)
  0x00007fe8f11013c9: add    $0x30,%rsp
  0x00007fe8f11013cd: pop    %rbp
  0x00007fe8f11013ce: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f11013d3: hlt    
  0x00007fe8f11013d4: hlt    
  0x00007fe8f11013d5: hlt    
  0x00007fe8f11013d6: hlt    
  0x00007fe8f11013d7: hlt    
  0x00007fe8f11013d8: hlt    
  0x00007fe8f11013d9: hlt    
  0x00007fe8f11013da: hlt    
  0x00007fe8f11013db: hlt    
  0x00007fe8f11013dc: hlt    
  0x00007fe8f11013dd: hlt    
  0x00007fe8f11013de: hlt    
  0x00007fe8f11013df: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f11013e0: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f11013e5: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11013ea: sub    $0x80,%rsp
  0x00007fe8f11013f1: mov    %rax,0x78(%rsp)
  0x00007fe8f11013f6: mov    %rcx,0x70(%rsp)
  0x00007fe8f11013fb: mov    %rdx,0x68(%rsp)
  0x00007fe8f1101400: mov    %rbx,0x60(%rsp)
  0x00007fe8f1101405: mov    %rbp,0x50(%rsp)
  0x00007fe8f110140a: mov    %rsi,0x48(%rsp)
  0x00007fe8f110140f: mov    %rdi,0x40(%rsp)
  0x00007fe8f1101414: mov    %r8,0x38(%rsp)
  0x00007fe8f1101419: mov    %r9,0x30(%rsp)
  0x00007fe8f110141e: mov    %r10,0x28(%rsp)
  0x00007fe8f1101423: mov    %r11,0x20(%rsp)
  0x00007fe8f1101428: mov    %r12,0x18(%rsp)
  0x00007fe8f110142d: mov    %r13,0x10(%rsp)
  0x00007fe8f1101432: mov    %r14,0x8(%rsp)
  0x00007fe8f1101437: mov    %r15,(%rsp)
  0x00007fe8f110143b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1101445: mov    $0x7fe8f11013e5,%rsi  ;   {internal_word}
  0x00007fe8f110144f: mov    %rsp,%rdx
  0x00007fe8f1101452: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1101456: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110145b: hlt    
[Deopt Handler Code]
  0x00007fe8f110145c: mov    $0x7fe8f110145c,%r10  ;   {section_word}
  0x00007fe8f1101466: push   %r10
  0x00007fe8f1101468: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110146d: hlt    
  0x00007fe8f110146e: hlt    
  0x00007fe8f110146f: hlt    
Decoding compiled method 0x00007fe8f1100810:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea500db0} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1100980: mov    0x8(%rsi),%r10d
  0x00007fe8f1100984: shl    $0x3,%r10
  0x00007fe8f1100988: cmp    %rax,%r10
  0x00007fe8f110098b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1100991: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110099c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f11009a0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f11009a7: push   %rbp
  0x00007fe8f11009a8: sub    $0x30,%rsp
  0x00007fe8f11009ac: mov    %rdx,%rdi
  0x00007fe8f11009af: mov    $0x7fe8ea691868,%rax  ;   {metadata(method data for {method} {0x00007fe8ea500db0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007fe8f11009b9: mov    0xdc(%rax),%edx
  0x00007fe8f11009bf: add    $0x8,%edx
  0x00007fe8f11009c2: mov    %edx,0xdc(%rax)
  0x00007fe8f11009c8: mov    $0x7fe8ea500db0,%rax  ;   {metadata({method} {0x00007fe8ea500db0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007fe8f11009d2: and    $0x1ff8,%edx
  0x00007fe8f11009d8: cmp    $0x0,%edx
  0x00007fe8f11009db: je     0x00007fe8f1100aae  ;*iload_1
                                                ; - java.lang.String::charAt@0 (line 657)

  0x00007fe8f11009e1: cmp    $0x0,%edi
  0x00007fe8f11009e4: mov    $0x7fe8ea691868,%rax  ;   {metadata(method data for {method} {0x00007fe8ea500db0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007fe8f11009ee: mov    $0x108,%rdx
  0x00007fe8f11009f8: jl     0x00007fe8f1100a08
  0x00007fe8f11009fe: mov    $0x118,%rdx
  0x00007fe8f1100a08: mov    (%rax,%rdx,1),%rbx
  0x00007fe8f1100a0c: lea    0x1(%rbx),%rbx
  0x00007fe8f1100a10: mov    %rbx,(%rax,%rdx,1)
  0x00007fe8f1100a14: jl     0x00007fe8f1100a70  ;*iflt
                                                ; - java.lang.String::charAt@1 (line 657)

  0x00007fe8f1100a1a: mov    0xc(%rsi),%eax
  0x00007fe8f1100a1d: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::charAt@6 (line 657)

  0x00007fe8f1100a21: mov    0xc(%rax),%edx     ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 657)
                                                ; implicit exception: dispatches to 0x00007fe8f1100ac5
  0x00007fe8f1100a24: cmp    %edx,%edi
  0x00007fe8f1100a26: mov    $0x7fe8ea691868,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea500db0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007fe8f1100a30: mov    $0x128,%rsi
  0x00007fe8f1100a3a: jl     0x00007fe8f1100a4a
  0x00007fe8f1100a40: mov    $0x138,%rsi
  0x00007fe8f1100a4a: mov    (%rdx,%rsi,1),%rbx
  0x00007fe8f1100a4e: lea    0x1(%rbx),%rbx
  0x00007fe8f1100a52: mov    %rbx,(%rdx,%rsi,1)
  0x00007fe8f1100a56: jge    0x00007fe8f1100a70  ;*if_icmplt
                                                ; - java.lang.String::charAt@10 (line 657)

  0x00007fe8f1100a5c: movslq %edi,%rdi
  0x00007fe8f1100a5f: movzwl 0x10(%rax,%rdi,2),%eax  ;*caload
                                                ; - java.lang.String::charAt@27 (line 660)

  0x00007fe8f1100a64: add    $0x30,%rsp
  0x00007fe8f1100a68: pop    %rbp
  0x00007fe8f1100a69: test   %eax,0x17566691(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1100a6f: retq                      ;*ireturn
                                                ; - java.lang.String::charAt@28 (line 660)

  0x00007fe8f1100a70: jmpq   0x00007fe8f1100ad9  ;   {no_reloc}
  0x00007fe8f1100a75: add    %al,(%rax)
  0x00007fe8f1100a77: add    %al,(%rax)
  0x00007fe8f1100a79: add    %ch,%cl
  0x00007fe8f1100a7b: add    %al,%fs:(%rax)
  0x00007fe8f1100a7e: add    %cl,-0x75(%rax)    ;*new  ; - java.lang.String::charAt@13 (line 658)

  0x00007fe8f1100a81: rorb   -0x42(%rax)        ;   {metadata(method data for {method} {0x00007fe8ea500db0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007fe8f1100a84: pushq  $0xffffffffe8ea6918
  0x00007fe8f1100a89: jg     0x00007fe8f1100a8b
  0x00007fe8f1100a8b: add    %cl,-0x7d(%rax)
  0x00007fe8f1100a8e: xchg   %cl,0x1(%rax)
  0x00007fe8f1100a91: add    %al,(%rax)
  0x00007fe8f1100a93: add    %ecx,-0x75(%rax)
  0x00007fe8f1100a96: xlat   %ds:(%rbx)
  0x00007fe8f1100a97: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 658)

  0x00007fe8f1100a9a: mov    %rax,0x20(%rsp)
  0x00007fe8f1100a9f: callq  0x00007fe8f1046020  ; OopMap{[32]=Oop off=292}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 658)
                                                ;   {optimized virtual_call}
  0x00007fe8f1100aa4: mov    0x20(%rsp),%rax
  0x00007fe8f1100aa9: jmpq   0x00007fe8f1100b18
  0x00007fe8f1100aae: mov    %rax,0x8(%rsp)
  0x00007fe8f1100ab3: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1100abb: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=320}
                                                ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 657)
                                                ;   {runtime_call}
  0x00007fe8f1100ac0: jmpq   0x00007fe8f11009e1
  0x00007fe8f1100ac5: callq  0x00007fe8f10f9680  ; OopMap{rax=Oop off=330}
                                                ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 657)
                                                ;   {runtime_call}
  0x00007fe8f1100aca: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f1100ad4: mov    $0xa050f00,%eax
  0x00007fe8f1100ad9: callq  0x00007fe8f10fdfe0  ; OopMap{off=350}
                                                ;*new  ; - java.lang.String::charAt@13 (line 658)
                                                ;   {runtime_call}
  0x00007fe8f1100ade: jmp    0x00007fe8f1100a70
  0x00007fe8f1100ae0: nop    
  0x00007fe8f1100ae1: nop    
  0x00007fe8f1100ae2: nop    
  0x00007fe8f1100ae3: mov    %rdx,%rdx
  0x00007fe8f1100ae6: callq  0x00007fe8f10f9b20  ; OopMap{off=363}
                                                ;*new  ; - java.lang.String::charAt@13 (line 658)
                                                ;   {runtime_call}
  0x00007fe8f1100aeb: jmp    0x00007fe8f1100a7f
  0x00007fe8f1100aed: nop    
  0x00007fe8f1100aee: nop    
  0x00007fe8f1100aef: mov    0x2a8(%r15),%rax
  0x00007fe8f1100af6: mov    $0x0,%r10
  0x00007fe8f1100b00: mov    %r10,0x2a8(%r15)
  0x00007fe8f1100b07: mov    $0x0,%r10
  0x00007fe8f1100b11: mov    %r10,0x2b0(%r15)
  0x00007fe8f1100b18: add    $0x30,%rsp
  0x00007fe8f1100b1c: pop    %rbp
  0x00007fe8f1100b1d: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1100b22: hlt    
  0x00007fe8f1100b23: hlt    
  0x00007fe8f1100b24: hlt    
  0x00007fe8f1100b25: hlt    
  0x00007fe8f1100b26: hlt    
  0x00007fe8f1100b27: hlt    
  0x00007fe8f1100b28: hlt    
  0x00007fe8f1100b29: hlt    
  0x00007fe8f1100b2a: hlt    
  0x00007fe8f1100b2b: hlt    
  0x00007fe8f1100b2c: hlt    
  0x00007fe8f1100b2d: hlt    
  0x00007fe8f1100b2e: hlt    
  0x00007fe8f1100b2f: hlt    
  0x00007fe8f1100b30: hlt    
  0x00007fe8f1100b31: hlt    
  0x00007fe8f1100b32: hlt    
  0x00007fe8f1100b33: hlt    
  0x00007fe8f1100b34: hlt    
  0x00007fe8f1100b35: hlt    
  0x00007fe8f1100b36: hlt    
  0x00007fe8f1100b37: hlt    
  0x00007fe8f1100b38: hlt    
  0x00007fe8f1100b39: hlt    
  0x00007fe8f1100b3a: hlt    
  0x00007fe8f1100b3b: hlt    
  0x00007fe8f1100b3c: hlt    
  0x00007fe8f1100b3d: hlt    
  0x00007fe8f1100b3e: hlt    
  0x00007fe8f1100b3f: hlt    
[Stub Code]
  0x00007fe8f1100b40: nop                       ;   {no_reloc}
  0x00007fe8f1100b41: nop    
  0x00007fe8f1100b42: nop    
  0x00007fe8f1100b43: nop    
  0x00007fe8f1100b44: nop    
  0x00007fe8f1100b45: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1100b4f: jmpq   0x00007fe8f1100b4f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f1100b54: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f1100b59: mov    %rsp,-0x28(%rsp)
  0x00007fe8f1100b5e: sub    $0x80,%rsp
  0x00007fe8f1100b65: mov    %rax,0x78(%rsp)
  0x00007fe8f1100b6a: mov    %rcx,0x70(%rsp)
  0x00007fe8f1100b6f: mov    %rdx,0x68(%rsp)
  0x00007fe8f1100b74: mov    %rbx,0x60(%rsp)
  0x00007fe8f1100b79: mov    %rbp,0x50(%rsp)
  0x00007fe8f1100b7e: mov    %rsi,0x48(%rsp)
  0x00007fe8f1100b83: mov    %rdi,0x40(%rsp)
  0x00007fe8f1100b88: mov    %r8,0x38(%rsp)
  0x00007fe8f1100b8d: mov    %r9,0x30(%rsp)
  0x00007fe8f1100b92: mov    %r10,0x28(%rsp)
  0x00007fe8f1100b97: mov    %r11,0x20(%rsp)
  0x00007fe8f1100b9c: mov    %r12,0x18(%rsp)
  0x00007fe8f1100ba1: mov    %r13,0x10(%rsp)
  0x00007fe8f1100ba6: mov    %r14,0x8(%rsp)
  0x00007fe8f1100bab: mov    %r15,(%rsp)
  0x00007fe8f1100baf: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1100bb9: mov    $0x7fe8f1100b59,%rsi  ;   {internal_word}
  0x00007fe8f1100bc3: mov    %rsp,%rdx
  0x00007fe8f1100bc6: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1100bca: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1100bcf: hlt    
[Deopt Handler Code]
  0x00007fe8f1100bd0: mov    $0x7fe8f1100bd0,%r10  ;   {section_word}
  0x00007fe8f1100bda: push   %r10
  0x00007fe8f1100bdc: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1100be1: hlt    
  0x00007fe8f1100be2: hlt    
  0x00007fe8f1100be3: hlt    
  0x00007fe8f1100be4: hlt    
  0x00007fe8f1100be5: hlt    
  0x00007fe8f1100be6: hlt    
  0x00007fe8f1100be7: hlt    
Decoding compiled method 0x00007fe8f1100450:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea500c60} 'length' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f11005c0: mov    0x8(%rsi),%r10d
  0x00007fe8f11005c4: shl    $0x3,%r10
  0x00007fe8f11005c8: cmp    %rax,%r10
  0x00007fe8f11005cb: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f11005d1: nopw   0x0(%rax,%rax,1)
  0x00007fe8f11005dc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f11005e0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f11005e7: push   %rbp
  0x00007fe8f11005e8: sub    $0x30,%rsp
  0x00007fe8f11005ec: mov    $0x7fe8ea6e8340,%rax  ;   {metadata(method data for {method} {0x00007fe8ea500c60} 'length' '()I' in 'java/lang/String')}
  0x00007fe8f11005f6: mov    0xdc(%rax),%edi
  0x00007fe8f11005fc: add    $0x8,%edi
  0x00007fe8f11005ff: mov    %edi,0xdc(%rax)
  0x00007fe8f1100605: mov    $0x7fe8ea500c60,%rax  ;   {metadata({method} {0x00007fe8ea500c60} 'length' '()I' in 'java/lang/String')}
  0x00007fe8f110060f: and    $0x1ff8,%edi
  0x00007fe8f1100615: cmp    $0x0,%edi
  0x00007fe8f1100618: je     0x00007fe8f1100634  ;*aload_0
                                                ; - java.lang.String::length@0 (line 623)

  0x00007fe8f110061e: mov    0xc(%rsi),%eax
  0x00007fe8f1100621: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::length@1 (line 623)

  0x00007fe8f1100625: mov    0xc(%rax),%eax     ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; implicit exception: dispatches to 0x00007fe8f1100648
  0x00007fe8f1100628: add    $0x30,%rsp
  0x00007fe8f110062c: pop    %rbp
  0x00007fe8f110062d: test   %eax,0x17566acd(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1100633: retq   
  0x00007fe8f1100634: mov    %rax,0x8(%rsp)
  0x00007fe8f1100639: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1100641: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=134}
                                                ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 623)
                                                ;   {runtime_call}
  0x00007fe8f1100646: jmp    0x00007fe8f110061e
  0x00007fe8f1100648: callq  0x00007fe8f10f9680  ; OopMap{off=141}
                                                ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ;   {runtime_call}
  0x00007fe8f110064d: nop    
  0x00007fe8f110064e: nop    
  0x00007fe8f110064f: mov    0x2a8(%r15),%rax
  0x00007fe8f1100656: mov    $0x0,%r10
  0x00007fe8f1100660: mov    %r10,0x2a8(%r15)
  0x00007fe8f1100667: mov    $0x0,%r10
  0x00007fe8f1100671: mov    %r10,0x2b0(%r15)
  0x00007fe8f1100678: add    $0x30,%rsp
  0x00007fe8f110067c: pop    %rbp
  0x00007fe8f110067d: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1100682: hlt    
  0x00007fe8f1100683: hlt    
  0x00007fe8f1100684: hlt    
  0x00007fe8f1100685: hlt    
  0x00007fe8f1100686: hlt    
  0x00007fe8f1100687: hlt    
  0x00007fe8f1100688: hlt    
  0x00007fe8f1100689: hlt    
  0x00007fe8f110068a: hlt    
  0x00007fe8f110068b: hlt    
  0x00007fe8f110068c: hlt    
  0x00007fe8f110068d: hlt    
  0x00007fe8f110068e: hlt    
  0x00007fe8f110068f: hlt    
  0x00007fe8f1100690: hlt    
  0x00007fe8f1100691: hlt    
  0x00007fe8f1100692: hlt    
  0x00007fe8f1100693: hlt    
  0x00007fe8f1100694: hlt    
  0x00007fe8f1100695: hlt    
  0x00007fe8f1100696: hlt    
  0x00007fe8f1100697: hlt    
  0x00007fe8f1100698: hlt    
  0x00007fe8f1100699: hlt    
  0x00007fe8f110069a: hlt    
  0x00007fe8f110069b: hlt    
  0x00007fe8f110069c: hlt    
  0x00007fe8f110069d: hlt    
  0x00007fe8f110069e: hlt    
  0x00007fe8f110069f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f11006a0: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f11006a5: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11006aa: sub    $0x80,%rsp
  0x00007fe8f11006b1: mov    %rax,0x78(%rsp)
  0x00007fe8f11006b6: mov    %rcx,0x70(%rsp)
  0x00007fe8f11006bb: mov    %rdx,0x68(%rsp)
  0x00007fe8f11006c0: mov    %rbx,0x60(%rsp)
  0x00007fe8f11006c5: mov    %rbp,0x50(%rsp)
  0x00007fe8f11006ca: mov    %rsi,0x48(%rsp)
  0x00007fe8f11006cf: mov    %rdi,0x40(%rsp)
  0x00007fe8f11006d4: mov    %r8,0x38(%rsp)
  0x00007fe8f11006d9: mov    %r9,0x30(%rsp)
  0x00007fe8f11006de: mov    %r10,0x28(%rsp)
  0x00007fe8f11006e3: mov    %r11,0x20(%rsp)
  0x00007fe8f11006e8: mov    %r12,0x18(%rsp)
  0x00007fe8f11006ed: mov    %r13,0x10(%rsp)
  0x00007fe8f11006f2: mov    %r14,0x8(%rsp)
  0x00007fe8f11006f7: mov    %r15,(%rsp)
  0x00007fe8f11006fb: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1100705: mov    $0x7fe8f11006a5,%rsi  ;   {internal_word}
  0x00007fe8f110070f: mov    %rsp,%rdx
  0x00007fe8f1100712: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1100716: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110071b: hlt    
[Deopt Handler Code]
  0x00007fe8f110071c: mov    $0x7fe8f110071c,%r10  ;   {section_word}
  0x00007fe8f1100726: push   %r10
  0x00007fe8f1100728: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110072d: hlt    
  0x00007fe8f110072e: hlt    
  0x00007fe8f110072f: hlt    
Decoding compiled method 0x00007fe8f11026d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1102840: mov    0x8(%rsi),%r10d
  0x00007fe8f1102844: shl    $0x3,%r10
  0x00007fe8f1102848: cmp    %rax,%r10
  0x00007fe8f110284b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1102851: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110285c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1102860: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1102867: push   %rbp
  0x00007fe8f1102868: sub    $0x30,%rsp
  0x00007fe8f110286c: mov    $0x7fe8ea6cd218,%rax  ;   {metadata(method data for {method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f1102876: mov    0xdc(%rax),%edi
  0x00007fe8f110287c: add    $0x8,%edi
  0x00007fe8f110287f: mov    %edi,0xdc(%rax)
  0x00007fe8f1102885: mov    $0x7fe8ea501ff8,%rax  ;   {metadata({method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f110288f: and    $0x1ff8,%edi
  0x00007fe8f1102895: cmp    $0x0,%edi
  0x00007fe8f1102898: je     0x00007fe8f11029d1  ;*aload_0
                                                ; - java.lang.String::hashCode@0 (line 1466)

  0x00007fe8f110289e: mov    0x10(%rsi),%eax    ;*getfield hash
                                                ; - java.lang.String::hashCode@1 (line 1466)

  0x00007fe8f11028a1: cmp    $0x0,%eax
  0x00007fe8f11028a4: mov    $0x7fe8ea6cd218,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f11028ae: mov    $0x108,%rbx
  0x00007fe8f11028b8: jne    0x00007fe8f11028c8
  0x00007fe8f11028be: mov    $0x118,%rbx
  0x00007fe8f11028c8: mov    (%rdi,%rbx,1),%rdx
  0x00007fe8f11028cc: lea    0x1(%rdx),%rdx
  0x00007fe8f11028d0: mov    %rdx,(%rdi,%rbx,1)
  0x00007fe8f11028d4: jne    0x00007fe8f11029c5  ;*ifne
                                                ; - java.lang.String::hashCode@6 (line 1467)

  0x00007fe8f11028da: mov    0xc(%rsi),%edi
  0x00007fe8f11028dd: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.String::hashCode@10 (line 1467)

  0x00007fe8f11028e1: mov    0xc(%rdi),%ebx     ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1467)
                                                ; implicit exception: dispatches to 0x00007fe8f11029e8
  0x00007fe8f11028e4: cmp    $0x0,%ebx
  0x00007fe8f11028e7: mov    $0x7fe8ea6cd218,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f11028f1: mov    $0x128,%rcx
  0x00007fe8f11028fb: jle    0x00007fe8f110290b
  0x00007fe8f1102901: mov    $0x138,%rcx
  0x00007fe8f110290b: mov    (%rdx,%rcx,1),%r8
  0x00007fe8f110290f: lea    0x1(%r8),%r8
  0x00007fe8f1102913: mov    %r8,(%rdx,%rcx,1)
  0x00007fe8f1102917: jle    0x00007fe8f11029c5  ;*ifle
                                                ; - java.lang.String::hashCode@14 (line 1467)

  0x00007fe8f110291d: mov    $0x0,%edx
  0x00007fe8f1102922: jmpq   0x00007fe8f110298a  ;*iload_3
                                                ; - java.lang.String::hashCode@24 (line 1470)

  0x00007fe8f1102927: nop    
  0x00007fe8f1102928: movslq %edx,%rcx
  0x00007fe8f110292b: movzwl 0x10(%rdi,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::hashCode@39 (line 1471)

  0x00007fe8f1102930: mov    %rax,%r8
  0x00007fe8f1102933: shl    $0x5,%eax
  0x00007fe8f1102936: sub    %r8d,%eax
  0x00007fe8f1102939: add    %ecx,%eax
  0x00007fe8f110293b: inc    %edx
  0x00007fe8f110293d: mov    $0x7fe8ea6cd218,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f1102947: mov    0xe0(%rcx),%r8d
  0x00007fe8f110294e: add    $0x8,%r8d
  0x00007fe8f1102952: mov    %r8d,0xe0(%rcx)
  0x00007fe8f1102959: mov    $0x7fe8ea501ff8,%rcx  ;   {metadata({method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f1102963: and    $0xfff8,%r8d
  0x00007fe8f110296a: cmp    $0x0,%r8d
  0x00007fe8f110296e: je     0x00007fe8f11029ed  ; OopMap{rdi=Oop rsi=Oop off=308}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)

  0x00007fe8f1102974: test   %eax,0x17564786(%rip)        # 0x00007fe908667100
                                                ;   {poll}
  0x00007fe8f110297a: mov    $0x7fe8ea6cd218,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f1102984: incl   0x168(%rcx)        ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)

  0x00007fe8f110298a: cmp    %ebx,%edx
  0x00007fe8f110298c: mov    $0x7fe8ea6cd218,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea501ff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007fe8f1102996: mov    $0x148,%r8
  0x00007fe8f11029a0: jge    0x00007fe8f11029b0
  0x00007fe8f11029a6: mov    $0x158,%r8
  0x00007fe8f11029b0: mov    (%rcx,%r8,1),%r9
  0x00007fe8f11029b4: lea    0x1(%r9),%r9
  0x00007fe8f11029b8: mov    %r9,(%rcx,%r8,1)
  0x00007fe8f11029bc: jl     0x00007fe8f1102928  ;*if_icmpge
                                                ; - java.lang.String::hashCode@30 (line 1470)

  0x00007fe8f11029c2: mov    %eax,0x10(%rsi)    ;*putfield hash
                                                ; - java.lang.String::hashCode@50 (line 1473)

  0x00007fe8f11029c5: add    $0x30,%rsp
  0x00007fe8f11029c9: pop    %rbp
  0x00007fe8f11029ca: test   %eax,0x17564730(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11029d0: retq   
  0x00007fe8f11029d1: mov    %rax,0x8(%rsp)
  0x00007fe8f11029d6: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11029de: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=419}
                                                ;*synchronization entry
                                                ; - java.lang.String::hashCode@-1 (line 1466)
                                                ;   {runtime_call}
  0x00007fe8f11029e3: jmpq   0x00007fe8f110289e
  0x00007fe8f11029e8: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop rdi=Oop off=429}
                                                ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1467)
                                                ;   {runtime_call}
  0x00007fe8f11029ed: mov    %rcx,0x8(%rsp)
  0x00007fe8f11029f2: movq   $0x2d,(%rsp)
  0x00007fe8f11029fa: callq  0x00007fe8f10fd5a0  ; OopMap{rdi=Oop rsi=Oop off=447}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)
                                                ;   {runtime_call}
  0x00007fe8f11029ff: jmpq   0x00007fe8f1102974
  0x00007fe8f1102a04: nop    
  0x00007fe8f1102a05: nop    
  0x00007fe8f1102a06: mov    0x2a8(%r15),%rax
  0x00007fe8f1102a0d: mov    $0x0,%r10
  0x00007fe8f1102a17: mov    %r10,0x2a8(%r15)
  0x00007fe8f1102a1e: mov    $0x0,%r10
  0x00007fe8f1102a28: mov    %r10,0x2b0(%r15)
  0x00007fe8f1102a2f: add    $0x30,%rsp
  0x00007fe8f1102a33: pop    %rbp
  0x00007fe8f1102a34: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1102a39: hlt    
  0x00007fe8f1102a3a: hlt    
  0x00007fe8f1102a3b: hlt    
  0x00007fe8f1102a3c: hlt    
  0x00007fe8f1102a3d: hlt    
  0x00007fe8f1102a3e: hlt    
  0x00007fe8f1102a3f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f1102a40: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f1102a45: mov    %rsp,-0x28(%rsp)
  0x00007fe8f1102a4a: sub    $0x80,%rsp
  0x00007fe8f1102a51: mov    %rax,0x78(%rsp)
  0x00007fe8f1102a56: mov    %rcx,0x70(%rsp)
  0x00007fe8f1102a5b: mov    %rdx,0x68(%rsp)
  0x00007fe8f1102a60: mov    %rbx,0x60(%rsp)
  0x00007fe8f1102a65: mov    %rbp,0x50(%rsp)
  0x00007fe8f1102a6a: mov    %rsi,0x48(%rsp)
  0x00007fe8f1102a6f: mov    %rdi,0x40(%rsp)
  0x00007fe8f1102a74: mov    %r8,0x38(%rsp)
  0x00007fe8f1102a79: mov    %r9,0x30(%rsp)
  0x00007fe8f1102a7e: mov    %r10,0x28(%rsp)
  0x00007fe8f1102a83: mov    %r11,0x20(%rsp)
  0x00007fe8f1102a88: mov    %r12,0x18(%rsp)
  0x00007fe8f1102a8d: mov    %r13,0x10(%rsp)
  0x00007fe8f1102a92: mov    %r14,0x8(%rsp)
  0x00007fe8f1102a97: mov    %r15,(%rsp)
  0x00007fe8f1102a9b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1102aa5: mov    $0x7fe8f1102a45,%rsi  ;   {internal_word}
  0x00007fe8f1102aaf: mov    %rsp,%rdx
  0x00007fe8f1102ab2: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1102ab6: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1102abb: hlt    
[Deopt Handler Code]
  0x00007fe8f1102abc: mov    $0x7fe8f1102abc,%r10  ;   {section_word}
  0x00007fe8f1102ac6: push   %r10
  0x00007fe8f1102ac8: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1102acd: hlt    
  0x00007fe8f1102ace: hlt    
  0x00007fe8f1102acf: hlt    
Decoding compiled method 0x00007fe8f1102410:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea5253d0} 'get' '()Ljava/lang/Object;' in 'java/lang/ref/Reference'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1102560: mov    0x8(%rsi),%r10d
  0x00007fe8f1102564: shl    $0x3,%r10
  0x00007fe8f1102568: cmp    %rax,%r10
  0x00007fe8f110256b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1102571: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110257c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1102580: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1102587: push   %rbp
  0x00007fe8f1102588: sub    $0x30,%rsp
  0x00007fe8f110258c: mov    0xc(%rsi),%eax
  0x00007fe8f110258f: shl    $0x3,%rax          ;*aload_0
                                                ; - java.lang.ref.Reference::get@0 (line 254)

  0x00007fe8f1102593: add    $0x30,%rsp
  0x00007fe8f1102597: pop    %rbp
  0x00007fe8f1102598: test   %eax,0x17564b62(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110259e: retq   
  0x00007fe8f110259f: nop    
  0x00007fe8f11025a0: nop    
  0x00007fe8f11025a1: mov    0x2a8(%r15),%rax
  0x00007fe8f11025a8: mov    $0x0,%r10
  0x00007fe8f11025b2: mov    %r10,0x2a8(%r15)
  0x00007fe8f11025b9: mov    $0x0,%r10
  0x00007fe8f11025c3: mov    %r10,0x2b0(%r15)
  0x00007fe8f11025ca: add    $0x30,%rsp
  0x00007fe8f11025ce: pop    %rbp
  0x00007fe8f11025cf: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f11025d4: hlt    
  0x00007fe8f11025d5: hlt    
  0x00007fe8f11025d6: hlt    
  0x00007fe8f11025d7: hlt    
  0x00007fe8f11025d8: hlt    
  0x00007fe8f11025d9: hlt    
  0x00007fe8f11025da: hlt    
  0x00007fe8f11025db: hlt    
  0x00007fe8f11025dc: hlt    
  0x00007fe8f11025dd: hlt    
  0x00007fe8f11025de: hlt    
  0x00007fe8f11025df: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f11025e0: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f11025e5: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11025ea: sub    $0x80,%rsp
  0x00007fe8f11025f1: mov    %rax,0x78(%rsp)
  0x00007fe8f11025f6: mov    %rcx,0x70(%rsp)
  0x00007fe8f11025fb: mov    %rdx,0x68(%rsp)
  0x00007fe8f1102600: mov    %rbx,0x60(%rsp)
  0x00007fe8f1102605: mov    %rbp,0x50(%rsp)
  0x00007fe8f110260a: mov    %rsi,0x48(%rsp)
  0x00007fe8f110260f: mov    %rdi,0x40(%rsp)
  0x00007fe8f1102614: mov    %r8,0x38(%rsp)
  0x00007fe8f1102619: mov    %r9,0x30(%rsp)
  0x00007fe8f110261e: mov    %r10,0x28(%rsp)
  0x00007fe8f1102623: mov    %r11,0x20(%rsp)
  0x00007fe8f1102628: mov    %r12,0x18(%rsp)
  0x00007fe8f110262d: mov    %r13,0x10(%rsp)
  0x00007fe8f1102632: mov    %r14,0x8(%rsp)
  0x00007fe8f1102637: mov    %r15,(%rsp)
  0x00007fe8f110263b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1102645: mov    $0x7fe8f11025e5,%rsi  ;   {internal_word}
  0x00007fe8f110264f: mov    %rsp,%rdx
  0x00007fe8f1102652: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1102656: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110265b: hlt    
[Deopt Handler Code]
  0x00007fe8f110265c: mov    $0x7fe8f110265c,%r10  ;   {section_word}
  0x00007fe8f1102666: push   %r10
  0x00007fe8f1102668: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110266d: hlt    
  0x00007fe8f110266e: hlt    
  0x00007fe8f110266f: hlt    
Decoding compiled method 0x00007fe8f1101e90:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1102000: mov    0x8(%rsi),%r10d
  0x00007fe8f1102004: shl    $0x3,%r10
  0x00007fe8f1102008: cmp    %rax,%r10
  0x00007fe8f110200b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1102011: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110201c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1102020: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1102027: push   %rbp
  0x00007fe8f1102028: sub    $0x30,%rsp
  0x00007fe8f110202c: mov    $0x7fe8ea670fd0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f1102036: mov    0xdc(%rdi),%ebx
  0x00007fe8f110203c: add    $0x8,%ebx
  0x00007fe8f110203f: mov    %ebx,0xdc(%rdi)
  0x00007fe8f1102045: mov    $0x7fe8ea4fd480,%rdi  ;   {metadata({method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f110204f: and    $0x1ff8,%ebx
  0x00007fe8f1102055: cmp    $0x0,%ebx
  0x00007fe8f1102058: je     0x00007fe8f1102077
  0x00007fe8f110205e: mov    %rsi,%rdi          ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)

  0x00007fe8f1102061: mov    %rsi,0x20(%rsp)
  0x00007fe8f1102066: callq  0x00007fe8f10f98a0  ; OopMap{[32]=Oop off=107}
                                                ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)
                                                ;   {runtime_call}
  0x00007fe8f110206b: add    $0x30,%rsp
  0x00007fe8f110206f: pop    %rbp
  0x00007fe8f1102070: test   %eax,0x1756508a(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1102076: retq   
  0x00007fe8f1102077: mov    %rdi,0x8(%rsp)
  0x00007fe8f110207c: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1102084: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=137}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ;   {runtime_call}
  0x00007fe8f1102089: jmp    0x00007fe8f110205e
  0x00007fe8f110208b: nop    
  0x00007fe8f110208c: nop    
  0x00007fe8f110208d: mov    0x2a8(%r15),%rax
  0x00007fe8f1102094: mov    $0x0,%r10
  0x00007fe8f110209e: mov    %r10,0x2a8(%r15)
  0x00007fe8f11020a5: mov    $0x0,%r10
  0x00007fe8f11020af: mov    %r10,0x2b0(%r15)
  0x00007fe8f11020b6: add    $0x30,%rsp
  0x00007fe8f11020ba: pop    %rbp
  0x00007fe8f11020bb: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
[Exception Handler]
[Stub Code]
  0x00007fe8f11020c0: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f11020c5: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11020ca: sub    $0x80,%rsp
  0x00007fe8f11020d1: mov    %rax,0x78(%rsp)
  0x00007fe8f11020d6: mov    %rcx,0x70(%rsp)
  0x00007fe8f11020db: mov    %rdx,0x68(%rsp)
  0x00007fe8f11020e0: mov    %rbx,0x60(%rsp)
  0x00007fe8f11020e5: mov    %rbp,0x50(%rsp)
  0x00007fe8f11020ea: mov    %rsi,0x48(%rsp)
  0x00007fe8f11020ef: mov    %rdi,0x40(%rsp)
  0x00007fe8f11020f4: mov    %r8,0x38(%rsp)
  0x00007fe8f11020f9: mov    %r9,0x30(%rsp)
  0x00007fe8f11020fe: mov    %r10,0x28(%rsp)
  0x00007fe8f1102103: mov    %r11,0x20(%rsp)
  0x00007fe8f1102108: mov    %r12,0x18(%rsp)
  0x00007fe8f110210d: mov    %r13,0x10(%rsp)
  0x00007fe8f1102112: mov    %r14,0x8(%rsp)
  0x00007fe8f1102117: mov    %r15,(%rsp)
  0x00007fe8f110211b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1102125: mov    $0x7fe8f11020c5,%rsi  ;   {internal_word}
  0x00007fe8f110212f: mov    %rsp,%rdx
  0x00007fe8f1102132: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1102136: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110213b: hlt    
[Deopt Handler Code]
  0x00007fe8f110213c: mov    $0x7fe8f110213c,%r10  ;   {section_word}
  0x00007fe8f1102146: push   %r10
  0x00007fe8f1102148: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110214d: hlt    
  0x00007fe8f110214e: hlt    
  0x00007fe8f110214f: hlt    
Decoding compiled method 0x00007fe8f1101ad0:
Code:
[Entry Point]
  # {method} {0x00007fe8ea516918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  #           [sp+0x60]  (sp of caller)
  0x00007fe8f1101c40: mov    0x8(%rsi),%r10d
  0x00007fe8f1101c44: shl    $0x3,%r10
  0x00007fe8f1101c48: cmp    %r10,%rax
  0x00007fe8f1101c4b: je     0x00007fe8f1101c58
  0x00007fe8f1101c51: jmpq   0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1101c56: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1101c58: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1101c5f: push   %rbp
  0x00007fe8f1101c60: mov    %rsp,%rbp
  0x00007fe8f1101c63: sub    $0x50,%rsp
  0x00007fe8f1101c67: mov    %r9,(%rsp)
  0x00007fe8f1101c6b: mov    %r8,%r9
  0x00007fe8f1101c6e: mov    %rcx,0x18(%rsp)
  0x00007fe8f1101c73: cmp    $0x0,%rcx
  0x00007fe8f1101c77: lea    0x18(%rsp),%r8
  0x00007fe8f1101c7c: cmove  0x18(%rsp),%r8
  0x00007fe8f1101c82: mov    %rdx,%rcx
  0x00007fe8f1101c85: mov    %rsi,0x8(%rsp)
  0x00007fe8f1101c8a: cmp    $0x0,%rsi
  0x00007fe8f1101c8e: lea    0x8(%rsp),%rdx
  0x00007fe8f1101c93: cmove  0x8(%rsp),%rdx
  0x00007fe8f1101c99: mov    $0x781e00c78,%r14  ;   {oop(a 'java/lang/Class' = 'java/lang/System')}
  0x00007fe8f1101ca3: mov    %r14,0x38(%rsp)
  0x00007fe8f1101ca8: lea    0x38(%rsp),%r14
  0x00007fe8f1101cad: mov    %r14,%rsi          ; OopMap{[24]=Oop [8]=Oop [56]=Oop off=112}
  0x00007fe8f1101cb0: mov    $0x7fe8f1101cb0,%r10  ;   {section_word}
  0x00007fe8f1101cba: mov    %r10,0x1e0(%r15)
  0x00007fe8f1101cc1: mov    %rsp,0x1d8(%r15)
  0x00007fe8f1101cc8: cmpb   $0x0,0x1690b3f3(%rip)        # 0x00007fe907a0d0c2
                                                ;   {external_word}
  0x00007fe8f1101ccf: je     0x00007fe8f1101d13
  0x00007fe8f1101cd5: push   %rsi
  0x00007fe8f1101cd6: push   %rdx
  0x00007fe8f1101cd7: push   %rcx
  0x00007fe8f1101cd8: push   %r8
  0x00007fe8f1101cda: push   %r9
  0x00007fe8f1101cdc: mov    $0x7fe8ea516918,%rsi  ;   {metadata({method} {0x00007fe8ea516918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x00007fe8f1101ce6: mov    %r15,%rdi
  0x00007fe8f1101ce9: test   $0xf,%esp
  0x00007fe8f1101cef: je     0x00007fe8f1101d07
  0x00007fe8f1101cf5: sub    $0x8,%rsp
  0x00007fe8f1101cf9: callq  0x00007fe90741f170  ;   {runtime_call}
  0x00007fe8f1101cfe: add    $0x8,%rsp
  0x00007fe8f1101d02: jmpq   0x00007fe8f1101d0c
  0x00007fe8f1101d07: callq  0x00007fe90741f170  ;   {runtime_call}
  0x00007fe8f1101d0c: pop    %r9
  0x00007fe8f1101d0e: pop    %r8
  0x00007fe8f1101d10: pop    %rcx
  0x00007fe8f1101d11: pop    %rdx
  0x00007fe8f1101d12: pop    %rsi
  0x00007fe8f1101d13: lea    0x1f8(%r15),%rdi
  0x00007fe8f1101d1a: movl   $0x4,0x270(%r15)
  0x00007fe8f1101d25: callq  0x00007fe907186bf0  ;   {runtime_call}
  0x00007fe8f1101d2a: vzeroupper 
  0x00007fe8f1101d2d: movl   $0x5,0x270(%r15)
  0x00007fe8f1101d38: mov    %r15d,%ecx
  0x00007fe8f1101d3b: shr    $0x4,%ecx
  0x00007fe8f1101d3e: and    $0xffc,%ecx
  0x00007fe8f1101d44: mov    $0x7fe908666000,%r10  ;   {external_word}
  0x00007fe8f1101d4e: mov    %ecx,(%r10,%rcx,1)
  0x00007fe8f1101d52: cmpl   $0x0,0x1691a8e4(%rip)        # 0x00007fe907a1c640
                                                ;   {external_word}
  0x00007fe8f1101d5c: jne    0x00007fe8f1101d70
  0x00007fe8f1101d62: cmpl   $0x0,0x30(%r15)
  0x00007fe8f1101d6a: je     0x00007fe8f1101d89
  0x00007fe8f1101d70: mov    %r15,%rdi
  0x00007fe8f1101d73: mov    %rsp,%r12
  0x00007fe8f1101d76: sub    $0x0,%rsp
  0x00007fe8f1101d7a: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1101d7e: callq  0x00007fe9074ce090  ;   {runtime_call}
  0x00007fe8f1101d83: mov    %r12,%rsp
  0x00007fe8f1101d86: xor    %r12,%r12
  0x00007fe8f1101d89: movl   $0x8,0x270(%r15)
  0x00007fe8f1101d94: cmpl   $0x1,0x29c(%r15)
  0x00007fe8f1101d9f: je     0x00007fe8f1101e27
  0x00007fe8f1101da5: cmpb   $0x0,0x1690b316(%rip)        # 0x00007fe907a0d0c2
                                                ;   {external_word}
  0x00007fe8f1101dac: je     0x00007fe8f1101de2
  0x00007fe8f1101db2: mov    $0x7fe8ea516918,%rsi  ;   {metadata({method} {0x00007fe8ea516918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x00007fe8f1101dbc: mov    %r15,%rdi
  0x00007fe8f1101dbf: test   $0xf,%esp
  0x00007fe8f1101dc5: je     0x00007fe8f1101ddd
  0x00007fe8f1101dcb: sub    $0x8,%rsp
  0x00007fe8f1101dcf: callq  0x00007fe90741f160  ;   {runtime_call}
  0x00007fe8f1101dd4: add    $0x8,%rsp
  0x00007fe8f1101dd8: jmpq   0x00007fe8f1101de2
  0x00007fe8f1101ddd: callq  0x00007fe90741f160  ;   {runtime_call}
  0x00007fe8f1101de2: mov    $0x0,%r10
  0x00007fe8f1101dec: mov    %r10,0x1d8(%r15)
  0x00007fe8f1101df3: mov    $0x0,%r10
  0x00007fe8f1101dfd: mov    %r10,0x1e0(%r15)
  0x00007fe8f1101e04: mov    0x38(%r15),%rcx
  0x00007fe8f1101e08: movl   $0x0,0x100(%rcx)
  0x00007fe8f1101e12: leaveq 
  0x00007fe8f1101e13: cmpq   $0x0,0x8(%r15)
  0x00007fe8f1101e1b: jne    0x00007fe8f1101e22
  0x00007fe8f1101e21: retq   
  0x00007fe8f1101e22: jmpq   Stub::forward exception  ;   {runtime_call}
  0x00007fe8f1101e27: mov    %rsp,%r12
  0x00007fe8f1101e2a: sub    $0x0,%rsp
  0x00007fe8f1101e2e: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1101e32: callq  0x00007fe90741f140  ;   {runtime_call}
  0x00007fe8f1101e37: mov    %r12,%rsp
  0x00007fe8f1101e3a: xor    %r12,%r12
  0x00007fe8f1101e3d: jmpq   0x00007fe8f1101da5
  0x00007fe8f1101e42: hlt    
  0x00007fe8f1101e43: hlt    
  0x00007fe8f1101e44: hlt    
  0x00007fe8f1101e45: hlt    
  0x00007fe8f1101e46: hlt    
  0x00007fe8f1101e47: hlt    
Decoding compiled method 0x00007fe8f110bcd0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f110be40: mov    0x8(%rsi),%r10d
  0x00007fe8f110be44: shl    $0x3,%r10
  0x00007fe8f110be48: cmp    %rax,%r10
  0x00007fe8f110be4b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f110be51: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110be5c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f110be60: mov    %eax,-0x14000(%rsp)
  0x00007fe8f110be67: push   %rbp
  0x00007fe8f110be68: sub    $0x30,%rsp
  0x00007fe8f110be6c: mov    $0x7fe8ea6f9530,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110be76: mov    0xdc(%rdi),%ebx
  0x00007fe8f110be7c: add    $0x8,%ebx
  0x00007fe8f110be7f: mov    %ebx,0xdc(%rdi)
  0x00007fe8f110be85: mov    $0x7fe8ea571520,%rdi  ;   {metadata({method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110be8f: and    $0x1ff8,%ebx
  0x00007fe8f110be95: cmp    $0x0,%ebx
  0x00007fe8f110be98: je     0x00007fe8f110bf88  ;*iload_1
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@0 (line 120)

  0x00007fe8f110be9e: mov    0x10(%rsi),%edi
  0x00007fe8f110bea1: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@2 (line 120)

  0x00007fe8f110bea5: mov    0xc(%rdi),%edi     ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; implicit exception: dispatches to 0x00007fe8f110bf9f
  0x00007fe8f110bea8: mov    %rdx,%rbx
  0x00007fe8f110beab: sub    %edi,%ebx
  0x00007fe8f110bead: cmp    $0x0,%ebx
  0x00007fe8f110beb0: mov    $0x7fe8ea6f9530,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110beba: mov    $0x108,%rbx
  0x00007fe8f110bec4: jle    0x00007fe8f110bed4
  0x00007fe8f110beca: mov    $0x118,%rbx
  0x00007fe8f110bed4: mov    (%rdi,%rbx,1),%rax
  0x00007fe8f110bed8: lea    0x1(%rax),%rax
  0x00007fe8f110bedc: mov    %rax,(%rdi,%rbx,1)
  0x00007fe8f110bee0: jle    0x00007fe8f110bf7c  ;*ifle
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@7 (line 120)

  0x00007fe8f110bee6: mov    %rsi,%rdi
  0x00007fe8f110bee9: mov    $0x7fe8ea6f9530,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110bef3: mov    0x8(%rdi),%edi
  0x00007fe8f110bef6: shl    $0x3,%rdi
  0x00007fe8f110befa: cmp    0x130(%rbx),%rdi
  0x00007fe8f110bf01: jne    0x00007fe8f110bf10
  0x00007fe8f110bf03: addq   $0x1,0x138(%rbx)
  0x00007fe8f110bf0b: jmpq   0x00007fe8f110bf76
  0x00007fe8f110bf10: cmp    0x140(%rbx),%rdi
  0x00007fe8f110bf17: jne    0x00007fe8f110bf26
  0x00007fe8f110bf19: addq   $0x1,0x148(%rbx)
  0x00007fe8f110bf21: jmpq   0x00007fe8f110bf76
  0x00007fe8f110bf26: cmpq   $0x0,0x130(%rbx)
  0x00007fe8f110bf31: jne    0x00007fe8f110bf4a
  0x00007fe8f110bf33: mov    %rdi,0x130(%rbx)
  0x00007fe8f110bf3a: movq   $0x1,0x138(%rbx)
  0x00007fe8f110bf45: jmpq   0x00007fe8f110bf76
  0x00007fe8f110bf4a: cmpq   $0x0,0x140(%rbx)
  0x00007fe8f110bf55: jne    0x00007fe8f110bf6e
  0x00007fe8f110bf57: mov    %rdi,0x140(%rbx)
  0x00007fe8f110bf5e: movq   $0x1,0x148(%rbx)
  0x00007fe8f110bf69: jmpq   0x00007fe8f110bf76
  0x00007fe8f110bf6e: addq   $0x1,0x128(%rbx)
  0x00007fe8f110bf76: nop    
  0x00007fe8f110bf77: callq  0x00007fe8f1046020  ; OopMap{off=316}
                                                ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ;   {optimized virtual_call}
  0x00007fe8f110bf7c: add    $0x30,%rsp
  0x00007fe8f110bf80: pop    %rbp
  0x00007fe8f110bf81: test   %eax,0x1755b179(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110bf87: retq   
  0x00007fe8f110bf88: mov    %rdi,0x8(%rsp)
  0x00007fe8f110bf8d: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110bf95: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=346}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@-1 (line 120)
                                                ;   {runtime_call}
  0x00007fe8f110bf9a: jmpq   0x00007fe8f110be9e
  0x00007fe8f110bf9f: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop off=356}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ;   {runtime_call}
  0x00007fe8f110bfa4: nop    
  0x00007fe8f110bfa5: nop    
  0x00007fe8f110bfa6: mov    0x2a8(%r15),%rax
  0x00007fe8f110bfad: mov    $0x0,%r10
  0x00007fe8f110bfb7: mov    %r10,0x2a8(%r15)
  0x00007fe8f110bfbe: mov    $0x0,%r10
  0x00007fe8f110bfc8: mov    %r10,0x2b0(%r15)
  0x00007fe8f110bfcf: add    $0x30,%rsp
  0x00007fe8f110bfd3: pop    %rbp
  0x00007fe8f110bfd4: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f110bfd9: hlt    
  0x00007fe8f110bfda: hlt    
  0x00007fe8f110bfdb: hlt    
  0x00007fe8f110bfdc: hlt    
  0x00007fe8f110bfdd: hlt    
  0x00007fe8f110bfde: hlt    
  0x00007fe8f110bfdf: hlt    
[Stub Code]
  0x00007fe8f110bfe0: nop                       ;   {no_reloc}
  0x00007fe8f110bfe1: nop    
  0x00007fe8f110bfe2: nop    
  0x00007fe8f110bfe3: nop    
  0x00007fe8f110bfe4: nop    
  0x00007fe8f110bfe5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110bfef: jmpq   0x00007fe8f110bfef  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f110bff4: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f110bff9: mov    %rsp,-0x28(%rsp)
  0x00007fe8f110bffe: sub    $0x80,%rsp
  0x00007fe8f110c005: mov    %rax,0x78(%rsp)
  0x00007fe8f110c00a: mov    %rcx,0x70(%rsp)
  0x00007fe8f110c00f: mov    %rdx,0x68(%rsp)
  0x00007fe8f110c014: mov    %rbx,0x60(%rsp)
  0x00007fe8f110c019: mov    %rbp,0x50(%rsp)
  0x00007fe8f110c01e: mov    %rsi,0x48(%rsp)
  0x00007fe8f110c023: mov    %rdi,0x40(%rsp)
  0x00007fe8f110c028: mov    %r8,0x38(%rsp)
  0x00007fe8f110c02d: mov    %r9,0x30(%rsp)
  0x00007fe8f110c032: mov    %r10,0x28(%rsp)
  0x00007fe8f110c037: mov    %r11,0x20(%rsp)
  0x00007fe8f110c03c: mov    %r12,0x18(%rsp)
  0x00007fe8f110c041: mov    %r13,0x10(%rsp)
  0x00007fe8f110c046: mov    %r14,0x8(%rsp)
  0x00007fe8f110c04b: mov    %r15,(%rsp)
  0x00007fe8f110c04f: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f110c059: mov    $0x7fe8f110bff9,%rsi  ;   {internal_word}
  0x00007fe8f110c063: mov    %rsp,%rdx
  0x00007fe8f110c066: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f110c06a: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110c06f: hlt    
[Deopt Handler Code]
  0x00007fe8f110c070: mov    $0x7fe8f110c070,%r10  ;   {section_word}
  0x00007fe8f110c07a: push   %r10
  0x00007fe8f110c07c: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110c081: hlt    
  0x00007fe8f110c082: hlt    
  0x00007fe8f110c083: hlt    
  0x00007fe8f110c084: hlt    
  0x00007fe8f110c085: hlt    
  0x00007fe8f110c086: hlt    
  0x00007fe8f110c087: hlt    
Decoding compiled method 0x00007fe8f110b550:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f110b6e0: mov    0x8(%rsi),%r10d
  0x00007fe8f110b6e4: shl    $0x3,%r10
  0x00007fe8f110b6e8: cmp    %rax,%r10
  0x00007fe8f110b6eb: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f110b6f1: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110b6fc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f110b700: mov    %eax,-0x14000(%rsp)
  0x00007fe8f110b707: push   %rbp
  0x00007fe8f110b708: sub    $0x30,%rsp
  0x00007fe8f110b70c: mov    $0x7fe8ea6f98a0,%rax  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b716: mov    0xdc(%rax),%edi
  0x00007fe8f110b71c: add    $0x8,%edi
  0x00007fe8f110b71f: mov    %edi,0xdc(%rax)
  0x00007fe8f110b725: mov    $0x7fe8ea502178,%rax  ;   {metadata({method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b72f: and    $0x1ff8,%edi
  0x00007fe8f110b735: cmp    $0x0,%edi
  0x00007fe8f110b738: je     0x00007fe8f110b941  ;*aload_0
                                                ; - java.lang.String::indexOf@0 (line 1546)

  0x00007fe8f110b73e: mov    0xc(%rsi),%eax
  0x00007fe8f110b741: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::indexOf@1 (line 1546)

  0x00007fe8f110b745: mov    0xc(%rax),%edi     ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1546)
                                                ; implicit exception: dispatches to 0x00007fe8f110b958
  0x00007fe8f110b748: cmp    $0x0,%ecx
  0x00007fe8f110b74b: mov    $0x7fe8ea6f98a0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b755: mov    $0x108,%r8
  0x00007fe8f110b75f: jge    0x00007fe8f110b76f
  0x00007fe8f110b765: mov    $0x118,%r8
  0x00007fe8f110b76f: mov    (%rbx,%r8,1),%r9
  0x00007fe8f110b773: lea    0x1(%r9),%r9
  0x00007fe8f110b777: mov    %r9,(%rbx,%r8,1)
  0x00007fe8f110b77b: jge    0x00007fe8f110b79b  ;*ifge
                                                ; - java.lang.String::indexOf@7 (line 1547)

  0x00007fe8f110b781: mov    $0x7fe8ea6f98a0,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b78b: incl   0x128(%rcx)
  0x00007fe8f110b791: mov    $0x0,%ecx
  0x00007fe8f110b796: jmpq   0x00007fe8f110b7d3  ;*goto
                                                ; - java.lang.String::indexOf@12 (line 1548)

  0x00007fe8f110b79b: cmp    %edi,%ecx
  0x00007fe8f110b79d: mov    $0x7fe8ea6f98a0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b7a7: mov    $0x140,%r8
  0x00007fe8f110b7b1: jl     0x00007fe8f110b7c1
  0x00007fe8f110b7b7: mov    $0x150,%r8
  0x00007fe8f110b7c1: mov    (%rbx,%r8,1),%r9
  0x00007fe8f110b7c5: lea    0x1(%r9),%r9
  0x00007fe8f110b7c9: mov    %r9,(%rbx,%r8,1)
  0x00007fe8f110b7cd: jge    0x00007fe8f110b930  ;*if_icmplt
                                                ; - java.lang.String::indexOf@17 (line 1549)

  0x00007fe8f110b7d3: cmp    $0x10000,%edx
  0x00007fe8f110b7d9: mov    $0x7fe8ea6f98a0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b7e3: mov    $0x160,%r8
  0x00007fe8f110b7ed: jge    0x00007fe8f110b7fd
  0x00007fe8f110b7f3: mov    $0x170,%r8
  0x00007fe8f110b7fd: mov    (%rbx,%r8,1),%r9
  0x00007fe8f110b801: lea    0x1(%r9),%r9
  0x00007fe8f110b805: mov    %r9,(%rbx,%r8,1)
  0x00007fe8f110b809: jge    0x00007fe8f110b908
  0x00007fe8f110b80f: jmpq   0x00007fe8f110b8ab  ;*if_icmpge
                                                ; - java.lang.String::indexOf@25 (line 1554)

  0x00007fe8f110b814: nopl   0x0(%rax)
  0x00007fe8f110b818: movslq %ecx,%rsi
  0x00007fe8f110b81b: cmp    0xc(%rax),%ecx
  0x00007fe8f110b81e: jae    0x00007fe8f110b95d
  0x00007fe8f110b824: movzwl 0x10(%rax,%rsi,2),%esi  ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1559)

  0x00007fe8f110b829: cmp    %edx,%esi
  0x00007fe8f110b82b: mov    $0x7fe8ea6f98a0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b835: mov    $0x1a0,%rbx
  0x00007fe8f110b83f: jne    0x00007fe8f110b84f
  0x00007fe8f110b845: mov    $0x1b0,%rbx
  0x00007fe8f110b84f: mov    (%rsi,%rbx,1),%r8
  0x00007fe8f110b853: lea    0x1(%r8),%r8
  0x00007fe8f110b857: mov    %r8,(%rsi,%rbx,1)
  0x00007fe8f110b85b: je     0x00007fe8f110b8e8  ;*if_icmpne
                                                ; - java.lang.String::indexOf@49 (line 1559)

  0x00007fe8f110b861: inc    %ecx
  0x00007fe8f110b863: mov    $0x7fe8ea6f98a0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b86d: mov    0xe0(%rsi),%ebx
  0x00007fe8f110b873: add    $0x8,%ebx
  0x00007fe8f110b876: mov    %ebx,0xe0(%rsi)
  0x00007fe8f110b87c: mov    $0x7fe8ea502178,%rsi  ;   {metadata({method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b886: and    $0xfff8,%ebx
  0x00007fe8f110b88c: cmp    $0x0,%ebx
  0x00007fe8f110b88f: je     0x00007fe8f110b966  ; OopMap{rax=Oop off=437}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)

  0x00007fe8f110b895: test   %eax,0x1755b865(%rip)        # 0x00007fe908667100
                                                ;   {poll}
  0x00007fe8f110b89b: mov    $0x7fe8ea6f98a0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b8a5: incl   0x1c0(%rsi)        ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)

  0x00007fe8f110b8ab: cmp    %edi,%ecx
  0x00007fe8f110b8ad: mov    $0x7fe8ea6f98a0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b8b7: mov    $0x180,%rbx
  0x00007fe8f110b8c1: jge    0x00007fe8f110b8d1
  0x00007fe8f110b8c7: mov    $0x190,%rbx
  0x00007fe8f110b8d1: mov    (%rsi,%rbx,1),%r8
  0x00007fe8f110b8d5: lea    0x1(%r8),%r8
  0x00007fe8f110b8d9: mov    %r8,(%rsi,%rbx,1)
  0x00007fe8f110b8dd: jge    0x00007fe8f110b8f7
  0x00007fe8f110b8e3: jmpq   0x00007fe8f110b818  ;*if_icmpge
                                                ; - java.lang.String::indexOf@40 (line 1558)

  0x00007fe8f110b8e8: mov    %rcx,%rax
  0x00007fe8f110b8eb: add    $0x30,%rsp
  0x00007fe8f110b8ef: pop    %rbp
  0x00007fe8f110b8f0: test   %eax,0x1755b80a(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110b8f6: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@54 (line 1560)

  0x00007fe8f110b8f7: mov    $0xffffffff,%eax
  0x00007fe8f110b8fc: add    $0x30,%rsp
  0x00007fe8f110b900: pop    %rbp
  0x00007fe8f110b901: test   %eax,0x1755b7f9(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110b907: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@62 (line 1563)

  0x00007fe8f110b908: mov    %rsi,%rdi
  0x00007fe8f110b90b: mov    $0x7fe8ea6f98a0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea502178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f110b915: addq   $0x1,0x1d8(%rbx)
  0x00007fe8f110b91d: nop    
  0x00007fe8f110b91e: nop    
  0x00007fe8f110b91f: callq  0x00007fe8f1046020  ; OopMap{off=580}
                                                ;*invokespecial indexOfSupplementary
                                                ; - java.lang.String::indexOf@66 (line 1565)
                                                ;   {optimized virtual_call}
  0x00007fe8f110b924: add    $0x30,%rsp
  0x00007fe8f110b928: pop    %rbp
  0x00007fe8f110b929: test   %eax,0x1755b7d1(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110b92f: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@69 (line 1565)

  0x00007fe8f110b930: mov    $0xffffffff,%eax
  0x00007fe8f110b935: add    $0x30,%rsp
  0x00007fe8f110b939: pop    %rbp
  0x00007fe8f110b93a: test   %eax,0x1755b7c0(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110b940: retq   
  0x00007fe8f110b941: mov    %rax,0x8(%rsp)
  0x00007fe8f110b946: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110b94e: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=627}
                                                ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1546)
                                                ;   {runtime_call}
  0x00007fe8f110b953: jmpq   0x00007fe8f110b73e
  0x00007fe8f110b958: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop rax=Oop off=637}
                                                ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1546)
                                                ;   {runtime_call}
  0x00007fe8f110b95d: mov    %rcx,(%rsp)
  0x00007fe8f110b961: callq  0x00007fe8f106bc40  ; OopMap{rax=Oop off=646}
                                                ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1559)
                                                ;   {runtime_call}
  0x00007fe8f110b966: mov    %rsi,0x8(%rsp)
  0x00007fe8f110b96b: movq   $0x3a,(%rsp)
  0x00007fe8f110b973: callq  0x00007fe8f10fd5a0  ; OopMap{rax=Oop off=664}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)
                                                ;   {runtime_call}
  0x00007fe8f110b978: jmpq   0x00007fe8f110b895
  0x00007fe8f110b97d: nop    
  0x00007fe8f110b97e: nop    
  0x00007fe8f110b97f: mov    0x2a8(%r15),%rax
  0x00007fe8f110b986: mov    $0x0,%r10
  0x00007fe8f110b990: mov    %r10,0x2a8(%r15)
  0x00007fe8f110b997: mov    $0x0,%r10
  0x00007fe8f110b9a1: mov    %r10,0x2b0(%r15)
  0x00007fe8f110b9a8: add    $0x30,%rsp
  0x00007fe8f110b9ac: pop    %rbp
  0x00007fe8f110b9ad: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f110b9b2: hlt    
  0x00007fe8f110b9b3: hlt    
  0x00007fe8f110b9b4: hlt    
  0x00007fe8f110b9b5: hlt    
  0x00007fe8f110b9b6: hlt    
  0x00007fe8f110b9b7: hlt    
  0x00007fe8f110b9b8: hlt    
  0x00007fe8f110b9b9: hlt    
  0x00007fe8f110b9ba: hlt    
  0x00007fe8f110b9bb: hlt    
  0x00007fe8f110b9bc: hlt    
  0x00007fe8f110b9bd: hlt    
  0x00007fe8f110b9be: hlt    
  0x00007fe8f110b9bf: hlt    
[Stub Code]
  0x00007fe8f110b9c0: nop                       ;   {no_reloc}
  0x00007fe8f110b9c1: nop    
  0x00007fe8f110b9c2: nop    
  0x00007fe8f110b9c3: nop    
  0x00007fe8f110b9c4: nop    
  0x00007fe8f110b9c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110b9cf: jmpq   0x00007fe8f110b9cf  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f110b9d4: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f110b9d9: mov    %rsp,-0x28(%rsp)
  0x00007fe8f110b9de: sub    $0x80,%rsp
  0x00007fe8f110b9e5: mov    %rax,0x78(%rsp)
  0x00007fe8f110b9ea: mov    %rcx,0x70(%rsp)
  0x00007fe8f110b9ef: mov    %rdx,0x68(%rsp)
  0x00007fe8f110b9f4: mov    %rbx,0x60(%rsp)
  0x00007fe8f110b9f9: mov    %rbp,0x50(%rsp)
  0x00007fe8f110b9fe: mov    %rsi,0x48(%rsp)
  0x00007fe8f110ba03: mov    %rdi,0x40(%rsp)
  0x00007fe8f110ba08: mov    %r8,0x38(%rsp)
  0x00007fe8f110ba0d: mov    %r9,0x30(%rsp)
  0x00007fe8f110ba12: mov    %r10,0x28(%rsp)
  0x00007fe8f110ba17: mov    %r11,0x20(%rsp)
  0x00007fe8f110ba1c: mov    %r12,0x18(%rsp)
  0x00007fe8f110ba21: mov    %r13,0x10(%rsp)
  0x00007fe8f110ba26: mov    %r14,0x8(%rsp)
  0x00007fe8f110ba2b: mov    %r15,(%rsp)
  0x00007fe8f110ba2f: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f110ba39: mov    $0x7fe8f110b9d9,%rsi  ;   {internal_word}
  0x00007fe8f110ba43: mov    %rsp,%rdx
  0x00007fe8f110ba46: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f110ba4a: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110ba4f: hlt    
[Deopt Handler Code]
  0x00007fe8f110ba50: mov    $0x7fe8f110ba50,%r10  ;   {section_word}
  0x00007fe8f110ba5a: push   %r10
  0x00007fe8f110ba5c: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110ba61: hlt    
  0x00007fe8f110ba62: hlt    
  0x00007fe8f110ba63: hlt    
  0x00007fe8f110ba64: hlt    
  0x00007fe8f110ba65: hlt    
  0x00007fe8f110ba66: hlt    
  0x00007fe8f110ba67: hlt    
Decoding compiled method 0x00007fe8f110b190:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f110b300: mov    %eax,-0x14000(%rsp)
  0x00007fe8f110b307: push   %rbp
  0x00007fe8f110b308: sub    $0x30,%rsp
  0x00007fe8f110b30c: mov    $0x7fe8ea6cb1c0,%rax  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110b316: mov    0xdc(%rax),%edi
  0x00007fe8f110b31c: add    $0x8,%edi
  0x00007fe8f110b31f: mov    %edi,0xdc(%rax)
  0x00007fe8f110b325: mov    $0x7fe8ea5f0b90,%rax  ;   {metadata({method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110b32f: and    $0x1ff8,%edi
  0x00007fe8f110b335: cmp    $0x0,%edi
  0x00007fe8f110b338: je     0x00007fe8f110b39d  ;*iload_0
                                                ; - java.lang.Math::min@0 (line 1336)

  0x00007fe8f110b33e: cmp    %edx,%esi
  0x00007fe8f110b340: mov    $0x7fe8ea6cb1c0,%rax  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110b34a: mov    $0x108,%rdi
  0x00007fe8f110b354: jg     0x00007fe8f110b364
  0x00007fe8f110b35a: mov    $0x118,%rdi
  0x00007fe8f110b364: mov    (%rax,%rdi,1),%rbx
  0x00007fe8f110b368: lea    0x1(%rbx),%rbx
  0x00007fe8f110b36c: mov    %rbx,(%rax,%rdi,1)
  0x00007fe8f110b370: jg     0x00007fe8f110b38b  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)

  0x00007fe8f110b376: mov    $0x7fe8ea6cb1c0,%rax  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110b380: incl   0x128(%rax)
  0x00007fe8f110b386: jmpq   0x00007fe8f110b38e  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)

  0x00007fe8f110b38b: mov    %rdx,%rsi          ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)

  0x00007fe8f110b38e: mov    %rsi,%rax
  0x00007fe8f110b391: add    $0x30,%rsp
  0x00007fe8f110b395: pop    %rbp
  0x00007fe8f110b396: test   %eax,0x1755bd64(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110b39c: retq   
  0x00007fe8f110b39d: mov    %rax,0x8(%rsp)
  0x00007fe8f110b3a2: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110b3aa: callq  0x00007fe8f10fd5a0  ; OopMap{off=175}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ;   {runtime_call}
  0x00007fe8f110b3af: jmp    0x00007fe8f110b33e
  0x00007fe8f110b3b1: nop    
  0x00007fe8f110b3b2: nop    
  0x00007fe8f110b3b3: mov    0x2a8(%r15),%rax
  0x00007fe8f110b3ba: mov    $0x0,%r10
  0x00007fe8f110b3c4: mov    %r10,0x2a8(%r15)
  0x00007fe8f110b3cb: mov    $0x0,%r10
  0x00007fe8f110b3d5: mov    %r10,0x2b0(%r15)
  0x00007fe8f110b3dc: add    $0x30,%rsp
  0x00007fe8f110b3e0: pop    %rbp
  0x00007fe8f110b3e1: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f110b3e6: hlt    
  0x00007fe8f110b3e7: hlt    
  0x00007fe8f110b3e8: hlt    
  0x00007fe8f110b3e9: hlt    
  0x00007fe8f110b3ea: hlt    
  0x00007fe8f110b3eb: hlt    
  0x00007fe8f110b3ec: hlt    
  0x00007fe8f110b3ed: hlt    
  0x00007fe8f110b3ee: hlt    
  0x00007fe8f110b3ef: hlt    
  0x00007fe8f110b3f0: hlt    
  0x00007fe8f110b3f1: hlt    
  0x00007fe8f110b3f2: hlt    
  0x00007fe8f110b3f3: hlt    
  0x00007fe8f110b3f4: hlt    
  0x00007fe8f110b3f5: hlt    
  0x00007fe8f110b3f6: hlt    
  0x00007fe8f110b3f7: hlt    
  0x00007fe8f110b3f8: hlt    
  0x00007fe8f110b3f9: hlt    
  0x00007fe8f110b3fa: hlt    
  0x00007fe8f110b3fb: hlt    
  0x00007fe8f110b3fc: hlt    
  0x00007fe8f110b3fd: hlt    
  0x00007fe8f110b3fe: hlt    
  0x00007fe8f110b3ff: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f110b400: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f110b405: mov    %rsp,-0x28(%rsp)
  0x00007fe8f110b40a: sub    $0x80,%rsp
  0x00007fe8f110b411: mov    %rax,0x78(%rsp)
  0x00007fe8f110b416: mov    %rcx,0x70(%rsp)
  0x00007fe8f110b41b: mov    %rdx,0x68(%rsp)
  0x00007fe8f110b420: mov    %rbx,0x60(%rsp)
  0x00007fe8f110b425: mov    %rbp,0x50(%rsp)
  0x00007fe8f110b42a: mov    %rsi,0x48(%rsp)
  0x00007fe8f110b42f: mov    %rdi,0x40(%rsp)
  0x00007fe8f110b434: mov    %r8,0x38(%rsp)
  0x00007fe8f110b439: mov    %r9,0x30(%rsp)
  0x00007fe8f110b43e: mov    %r10,0x28(%rsp)
  0x00007fe8f110b443: mov    %r11,0x20(%rsp)
  0x00007fe8f110b448: mov    %r12,0x18(%rsp)
  0x00007fe8f110b44d: mov    %r13,0x10(%rsp)
  0x00007fe8f110b452: mov    %r14,0x8(%rsp)
  0x00007fe8f110b457: mov    %r15,(%rsp)
  0x00007fe8f110b45b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f110b465: mov    $0x7fe8f110b405,%rsi  ;   {internal_word}
  0x00007fe8f110b46f: mov    %rsp,%rdx
  0x00007fe8f110b472: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f110b476: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110b47b: hlt    
[Deopt Handler Code]
  0x00007fe8f110b47c: mov    $0x7fe8f110b47c,%r10  ;   {section_word}
  0x00007fe8f110b486: push   %r10
  0x00007fe8f110b488: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110b48d: hlt    
  0x00007fe8f110b48e: hlt    
  0x00007fe8f110b48f: hlt    
Decoding compiled method 0x00007fe8f110c190:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays'
  # parm0:    rsi:rsi   = '[C'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  #           [sp+0xb0]  (sp of caller)
  0x00007fe8f110c3a0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f110c3a7: push   %rbp
  0x00007fe8f110c3a8: sub    $0xa0,%rsp
  0x00007fe8f110c3af: mov    %rsi,%r8
  0x00007fe8f110c3b2: mov    %rdx,%r9
  0x00007fe8f110c3b5: mov    $0x7fe8ea6fb790,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c3bf: mov    0xdc(%rbx),%edx
  0x00007fe8f110c3c5: add    $0x8,%edx
  0x00007fe8f110c3c8: mov    %edx,0xdc(%rbx)
  0x00007fe8f110c3ce: mov    $0x7fe8ea615a00,%rbx  ;   {metadata({method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c3d8: and    $0x1ff8,%edx
  0x00007fe8f110c3de: cmp    $0x0,%edx
  0x00007fe8f110c3e1: je     0x00007fe8f110cc41  ;*iload_2
                                                ; - java.util.Arrays::copyOfRange@0 (line 3661)

  0x00007fe8f110c3e7: mov    %rcx,%r11
  0x00007fe8f110c3ea: sub    %r9d,%r11d
  0x00007fe8f110c3ed: cmp    $0x0,%r11d
  0x00007fe8f110c3f1: mov    $0x7fe8ea6fb790,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c3fb: mov    $0x108,%rdx
  0x00007fe8f110c405: jge    0x00007fe8f110c415
  0x00007fe8f110c40b: mov    $0x118,%rdx
  0x00007fe8f110c415: mov    (%rbx,%rdx,1),%rsi
  0x00007fe8f110c419: lea    0x1(%rsi),%rsi
  0x00007fe8f110c41d: mov    %rsi,(%rbx,%rdx,1)
  0x00007fe8f110c421: jl     0x00007fe8f110c5e4  ;*ifge
                                                ; - java.util.Arrays::copyOfRange@5 (line 3662)

  0x00007fe8f110c427: mov    %r11,%rbx
  0x00007fe8f110c42a: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007fe8f110c434: movslq %ebx,%rbx
  0x00007fe8f110c437: mov    %rbx,%rdi
  0x00007fe8f110c43a: cmp    $0xffffff,%rbx
  0x00007fe8f110c441: ja     0x00007fe8f110cc58
  0x00007fe8f110c447: mov    $0x17,%rsi
  0x00007fe8f110c451: lea    (%rsi,%rbx,2),%rsi
  0x00007fe8f110c455: and    $0xfffffffffffffff8,%rsi
  0x00007fe8f110c459: mov    0x60(%r15),%rax
  0x00007fe8f110c45d: lea    (%rax,%rsi,1),%rsi
  0x00007fe8f110c461: cmp    0x70(%r15),%rsi
  0x00007fe8f110c465: ja     0x00007fe8f110cc58
  0x00007fe8f110c46b: mov    %rsi,0x60(%r15)
  0x00007fe8f110c46f: sub    %rax,%rsi
  0x00007fe8f110c472: movq   $0x1,(%rax)
  0x00007fe8f110c479: mov    %rdx,%rcx
  0x00007fe8f110c47c: shr    $0x3,%rcx
  0x00007fe8f110c480: mov    %ecx,0x8(%rax)
  0x00007fe8f110c483: mov    %ebx,0xc(%rax)
  0x00007fe8f110c486: sub    $0x10,%rsi
  0x00007fe8f110c48a: je     0x00007fe8f110c4a1
  0x00007fe8f110c490: xor    %rbx,%rbx
  0x00007fe8f110c493: shr    $0x3,%rsi
  0x00007fe8f110c497: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007fe8f110c49c: dec    %rsi
  0x00007fe8f110c49f: jne    0x00007fe8f110c497  ;*newarray
                                                ; - java.util.Arrays::copyOfRange@40 (line 3664)

  0x00007fe8f110c4a1: mov    0xc(%r8),%esi      ;*arraylength
                                                ; - java.util.Arrays::copyOfRange@50 (line 3665)
                                                ; implicit exception: dispatches to 0x00007fe8f110cc62
  0x00007fe8f110c4a5: sub    %r9d,%esi
  0x00007fe8f110c4a8: mov    $0x7fe8ea6fb790,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c4b2: addq   $0x1,0x208(%rdx)
  0x00007fe8f110c4ba: mov    $0x7fe8ea6cb1c0,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110c4c4: mov    0xdc(%rdx),%ecx
  0x00007fe8f110c4ca: add    $0x8,%ecx
  0x00007fe8f110c4cd: mov    %ecx,0xdc(%rdx)
  0x00007fe8f110c4d3: mov    $0x7fe8ea5f0b90,%rdx  ;   {metadata({method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110c4dd: and    $0x7ffff8,%ecx
  0x00007fe8f110c4e3: cmp    $0x0,%ecx
  0x00007fe8f110c4e6: je     0x00007fe8f110cc67
  0x00007fe8f110c4ec: cmp    %r11d,%esi
  0x00007fe8f110c4ef: mov    $0x7fe8ea6cb1c0,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110c4f9: mov    $0x108,%rcx
  0x00007fe8f110c503: jg     0x00007fe8f110c513
  0x00007fe8f110c509: mov    $0x118,%rcx
  0x00007fe8f110c513: mov    (%rdx,%rcx,1),%rdi
  0x00007fe8f110c517: lea    0x1(%rdi),%rdi
  0x00007fe8f110c51b: mov    %rdi,(%rdx,%rcx,1)
  0x00007fe8f110c51f: jg     0x00007fe8f110c53d  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007fe8f110c525: mov    $0x7fe8ea6cb1c0,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f110c52f: incl   0x128(%rdx)
  0x00007fe8f110c535: mov    %rsi,%rdi
  0x00007fe8f110c538: jmpq   0x00007fe8f110c540  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007fe8f110c53d: mov    %r11,%rdi          ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007fe8f110c540: mov    $0x7fe8ea6fb790,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c54a: addq   $0x1,0x218(%rsi)
  0x00007fe8f110c552: mov    %r8,%rsi
  0x00007fe8f110c555: mov    %r9,%rdx
  0x00007fe8f110c558: mov    %rax,%rcx
  0x00007fe8f110c55b: mov    $0x0,%r8d
  0x00007fe8f110c561: mov    %rdi,%r9
  0x00007fe8f110c564: mov    %rax,0x70(%rsp)
  0x00007fe8f110c569: test   %edx,%edx
  0x00007fe8f110c56b: jl     0x00007fe8f110cc7e
  0x00007fe8f110c571: lea    (%rdx,%r9,1),%rdi
  0x00007fe8f110c575: cmp    0xc(%rsi),%edi
  0x00007fe8f110c578: ja     0x00007fe8f110cc7e
  0x00007fe8f110c57e: lea    (%r8,%r9,1),%rdi
  0x00007fe8f110c582: cmp    0xc(%rcx),%edi
  0x00007fe8f110c585: ja     0x00007fe8f110cc7e
  0x00007fe8f110c58b: test   %r9d,%r9d
  0x00007fe8f110c58e: jl     0x00007fe8f110cc7e
  0x00007fe8f110c594: je     0x00007fe8f110c5d0
  0x00007fe8f110c59a: movslq %edx,%rdx
  0x00007fe8f110c59d: movslq %r8d,%r8
  0x00007fe8f110c5a0: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007fe8f110c5a5: lea    0x10(%rcx,%r8,2),%rsi
  0x00007fe8f110c5aa: mov    %r9,%rdx
  0x00007fe8f110c5ad: test   $0xf,%esp
  0x00007fe8f110c5b3: je     0x00007fe8f110c5cb
  0x00007fe8f110c5b9: sub    $0x8,%rsp
  0x00007fe8f110c5bd: callq  Stub::jshort_disjoint_arraycopy
                                                ;   {runtime_call}
  0x00007fe8f110c5c2: add    $0x8,%rsp
  0x00007fe8f110c5c6: jmpq   0x00007fe8f110c5d0
  0x00007fe8f110c5cb: callq  Stub::jshort_disjoint_arraycopy
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOfRange@57 (line 3665)
                                                ;   {runtime_call}
  0x00007fe8f110c5d0: mov    0x70(%rsp),%rax
  0x00007fe8f110c5d5: add    $0xa0,%rsp
  0x00007fe8f110c5dc: pop    %rbp
  0x00007fe8f110c5dd: test   %eax,0x1755ab1d(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110c5e3: retq                      ;*areturn
                                                ; - java.util.Arrays::copyOfRange@62 (line 3667)

  0x00007fe8f110c5e4: mov    %ecx,0x80(%rsp)
  0x00007fe8f110c5eb: nopl   0x0(%rax,%rax,1)
  0x00007fe8f110c5f0: jmpq   0x00007fe8f110cc98  ;   {no_reloc}
  0x00007fe8f110c5f5: add    %al,(%rax)
  0x00007fe8f110c5f7: add    %al,(%rax)
  0x00007fe8f110c5f9: add    %cl,-0x75(%rcx)
  0x00007fe8f110c5fc: rex.RXB (bad)  
  0x00007fe8f110c5fe: lea    0x20(%rax),%rdi
  0x00007fe8f110c602: cmp    0x70(%r15),%rdi
  0x00007fe8f110c606: ja     0x00007fe8f110cca2
  0x00007fe8f110c60c: mov    %rdi,0x60(%r15)
  0x00007fe8f110c610: mov    0xa8(%rdx),%rcx
  0x00007fe8f110c617: mov    %rcx,(%rax)
  0x00007fe8f110c61a: mov    %rdx,%rcx
  0x00007fe8f110c61d: shr    $0x3,%rcx
  0x00007fe8f110c621: mov    %ecx,0x8(%rax)
  0x00007fe8f110c624: xor    %rcx,%rcx
  0x00007fe8f110c627: mov    %ecx,0xc(%rax)
  0x00007fe8f110c62a: xor    %rcx,%rcx
  0x00007fe8f110c62d: mov    %rcx,0x10(%rax)
  0x00007fe8f110c631: mov    %rcx,0x18(%rax)    ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)

  0x00007fe8f110c635: xchg   %ax,%ax
  0x00007fe8f110c638: jmpq   0x00007fe8f110ccbe  ;   {no_reloc}
  0x00007fe8f110c63d: add    %al,(%rax)
  0x00007fe8f110c63f: add    %al,(%rax)
  0x00007fe8f110c641: add    %cl,-0x77(%rax)
  0x00007fe8f110c644: test   %ah,(%rax,%rcx,4)
  0x00007fe8f110c647: add    %al,(%rax)
  0x00007fe8f110c649: add    %cl,-0x75(%rcx)
  0x00007fe8f110c64c: rex.RXB (bad)  
  0x00007fe8f110c64e: lea    0x18(%rax),%rdi
  0x00007fe8f110c652: cmp    0x70(%r15),%rdi
  0x00007fe8f110c656: ja     0x00007fe8f110ccc8
  0x00007fe8f110c65c: mov    %rdi,0x60(%r15)
  0x00007fe8f110c660: mov    0xa8(%rdx),%rcx
  0x00007fe8f110c667: mov    %rcx,(%rax)
  0x00007fe8f110c66a: mov    %rdx,%rcx
  0x00007fe8f110c66d: shr    $0x3,%rcx
  0x00007fe8f110c671: mov    %ecx,0x8(%rax)
  0x00007fe8f110c674: xor    %rcx,%rcx
  0x00007fe8f110c677: mov    %ecx,0xc(%rax)
  0x00007fe8f110c67a: xor    %rcx,%rcx
  0x00007fe8f110c67d: mov    %rcx,0x10(%rax)    ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)

  0x00007fe8f110c681: mov    %rax,%rbx
  0x00007fe8f110c684: mov    $0x7fe8ea6fb790,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c68e: addq   $0x1,0x128(%rdx)
  0x00007fe8f110c696: mov    $0x7fe8ea6fbd68,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea574ec8} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007fe8f110c6a0: mov    0xdc(%rbx),%edx
  0x00007fe8f110c6a6: add    $0x8,%edx
  0x00007fe8f110c6a9: mov    %edx,0xdc(%rbx)
  0x00007fe8f110c6af: mov    $0x7fe8ea574ec8,%rbx  ;   {metadata({method} {0x00007fe8ea574ec8} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007fe8f110c6b9: and    $0x7ffff8,%edx
  0x00007fe8f110c6bf: cmp    $0x0,%edx
  0x00007fe8f110c6c2: je     0x00007fe8f110ccd5
  0x00007fe8f110c6c8: mov    %rax,%rbx
  0x00007fe8f110c6cb: mov    $0x7fe8ea6fbd68,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea574ec8} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007fe8f110c6d5: addq   $0x1,0x108(%rdx)
  0x00007fe8f110c6dd: mov    $0x7fe8ea6fc0f8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea5712b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110c6e7: mov    0xdc(%rbx),%edx
  0x00007fe8f110c6ed: add    $0x8,%edx
  0x00007fe8f110c6f0: mov    %edx,0xdc(%rbx)
  0x00007fe8f110c6f6: mov    $0x7fe8ea5712b0,%rbx  ;   {metadata({method} {0x00007fe8ea5712b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110c700: and    $0x7ffff8,%edx
  0x00007fe8f110c706: cmp    $0x0,%edx
  0x00007fe8f110c709: je     0x00007fe8f110ccec
  0x00007fe8f110c70f: mov    %rax,%rbx
  0x00007fe8f110c712: mov    $0x7fe8ea6fc0f8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5712b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110c71c: addq   $0x1,0x108(%rdx)
  0x00007fe8f110c724: mov    $0x7fe8ea670fd0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f110c72e: mov    0xdc(%rbx),%edx
  0x00007fe8f110c734: add    $0x8,%edx
  0x00007fe8f110c737: mov    %edx,0xdc(%rbx)
  0x00007fe8f110c73d: mov    $0x7fe8ea4fd480,%rbx  ;   {metadata({method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f110c747: and    $0x7ffff8,%edx
  0x00007fe8f110c74d: cmp    $0x0,%edx
  0x00007fe8f110c750: je     0x00007fe8f110cd03
  0x00007fe8f110c756: mov    $0x10,%ebx
  0x00007fe8f110c75b: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007fe8f110c765: mov    %rax,%r13
  0x00007fe8f110c768: movslq %ebx,%rbx
  0x00007fe8f110c76b: mov    %rbx,%rdi
  0x00007fe8f110c76e: cmp    $0xffffff,%rbx
  0x00007fe8f110c775: ja     0x00007fe8f110cd1a
  0x00007fe8f110c77b: mov    $0x17,%rsi
  0x00007fe8f110c785: lea    (%rsi,%rbx,2),%rsi
  0x00007fe8f110c789: and    $0xfffffffffffffff8,%rsi
  0x00007fe8f110c78d: mov    0x60(%r15),%rax
  0x00007fe8f110c791: lea    (%rax,%rsi,1),%rsi
  0x00007fe8f110c795: cmp    0x70(%r15),%rsi
  0x00007fe8f110c799: ja     0x00007fe8f110cd1a
  0x00007fe8f110c79f: mov    %rsi,0x60(%r15)
  0x00007fe8f110c7a3: sub    %rax,%rsi
  0x00007fe8f110c7a6: movq   $0x1,(%rax)
  0x00007fe8f110c7ad: mov    %rdx,%rcx
  0x00007fe8f110c7b0: shr    $0x3,%rcx
  0x00007fe8f110c7b4: mov    %ecx,0x8(%rax)
  0x00007fe8f110c7b7: mov    %ebx,0xc(%rax)
  0x00007fe8f110c7ba: sub    $0x10,%rsi
  0x00007fe8f110c7be: je     0x00007fe8f110c7d5
  0x00007fe8f110c7c4: xor    %rbx,%rbx
  0x00007fe8f110c7c7: shr    $0x3,%rsi
  0x00007fe8f110c7cb: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007fe8f110c7d0: dec    %rsi
  0x00007fe8f110c7d3: jne    0x00007fe8f110c7cb  ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)

  0x00007fe8f110c7d5: mov    %rax,%r10
  0x00007fe8f110c7d8: shr    $0x3,%r10
  0x00007fe8f110c7dc: mov    %r10d,0x10(%r13)
  0x00007fe8f110c7e0: mov    %r13,%rax
  0x00007fe8f110c7e3: shr    $0x9,%rax
  0x00007fe8f110c7e7: mov    $0x7fe9014ff000,%rdx
  0x00007fe8f110c7f1: movb   $0x0,(%rax,%rdx,1)  ;*putfield value
                                                ; - java.lang.AbstractStringBuilder::<init>@8 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)

  0x00007fe8f110c7f5: mov    %r13,%rax
  0x00007fe8f110c7f8: mov    $0x7fe8ea6fb790,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c802: mov    0x8(%rax),%eax
  0x00007fe8f110c805: shl    $0x3,%rax
  0x00007fe8f110c809: cmp    0x140(%rdx),%rax
  0x00007fe8f110c810: jne    0x00007fe8f110c81f
  0x00007fe8f110c812: addq   $0x1,0x148(%rdx)
  0x00007fe8f110c81a: jmpq   0x00007fe8f110c885
  0x00007fe8f110c81f: cmp    0x150(%rdx),%rax
  0x00007fe8f110c826: jne    0x00007fe8f110c835
  0x00007fe8f110c828: addq   $0x1,0x158(%rdx)
  0x00007fe8f110c830: jmpq   0x00007fe8f110c885
  0x00007fe8f110c835: cmpq   $0x0,0x140(%rdx)
  0x00007fe8f110c840: jne    0x00007fe8f110c859
  0x00007fe8f110c842: mov    %rax,0x140(%rdx)
  0x00007fe8f110c849: movq   $0x1,0x148(%rdx)
  0x00007fe8f110c854: jmpq   0x00007fe8f110c885
  0x00007fe8f110c859: cmpq   $0x0,0x150(%rdx)
  0x00007fe8f110c864: jne    0x00007fe8f110c87d
  0x00007fe8f110c866: mov    %rax,0x150(%rdx)
  0x00007fe8f110c86d: movq   $0x1,0x158(%rdx)
  0x00007fe8f110c878: jmpq   0x00007fe8f110c885
  0x00007fe8f110c87d: addq   $0x1,0x138(%rdx)
  0x00007fe8f110c885: mov    $0x7fe8ea6fc418,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5756a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110c88f: mov    0xdc(%rdx),%esi
  0x00007fe8f110c895: add    $0x8,%esi
  0x00007fe8f110c898: mov    %esi,0xdc(%rdx)
  0x00007fe8f110c89e: mov    $0x7fe8ea5756a0,%rdx  ;   {metadata({method} {0x00007fe8ea5756a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110c8a8: and    $0x7ffff8,%esi
  0x00007fe8f110c8ae: cmp    $0x0,%esi
  0x00007fe8f110c8b1: je     0x00007fe8f110cd24
  0x00007fe8f110c8b7: mov    %r13,%rax
  0x00007fe8f110c8ba: mov    $0x7fe8ea6fc418,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5756a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110c8c4: addq   $0x1,0x108(%rdx)
  0x00007fe8f110c8cc: mov    %r9,%rdx
  0x00007fe8f110c8cf: mov    %r13,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)

  0x00007fe8f110c8d2: mov    %r13,0x78(%rsp)
  0x00007fe8f110c8d7: callq  0x00007fe8f1046020  ; OopMap{[120]=Oop [136]=Oop off=1340}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007fe8f110c8dc: mov    0x78(%rsp),%rax
  0x00007fe8f110c8e1: mov    $0x7fe8ea6fb790,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c8eb: mov    0x8(%rax),%eax
  0x00007fe8f110c8ee: shl    $0x3,%rax
  0x00007fe8f110c8f2: cmp    0x170(%rdx),%rax
  0x00007fe8f110c8f9: jne    0x00007fe8f110c908
  0x00007fe8f110c8fb: addq   $0x1,0x178(%rdx)
  0x00007fe8f110c903: jmpq   0x00007fe8f110c96e
  0x00007fe8f110c908: cmp    0x180(%rdx),%rax
  0x00007fe8f110c90f: jne    0x00007fe8f110c91e
  0x00007fe8f110c911: addq   $0x1,0x188(%rdx)
  0x00007fe8f110c919: jmpq   0x00007fe8f110c96e
  0x00007fe8f110c91e: cmpq   $0x0,0x170(%rdx)
  0x00007fe8f110c929: jne    0x00007fe8f110c942
  0x00007fe8f110c92b: mov    %rax,0x170(%rdx)
  0x00007fe8f110c932: movq   $0x1,0x178(%rdx)
  0x00007fe8f110c93d: jmpq   0x00007fe8f110c96e
  0x00007fe8f110c942: cmpq   $0x0,0x180(%rdx)
  0x00007fe8f110c94d: jne    0x00007fe8f110c966
  0x00007fe8f110c94f: mov    %rax,0x180(%rdx)
  0x00007fe8f110c956: movq   $0x1,0x188(%rdx)
  0x00007fe8f110c961: jmpq   0x00007fe8f110c96e
  0x00007fe8f110c966: addq   $0x1,0x168(%rdx)
  0x00007fe8f110c96e: mov    $0x7fe8ea6fc768,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5751e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110c978: mov    0xdc(%rdx),%esi
  0x00007fe8f110c97e: add    $0x8,%esi
  0x00007fe8f110c981: mov    %esi,0xdc(%rdx)
  0x00007fe8f110c987: mov    $0x7fe8ea5751e0,%rdx  ;   {metadata({method} {0x00007fe8ea5751e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110c991: and    $0x7ffff8,%esi
  0x00007fe8f110c997: cmp    $0x0,%esi
  0x00007fe8f110c99a: je     0x00007fe8f110cd3b
  0x00007fe8f110c9a0: mov    0x78(%rsp),%rax
  0x00007fe8f110c9a5: mov    $0x7fe8ea6fc768,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5751e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110c9af: addq   $0x1,0x108(%rdx)
  0x00007fe8f110c9b7: mov    $0x781ef3340,%rdx  ;   {oop(" > ")}
  0x00007fe8f110c9c1: mov    0x78(%rsp),%rsi    ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)

  0x00007fe8f110c9c6: nop    
  0x00007fe8f110c9c7: callq  0x00007fe8f1046020  ; OopMap{[120]=Oop [136]=Oop off=1580}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007fe8f110c9cc: mov    0x78(%rsp),%rax
  0x00007fe8f110c9d1: mov    $0x7fe8ea6fb790,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110c9db: mov    0x8(%rax),%eax
  0x00007fe8f110c9de: shl    $0x3,%rax
  0x00007fe8f110c9e2: cmp    0x1a0(%rdx),%rax
  0x00007fe8f110c9e9: jne    0x00007fe8f110c9f8
  0x00007fe8f110c9eb: addq   $0x1,0x1a8(%rdx)
  0x00007fe8f110c9f3: jmpq   0x00007fe8f110ca5e
  0x00007fe8f110c9f8: cmp    0x1b0(%rdx),%rax
  0x00007fe8f110c9ff: jne    0x00007fe8f110ca0e
  0x00007fe8f110ca01: addq   $0x1,0x1b8(%rdx)
  0x00007fe8f110ca09: jmpq   0x00007fe8f110ca5e
  0x00007fe8f110ca0e: cmpq   $0x0,0x1a0(%rdx)
  0x00007fe8f110ca19: jne    0x00007fe8f110ca32
  0x00007fe8f110ca1b: mov    %rax,0x1a0(%rdx)
  0x00007fe8f110ca22: movq   $0x1,0x1a8(%rdx)
  0x00007fe8f110ca2d: jmpq   0x00007fe8f110ca5e
  0x00007fe8f110ca32: cmpq   $0x0,0x1b0(%rdx)
  0x00007fe8f110ca3d: jne    0x00007fe8f110ca56
  0x00007fe8f110ca3f: mov    %rax,0x1b0(%rdx)
  0x00007fe8f110ca46: movq   $0x1,0x1b8(%rdx)
  0x00007fe8f110ca51: jmpq   0x00007fe8f110ca5e
  0x00007fe8f110ca56: addq   $0x1,0x198(%rdx)
  0x00007fe8f110ca5e: mov    $0x7fe8ea6fc418,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5756a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110ca68: mov    0xdc(%rdx),%esi
  0x00007fe8f110ca6e: add    $0x8,%esi
  0x00007fe8f110ca71: mov    %esi,0xdc(%rdx)
  0x00007fe8f110ca77: mov    $0x7fe8ea5756a0,%rdx  ;   {metadata({method} {0x00007fe8ea5756a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110ca81: and    $0x7ffff8,%esi
  0x00007fe8f110ca87: cmp    $0x0,%esi
  0x00007fe8f110ca8a: je     0x00007fe8f110cd52
  0x00007fe8f110ca90: mov    0x78(%rsp),%rax
  0x00007fe8f110ca95: mov    $0x7fe8ea6fc418,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5756a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007fe8f110ca9f: addq   $0x1,0x108(%rdx)
  0x00007fe8f110caa7: mov    0x80(%rsp),%edx
  0x00007fe8f110caae: mov    0x78(%rsp),%rsi    ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)

  0x00007fe8f110cab3: nop    
  0x00007fe8f110cab4: nop    
  0x00007fe8f110cab5: nop    
  0x00007fe8f110cab6: nop    
  0x00007fe8f110cab7: callq  0x00007fe8f1046020  ; OopMap{[120]=Oop [136]=Oop off=1820}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007fe8f110cabc: mov    0x78(%rsp),%rax
  0x00007fe8f110cac1: mov    $0x7fe8ea6fb790,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110cacb: mov    0x8(%rax),%eax
  0x00007fe8f110cace: shl    $0x3,%rax
  0x00007fe8f110cad2: cmp    0x1d0(%rdx),%rax
  0x00007fe8f110cad9: jne    0x00007fe8f110cae8
  0x00007fe8f110cadb: addq   $0x1,0x1d8(%rdx)
  0x00007fe8f110cae3: jmpq   0x00007fe8f110cb4e
  0x00007fe8f110cae8: cmp    0x1e0(%rdx),%rax
  0x00007fe8f110caef: jne    0x00007fe8f110cafe
  0x00007fe8f110caf1: addq   $0x1,0x1e8(%rdx)
  0x00007fe8f110caf9: jmpq   0x00007fe8f110cb4e
  0x00007fe8f110cafe: cmpq   $0x0,0x1d0(%rdx)
  0x00007fe8f110cb09: jne    0x00007fe8f110cb22
  0x00007fe8f110cb0b: mov    %rax,0x1d0(%rdx)
  0x00007fe8f110cb12: movq   $0x1,0x1d8(%rdx)
  0x00007fe8f110cb1d: jmpq   0x00007fe8f110cb4e
  0x00007fe8f110cb22: cmpq   $0x0,0x1e0(%rdx)
  0x00007fe8f110cb2d: jne    0x00007fe8f110cb46
  0x00007fe8f110cb2f: mov    %rax,0x1e0(%rdx)
  0x00007fe8f110cb36: movq   $0x1,0x1e8(%rdx)
  0x00007fe8f110cb41: jmpq   0x00007fe8f110cb4e
  0x00007fe8f110cb46: addq   $0x1,0x1c8(%rdx)
  0x00007fe8f110cb4e: mov    $0x7fe8ea6fcc68,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea576590} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007fe8f110cb58: mov    0xdc(%rdx),%esi
  0x00007fe8f110cb5e: add    $0x8,%esi
  0x00007fe8f110cb61: mov    %esi,0xdc(%rdx)
  0x00007fe8f110cb67: mov    $0x7fe8ea576590,%rdx  ;   {metadata({method} {0x00007fe8ea576590} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007fe8f110cb71: and    $0x7ffff8,%esi
  0x00007fe8f110cb77: cmp    $0x0,%esi
  0x00007fe8f110cb7a: je     0x00007fe8f110cd69
  0x00007fe8f110cb80: mov    $0x7c00016d0,%rdx  ;   {metadata('java/lang/String')}
  0x00007fe8f110cb8a: mov    0x60(%r15),%rax
  0x00007fe8f110cb8e: lea    0x18(%rax),%rdi
  0x00007fe8f110cb92: cmp    0x70(%r15),%rdi
  0x00007fe8f110cb96: ja     0x00007fe8f110cd80
  0x00007fe8f110cb9c: mov    %rdi,0x60(%r15)
  0x00007fe8f110cba0: mov    0xa8(%rdx),%rcx
  0x00007fe8f110cba7: mov    %rcx,(%rax)
  0x00007fe8f110cbaa: mov    %rdx,%rcx
  0x00007fe8f110cbad: shr    $0x3,%rcx
  0x00007fe8f110cbb1: mov    %ecx,0x8(%rax)
  0x00007fe8f110cbb4: xor    %rcx,%rcx
  0x00007fe8f110cbb7: mov    %ecx,0xc(%rax)
  0x00007fe8f110cbba: xor    %rcx,%rcx
  0x00007fe8f110cbbd: mov    %rcx,0x10(%rax)    ;*new  ; - java.lang.StringBuilder::toString@0 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007fe8f110cbc1: mov    0x78(%rsp),%rdx
  0x00007fe8f110cbc6: mov    0x10(%rdx),%ecx
  0x00007fe8f110cbc9: shl    $0x3,%rcx          ;*getfield value
                                                ; - java.lang.StringBuilder::toString@5 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007fe8f110cbcd: mov    0xc(%rdx),%r8d     ;*getfield count
                                                ; - java.lang.StringBuilder::toString@10 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007fe8f110cbd1: mov    %rax,%rdx
  0x00007fe8f110cbd4: mov    $0x7fe8ea6fcc68,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea576590} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007fe8f110cbde: addq   $0x1,0x108(%rsi)
  0x00007fe8f110cbe6: mov    %rcx,%rdx
  0x00007fe8f110cbe9: mov    $0x0,%ecx
  0x00007fe8f110cbee: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.StringBuilder::toString@13 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007fe8f110cbf1: mov    %rax,0x90(%rsp)
  0x00007fe8f110cbf9: nop    
  0x00007fe8f110cbfa: nop    
  0x00007fe8f110cbfb: nop    
  0x00007fe8f110cbfc: nop    
  0x00007fe8f110cbfd: nop    
  0x00007fe8f110cbfe: nop    
  0x00007fe8f110cbff: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop [144]=Oop off=2148}
                                                ;*invokespecial <init>
                                                ; - java.lang.StringBuilder::toString@13 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007fe8f110cc04: mov    0x88(%rsp),%rax
  0x00007fe8f110cc0c: mov    $0x7fe8ea6fb790,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007fe8f110cc16: addq   $0x1,0x1f8(%rdx)
  0x00007fe8f110cc1e: mov    0x90(%rsp),%rdx
  0x00007fe8f110cc26: mov    0x88(%rsp),%rsi    ;*invokespecial <init>
                                                ; - java.util.Arrays::copyOfRange@35 (line 3663)

  0x00007fe8f110cc2e: nop    
  0x00007fe8f110cc2f: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop off=2196}
                                                ;*invokespecial <init>
                                                ; - java.util.Arrays::copyOfRange@35 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007fe8f110cc34: mov    0x88(%rsp),%rax
  0x00007fe8f110cc3c: jmpq   0x00007fe8f110cdb8
  0x00007fe8f110cc41: mov    %rbx,0x8(%rsp)
  0x00007fe8f110cc46: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cc4e: callq  0x00007fe8f10fd5a0  ; OopMap{r8=Oop off=2227}
                                                ;*synchronization entry
                                                ; - java.util.Arrays::copyOfRange@-1 (line 3661)
                                                ;   {runtime_call}
  0x00007fe8f110cc53: jmpq   0x00007fe8f110c3e7
  0x00007fe8f110cc58: callq  0x00007fe8f10fa6a0  ; OopMap{r8=Oop off=2237}
                                                ;*newarray
                                                ; - java.util.Arrays::copyOfRange@40 (line 3664)
                                                ;   {runtime_call}
  0x00007fe8f110cc5d: jmpq   0x00007fe8f110c4a1
  0x00007fe8f110cc62: callq  0x00007fe8f10f9680  ; OopMap{r8=Oop rax=Oop off=2247}
                                                ;*arraylength
                                                ; - java.util.Arrays::copyOfRange@50 (line 3665)
                                                ;   {runtime_call}
  0x00007fe8f110cc67: mov    %rdx,0x8(%rsp)
  0x00007fe8f110cc6c: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cc74: callq  0x00007fe8f10fd5a0  ; OopMap{r8=Oop rax=Oop off=2265}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)
                                                ;   {runtime_call}
  0x00007fe8f110cc79: jmpq   0x00007fe8f110c4ec
  0x00007fe8f110cc7e: nop    
  0x00007fe8f110cc7f: callq  0x00007fe8f1046420  ; OopMap{[112]=Oop off=2276}
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOfRange@57 (line 3665)
                                                ;   {static_call}
  0x00007fe8f110cc84: jmpq   0x00007fe8f110c5d0
  0x00007fe8f110cc89: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f110cc93: mov    $0xa050f00,%eax
  0x00007fe8f110cc98: callq  0x00007fe8f10fdfe0  ; OopMap{off=2301}
                                                ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cc9d: jmpq   0x00007fe8f110c5f0
  0x00007fe8f110cca2: mov    %rdx,%rdx
  0x00007fe8f110cca5: callq  0x00007fe8f10f9de0  ; OopMap{off=2314}
                                                ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110ccaa: jmpq   0x00007fe8f110c635
  0x00007fe8f110ccaf: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f110ccb9: mov    $0xa050f00,%eax
  0x00007fe8f110ccbe: callq  0x00007fe8f10fdfe0  ; OopMap{rax=Oop off=2339}
                                                ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110ccc3: jmpq   0x00007fe8f110c638
  0x00007fe8f110ccc8: mov    %rdx,%rdx
  0x00007fe8f110cccb: callq  0x00007fe8f10f9de0  ; OopMap{[136]=Oop off=2352}
                                                ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110ccd0: jmpq   0x00007fe8f110c681
  0x00007fe8f110ccd5: mov    %rbx,0x8(%rsp)
  0x00007fe8f110ccda: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cce2: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop rax=Oop off=2375}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::<init>@-1 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cce7: jmpq   0x00007fe8f110c6c8
  0x00007fe8f110ccec: mov    %rbx,0x8(%rsp)
  0x00007fe8f110ccf1: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110ccf9: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop rax=Oop off=2398}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::<init>@-1 (line 67)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110ccfe: jmpq   0x00007fe8f110c70f
  0x00007fe8f110cd03: mov    %rbx,0x8(%rsp)
  0x00007fe8f110cd08: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cd10: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop rax=Oop off=2421}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - java.lang.AbstractStringBuilder::<init>@1 (line 67)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cd15: jmpq   0x00007fe8f110c756
  0x00007fe8f110cd1a: callq  0x00007fe8f10fa6a0  ; OopMap{[136]=Oop r13=Oop off=2431}
                                                ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cd1f: jmpq   0x00007fe8f110c7d5
  0x00007fe8f110cd24: mov    %rdx,0x8(%rsp)
  0x00007fe8f110cd29: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cd31: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop r13=Oop off=2454}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cd36: jmpq   0x00007fe8f110c8b7
  0x00007fe8f110cd3b: mov    %rdx,0x8(%rsp)
  0x00007fe8f110cd40: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cd48: callq  0x00007fe8f10fd5a0  ; OopMap{[120]=Oop [136]=Oop off=2477}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cd4d: jmpq   0x00007fe8f110c9a0
  0x00007fe8f110cd52: mov    %rdx,0x8(%rsp)
  0x00007fe8f110cd57: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cd5f: callq  0x00007fe8f10fd5a0  ; OopMap{[120]=Oop [136]=Oop off=2500}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cd64: jmpq   0x00007fe8f110ca90
  0x00007fe8f110cd69: mov    %rdx,0x8(%rsp)
  0x00007fe8f110cd6e: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110cd76: callq  0x00007fe8f10fd5a0  ; OopMap{[120]=Oop [136]=Oop off=2523}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::toString@-1 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cd7b: jmpq   0x00007fe8f110cb80
  0x00007fe8f110cd80: mov    %rdx,%rdx
  0x00007fe8f110cd83: callq  0x00007fe8f10f9de0  ; OopMap{[120]=Oop [136]=Oop off=2536}
                                                ;*new  ; - java.lang.StringBuilder::toString@0 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {runtime_call}
  0x00007fe8f110cd88: jmpq   0x00007fe8f110cbc1
  0x00007fe8f110cd8d: nop    
  0x00007fe8f110cd8e: nop    
  0x00007fe8f110cd8f: mov    0x2a8(%r15),%rax
  0x00007fe8f110cd96: mov    $0x0,%r10
  0x00007fe8f110cda0: mov    %r10,0x2a8(%r15)
  0x00007fe8f110cda7: mov    $0x0,%r10
  0x00007fe8f110cdb1: mov    %r10,0x2b0(%r15)
  0x00007fe8f110cdb8: add    $0xa0,%rsp
  0x00007fe8f110cdbf: pop    %rbp
  0x00007fe8f110cdc0: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f110cdc5: hlt    
  0x00007fe8f110cdc6: hlt    
  0x00007fe8f110cdc7: hlt    
  0x00007fe8f110cdc8: hlt    
  0x00007fe8f110cdc9: hlt    
  0x00007fe8f110cdca: hlt    
  0x00007fe8f110cdcb: hlt    
  0x00007fe8f110cdcc: hlt    
  0x00007fe8f110cdcd: hlt    
  0x00007fe8f110cdce: hlt    
  0x00007fe8f110cdcf: hlt    
  0x00007fe8f110cdd0: hlt    
  0x00007fe8f110cdd1: hlt    
  0x00007fe8f110cdd2: hlt    
  0x00007fe8f110cdd3: hlt    
  0x00007fe8f110cdd4: hlt    
  0x00007fe8f110cdd5: hlt    
  0x00007fe8f110cdd6: hlt    
  0x00007fe8f110cdd7: hlt    
  0x00007fe8f110cdd8: hlt    
  0x00007fe8f110cdd9: hlt    
  0x00007fe8f110cdda: hlt    
  0x00007fe8f110cddb: hlt    
  0x00007fe8f110cddc: hlt    
  0x00007fe8f110cddd: hlt    
  0x00007fe8f110cdde: hlt    
  0x00007fe8f110cddf: hlt    
[Stub Code]
  0x00007fe8f110cde0: nop                       ;   {no_reloc}
  0x00007fe8f110cde1: nop    
  0x00007fe8f110cde2: nop    
  0x00007fe8f110cde3: nop    
  0x00007fe8f110cde4: nop    
  0x00007fe8f110cde5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110cdef: jmpq   0x00007fe8f110cdef  ;   {runtime_call}
  0x00007fe8f110cdf4: nop    
  0x00007fe8f110cdf5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110cdff: jmpq   0x00007fe8f110cdff  ;   {runtime_call}
  0x00007fe8f110ce04: nop    
  0x00007fe8f110ce05: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110ce0f: jmpq   0x00007fe8f110ce0f  ;   {runtime_call}
  0x00007fe8f110ce14: nop    
  0x00007fe8f110ce15: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110ce1f: jmpq   0x00007fe8f110ce1f  ;   {runtime_call}
  0x00007fe8f110ce24: nop    
  0x00007fe8f110ce25: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110ce2f: jmpq   0x00007fe8f110ce2f  ;   {runtime_call}
  0x00007fe8f110ce34: nop    
  0x00007fe8f110ce35: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110ce3f: jmpq   0x00007fe8f110ce3f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f110ce44: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f110ce49: mov    %rsp,-0x28(%rsp)
  0x00007fe8f110ce4e: sub    $0x80,%rsp
  0x00007fe8f110ce55: mov    %rax,0x78(%rsp)
  0x00007fe8f110ce5a: mov    %rcx,0x70(%rsp)
  0x00007fe8f110ce5f: mov    %rdx,0x68(%rsp)
  0x00007fe8f110ce64: mov    %rbx,0x60(%rsp)
  0x00007fe8f110ce69: mov    %rbp,0x50(%rsp)
  0x00007fe8f110ce6e: mov    %rsi,0x48(%rsp)
  0x00007fe8f110ce73: mov    %rdi,0x40(%rsp)
  0x00007fe8f110ce78: mov    %r8,0x38(%rsp)
  0x00007fe8f110ce7d: mov    %r9,0x30(%rsp)
  0x00007fe8f110ce82: mov    %r10,0x28(%rsp)
  0x00007fe8f110ce87: mov    %r11,0x20(%rsp)
  0x00007fe8f110ce8c: mov    %r12,0x18(%rsp)
  0x00007fe8f110ce91: mov    %r13,0x10(%rsp)
  0x00007fe8f110ce96: mov    %r14,0x8(%rsp)
  0x00007fe8f110ce9b: mov    %r15,(%rsp)
  0x00007fe8f110ce9f: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f110cea9: mov    $0x7fe8f110ce49,%rsi  ;   {internal_word}
  0x00007fe8f110ceb3: mov    %rsp,%rdx
  0x00007fe8f110ceb6: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f110ceba: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110cebf: hlt    
[Deopt Handler Code]
  0x00007fe8f110cec0: mov    $0x7fe8f110cec0,%r10  ;   {section_word}
  0x00007fe8f110ceca: push   %r10
  0x00007fe8f110cecc: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110ced1: hlt    
  0x00007fe8f110ced2: hlt    
  0x00007fe8f110ced3: hlt    
  0x00007fe8f110ced4: hlt    
  0x00007fe8f110ced5: hlt    
  0x00007fe8f110ced6: hlt    
  0x00007fe8f110ced7: hlt    
Decoding compiled method 0x00007fe8f1101790:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007fe8ea5ffaf0} 'access$400' '(Ljava/lang/ThreadLocal;)I' in 'java/lang/ThreadLocal'
  # parm0:    rsi:rsi   = 'java/lang/ThreadLocal'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f11018e0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f11018e7: push   %rbp
  0x00007fe8f11018e8: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.lang.ThreadLocal::access$400@0 (line 74)

  0x00007fe8f11018ec: mov    0xc(%rsi),%eax     ;*getfield threadLocalHashCode
                                                ; - java.lang.ThreadLocal::access$400@1 (line 74)
                                                ; implicit exception: dispatches to 0x00007fe8f11018fb
  0x00007fe8f11018ef: add    $0x30,%rsp
  0x00007fe8f11018f3: pop    %rbp
  0x00007fe8f11018f4: test   %eax,0x17565806(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11018fa: retq   
  0x00007fe8f11018fb: callq  0x00007fe8f10f9680  ; OopMap{off=32}
                                                ;*getfield threadLocalHashCode
                                                ; - java.lang.ThreadLocal::access$400@1 (line 74)
                                                ;   {runtime_call}
  0x00007fe8f1101900: nop    
  0x00007fe8f1101901: nop    
  0x00007fe8f1101902: mov    0x2a8(%r15),%rax
  0x00007fe8f1101909: mov    $0x0,%r10
  0x00007fe8f1101913: mov    %r10,0x2a8(%r15)
  0x00007fe8f110191a: mov    $0x0,%r10
  0x00007fe8f1101924: mov    %r10,0x2b0(%r15)
  0x00007fe8f110192b: add    $0x30,%rsp
  0x00007fe8f110192f: pop    %rbp
  0x00007fe8f1101930: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1101935: hlt    
  0x00007fe8f1101936: hlt    
  0x00007fe8f1101937: hlt    
  0x00007fe8f1101938: hlt    
  0x00007fe8f1101939: hlt    
  0x00007fe8f110193a: hlt    
  0x00007fe8f110193b: hlt    
  0x00007fe8f110193c: hlt    
  0x00007fe8f110193d: hlt    
  0x00007fe8f110193e: hlt    
  0x00007fe8f110193f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f1101940: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f1101945: mov    %rsp,-0x28(%rsp)
  0x00007fe8f110194a: sub    $0x80,%rsp
  0x00007fe8f1101951: mov    %rax,0x78(%rsp)
  0x00007fe8f1101956: mov    %rcx,0x70(%rsp)
  0x00007fe8f110195b: mov    %rdx,0x68(%rsp)
  0x00007fe8f1101960: mov    %rbx,0x60(%rsp)
  0x00007fe8f1101965: mov    %rbp,0x50(%rsp)
  0x00007fe8f110196a: mov    %rsi,0x48(%rsp)
  0x00007fe8f110196f: mov    %rdi,0x40(%rsp)
  0x00007fe8f1101974: mov    %r8,0x38(%rsp)
  0x00007fe8f1101979: mov    %r9,0x30(%rsp)
  0x00007fe8f110197e: mov    %r10,0x28(%rsp)
  0x00007fe8f1101983: mov    %r11,0x20(%rsp)
  0x00007fe8f1101988: mov    %r12,0x18(%rsp)
  0x00007fe8f110198d: mov    %r13,0x10(%rsp)
  0x00007fe8f1101992: mov    %r14,0x8(%rsp)
  0x00007fe8f1101997: mov    %r15,(%rsp)
  0x00007fe8f110199b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f11019a5: mov    $0x7fe8f1101945,%rsi  ;   {internal_word}
  0x00007fe8f11019af: mov    %rsp,%rdx
  0x00007fe8f11019b2: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f11019b6: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f11019bb: hlt    
[Deopt Handler Code]
  0x00007fe8f11019bc: mov    $0x7fe8f11019bc,%r10  ;   {section_word}
  0x00007fe8f11019c6: push   %r10
  0x00007fe8f11019c8: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f11019cd: hlt    
  0x00007fe8f11019ce: hlt    
  0x00007fe8f11019cf: hlt    
Decoding compiled method 0x00007fe8f110dad0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader'
  # this:     rsi:rsi   = 'java/io/BufferedReader'
  # parm0:    rdx       = boolean
  #           [sp+0xf0]  (sp of caller)
  0x00007fe8f110dd80: mov    0x8(%rsi),%r10d
  0x00007fe8f110dd84: shl    $0x3,%r10
  0x00007fe8f110dd88: cmp    %rax,%r10
  0x00007fe8f110dd8b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f110dd91: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110dd9c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f110dda0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f110dda7: push   %rbp
  0x00007fe8f110dda8: sub    $0xe0,%rsp
  0x00007fe8f110ddaf: mov    %rsi,0x70(%rsp)
  0x00007fe8f110ddb4: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110ddbe: mov    0xdc(%rax),%edi
  0x00007fe8f110ddc4: add    $0x8,%edi
  0x00007fe8f110ddc7: mov    %edi,0xdc(%rax)
  0x00007fe8f110ddcd: mov    $0x7fe8ea681a88,%rax  ;   {metadata({method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110ddd7: and    $0x1ff8,%edi
  0x00007fe8f110dddd: cmp    $0x0,%edi
  0x00007fe8f110dde0: je     0x00007fe8f110f0ba  ;*aconst_null
                                                ; - java.io.BufferedReader::readLine@0 (line 313)

  0x00007fe8f110dde6: mov    0xc(%rsi),%edi
  0x00007fe8f110dde9: shl    $0x3,%rdi          ;*getfield lock
                                                ; - java.io.BufferedReader::readLine@3 (line 316)

  0x00007fe8f110dded: mov    %rdi,0x88(%rsp)
  0x00007fe8f110ddf5: lea    0xb0(%rsp),%rbx
  0x00007fe8f110ddfd: mov    %rdi,0x8(%rbx)
  0x00007fe8f110de01: mov    (%rdi),%rax        ; implicit exception: dispatches to 0x00007fe8f110f0d1
  0x00007fe8f110de04: mov    %rax,%rcx
  0x00007fe8f110de07: and    $0x7,%rcx
  0x00007fe8f110de0b: cmp    $0x5,%rcx
  0x00007fe8f110de0f: jne    0x00007fe8f110de96
  0x00007fe8f110de15: mov    0x8(%rdi),%ecx
  0x00007fe8f110de18: shl    $0x3,%rcx
  0x00007fe8f110de1c: mov    0xa8(%rcx),%rcx
  0x00007fe8f110de23: or     %r15,%rcx
  0x00007fe8f110de26: xor    %rax,%rcx
  0x00007fe8f110de29: and    $0xffffffffffffff87,%rcx
  0x00007fe8f110de2d: je     0x00007fe8f110debe
  0x00007fe8f110de33: test   $0x7,%rcx
  0x00007fe8f110de3a: jne    0x00007fe8f110de83
  0x00007fe8f110de3c: test   $0x300,%rcx
  0x00007fe8f110de43: jne    0x00007fe8f110de62
  0x00007fe8f110de45: and    $0x37f,%rax
  0x00007fe8f110de4c: mov    %rax,%rcx
  0x00007fe8f110de4f: or     %r15,%rcx
  0x00007fe8f110de52: lock cmpxchg %rcx,(%rdi)
  0x00007fe8f110de57: jne    0x00007fe8f110f0d6
  0x00007fe8f110de5d: jmpq   0x00007fe8f110debe
  0x00007fe8f110de62: mov    0x8(%rdi),%ecx
  0x00007fe8f110de65: shl    $0x3,%rcx
  0x00007fe8f110de69: mov    0xa8(%rcx),%rcx
  0x00007fe8f110de70: or     %r15,%rcx
  0x00007fe8f110de73: lock cmpxchg %rcx,(%rdi)
  0x00007fe8f110de78: jne    0x00007fe8f110f0d6
  0x00007fe8f110de7e: jmpq   0x00007fe8f110debe
  0x00007fe8f110de83: mov    0x8(%rdi),%ecx
  0x00007fe8f110de86: shl    $0x3,%rcx
  0x00007fe8f110de8a: mov    0xa8(%rcx),%rcx
  0x00007fe8f110de91: lock cmpxchg %rcx,(%rdi)
  0x00007fe8f110de96: mov    (%rdi),%rax
  0x00007fe8f110de99: or     $0x1,%rax
  0x00007fe8f110de9d: mov    %rax,(%rbx)
  0x00007fe8f110dea0: lock cmpxchg %rbx,(%rdi)
  0x00007fe8f110dea5: je     0x00007fe8f110debe
  0x00007fe8f110deab: sub    %rsp,%rax
  0x00007fe8f110deae: and    $0xfffffffffffff007,%rax
  0x00007fe8f110deb5: mov    %rax,(%rbx)
  0x00007fe8f110deb8: jne    0x00007fe8f110f0d6  ;*monitorenter
                                                ; - java.io.BufferedReader::readLine@9 (line 316)

  0x00007fe8f110debe: mov    %rsi,%rbx
  0x00007fe8f110dec1: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110decb: addq   $0x1,0x108(%rax)
  0x00007fe8f110ded3: mov    $0x7fe8ea7329e0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea681360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007fe8f110dedd: mov    0xdc(%rbx),%eax
  0x00007fe8f110dee3: add    $0x8,%eax
  0x00007fe8f110dee6: mov    %eax,0xdc(%rbx)
  0x00007fe8f110deec: mov    $0x7fe8ea681360,%rbx  ;   {metadata({method} {0x00007fe8ea681360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007fe8f110def6: and    $0x7ffff8,%eax
  0x00007fe8f110defc: cmp    $0x0,%eax
  0x00007fe8f110deff: je     0x00007fe8f110f0e9
  0x00007fe8f110df05: mov    0x28(%rsi),%ebx
  0x00007fe8f110df08: shl    $0x3,%rbx          ;*getfield in
                                                ; - java.io.BufferedReader::ensureOpen@1 (line 121)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007fe8f110df0c: cmp    $0x0,%rbx
  0x00007fe8f110df10: mov    $0x7fe8ea7329e0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea681360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007fe8f110df1a: mov    $0x108,%rax
  0x00007fe8f110df24: jne    0x00007fe8f110df34
  0x00007fe8f110df2a: mov    $0x118,%rax
  0x00007fe8f110df34: mov    (%rbx,%rax,1),%rcx
  0x00007fe8f110df38: lea    0x1(%rcx),%rcx
  0x00007fe8f110df3c: mov    %rcx,(%rbx,%rax,1)
  0x00007fe8f110df40: je     0x00007fe8f110eebb  ;*ifnonnull
                                                ; - java.io.BufferedReader::ensureOpen@4 (line 121)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007fe8f110df46: cmp    $0x0,%edx
  0x00007fe8f110df49: mov    $0x7fe8ea7324e8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110df53: mov    $0x118,%rax
  0x00007fe8f110df5d: jne    0x00007fe8f110df6d
  0x00007fe8f110df63: mov    $0x128,%rax
  0x00007fe8f110df6d: mov    (%rbx,%rax,1),%rdx
  0x00007fe8f110df71: lea    0x1(%rdx),%rdx
  0x00007fe8f110df75: mov    %rdx,(%rbx,%rax,1)
  0x00007fe8f110df79: jne    0x00007fe8f110dfbc  ;*ifne
                                                ; - java.io.BufferedReader::readLine@15 (line 318)

  0x00007fe8f110df7f: movsbl 0x24(%rsi),%ebx    ;*getfield skipLF
                                                ; - java.io.BufferedReader::readLine@19 (line 318)

  0x00007fe8f110df83: cmp    $0x0,%ebx
  0x00007fe8f110df86: mov    $0x7fe8ea7324e8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110df90: mov    $0x138,%rax
  0x00007fe8f110df9a: je     0x00007fe8f110dfaa
  0x00007fe8f110dfa0: mov    $0x148,%rax
  0x00007fe8f110dfaa: mov    (%rbx,%rax,1),%rdx
  0x00007fe8f110dfae: lea    0x1(%rdx),%rdx
  0x00007fe8f110dfb2: mov    %rdx,(%rbx,%rax,1)
  0x00007fe8f110dfb6: je     0x00007fe8f110dfd6  ;*ifeq
                                                ; - java.io.BufferedReader::readLine@22 (line 318)

  0x00007fe8f110dfbc: mov    $0x7fe8ea7324e8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110dfc6: incl   0x158(%rbx)
  0x00007fe8f110dfcc: mov    $0x1,%ebx
  0x00007fe8f110dfd1: jmpq   0x00007fe8f110dfdb  ;*goto
                                                ; - java.io.BufferedReader::readLine@26 (line 318)

  0x00007fe8f110dfd6: mov    $0x0,%ebx          ;*istore
                                                ; - java.io.BufferedReader::readLine@30 (line 318)

  0x00007fe8f110dfdb: mov    $0x0,%rax          ;*aload_0
                                                ; - java.io.BufferedReader::readLine@32 (line 323)
                                                ;   {oop(NULL)}
  0x00007fe8f110dfe5: mov    %ebx,0x78(%rsp)
  0x00007fe8f110dfe9: mov    %rax,0x80(%rsp)
  0x00007fe8f110dff1: nopl   0x0(%rax)
  0x00007fe8f110dff8: mov    0x18(%rsi),%edx    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@33 (line 323)

  0x00007fe8f110dffb: mov    0x14(%rsi),%ecx    ;*getfield nChars
                                                ; - java.io.BufferedReader::readLine@37 (line 323)

  0x00007fe8f110dffe: cmp    %ecx,%edx
  0x00007fe8f110e000: mov    $0x7fe8ea7324e8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e00a: mov    $0x170,%rcx
  0x00007fe8f110e014: jl     0x00007fe8f110e024
  0x00007fe8f110e01a: mov    $0x180,%rcx
  0x00007fe8f110e024: mov    (%rdx,%rcx,1),%r8
  0x00007fe8f110e028: lea    0x1(%r8),%r8
  0x00007fe8f110e02c: mov    %r8,(%rdx,%rcx,1)
  0x00007fe8f110e030: jl     0x00007fe8f110e061  ;*if_icmplt
                                                ; - java.io.BufferedReader::readLine@40 (line 323)

  0x00007fe8f110e036: mov    %rsi,%rdx
  0x00007fe8f110e039: mov    $0x7fe8ea7324e8,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e043: addq   $0x1,0x190(%rcx)
  0x00007fe8f110e04b: mov    %rsi,%rdx
  0x00007fe8f110e04e: mov    %rdx,%rsi          ;*invokespecial fill
                                                ; - java.io.BufferedReader::readLine@44 (line 324)

  0x00007fe8f110e051: nop    
  0x00007fe8f110e052: nop    
  0x00007fe8f110e053: nop    
  0x00007fe8f110e054: nop    
  0x00007fe8f110e055: nop    
  0x00007fe8f110e056: nop    
  0x00007fe8f110e057: callq  0x00007fe8f1046020  ; OopMap{[112]=Oop [136]=Oop [128]=Oop [184]=Oop off=732}
                                                ;*invokespecial fill
                                                ; - java.io.BufferedReader::readLine@44 (line 324)
                                                ;   {optimized virtual_call}
  0x00007fe8f110e05c: mov    0x70(%rsp),%rsi
  0x00007fe8f110e061: mov    0x18(%rsi),%edx    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@48 (line 325)

  0x00007fe8f110e064: mov    0x14(%rsi),%edi    ;*getfield nChars
                                                ; - java.io.BufferedReader::readLine@52 (line 325)

  0x00007fe8f110e067: cmp    %edi,%edx
  0x00007fe8f110e069: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e073: mov    $0x1a0,%rcx
  0x00007fe8f110e07d: jl     0x00007fe8f110e08d
  0x00007fe8f110e083: mov    $0x1b0,%rcx
  0x00007fe8f110e08d: mov    (%rax,%rcx,1),%rbx
  0x00007fe8f110e091: lea    0x1(%rbx),%rbx
  0x00007fe8f110e095: mov    %rbx,(%rax,%rcx,1)
  0x00007fe8f110e099: jge    0x00007fe8f110eb3a  ;*if_icmplt
                                                ; - java.io.BufferedReader::readLine@55 (line 325)

  0x00007fe8f110e09f: mov    0x78(%rsp),%ebx
  0x00007fe8f110e0a3: cmp    $0x0,%ebx
  0x00007fe8f110e0a6: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e0b0: mov    $0x260,%rcx
  0x00007fe8f110e0ba: je     0x00007fe8f110e0ca
  0x00007fe8f110e0c0: mov    $0x270,%rcx
  0x00007fe8f110e0ca: mov    (%rax,%rcx,1),%rbx
  0x00007fe8f110e0ce: lea    0x1(%rbx),%rbx
  0x00007fe8f110e0d2: mov    %rbx,(%rax,%rcx,1)
  0x00007fe8f110e0d6: je     0x00007fe8f110e132  ;*ifeq
                                                ; - java.io.BufferedReader::readLine@90 (line 336)

  0x00007fe8f110e0dc: mov    0x2c(%rsi),%eax
  0x00007fe8f110e0df: shl    $0x3,%rax          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@94 (line 336)

  0x00007fe8f110e0e3: movslq %edx,%rcx
  0x00007fe8f110e0e6: cmp    0xc(%rax),%edx     ; implicit exception: dispatches to 0x00007fe8f110f100
  0x00007fe8f110e0e9: jae    0x00007fe8f110f10a
  0x00007fe8f110e0ef: movzwl 0x10(%rax,%rcx,2),%eax  ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)

  0x00007fe8f110e0f4: cmp    $0xa,%eax
  0x00007fe8f110e0f7: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e101: mov    $0x280,%rcx
  0x00007fe8f110e10b: jne    0x00007fe8f110e11b
  0x00007fe8f110e111: mov    $0x290,%rcx
  0x00007fe8f110e11b: mov    (%rax,%rcx,1),%rbx
  0x00007fe8f110e11f: lea    0x1(%rbx),%rbx
  0x00007fe8f110e123: mov    %rbx,(%rax,%rcx,1)
  0x00007fe8f110e127: jne    0x00007fe8f110e132  ;*if_icmpne
                                                ; - java.io.BufferedReader::readLine@104 (line 336)

  0x00007fe8f110e12d: inc    %edx
  0x00007fe8f110e12f: mov    %edx,0x18(%rsi)    ;*putfield nextChar
                                                ; - java.io.BufferedReader::readLine@114 (line 337)

  0x00007fe8f110e132: movb   $0x0,0x24(%rsi)    ;*putfield skipLF
                                                ; - java.io.BufferedReader::readLine@119 (line 338)

  0x00007fe8f110e136: mov    0x18(%rsi),%r8d    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@126 (line 342)

  0x00007fe8f110e13a: mov    %r8,%r9
  0x00007fe8f110e13d: mov    $0x0,%edx
  0x00007fe8f110e142: jmpq   0x00007fe8f110e21e  ;*iload
                                                ; - java.io.BufferedReader::readLine@131 (line 342)

  0x00007fe8f110e147: nop    
  0x00007fe8f110e148: mov    0x2c(%rsi),%edx
  0x00007fe8f110e14b: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@141 (line 343)

  0x00007fe8f110e14f: movslq %r9d,%rax
  0x00007fe8f110e152: cmp    0xc(%rdx),%r9d     ; implicit exception: dispatches to 0x00007fe8f110f113
  0x00007fe8f110e156: jae    0x00007fe8f110f11d
  0x00007fe8f110e15c: movzwl 0x10(%rdx,%rax,2),%edx  ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)

  0x00007fe8f110e161: cmp    $0xa,%edx
  0x00007fe8f110e164: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e16e: mov    $0x2c0,%rcx
  0x00007fe8f110e178: je     0x00007fe8f110e188
  0x00007fe8f110e17e: mov    $0x2d0,%rcx
  0x00007fe8f110e188: mov    (%rax,%rcx,1),%rbx
  0x00007fe8f110e18c: lea    0x1(%rbx),%rbx
  0x00007fe8f110e190: mov    %rbx,(%rax,%rcx,1)
  0x00007fe8f110e194: je     0x00007fe8f110e261  ;*if_icmpeq
                                                ; - java.io.BufferedReader::readLine@153 (line 344)

  0x00007fe8f110e19a: cmp    $0xd,%edx
  0x00007fe8f110e19d: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e1a7: mov    $0x2e0,%rcx
  0x00007fe8f110e1b1: jne    0x00007fe8f110e1c1
  0x00007fe8f110e1b7: mov    $0x2f0,%rcx
  0x00007fe8f110e1c1: mov    (%rax,%rcx,1),%rbx
  0x00007fe8f110e1c5: lea    0x1(%rbx),%rbx
  0x00007fe8f110e1c9: mov    %rbx,(%rax,%rcx,1)
  0x00007fe8f110e1cd: je     0x00007fe8f110e261  ;*if_icmpne
                                                ; - java.io.BufferedReader::readLine@160 (line 344)

  0x00007fe8f110e1d3: inc    %r9d
  0x00007fe8f110e1d6: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e1e0: mov    0xe0(%rax),%ecx
  0x00007fe8f110e1e6: add    $0x8,%ecx
  0x00007fe8f110e1e9: mov    %ecx,0xe0(%rax)
  0x00007fe8f110e1ef: mov    $0x7fe8ea681a88,%rax  ;   {metadata({method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e1f9: and    $0xfff8,%ecx
  0x00007fe8f110e1ff: cmp    $0x0,%ecx
  0x00007fe8f110e202: je     0x00007fe8f110f126  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop [184]=Oop off=1160}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@172 (line 342)

  0x00007fe8f110e208: test   %eax,0x17558ef2(%rip)        # 0x00007fe908667100
                                                ;   {poll}
  0x00007fe8f110e20e: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e218: incl   0x318(%rax)        ;*goto
                                                ; - java.io.BufferedReader::readLine@172 (line 342)

  0x00007fe8f110e21e: cmp    %edi,%r9d
  0x00007fe8f110e221: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e22b: mov    $0x2a0,%rcx
  0x00007fe8f110e235: jge    0x00007fe8f110e245
  0x00007fe8f110e23b: mov    $0x2b0,%rcx
  0x00007fe8f110e245: mov    (%rax,%rcx,1),%rbx
  0x00007fe8f110e249: lea    0x1(%rbx),%rbx
  0x00007fe8f110e24d: mov    %rbx,(%rax,%rcx,1)
  0x00007fe8f110e251: jl     0x00007fe8f110e148  ;*if_icmpge
                                                ; - java.io.BufferedReader::readLine@137 (line 342)

  0x00007fe8f110e257: mov    $0x0,%edi
  0x00007fe8f110e25c: jmpq   0x00007fe8f110e276  ;*aload_0
                                                ; - java.io.BufferedReader::readLine@175 (line 350)

  0x00007fe8f110e261: mov    $0x7fe8ea7324e8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e26b: incl   0x300(%rdi)
  0x00007fe8f110e271: mov    $0x1,%edi          ;*goto
                                                ; - java.io.BufferedReader::readLine@166 (line 346)

  0x00007fe8f110e276: mov    %r9d,0x18(%rsi)    ;*putfield nextChar
                                                ; - java.io.BufferedReader::readLine@183 (line 351)

  0x00007fe8f110e27a: cmp    $0x0,%edi
  0x00007fe8f110e27d: mov    $0x7fe8ea7324e8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e287: mov    $0x330,%rax
  0x00007fe8f110e291: je     0x00007fe8f110e2a1
  0x00007fe8f110e297: mov    $0x340,%rax
  0x00007fe8f110e2a1: mov    (%rdi,%rax,1),%rcx
  0x00007fe8f110e2a5: lea    0x1(%rcx),%rcx
  0x00007fe8f110e2a9: mov    %rcx,(%rdi,%rax,1)
  0x00007fe8f110e2ad: mov    0x80(%rsp),%rax
  0x00007fe8f110e2b5: jne    0x00007fe8f110e74b  ;*ifeq
                                                ; - java.io.BufferedReader::readLine@188 (line 353)

  0x00007fe8f110e2bb: cmp    $0x0,%rax
  0x00007fe8f110e2bf: mov    $0x7fe8ea7324e8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e2c9: mov    $0x418,%rdi
  0x00007fe8f110e2d3: jne    0x00007fe8f110e2e3
  0x00007fe8f110e2d9: mov    $0x428,%rdi
  0x00007fe8f110e2e3: mov    (%rdx,%rdi,1),%rcx
  0x00007fe8f110e2e7: lea    0x1(%rcx),%rcx
  0x00007fe8f110e2eb: mov    %rcx,(%rdx,%rdi,1)
  0x00007fe8f110e2ef: je     0x00007fe8f110e2fd  ;*ifnonnull
                                                ; - java.io.BufferedReader::readLine@265 (line 368)

  0x00007fe8f110e2f5: mov    %rsi,%r11
  0x00007fe8f110e2f8: jmpq   0x00007fe8f110e4c3  ;*aload_2
                                                ; - java.io.BufferedReader::readLine@279 (line 370)

  0x00007fe8f110e2fd: xchg   %ax,%ax
  0x00007fe8f110e300: jmpq   0x00007fe8f110f14c  ;   {no_reloc}
  0x00007fe8f110e305: add    %al,(%rax)
  0x00007fe8f110e307: add    %al,(%rax)
  0x00007fe8f110e309: add    %cl,-0x22(%rbx,%rcx,4)
  0x00007fe8f110e30d: mov    0x60(%r15),%rax
  0x00007fe8f110e311: lea    0x18(%rax),%rdi
  0x00007fe8f110e315: cmp    0x70(%r15),%rdi
  0x00007fe8f110e319: ja     0x00007fe8f110f156
  0x00007fe8f110e31f: mov    %rdi,0x60(%r15)
  0x00007fe8f110e323: mov    0xa8(%rdx),%rcx
  0x00007fe8f110e32a: mov    %rcx,(%rax)
  0x00007fe8f110e32d: mov    %rdx,%rcx
  0x00007fe8f110e330: shr    $0x3,%rcx
  0x00007fe8f110e334: mov    %ecx,0x8(%rax)
  0x00007fe8f110e337: xor    %rcx,%rcx
  0x00007fe8f110e33a: mov    %ecx,0xc(%rax)
  0x00007fe8f110e33d: xor    %rcx,%rcx
  0x00007fe8f110e340: mov    %rcx,0x10(%rax)
  0x00007fe8f110e344: mov    %rax,%r13          ;*new  ; - java.io.BufferedReader::readLine@268 (line 369)

  0x00007fe8f110e347: mov    $0x781e30690,%rbx  ;   {oop(a 'java/lang/Class' = 'java/io/BufferedReader')}
  0x00007fe8f110e351: mov    0x74(%rbx),%ebx    ;*getstatic defaultExpectedLineLength
                                                ; - java.io.BufferedReader::readLine@272 (line 369)

  0x00007fe8f110e354: mov    %r13,%rdx
  0x00007fe8f110e357: mov    $0x7fe8ea7324e8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e361: addq   $0x1,0x438(%rsi)
  0x00007fe8f110e369: mov    $0x7fe8ea733220,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea56c9e0} '<init>' '(I)V' in 'java/lang/StringBuffer')}
  0x00007fe8f110e373: mov    0xdc(%rdx),%esi
  0x00007fe8f110e379: add    $0x8,%esi
  0x00007fe8f110e37c: mov    %esi,0xdc(%rdx)
  0x00007fe8f110e382: mov    $0x7fe8ea56c9e0,%rdx  ;   {metadata({method} {0x00007fe8ea56c9e0} '<init>' '(I)V' in 'java/lang/StringBuffer')}
  0x00007fe8f110e38c: and    $0x7ffff8,%esi
  0x00007fe8f110e392: cmp    $0x0,%esi
  0x00007fe8f110e395: je     0x00007fe8f110f163
  0x00007fe8f110e39b: mov    %r13,%rdx
  0x00007fe8f110e39e: mov    $0x7fe8ea733220,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea56c9e0} '<init>' '(I)V' in 'java/lang/StringBuffer')}
  0x00007fe8f110e3a8: addq   $0x1,0x108(%rsi)
  0x00007fe8f110e3b0: mov    $0x7fe8ea6fc0f8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5712b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110e3ba: mov    0xdc(%rdx),%esi
  0x00007fe8f110e3c0: add    $0x8,%esi
  0x00007fe8f110e3c3: mov    %esi,0xdc(%rdx)
  0x00007fe8f110e3c9: mov    $0x7fe8ea5712b0,%rdx  ;   {metadata({method} {0x00007fe8ea5712b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110e3d3: and    $0x7ffff8,%esi
  0x00007fe8f110e3d9: cmp    $0x0,%esi
  0x00007fe8f110e3dc: je     0x00007fe8f110f17a
  0x00007fe8f110e3e2: mov    %r13,%rdx
  0x00007fe8f110e3e5: mov    $0x7fe8ea6fc0f8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5712b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f110e3ef: addq   $0x1,0x108(%rsi)
  0x00007fe8f110e3f7: mov    $0x7fe8ea670fd0,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f110e401: mov    0xdc(%rdx),%esi
  0x00007fe8f110e407: add    $0x8,%esi
  0x00007fe8f110e40a: mov    %esi,0xdc(%rdx)
  0x00007fe8f110e410: mov    $0x7fe8ea4fd480,%rdx  ;   {metadata({method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f110e41a: and    $0x7ffff8,%esi
  0x00007fe8f110e420: cmp    $0x0,%esi
  0x00007fe8f110e423: je     0x00007fe8f110f191
  0x00007fe8f110e429: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007fe8f110e433: movslq %ebx,%rbx
  0x00007fe8f110e436: mov    %rbx,%rdi
  0x00007fe8f110e439: cmp    $0xffffff,%rbx
  0x00007fe8f110e440: ja     0x00007fe8f110f1a8
  0x00007fe8f110e446: mov    $0x17,%rsi
  0x00007fe8f110e450: lea    (%rsi,%rbx,2),%rsi
  0x00007fe8f110e454: and    $0xfffffffffffffff8,%rsi
  0x00007fe8f110e458: mov    0x60(%r15),%rax
  0x00007fe8f110e45c: lea    (%rax,%rsi,1),%rsi
  0x00007fe8f110e460: cmp    0x70(%r15),%rsi
  0x00007fe8f110e464: ja     0x00007fe8f110f1a8
  0x00007fe8f110e46a: mov    %rsi,0x60(%r15)
  0x00007fe8f110e46e: sub    %rax,%rsi
  0x00007fe8f110e471: movq   $0x1,(%rax)
  0x00007fe8f110e478: mov    %rdx,%rcx
  0x00007fe8f110e47b: shr    $0x3,%rcx
  0x00007fe8f110e47f: mov    %ecx,0x8(%rax)
  0x00007fe8f110e482: mov    %ebx,0xc(%rax)
  0x00007fe8f110e485: sub    $0x10,%rsi
  0x00007fe8f110e489: je     0x00007fe8f110e4a0
  0x00007fe8f110e48f: xor    %rbx,%rbx
  0x00007fe8f110e492: shr    $0x3,%rsi
  0x00007fe8f110e496: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007fe8f110e49b: dec    %rsi
  0x00007fe8f110e49e: jne    0x00007fe8f110e496  ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)

  0x00007fe8f110e4a0: mov    %rax,%r10
  0x00007fe8f110e4a3: shr    $0x3,%r10
  0x00007fe8f110e4a7: mov    %r10d,0x10(%r13)
  0x00007fe8f110e4ab: mov    %r13,%rax
  0x00007fe8f110e4ae: shr    $0x9,%rax
  0x00007fe8f110e4b2: mov    $0x7fe9014ff000,%rdx
  0x00007fe8f110e4bc: movb   $0x0,(%rax,%rdx,1)  ;*putfield value
                                                ; - java.lang.AbstractStringBuilder::<init>@8 (line 68)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)

  0x00007fe8f110e4c0: mov    %r13,%rax          ;*aload_2
                                                ; - java.io.BufferedReader::readLine@279 (line 370)

  0x00007fe8f110e4c3: mov    0x2c(%r11),%edx
  0x00007fe8f110e4c7: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@281 (line 370)

  0x00007fe8f110e4cb: cmp    (%rax),%rax        ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ; implicit exception: dispatches to 0x00007fe8f110f1b2
  0x00007fe8f110e4ce: mov    %rax,%rcx
  0x00007fe8f110e4d1: mov    $0x7fe8ea7324e8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e4db: mov    0x8(%rcx),%ecx
  0x00007fe8f110e4de: shl    $0x3,%rcx
  0x00007fe8f110e4e2: cmp    0x450(%rsi),%rcx
  0x00007fe8f110e4e9: jne    0x00007fe8f110e4f8
  0x00007fe8f110e4eb: addq   $0x1,0x458(%rsi)
  0x00007fe8f110e4f3: jmpq   0x00007fe8f110e55e
  0x00007fe8f110e4f8: cmp    0x460(%rsi),%rcx
  0x00007fe8f110e4ff: jne    0x00007fe8f110e50e
  0x00007fe8f110e501: addq   $0x1,0x468(%rsi)
  0x00007fe8f110e509: jmpq   0x00007fe8f110e55e
  0x00007fe8f110e50e: cmpq   $0x0,0x450(%rsi)
  0x00007fe8f110e519: jne    0x00007fe8f110e532
  0x00007fe8f110e51b: mov    %rcx,0x450(%rsi)
  0x00007fe8f110e522: movq   $0x1,0x458(%rsi)
  0x00007fe8f110e52d: jmpq   0x00007fe8f110e55e
  0x00007fe8f110e532: cmpq   $0x0,0x460(%rsi)
  0x00007fe8f110e53d: jne    0x00007fe8f110e556
  0x00007fe8f110e53f: mov    %rcx,0x460(%rsi)
  0x00007fe8f110e546: movq   $0x1,0x468(%rsi)
  0x00007fe8f110e551: jmpq   0x00007fe8f110e55e
  0x00007fe8f110e556: addq   $0x1,0x448(%rsi)
  0x00007fe8f110e55e: sub    %r8d,%r9d
  0x00007fe8f110e561: lea    0xc0(%rsp),%rcx
  0x00007fe8f110e569: mov    %rax,%rdi
  0x00007fe8f110e56c: mov    %rdi,0x8(%rcx)
  0x00007fe8f110e570: mov    (%rdi),%rax
  0x00007fe8f110e573: mov    %rax,%rsi
  0x00007fe8f110e576: and    $0x7,%rsi
  0x00007fe8f110e57a: cmp    $0x5,%rsi
  0x00007fe8f110e57e: jne    0x00007fe8f110e605
  0x00007fe8f110e584: mov    0x8(%rdi),%esi
  0x00007fe8f110e587: shl    $0x3,%rsi
  0x00007fe8f110e58b: mov    0xa8(%rsi),%rsi
  0x00007fe8f110e592: or     %r15,%rsi
  0x00007fe8f110e595: xor    %rax,%rsi
  0x00007fe8f110e598: and    $0xffffffffffffff87,%rsi
  0x00007fe8f110e59c: je     0x00007fe8f110e62d
  0x00007fe8f110e5a2: test   $0x7,%rsi
  0x00007fe8f110e5a9: jne    0x00007fe8f110e5f2
  0x00007fe8f110e5ab: test   $0x300,%rsi
  0x00007fe8f110e5b2: jne    0x00007fe8f110e5d1
  0x00007fe8f110e5b4: and    $0x37f,%rax
  0x00007fe8f110e5bb: mov    %rax,%rsi
  0x00007fe8f110e5be: or     %r15,%rsi
  0x00007fe8f110e5c1: lock cmpxchg %rsi,(%rdi)
  0x00007fe8f110e5c6: jne    0x00007fe8f110f1b7
  0x00007fe8f110e5cc: jmpq   0x00007fe8f110e62d
  0x00007fe8f110e5d1: mov    0x8(%rdi),%esi
  0x00007fe8f110e5d4: shl    $0x3,%rsi
  0x00007fe8f110e5d8: mov    0xa8(%rsi),%rsi
  0x00007fe8f110e5df: or     %r15,%rsi
  0x00007fe8f110e5e2: lock cmpxchg %rsi,(%rdi)
  0x00007fe8f110e5e7: jne    0x00007fe8f110f1b7
  0x00007fe8f110e5ed: jmpq   0x00007fe8f110e62d
  0x00007fe8f110e5f2: mov    0x8(%rdi),%esi
  0x00007fe8f110e5f5: shl    $0x3,%rsi
  0x00007fe8f110e5f9: mov    0xa8(%rsi),%rsi
  0x00007fe8f110e600: lock cmpxchg %rsi,(%rdi)
  0x00007fe8f110e605: mov    (%rdi),%rax
  0x00007fe8f110e608: or     $0x1,%rax
  0x00007fe8f110e60c: mov    %rax,(%rcx)
  0x00007fe8f110e60f: lock cmpxchg %rcx,(%rdi)
  0x00007fe8f110e614: je     0x00007fe8f110e62d
  0x00007fe8f110e61a: sub    %rsp,%rax
  0x00007fe8f110e61d: and    $0xfffffffffffff007,%rax
  0x00007fe8f110e624: mov    %rax,(%rcx)
  0x00007fe8f110e627: jne    0x00007fe8f110f1b7  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007fe8f110e62d: mov    $0x7fe8ea732f38,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea56d798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007fe8f110e637: mov    0xdc(%rcx),%esi
  0x00007fe8f110e63d: add    $0x8,%esi
  0x00007fe8f110e640: mov    %esi,0xdc(%rcx)
  0x00007fe8f110e646: mov    $0x7fe8ea56d798,%rcx  ;   {metadata({method} {0x00007fe8ea56d798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007fe8f110e650: and    $0x7ffff8,%esi
  0x00007fe8f110e656: cmp    $0x0,%esi
  0x00007fe8f110e659: je     0x00007fe8f110f1ca
  0x00007fe8f110e65f: movl   $0x0,0x14(%rdi)
  0x00007fe8f110e666: mov    %rdi,%rax
  0x00007fe8f110e669: shr    $0x9,%rax
  0x00007fe8f110e66d: mov    $0x7fe9014ff000,%rcx
  0x00007fe8f110e677: movb   $0x0,(%rax,%rcx,1)  ;*putfield toStringCache
                                                ; - java.lang.StringBuffer::append@2 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007fe8f110e67b: mov    %rdi,%rax
  0x00007fe8f110e67e: mov    $0x7fe8ea732f38,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea56d798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007fe8f110e688: addq   $0x1,0x108(%rcx)
  0x00007fe8f110e690: mov    %r8,%rcx
  0x00007fe8f110e693: mov    %r9,%r8
  0x00007fe8f110e696: mov    %rdi,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007fe8f110e699: mov    %rdi,0x90(%rsp)
  0x00007fe8f110e6a1: nop    
  0x00007fe8f110e6a2: nop    
  0x00007fe8f110e6a3: nop    
  0x00007fe8f110e6a4: nop    
  0x00007fe8f110e6a5: nop    
  0x00007fe8f110e6a6: nop    
  0x00007fe8f110e6a7: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop [144]=Oop [112]=Oop [184]=Oop [200]=Oop off=2348}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {optimized virtual_call}
  0x00007fe8f110e6ac: lea    0xc0(%rsp),%rax
  0x00007fe8f110e6b4: mov    0x8(%rax),%rsi
  0x00007fe8f110e6b8: mov    (%rsi),%rdx
  0x00007fe8f110e6bb: and    $0x7,%rdx
  0x00007fe8f110e6bf: cmp    $0x5,%rdx
  0x00007fe8f110e6c3: je     0x00007fe8f110e6e0
  0x00007fe8f110e6c9: mov    (%rax),%rdx
  0x00007fe8f110e6cc: test   %rdx,%rdx
  0x00007fe8f110e6cf: je     0x00007fe8f110e6e0
  0x00007fe8f110e6d5: lock cmpxchg %rdx,(%rsi)
  0x00007fe8f110e6da: jne    0x00007fe8f110f1e1  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007fe8f110e6e0: mov    $0x7fe8ea7324e8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e6ea: mov    0xe0(%rdx),%esi
  0x00007fe8f110e6f0: add    $0x8,%esi
  0x00007fe8f110e6f3: mov    %esi,0xe0(%rdx)
  0x00007fe8f110e6f9: mov    $0x7fe8ea681a88,%rdx  ;   {metadata({method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e703: and    $0xfff8,%esi
  0x00007fe8f110e709: cmp    $0x0,%esi
  0x00007fe8f110e70c: je     0x00007fe8f110f1f7  ; OopMap{[136]=Oop [144]=Oop [112]=Oop [184]=Oop off=2450}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@293 (line 371)

  0x00007fe8f110e712: test   %eax,0x175589e8(%rip)        # 0x00007fe908667100
                                                ;   {poll}
  0x00007fe8f110e718: mov    $0x7fe8ea7324e8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e722: incl   0x478(%rdx)
  0x00007fe8f110e728: mov    0x90(%rsp),%rax
  0x00007fe8f110e730: mov    $0x0,%ebx
  0x00007fe8f110e735: mov    %ebx,0x78(%rsp)
  0x00007fe8f110e739: mov    %rax,0x80(%rsp)
  0x00007fe8f110e741: mov    0x70(%rsp),%rsi
  0x00007fe8f110e746: jmpq   0x00007fe8f110dff8  ;*goto
                                                ; - java.io.BufferedReader::readLine@293 (line 371)

  0x00007fe8f110e74b: cmp    $0x0,%rax
  0x00007fe8f110e74f: mov    $0x7fe8ea7324e8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e759: mov    $0x350,%rdi
  0x00007fe8f110e763: jne    0x00007fe8f110e773
  0x00007fe8f110e769: mov    $0x360,%rdi
  0x00007fe8f110e773: mov    (%rsi,%rdi,1),%rcx
  0x00007fe8f110e777: lea    0x1(%rcx),%rcx
  0x00007fe8f110e77b: mov    %rcx,(%rsi,%rdi,1)
  0x00007fe8f110e77f: mov    %edx,0x7c(%rsp)
  0x00007fe8f110e783: mov    0x70(%rsp),%rsi
  0x00007fe8f110e788: jne    0x00007fe8f110e829  ;*ifnonnull
                                                ; - java.io.BufferedReader::readLine@192 (line 355)

  0x00007fe8f110e78e: mov    $0x7c00016d0,%rdx  ;   {metadata('java/lang/String')}
  0x00007fe8f110e798: mov    %rsi,%r11
  0x00007fe8f110e79b: mov    0x60(%r15),%rax
  0x00007fe8f110e79f: lea    0x18(%rax),%rdi
  0x00007fe8f110e7a3: cmp    0x70(%r15),%rdi
  0x00007fe8f110e7a7: ja     0x00007fe8f110f20e
  0x00007fe8f110e7ad: mov    %rdi,0x60(%r15)
  0x00007fe8f110e7b1: mov    0xa8(%rdx),%rcx
  0x00007fe8f110e7b8: mov    %rcx,(%rax)
  0x00007fe8f110e7bb: mov    %rdx,%rcx
  0x00007fe8f110e7be: shr    $0x3,%rcx
  0x00007fe8f110e7c2: mov    %ecx,0x8(%rax)
  0x00007fe8f110e7c5: xor    %rcx,%rcx
  0x00007fe8f110e7c8: mov    %ecx,0xc(%rax)
  0x00007fe8f110e7cb: xor    %rcx,%rcx
  0x00007fe8f110e7ce: mov    %rcx,0x10(%rax)    ;*new  ; - java.io.BufferedReader::readLine@195 (line 356)

  0x00007fe8f110e7d2: mov    0x2c(%r11),%edx
  0x00007fe8f110e7d6: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@200 (line 356)

  0x00007fe8f110e7da: mov    %rax,%rcx
  0x00007fe8f110e7dd: mov    $0x7fe8ea7324e8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e7e7: addq   $0x1,0x370(%rsi)
  0x00007fe8f110e7ef: sub    %r8d,%r9d
  0x00007fe8f110e7f2: mov    %r8,%rcx
  0x00007fe8f110e7f5: mov    %r9,%r8
  0x00007fe8f110e7f8: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.io.BufferedReader::readLine@208 (line 356)

  0x00007fe8f110e7fb: mov    %rax,0x98(%rsp)
  0x00007fe8f110e803: nop    
  0x00007fe8f110e804: nop    
  0x00007fe8f110e805: nop    
  0x00007fe8f110e806: nop    
  0x00007fe8f110e807: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop [152]=Oop [112]=Oop [184]=Oop off=2700}
                                                ;*invokespecial <init>
                                                ; - java.io.BufferedReader::readLine@208 (line 356)
                                                ;   {optimized virtual_call}
  0x00007fe8f110e80c: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e816: incl   0x380(%rax)
  0x00007fe8f110e81c: mov    0x98(%rsp),%rsi
  0x00007fe8f110e824: jmpq   0x00007fe8f110eae7  ;*goto
                                                ; - java.io.BufferedReader::readLine@213 (line 356)

  0x00007fe8f110e829: mov    0x2c(%rsi),%edx
  0x00007fe8f110e82c: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@218 (line 358)

  0x00007fe8f110e830: cmp    (%rax),%rax        ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ; implicit exception: dispatches to 0x00007fe8f110f21b
  0x00007fe8f110e833: mov    %rax,%rcx
  0x00007fe8f110e836: mov    $0x7fe8ea7324e8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110e840: mov    0x8(%rcx),%ecx
  0x00007fe8f110e843: shl    $0x3,%rcx
  0x00007fe8f110e847: cmp    0x3a0(%rdi),%rcx
  0x00007fe8f110e84e: jne    0x00007fe8f110e85d
  0x00007fe8f110e850: addq   $0x1,0x3a8(%rdi)
  0x00007fe8f110e858: jmpq   0x00007fe8f110e8c3
  0x00007fe8f110e85d: cmp    0x3b0(%rdi),%rcx
  0x00007fe8f110e864: jne    0x00007fe8f110e873
  0x00007fe8f110e866: addq   $0x1,0x3b8(%rdi)
  0x00007fe8f110e86e: jmpq   0x00007fe8f110e8c3
  0x00007fe8f110e873: cmpq   $0x0,0x3a0(%rdi)
  0x00007fe8f110e87e: jne    0x00007fe8f110e897
  0x00007fe8f110e880: mov    %rcx,0x3a0(%rdi)
  0x00007fe8f110e887: movq   $0x1,0x3a8(%rdi)
  0x00007fe8f110e892: jmpq   0x00007fe8f110e8c3
  0x00007fe8f110e897: cmpq   $0x0,0x3b0(%rdi)
  0x00007fe8f110e8a2: jne    0x00007fe8f110e8bb
  0x00007fe8f110e8a4: mov    %rcx,0x3b0(%rdi)
  0x00007fe8f110e8ab: movq   $0x1,0x3b8(%rdi)
  0x00007fe8f110e8b6: jmpq   0x00007fe8f110e8c3
  0x00007fe8f110e8bb: addq   $0x1,0x398(%rdi)
  0x00007fe8f110e8c3: sub    %r8d,%r9d
  0x00007fe8f110e8c6: lea    0xc0(%rsp),%rcx
  0x00007fe8f110e8ce: mov    %rax,%rdi
  0x00007fe8f110e8d1: mov    %rdi,0x8(%rcx)
  0x00007fe8f110e8d5: mov    (%rdi),%rax
  0x00007fe8f110e8d8: mov    %rax,%rbx
  0x00007fe8f110e8db: and    $0x7,%rbx
  0x00007fe8f110e8df: cmp    $0x5,%rbx
  0x00007fe8f110e8e3: jne    0x00007fe8f110e96a
  0x00007fe8f110e8e9: mov    0x8(%rdi),%ebx
  0x00007fe8f110e8ec: shl    $0x3,%rbx
  0x00007fe8f110e8f0: mov    0xa8(%rbx),%rbx
  0x00007fe8f110e8f7: or     %r15,%rbx
  0x00007fe8f110e8fa: xor    %rax,%rbx
  0x00007fe8f110e8fd: and    $0xffffffffffffff87,%rbx
  0x00007fe8f110e901: je     0x00007fe8f110e992
  0x00007fe8f110e907: test   $0x7,%rbx
  0x00007fe8f110e90e: jne    0x00007fe8f110e957
  0x00007fe8f110e910: test   $0x300,%rbx
  0x00007fe8f110e917: jne    0x00007fe8f110e936
  0x00007fe8f110e919: and    $0x37f,%rax
  0x00007fe8f110e920: mov    %rax,%rbx
  0x00007fe8f110e923: or     %r15,%rbx
  0x00007fe8f110e926: lock cmpxchg %rbx,(%rdi)
  0x00007fe8f110e92b: jne    0x00007fe8f110f220
  0x00007fe8f110e931: jmpq   0x00007fe8f110e992
  0x00007fe8f110e936: mov    0x8(%rdi),%ebx
  0x00007fe8f110e939: shl    $0x3,%rbx
  0x00007fe8f110e93d: mov    0xa8(%rbx),%rbx
  0x00007fe8f110e944: or     %r15,%rbx
  0x00007fe8f110e947: lock cmpxchg %rbx,(%rdi)
  0x00007fe8f110e94c: jne    0x00007fe8f110f220
  0x00007fe8f110e952: jmpq   0x00007fe8f110e992
  0x00007fe8f110e957: mov    0x8(%rdi),%ebx
  0x00007fe8f110e95a: shl    $0x3,%rbx
  0x00007fe8f110e95e: mov    0xa8(%rbx),%rbx
  0x00007fe8f110e965: lock cmpxchg %rbx,(%rdi)
  0x00007fe8f110e96a: mov    (%rdi),%rax
  0x00007fe8f110e96d: or     $0x1,%rax
  0x00007fe8f110e971: mov    %rax,(%rcx)
  0x00007fe8f110e974: lock cmpxchg %rcx,(%rdi)
  0x00007fe8f110e979: je     0x00007fe8f110e992
  0x00007fe8f110e97f: sub    %rsp,%rax
  0x00007fe8f110e982: and    $0xfffffffffffff007,%rax
  0x00007fe8f110e989: mov    %rax,(%rcx)
  0x00007fe8f110e98c: jne    0x00007fe8f110f220  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007fe8f110e992: mov    $0x7fe8ea732f38,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea56d798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007fe8f110e99c: mov    0xdc(%rcx),%ebx
  0x00007fe8f110e9a2: add    $0x8,%ebx
  0x00007fe8f110e9a5: mov    %ebx,0xdc(%rcx)
  0x00007fe8f110e9ab: mov    $0x7fe8ea56d798,%rcx  ;   {metadata({method} {0x00007fe8ea56d798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007fe8f110e9b5: and    $0x7ffff8,%ebx
  0x00007fe8f110e9bb: cmp    $0x0,%ebx
  0x00007fe8f110e9be: je     0x00007fe8f110f233
  0x00007fe8f110e9c4: movl   $0x0,0x14(%rdi)
  0x00007fe8f110e9cb: mov    %rdi,%rax
  0x00007fe8f110e9ce: shr    $0x9,%rax
  0x00007fe8f110e9d2: mov    $0x7fe9014ff000,%rcx
  0x00007fe8f110e9dc: movb   $0x0,(%rax,%rcx,1)  ;*putfield toStringCache
                                                ; - java.lang.StringBuffer::append@2 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007fe8f110e9e0: mov    %rdi,%rax
  0x00007fe8f110e9e3: mov    $0x7fe8ea732f38,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea56d798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007fe8f110e9ed: addq   $0x1,0x108(%rcx)
  0x00007fe8f110e9f5: mov    %r8,%rcx
  0x00007fe8f110e9f8: mov    %r9,%r8
  0x00007fe8f110e9fb: mov    %rdi,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007fe8f110e9fe: mov    %rdi,0x80(%rsp)
  0x00007fe8f110ea06: nop    
  0x00007fe8f110ea07: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop [112]=Oop [128]=Oop [184]=Oop [200]=Oop off=3212}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {optimized virtual_call}
  0x00007fe8f110ea0c: lea    0xc0(%rsp),%rax
  0x00007fe8f110ea14: mov    0x8(%rax),%rdi
  0x00007fe8f110ea18: mov    (%rdi),%rsi
  0x00007fe8f110ea1b: and    $0x7,%rsi
  0x00007fe8f110ea1f: cmp    $0x5,%rsi
  0x00007fe8f110ea23: je     0x00007fe8f110ea40
  0x00007fe8f110ea29: mov    (%rax),%rsi
  0x00007fe8f110ea2c: test   %rsi,%rsi
  0x00007fe8f110ea2f: je     0x00007fe8f110ea40
  0x00007fe8f110ea35: lock cmpxchg %rsi,(%rdi)
  0x00007fe8f110ea3a: jne    0x00007fe8f110f24a  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007fe8f110ea40: mov    0x80(%rsp),%rax
  0x00007fe8f110ea48: mov    $0x7fe8ea7324e8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110ea52: mov    0x8(%rax),%eax
  0x00007fe8f110ea55: shl    $0x3,%rax
  0x00007fe8f110ea59: cmp    0x3d0(%rsi),%rax
  0x00007fe8f110ea60: jne    0x00007fe8f110ea6f
  0x00007fe8f110ea62: addq   $0x1,0x3d8(%rsi)
  0x00007fe8f110ea6a: jmpq   0x00007fe8f110ead5
  0x00007fe8f110ea6f: cmp    0x3e0(%rsi),%rax
  0x00007fe8f110ea76: jne    0x00007fe8f110ea85
  0x00007fe8f110ea78: addq   $0x1,0x3e8(%rsi)
  0x00007fe8f110ea80: jmpq   0x00007fe8f110ead5
  0x00007fe8f110ea85: cmpq   $0x0,0x3d0(%rsi)
  0x00007fe8f110ea90: jne    0x00007fe8f110eaa9
  0x00007fe8f110ea92: mov    %rax,0x3d0(%rsi)
  0x00007fe8f110ea99: movq   $0x1,0x3d8(%rsi)
  0x00007fe8f110eaa4: jmpq   0x00007fe8f110ead5
  0x00007fe8f110eaa9: cmpq   $0x0,0x3e0(%rsi)
  0x00007fe8f110eab4: jne    0x00007fe8f110eacd
  0x00007fe8f110eab6: mov    %rax,0x3e0(%rsi)
  0x00007fe8f110eabd: movq   $0x1,0x3e8(%rsi)
  0x00007fe8f110eac8: jmpq   0x00007fe8f110ead5
  0x00007fe8f110eacd: addq   $0x1,0x3c8(%rsi)
  0x00007fe8f110ead5: mov    0x80(%rsp),%rsi    ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@231 (line 359)

  0x00007fe8f110eadd: nop    
  0x00007fe8f110eade: nop    
  0x00007fe8f110eadf: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop [112]=Oop [128]=Oop [184]=Oop off=3428}
                                                ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@231 (line 359)
                                                ;   {optimized virtual_call}
  0x00007fe8f110eae4: mov    %rax,%rsi          ;*aload_0
                                                ; - java.io.BufferedReader::readLine@236 (line 361)

  0x00007fe8f110eae7: mov    0x7c(%rsp),%ebx
  0x00007fe8f110eaeb: mov    0x70(%rsp),%rdi
  0x00007fe8f110eaf0: mov    0x18(%rdi),%eax    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@238 (line 361)

  0x00007fe8f110eaf3: inc    %eax
  0x00007fe8f110eaf5: mov    %eax,0x18(%rdi)    ;*putfield nextChar
                                                ; - java.io.BufferedReader::readLine@243 (line 361)

  0x00007fe8f110eaf8: cmp    $0xd,%ebx
  0x00007fe8f110eafb: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110eb05: mov    $0x3f8,%rbx
  0x00007fe8f110eb0f: jne    0x00007fe8f110eb1f
  0x00007fe8f110eb15: mov    $0x408,%rbx
  0x00007fe8f110eb1f: mov    (%rax,%rbx,1),%rdx
  0x00007fe8f110eb23: lea    0x1(%rdx),%rdx
  0x00007fe8f110eb27: mov    %rdx,(%rax,%rbx,1)
  0x00007fe8f110eb2b: jne    0x00007fe8f110ee75  ;*if_icmpne
                                                ; - java.io.BufferedReader::readLine@250 (line 362)

  0x00007fe8f110eb31: movb   $0x1,0x24(%rdi)    ;*putfield skipLF
                                                ; - java.io.BufferedReader::readLine@255 (line 363)

  0x00007fe8f110eb35: jmpq   0x00007fe8f110ee75  ;*aload
                                                ; - java.io.BufferedReader::readLine@258 (line 365)

  0x00007fe8f110eb3a: mov    0x80(%rsp),%rsi
  0x00007fe8f110eb42: cmp    $0x0,%rsi
  0x00007fe8f110eb46: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110eb50: mov    $0x1c0,%rdi
  0x00007fe8f110eb5a: je     0x00007fe8f110eb6a
  0x00007fe8f110eb60: mov    $0x1d0,%rdi
  0x00007fe8f110eb6a: mov    (%rax,%rdi,1),%rbx
  0x00007fe8f110eb6e: lea    0x1(%rbx),%rbx
  0x00007fe8f110eb72: mov    %rbx,(%rax,%rdi,1)
  0x00007fe8f110eb76: je     0x00007fe8f110ed48  ;*ifnull
                                                ; - java.io.BufferedReader::readLine@59 (line 326)

  0x00007fe8f110eb7c: cmp    (%rsi),%rax        ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)
                                                ; implicit exception: dispatches to 0x00007fe8f110f260
  0x00007fe8f110eb7f: mov    %rsi,%rax
  0x00007fe8f110eb82: mov    $0x7fe8ea7324e8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110eb8c: mov    0x8(%rax),%eax
  0x00007fe8f110eb8f: shl    $0x3,%rax
  0x00007fe8f110eb93: cmp    0x1e8(%rdi),%rax
  0x00007fe8f110eb9a: jne    0x00007fe8f110eba9
  0x00007fe8f110eb9c: addq   $0x1,0x1f0(%rdi)
  0x00007fe8f110eba4: jmpq   0x00007fe8f110ec0f
  0x00007fe8f110eba9: cmp    0x1f8(%rdi),%rax
  0x00007fe8f110ebb0: jne    0x00007fe8f110ebbf
  0x00007fe8f110ebb2: addq   $0x1,0x200(%rdi)
  0x00007fe8f110ebba: jmpq   0x00007fe8f110ec0f
  0x00007fe8f110ebbf: cmpq   $0x0,0x1e8(%rdi)
  0x00007fe8f110ebca: jne    0x00007fe8f110ebe3
  0x00007fe8f110ebcc: mov    %rax,0x1e8(%rdi)
  0x00007fe8f110ebd3: movq   $0x1,0x1f0(%rdi)
  0x00007fe8f110ebde: jmpq   0x00007fe8f110ec0f
  0x00007fe8f110ebe3: cmpq   $0x0,0x1f8(%rdi)
  0x00007fe8f110ebee: jne    0x00007fe8f110ec07
  0x00007fe8f110ebf0: mov    %rax,0x1f8(%rdi)
  0x00007fe8f110ebf7: movq   $0x1,0x200(%rdi)
  0x00007fe8f110ec02: jmpq   0x00007fe8f110ec0f
  0x00007fe8f110ec07: addq   $0x1,0x1e0(%rdi)
  0x00007fe8f110ec0f: lea    0xc0(%rsp),%rdi
  0x00007fe8f110ec17: mov    %rsi,0x8(%rdi)
  0x00007fe8f110ec1b: mov    (%rsi),%rax
  0x00007fe8f110ec1e: mov    %rax,%rbx
  0x00007fe8f110ec21: and    $0x7,%rbx
  0x00007fe8f110ec25: cmp    $0x5,%rbx
  0x00007fe8f110ec29: jne    0x00007fe8f110ecb0
  0x00007fe8f110ec2f: mov    0x8(%rsi),%ebx
  0x00007fe8f110ec32: shl    $0x3,%rbx
  0x00007fe8f110ec36: mov    0xa8(%rbx),%rbx
  0x00007fe8f110ec3d: or     %r15,%rbx
  0x00007fe8f110ec40: xor    %rax,%rbx
  0x00007fe8f110ec43: and    $0xffffffffffffff87,%rbx
  0x00007fe8f110ec47: je     0x00007fe8f110ecd8
  0x00007fe8f110ec4d: test   $0x7,%rbx
  0x00007fe8f110ec54: jne    0x00007fe8f110ec9d
  0x00007fe8f110ec56: test   $0x300,%rbx
  0x00007fe8f110ec5d: jne    0x00007fe8f110ec7c
  0x00007fe8f110ec5f: and    $0x37f,%rax
  0x00007fe8f110ec66: mov    %rax,%rbx
  0x00007fe8f110ec69: or     %r15,%rbx
  0x00007fe8f110ec6c: lock cmpxchg %rbx,(%rsi)
  0x00007fe8f110ec71: jne    0x00007fe8f110f265
  0x00007fe8f110ec77: jmpq   0x00007fe8f110ecd8
  0x00007fe8f110ec7c: mov    0x8(%rsi),%ebx
  0x00007fe8f110ec7f: shl    $0x3,%rbx
  0x00007fe8f110ec83: mov    0xa8(%rbx),%rbx
  0x00007fe8f110ec8a: or     %r15,%rbx
  0x00007fe8f110ec8d: lock cmpxchg %rbx,(%rsi)
  0x00007fe8f110ec92: jne    0x00007fe8f110f265
  0x00007fe8f110ec98: jmpq   0x00007fe8f110ecd8
  0x00007fe8f110ec9d: mov    0x8(%rsi),%ebx
  0x00007fe8f110eca0: shl    $0x3,%rbx
  0x00007fe8f110eca4: mov    0xa8(%rbx),%rbx
  0x00007fe8f110ecab: lock cmpxchg %rbx,(%rsi)
  0x00007fe8f110ecb0: mov    (%rsi),%rax
  0x00007fe8f110ecb3: or     $0x1,%rax
  0x00007fe8f110ecb7: mov    %rax,(%rdi)
  0x00007fe8f110ecba: lock cmpxchg %rdi,(%rsi)
  0x00007fe8f110ecbf: je     0x00007fe8f110ecd8
  0x00007fe8f110ecc5: sub    %rsp,%rax
  0x00007fe8f110ecc8: and    $0xfffffffffffff007,%rax
  0x00007fe8f110eccf: mov    %rax,(%rdi)
  0x00007fe8f110ecd2: jne    0x00007fe8f110f265  ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007fe8f110ecd8: mov    0xc(%rsi),%edi     ;*getfield count
                                                ; - java.lang.StringBuffer::length@1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007fe8f110ecdb: lea    0xc0(%rsp),%rax
  0x00007fe8f110ece3: mov    0x8(%rax),%rdx
  0x00007fe8f110ece7: mov    (%rdx),%rbx
  0x00007fe8f110ecea: and    $0x7,%rbx
  0x00007fe8f110ecee: cmp    $0x5,%rbx
  0x00007fe8f110ecf2: je     0x00007fe8f110ed0f
  0x00007fe8f110ecf8: mov    (%rax),%rbx
  0x00007fe8f110ecfb: test   %rbx,%rbx
  0x00007fe8f110ecfe: je     0x00007fe8f110ed0f
  0x00007fe8f110ed04: lock cmpxchg %rbx,(%rdx)
  0x00007fe8f110ed09: jne    0x00007fe8f110f278  ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007fe8f110ed0f: cmp    $0x0,%edi
  0x00007fe8f110ed12: mov    $0x7fe8ea7324e8,%rax  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110ed1c: mov    $0x210,%rdi
  0x00007fe8f110ed26: jle    0x00007fe8f110ed36
  0x00007fe8f110ed2c: mov    $0x220,%rdi
  0x00007fe8f110ed36: mov    (%rax,%rdi,1),%rbx
  0x00007fe8f110ed3a: lea    0x1(%rbx),%rbx
  0x00007fe8f110ed3e: mov    %rbx,(%rax,%rdi,1)
  0x00007fe8f110ed42: jg     0x00007fe8f110ed95  ;*ifle
                                                ; - java.io.BufferedReader::readLine@66 (line 326)

  0x00007fe8f110ed48: lea    0xb0(%rsp),%rax
  0x00007fe8f110ed50: mov    0x8(%rax),%rdi
  0x00007fe8f110ed54: mov    (%rdi),%rsi
  0x00007fe8f110ed57: and    $0x7,%rsi
  0x00007fe8f110ed5b: cmp    $0x5,%rsi
  0x00007fe8f110ed5f: je     0x00007fe8f110ed7c
  0x00007fe8f110ed65: mov    (%rax),%rsi
  0x00007fe8f110ed68: test   %rsi,%rsi
  0x00007fe8f110ed6b: je     0x00007fe8f110ed7c
  0x00007fe8f110ed71: lock cmpxchg %rsi,(%rdi)
  0x00007fe8f110ed76: jne    0x00007fe8f110f28e  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@80 (line 329)

  0x00007fe8f110ed7c: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007fe8f110ed86: add    $0xe0,%rsp
  0x00007fe8f110ed8d: pop    %rbp
  0x00007fe8f110ed8e: test   %eax,0x1755836c(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110ed94: retq                      ;*areturn
                                                ; - java.io.BufferedReader::readLine@81 (line 329)

  0x00007fe8f110ed95: mov    %rsi,%rax
  0x00007fe8f110ed98: mov    $0x7fe8ea7324e8,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea681a88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007fe8f110eda2: mov    0x8(%rax),%eax
  0x00007fe8f110eda5: shl    $0x3,%rax
  0x00007fe8f110eda9: cmp    0x238(%rdi),%rax
  0x00007fe8f110edb0: jne    0x00007fe8f110edbf
  0x00007fe8f110edb2: addq   $0x1,0x240(%rdi)
  0x00007fe8f110edba: jmpq   0x00007fe8f110ee25
  0x00007fe8f110edbf: cmp    0x248(%rdi),%rax
  0x00007fe8f110edc6: jne    0x00007fe8f110edd5
  0x00007fe8f110edc8: addq   $0x1,0x250(%rdi)
  0x00007fe8f110edd0: jmpq   0x00007fe8f110ee25
  0x00007fe8f110edd5: cmpq   $0x0,0x238(%rdi)
  0x00007fe8f110ede0: jne    0x00007fe8f110edf9
  0x00007fe8f110ede2: mov    %rax,0x238(%rdi)
  0x00007fe8f110ede9: movq   $0x1,0x240(%rdi)
  0x00007fe8f110edf4: jmpq   0x00007fe8f110ee25
  0x00007fe8f110edf9: cmpq   $0x0,0x248(%rdi)
  0x00007fe8f110ee04: jne    0x00007fe8f110ee1d
  0x00007fe8f110ee06: mov    %rax,0x248(%rdi)
  0x00007fe8f110ee0d: movq   $0x1,0x250(%rdi)
  0x00007fe8f110ee18: jmpq   0x00007fe8f110ee25
  0x00007fe8f110ee1d: addq   $0x1,0x230(%rdi)
  0x00007fe8f110ee25: nop    
  0x00007fe8f110ee26: nop    
  0x00007fe8f110ee27: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop [184]=Oop off=4268}
                                                ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@70 (line 327)
                                                ;   {optimized virtual_call}
  0x00007fe8f110ee2c: mov    %rax,%rdx          ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@70 (line 327)

  0x00007fe8f110ee2f: lea    0xb0(%rsp),%rax
  0x00007fe8f110ee37: mov    0x8(%rax),%rdi
  0x00007fe8f110ee3b: mov    (%rdi),%rsi
  0x00007fe8f110ee3e: and    $0x7,%rsi
  0x00007fe8f110ee42: cmp    $0x5,%rsi
  0x00007fe8f110ee46: je     0x00007fe8f110ee63
  0x00007fe8f110ee4c: mov    (%rax),%rsi
  0x00007fe8f110ee4f: test   %rsi,%rsi
  0x00007fe8f110ee52: je     0x00007fe8f110ee63
  0x00007fe8f110ee58: lock cmpxchg %rsi,(%rdi)
  0x00007fe8f110ee5d: jne    0x00007fe8f110f2a4  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@75 (line 327)

  0x00007fe8f110ee63: mov    %rdx,%rax
  0x00007fe8f110ee66: add    $0xe0,%rsp
  0x00007fe8f110ee6d: pop    %rbp
  0x00007fe8f110ee6e: test   %eax,0x1755828c(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110ee74: retq                      ;*areturn
                                                ; - java.io.BufferedReader::readLine@76 (line 327)

  0x00007fe8f110ee75: lea    0xb0(%rsp),%rax
  0x00007fe8f110ee7d: mov    0x8(%rax),%rdi
  0x00007fe8f110ee81: mov    (%rdi),%rdx
  0x00007fe8f110ee84: and    $0x7,%rdx
  0x00007fe8f110ee88: cmp    $0x5,%rdx
  0x00007fe8f110ee8c: je     0x00007fe8f110eea9
  0x00007fe8f110ee92: mov    (%rax),%rdx
  0x00007fe8f110ee95: test   %rdx,%rdx
  0x00007fe8f110ee98: je     0x00007fe8f110eea9
  0x00007fe8f110ee9e: lock cmpxchg %rdx,(%rdi)
  0x00007fe8f110eea3: jne    0x00007fe8f110f2ba  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@262 (line 365)

  0x00007fe8f110eea9: mov    %rsi,%rax
  0x00007fe8f110eeac: add    $0xe0,%rsp
  0x00007fe8f110eeb3: pop    %rbp
  0x00007fe8f110eeb4: test   %eax,0x17558246(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f110eeba: retq                      ;*areturn
                                                ; - java.io.BufferedReader::readLine@263 (line 365)

  0x00007fe8f110eebb: mov    %edx,0xa8(%rsp)
  0x00007fe8f110eec2: nopw   0x0(%rax,%rax,1)
  0x00007fe8f110eec8: jmpq   0x00007fe8f110f2df  ;   {no_reloc}
  0x00007fe8f110eecd: add    %al,(%rax)
  0x00007fe8f110eecf: add    %al,(%rax)
  0x00007fe8f110eed1: add    %ch,%cl
  0x00007fe8f110eed3: adc    (%rax,%rax,1),%al
  0x00007fe8f110eed6: add    %cl,-0x75(%rax)    ;*new  ; - java.io.BufferedReader::ensureOpen@7 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007fe8f110eed9: rorb   -0x45(%rax)        ;   {metadata(method data for {method} {0x00007fe8ea681360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007fe8f110eedc: loopne 0x00007fe8f110ef07
  0x00007fe8f110eede: jae    0x00007fe8f110eeca
  0x00007fe8f110eee0: callq  0x00007fe93910ef64
  0x00007fe8f110eee5: addl   $0x1,0x128(%rbx)
  0x00007fe8f110eeec: mov    $0x781ef3370,%rdx  ;   {oop("Stream closed")}
  0x00007fe8f110eef6: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.io.BufferedReader::ensureOpen@13 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007fe8f110eef9: mov    %rax,0xa0(%rsp)
  0x00007fe8f110ef01: nop    
  0x00007fe8f110ef02: nop    
  0x00007fe8f110ef03: nop    
  0x00007fe8f110ef04: nop    
  0x00007fe8f110ef05: nop    
  0x00007fe8f110ef06: nop    
  0x00007fe8f110ef07: callq  0x00007fe8f1046020  ; OopMap{[136]=Oop [112]=Oop [160]=Oop [184]=Oop off=4492}
                                                ;*invokespecial <init>
                                                ; - java.io.BufferedReader::ensureOpen@13 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {optimized virtual_call}
  0x00007fe8f110ef0c: mov    0xa0(%rsp),%rax    ; OopMap{[136]=Oop [112]=Oop [184]=Oop rax=Oop off=4500}
                                                ;*athrow
                                                ; - java.io.BufferedReader::ensureOpen@16 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007fe8f110ef14: mov    $0x7fe8f110ef14,%rdx  ;   {section_word}
  0x00007fe8f110ef1e: callq  0x00007fe8f106ba20  ;   {runtime_call}
  0x00007fe8f110ef23: nop                       ;*athrow
                                                ; - java.io.BufferedReader::ensureOpen@16 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007fe8f110ef24: mov    0x2a8(%r15),%rax
  0x00007fe8f110ef2b: xor    %r10,%r10
  0x00007fe8f110ef2e: mov    %r10,0x2a8(%r15)
  0x00007fe8f110ef35: xor    %r10,%r10
  0x00007fe8f110ef38: mov    %r10,0x2b0(%r15)
  0x00007fe8f110ef3f: mov    %rax,%rdx
  0x00007fe8f110ef42: lea    0xc0(%rsp),%rax
  0x00007fe8f110ef4a: mov    0x8(%rax),%rbx
  0x00007fe8f110ef4e: mov    (%rbx),%rdi
  0x00007fe8f110ef51: and    $0x7,%rdi
  0x00007fe8f110ef55: cmp    $0x5,%rdi
  0x00007fe8f110ef59: je     0x00007fe8f110ef76
  0x00007fe8f110ef5f: mov    (%rax),%rdi
  0x00007fe8f110ef62: test   %rdi,%rdi
  0x00007fe8f110ef65: je     0x00007fe8f110ef76
  0x00007fe8f110ef6b: lock cmpxchg %rdi,(%rbx)
  0x00007fe8f110ef70: jne    0x00007fe8f110f2f6  ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007fe8f110ef76: mov    %rdx,%rax          ; OopMap{rsi=Oop [136]=Oop [184]=Oop rax=Oop off=4601}
                                                ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007fe8f110ef79: mov    $0x7fe8f110ef79,%rdx  ;   {section_word}
  0x00007fe8f110ef83: callq  0x00007fe8f106ba20  ;   {runtime_call}
  0x00007fe8f110ef88: nop                       ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007fe8f110ef89: mov    0x2a8(%r15),%rax
  0x00007fe8f110ef90: xor    %r10,%r10
  0x00007fe8f110ef93: mov    %r10,0x2a8(%r15)
  0x00007fe8f110ef9a: xor    %r10,%r10
  0x00007fe8f110ef9d: mov    %r10,0x2b0(%r15)
  0x00007fe8f110efa4: mov    %rax,%rdx
  0x00007fe8f110efa7: lea    0xc0(%rsp),%rax
  0x00007fe8f110efaf: mov    0x8(%rax),%rcx
  0x00007fe8f110efb3: mov    (%rcx),%rdi
  0x00007fe8f110efb6: and    $0x7,%rdi
  0x00007fe8f110efba: cmp    $0x5,%rdi
  0x00007fe8f110efbe: je     0x00007fe8f110efdb
  0x00007fe8f110efc4: mov    (%rax),%rdi
  0x00007fe8f110efc7: test   %rdi,%rdi
  0x00007fe8f110efca: je     0x00007fe8f110efdb
  0x00007fe8f110efd0: lock cmpxchg %rdi,(%rcx)
  0x00007fe8f110efd5: jne    0x00007fe8f110f30c  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007fe8f110efdb: mov    %rdx,%rax          ; OopMap{[112]=Oop [136]=Oop rsi=Oop [184]=Oop rax=Oop off=4702}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007fe8f110efde: mov    $0x7fe8f110efde,%rdx  ;   {section_word}
  0x00007fe8f110efe8: callq  0x00007fe8f106ba20  ;   {runtime_call}
  0x00007fe8f110efed: nop                       ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007fe8f110efee: mov    0x88(%rsp),%rbx
  0x00007fe8f110eff6: mov    0x70(%rsp),%rsi
  0x00007fe8f110effb: mov    0x2a8(%r15),%rax
  0x00007fe8f110f002: xor    %r10,%r10
  0x00007fe8f110f005: mov    %r10,0x2a8(%r15)
  0x00007fe8f110f00c: xor    %r10,%r10
  0x00007fe8f110f00f: mov    %r10,0x2b0(%r15)
  0x00007fe8f110f016: mov    %rax,%rdx
  0x00007fe8f110f019: lea    0xc0(%rsp),%rax
  0x00007fe8f110f021: mov    0x8(%rax),%r8
  0x00007fe8f110f025: mov    (%r8),%rcx
  0x00007fe8f110f028: and    $0x7,%rcx
  0x00007fe8f110f02c: cmp    $0x5,%rcx
  0x00007fe8f110f030: je     0x00007fe8f110f04d
  0x00007fe8f110f036: mov    (%rax),%rcx
  0x00007fe8f110f039: test   %rcx,%rcx
  0x00007fe8f110f03c: je     0x00007fe8f110f04d
  0x00007fe8f110f042: lock cmpxchg %rcx,(%r8)
  0x00007fe8f110f047: jne    0x00007fe8f110f322  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007fe8f110f04d: mov    %rdx,%rax          ; OopMap{rdi=Oop rsi=Oop [112]=Oop rbx=Oop [136]=Oop [184]=Oop rax=Oop off=4816}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007fe8f110f050: mov    $0x7fe8f110f050,%rdx  ;   {section_word}
  0x00007fe8f110f05a: callq  0x00007fe8f106ba20  ;   {runtime_call}
  0x00007fe8f110f05f: nop                       ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007fe8f110f060: mov    0x2a8(%r15),%rax
  0x00007fe8f110f067: xor    %r10,%r10
  0x00007fe8f110f06a: mov    %r10,0x2a8(%r15)
  0x00007fe8f110f071: xor    %r10,%r10
  0x00007fe8f110f074: mov    %r10,0x2b0(%r15)
  0x00007fe8f110f07b: mov    %rax,%rsi
  0x00007fe8f110f07e: lea    0xb0(%rsp),%rax
  0x00007fe8f110f086: mov    0x8(%rax),%rbx
  0x00007fe8f110f08a: mov    (%rbx),%rdi
  0x00007fe8f110f08d: and    $0x7,%rdi
  0x00007fe8f110f091: cmp    $0x5,%rdi
  0x00007fe8f110f095: je     0x00007fe8f110f0b2
  0x00007fe8f110f09b: mov    (%rax),%rdi
  0x00007fe8f110f09e: test   %rdi,%rdi
  0x00007fe8f110f0a1: je     0x00007fe8f110f0b2
  0x00007fe8f110f0a7: lock cmpxchg %rdi,(%rbx)
  0x00007fe8f110f0ac: jne    0x00007fe8f110f338  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@300 (line 372)

  0x00007fe8f110f0b2: mov    %rsi,%rax
  0x00007fe8f110f0b5: jmpq   0x00007fe8f110f397
  0x00007fe8f110f0ba: mov    %rax,0x8(%rsp)
  0x00007fe8f110f0bf: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110f0c7: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop [112]=Oop off=4940}
                                                ;*synchronization entry
                                                ; - java.io.BufferedReader::readLine@-1 (line 313)
                                                ;   {runtime_call}
  0x00007fe8f110f0cc: jmpq   0x00007fe8f110dde6
  0x00007fe8f110f0d1: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop [112]=Oop rdi=Oop [136]=Oop off=4950}
                                                ;*monitorenter
                                                ; - java.io.BufferedReader::readLine@9 (line 316)
                                                ;   {runtime_call}
  0x00007fe8f110f0d6: mov    %rdi,0x8(%rsp)
  0x00007fe8f110f0db: mov    %rbx,(%rsp)
  0x00007fe8f110f0df: callq  0x00007fe8f10fbf60  ; OopMap{rsi=Oop [112]=Oop rdi=Oop [136]=Oop [184]=Oop off=4964}
                                                ;*monitorenter
                                                ; - java.io.BufferedReader::readLine@9 (line 316)
                                                ;   {runtime_call}
  0x00007fe8f110f0e4: jmpq   0x00007fe8f110debe
  0x00007fe8f110f0e9: mov    %rbx,0x8(%rsp)
  0x00007fe8f110f0ee: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110f0f6: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop [112]=Oop rdi=Oop [136]=Oop [184]=Oop off=4987}
                                                ;*synchronization entry
                                                ; - java.io.BufferedReader::ensureOpen@-1 (line 121)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {runtime_call}
  0x00007fe8f110f0fb: jmpq   0x00007fe8f110df05
  0x00007fe8f110f100: callq  0x00007fe8f10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rax=Oop [184]=Oop off=4997}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)
                                                ;   {runtime_call}
  0x00007fe8f110f105: callq  0x00007fe8f10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rax=Oop [184]=Oop off=5002}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)
                                                ;   {runtime_call}
  0x00007fe8f110f10a: mov    %rdx,(%rsp)
  0x00007fe8f110f10e: callq  0x00007fe8f106bc40  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rax=Oop [184]=Oop off=5011}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)
                                                ;   {runtime_call}
  0x00007fe8f110f113: callq  0x00007fe8f10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rdx=Oop [184]=Oop off=5016}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)
                                                ;   {runtime_call}
  0x00007fe8f110f118: callq  0x00007fe8f10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rdx=Oop [184]=Oop off=5021}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)
                                                ;   {runtime_call}
  0x00007fe8f110f11d: mov    %r9,(%rsp)
  0x00007fe8f110f121: callq  0x00007fe8f106bc40  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rdx=Oop [184]=Oop off=5030}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)
                                                ;   {runtime_call}
  0x00007fe8f110f126: mov    %rax,0x8(%rsp)
  0x00007fe8f110f12b: movq   $0xac,(%rsp)
  0x00007fe8f110f133: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop [184]=Oop off=5048}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@172 (line 342)
                                                ;   {runtime_call}
  0x00007fe8f110f138: jmpq   0x00007fe8f110e208
  0x00007fe8f110f13d: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f110f147: mov    $0xa050f00,%eax
  0x00007fe8f110f14c: callq  0x00007fe8f10fdfe0  ; OopMap{[136]=Oop rsi=Oop [112]=Oop [184]=Oop off=5073}
                                                ;*new  ; - java.io.BufferedReader::readLine@268 (line 369)
                                                ;   {runtime_call}
  0x00007fe8f110f151: jmpq   0x00007fe8f110e300
  0x00007fe8f110f156: mov    %rdx,%rdx
  0x00007fe8f110f159: callq  0x00007fe8f10f9de0  ; OopMap{[136]=Oop r11=Oop [112]=Oop [184]=Oop off=5086}
                                                ;*new  ; - java.io.BufferedReader::readLine@268 (line 369)
                                                ;   {runtime_call}
  0x00007fe8f110f15e: jmpq   0x00007fe8f110e344
  0x00007fe8f110f163: mov    %rdx,0x8(%rsp)
  0x00007fe8f110f168: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110f170: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5109}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::<init>@-1 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007fe8f110f175: jmpq   0x00007fe8f110e39b
  0x00007fe8f110f17a: mov    %rdx,0x8(%rsp)
  0x00007fe8f110f17f: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110f187: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5132}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::<init>@-1 (line 67)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007fe8f110f18c: jmpq   0x00007fe8f110e3e2
  0x00007fe8f110f191: mov    %rdx,0x8(%rsp)
  0x00007fe8f110f196: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110f19e: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5155}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - java.lang.AbstractStringBuilder::<init>@1 (line 67)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007fe8f110f1a3: jmpq   0x00007fe8f110e429
  0x00007fe8f110f1a8: callq  0x00007fe8f10fa6a0  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5165}
                                                ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007fe8f110f1ad: jmpq   0x00007fe8f110e4a0
  0x00007fe8f110f1b2: callq  0x00007fe8f10f9680  ; OopMap{[136]=Oop r11=Oop [112]=Oop rax=Oop rdx=Oop [184]=Oop off=5175}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {runtime_call}
  0x00007fe8f110f1b7: mov    %rdi,0x8(%rsp)
  0x00007fe8f110f1bc: mov    %rcx,(%rsp)
  0x00007fe8f110f1c0: callq  0x00007fe8f10fbf60  ; OopMap{[136]=Oop r11=Oop [112]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5189}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {runtime_call}
  0x00007fe8f110f1c5: jmpq   0x00007fe8f110e62d
  0x00007fe8f110f1ca: mov    %rcx,0x8(%rsp)
  0x00007fe8f110f1cf: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110f1d7: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop r11=Oop [112]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5212}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {runtime_call}
  0x00007fe8f110f1dc: jmpq   0x00007fe8f110e65f
  0x00007fe8f110f1e1: lea    0xc0(%rsp),%rax
  0x00007fe8f110f1e9: mov    %rax,(%rsp)
  0x00007fe8f110f1ed: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f1f2: jmpq   0x00007fe8f110e6e0
  0x00007fe8f110f1f7: mov    %rdx,0x8(%rsp)
  0x00007fe8f110f1fc: movq   $0x125,(%rsp)
  0x00007fe8f110f204: callq  0x00007fe8f10fd5a0  ; OopMap{[136]=Oop [144]=Oop [112]=Oop [184]=Oop off=5257}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@293 (line 371)
                                                ;   {runtime_call}
  0x00007fe8f110f209: jmpq   0x00007fe8f110e712
  0x00007fe8f110f20e: mov    %rdx,%rdx
  0x00007fe8f110f211: callq  0x00007fe8f10f9de0  ; OopMap{[136]=Oop r11=Oop [112]=Oop [184]=Oop off=5270}
                                                ;*new  ; - java.io.BufferedReader::readLine@195 (line 356)
                                                ;   {runtime_call}
  0x00007fe8f110f216: jmpq   0x00007fe8f110e7d2
  0x00007fe8f110f21b: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop [112]=Oop rax=Oop [136]=Oop rdx=Oop [184]=Oop off=5280}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {runtime_call}
  0x00007fe8f110f220: mov    %rdi,0x8(%rsp)
  0x00007fe8f110f225: mov    %rcx,(%rsp)
  0x00007fe8f110f229: callq  0x00007fe8f10fbf60  ; OopMap{rsi=Oop [112]=Oop [136]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5294}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {runtime_call}
  0x00007fe8f110f22e: jmpq   0x00007fe8f110e992
  0x00007fe8f110f233: mov    %rcx,0x8(%rsp)
  0x00007fe8f110f238: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f110f240: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop [112]=Oop [136]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5317}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {runtime_call}
  0x00007fe8f110f245: jmpq   0x00007fe8f110e9c4
  0x00007fe8f110f24a: lea    0xc0(%rsp),%rax
  0x00007fe8f110f252: mov    %rax,(%rsp)
  0x00007fe8f110f256: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f25b: jmpq   0x00007fe8f110ea40
  0x00007fe8f110f260: callq  0x00007fe8f10f9680  ; OopMap{[136]=Oop rsi=Oop [184]=Oop off=5349}
                                                ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)
                                                ;   {runtime_call}
  0x00007fe8f110f265: mov    %rsi,0x8(%rsp)
  0x00007fe8f110f26a: mov    %rdi,(%rsp)
  0x00007fe8f110f26e: callq  0x00007fe8f10fbf60  ; OopMap{[136]=Oop rsi=Oop [184]=Oop [200]=Oop off=5363}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)
                                                ;   {runtime_call}
  0x00007fe8f110f273: jmpq   0x00007fe8f110ecd8
  0x00007fe8f110f278: lea    0xc0(%rsp),%rax
  0x00007fe8f110f280: mov    %rax,(%rsp)
  0x00007fe8f110f284: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f289: jmpq   0x00007fe8f110ed0f
  0x00007fe8f110f28e: lea    0xb0(%rsp),%rax
  0x00007fe8f110f296: mov    %rax,(%rsp)
  0x00007fe8f110f29a: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f29f: jmpq   0x00007fe8f110ed7c
  0x00007fe8f110f2a4: lea    0xb0(%rsp),%rax
  0x00007fe8f110f2ac: mov    %rax,(%rsp)
  0x00007fe8f110f2b0: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f2b5: jmpq   0x00007fe8f110ee63
  0x00007fe8f110f2ba: lea    0xb0(%rsp),%rax
  0x00007fe8f110f2c2: mov    %rax,(%rsp)
  0x00007fe8f110f2c6: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f2cb: jmpq   0x00007fe8f110eea9
  0x00007fe8f110f2d0: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f110f2da: mov    $0xa050f00,%eax
  0x00007fe8f110f2df: callq  0x00007fe8f10fdfe0  ; OopMap{[112]=Oop [136]=Oop [184]=Oop off=5476}
                                                ;*new  ; - java.io.BufferedReader::ensureOpen@7 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {runtime_call}
  0x00007fe8f110f2e4: jmpq   0x00007fe8f110eec8
  0x00007fe8f110f2e9: mov    %rdx,%rdx
  0x00007fe8f110f2ec: callq  0x00007fe8f10f9b20  ; OopMap{[112]=Oop [136]=Oop [184]=Oop off=5489}
                                                ;*new  ; - java.io.BufferedReader::ensureOpen@7 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {runtime_call}
  0x00007fe8f110f2f1: jmpq   0x00007fe8f110eed7
  0x00007fe8f110f2f6: lea    0xc0(%rsp),%rax
  0x00007fe8f110f2fe: mov    %rax,(%rsp)
  0x00007fe8f110f302: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f307: jmpq   0x00007fe8f110ef76
  0x00007fe8f110f30c: lea    0xc0(%rsp),%rax
  0x00007fe8f110f314: mov    %rax,(%rsp)
  0x00007fe8f110f318: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f31d: jmpq   0x00007fe8f110efdb
  0x00007fe8f110f322: lea    0xc0(%rsp),%rax
  0x00007fe8f110f32a: mov    %rax,(%rsp)
  0x00007fe8f110f32e: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f333: jmpq   0x00007fe8f110f04d
  0x00007fe8f110f338: lea    0xb0(%rsp),%rax
  0x00007fe8f110f340: mov    %rax,(%rsp)
  0x00007fe8f110f344: callq  0x00007fe8f10fc320  ;   {runtime_call}
  0x00007fe8f110f349: jmpq   0x00007fe8f110f0b2
  0x00007fe8f110f34e: mov    0x90(%rsp),%rdi
  0x00007fe8f110f356: jmpq   0x00007fe8f110efee
  0x00007fe8f110f35b: mov    0x7c(%rsp),%ebx
  0x00007fe8f110f35f: mov    0x80(%rsp),%rsi
  0x00007fe8f110f367: jmpq   0x00007fe8f110ef89
  0x00007fe8f110f36c: nop    
  0x00007fe8f110f36d: nop    
  0x00007fe8f110f36e: mov    0x2a8(%r15),%rax
  0x00007fe8f110f375: mov    $0x0,%r10
  0x00007fe8f110f37f: mov    %r10,0x2a8(%r15)
  0x00007fe8f110f386: mov    $0x0,%r10
  0x00007fe8f110f390: mov    %r10,0x2b0(%r15)
  0x00007fe8f110f397: add    $0xe0,%rsp
  0x00007fe8f110f39e: pop    %rbp
  0x00007fe8f110f39f: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f110f3a4: hlt    
  0x00007fe8f110f3a5: hlt    
  0x00007fe8f110f3a6: hlt    
  0x00007fe8f110f3a7: hlt    
  0x00007fe8f110f3a8: hlt    
  0x00007fe8f110f3a9: hlt    
  0x00007fe8f110f3aa: hlt    
  0x00007fe8f110f3ab: hlt    
  0x00007fe8f110f3ac: hlt    
  0x00007fe8f110f3ad: hlt    
  0x00007fe8f110f3ae: hlt    
  0x00007fe8f110f3af: hlt    
  0x00007fe8f110f3b0: hlt    
  0x00007fe8f110f3b1: hlt    
  0x00007fe8f110f3b2: hlt    
  0x00007fe8f110f3b3: hlt    
  0x00007fe8f110f3b4: hlt    
  0x00007fe8f110f3b5: hlt    
  0x00007fe8f110f3b6: hlt    
  0x00007fe8f110f3b7: hlt    
  0x00007fe8f110f3b8: hlt    
  0x00007fe8f110f3b9: hlt    
  0x00007fe8f110f3ba: hlt    
  0x00007fe8f110f3bb: hlt    
  0x00007fe8f110f3bc: hlt    
  0x00007fe8f110f3bd: hlt    
  0x00007fe8f110f3be: hlt    
  0x00007fe8f110f3bf: hlt    
[Stub Code]
  0x00007fe8f110f3c0: nop                       ;   {no_reloc}
  0x00007fe8f110f3c1: nop    
  0x00007fe8f110f3c2: nop    
  0x00007fe8f110f3c3: nop    
  0x00007fe8f110f3c4: nop    
  0x00007fe8f110f3c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110f3cf: jmpq   0x00007fe8f110f3cf  ;   {runtime_call}
  0x00007fe8f110f3d4: nop    
  0x00007fe8f110f3d5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110f3df: jmpq   0x00007fe8f110f3df  ;   {runtime_call}
  0x00007fe8f110f3e4: nop    
  0x00007fe8f110f3e5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110f3ef: jmpq   0x00007fe8f110f3ef  ;   {runtime_call}
  0x00007fe8f110f3f4: nop    
  0x00007fe8f110f3f5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110f3ff: jmpq   0x00007fe8f110f3ff  ;   {runtime_call}
  0x00007fe8f110f404: nop    
  0x00007fe8f110f405: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110f40f: jmpq   0x00007fe8f110f40f  ;   {runtime_call}
  0x00007fe8f110f414: nop    
  0x00007fe8f110f415: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110f41f: jmpq   0x00007fe8f110f41f  ;   {runtime_call}
  0x00007fe8f110f424: nop    
  0x00007fe8f110f425: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f110f42f: jmpq   0x00007fe8f110f42f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f110f434: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f110f439: mov    %rsp,-0x28(%rsp)
  0x00007fe8f110f43e: sub    $0x80,%rsp
  0x00007fe8f110f445: mov    %rax,0x78(%rsp)
  0x00007fe8f110f44a: mov    %rcx,0x70(%rsp)
  0x00007fe8f110f44f: mov    %rdx,0x68(%rsp)
  0x00007fe8f110f454: mov    %rbx,0x60(%rsp)
  0x00007fe8f110f459: mov    %rbp,0x50(%rsp)
  0x00007fe8f110f45e: mov    %rsi,0x48(%rsp)
  0x00007fe8f110f463: mov    %rdi,0x40(%rsp)
  0x00007fe8f110f468: mov    %r8,0x38(%rsp)
  0x00007fe8f110f46d: mov    %r9,0x30(%rsp)
  0x00007fe8f110f472: mov    %r10,0x28(%rsp)
  0x00007fe8f110f477: mov    %r11,0x20(%rsp)
  0x00007fe8f110f47c: mov    %r12,0x18(%rsp)
  0x00007fe8f110f481: mov    %r13,0x10(%rsp)
  0x00007fe8f110f486: mov    %r14,0x8(%rsp)
  0x00007fe8f110f48b: mov    %r15,(%rsp)
  0x00007fe8f110f48f: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f110f499: mov    $0x7fe8f110f439,%rsi  ;   {internal_word}
  0x00007fe8f110f4a3: mov    %rsp,%rdx
  0x00007fe8f110f4a6: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f110f4aa: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f110f4af: hlt    
[Deopt Handler Code]
  0x00007fe8f110f4b0: mov    $0x7fe8f110f4b0,%r10  ;   {section_word}
  0x00007fe8f110f4ba: push   %r10
  0x00007fe8f110f4bc: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f110f4c1: hlt    
  0x00007fe8f110f4c2: hlt    
  0x00007fe8f110f4c3: hlt    
  0x00007fe8f110f4c4: hlt    
  0x00007fe8f110f4c5: hlt    
  0x00007fe8f110f4c6: hlt    
  0x00007fe8f110f4c7: hlt    
Decoding compiled method 0x00007fe8f1110690:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = '[C'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x70]  (sp of caller)
  0x00007fe8f1110860: mov    0x8(%rsi),%r10d
  0x00007fe8f1110864: shl    $0x3,%r10
  0x00007fe8f1110868: cmp    %rax,%r10
  0x00007fe8f111086b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1110871: nopw   0x0(%rax,%rax,1)
  0x00007fe8f111087c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1110880: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1110887: push   %rbp
  0x00007fe8f1110888: sub    $0x60,%rsp
  0x00007fe8f111088c: mov    $0x7fe8ea6fdc60,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f1110896: mov    0xdc(%rdi),%ebx
  0x00007fe8f111089c: add    $0x8,%ebx
  0x00007fe8f111089f: mov    %ebx,0xdc(%rdi)
  0x00007fe8f11108a5: mov    $0x7fe8ea5001a0,%rdi  ;   {metadata({method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f11108af: and    $0x1ff8,%ebx
  0x00007fe8f11108b5: cmp    $0x0,%ebx
  0x00007fe8f11108b8: je     0x00007fe8f1110b86  ;*aload_0
                                                ; - java.lang.String::<init>@0 (line 190)

  0x00007fe8f11108be: mov    %rsi,%rdi
  0x00007fe8f11108c1: mov    $0x7fe8ea6fdc60,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f11108cb: addq   $0x1,0x108(%rbx)
  0x00007fe8f11108d3: mov    $0x7fe8ea670fd0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f11108dd: mov    0xdc(%rdi),%ebx
  0x00007fe8f11108e3: add    $0x8,%ebx
  0x00007fe8f11108e6: mov    %ebx,0xdc(%rdi)
  0x00007fe8f11108ec: mov    $0x7fe8ea4fd480,%rdi  ;   {metadata({method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object')}
  0x00007fe8f11108f6: and    $0x7ffff8,%ebx
  0x00007fe8f11108fc: cmp    $0x0,%ebx
  0x00007fe8f11108ff: je     0x00007fe8f1110b9d
  0x00007fe8f1110905: cmp    $0x0,%ecx
  0x00007fe8f1110908: mov    $0x7fe8ea6fdc60,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f1110912: mov    $0x118,%rbx
  0x00007fe8f111091c: jge    0x00007fe8f111092c
  0x00007fe8f1110922: mov    $0x128,%rbx
  0x00007fe8f111092c: mov    (%rdi,%rbx,1),%rax
  0x00007fe8f1110930: lea    0x1(%rax),%rax
  0x00007fe8f1110934: mov    %rax,(%rdi,%rbx,1)
  0x00007fe8f1110938: jl     0x00007fe8f1110b46  ;*ifge
                                                ; - java.lang.String::<init>@5 (line 191)

  0x00007fe8f111093e: cmp    $0x0,%r8d
  0x00007fe8f1110942: mov    $0x7fe8ea6fdc60,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f111094c: mov    $0x148,%rbx
  0x00007fe8f1110956: jg     0x00007fe8f1110966
  0x00007fe8f111095c: mov    $0x158,%rbx
  0x00007fe8f1110966: mov    (%rdi,%rbx,1),%rax
  0x00007fe8f111096a: lea    0x1(%rax),%rax
  0x00007fe8f111096e: mov    %rax,(%rdi,%rbx,1)
  0x00007fe8f1110972: jg     0x00007fe8f11109ed  ;*ifgt
                                                ; - java.lang.String::<init>@18 (line 194)

  0x00007fe8f1110978: cmp    $0x0,%r8d
  0x00007fe8f111097c: mov    $0x7fe8ea6fdc60,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f1110986: mov    $0x168,%rbx
  0x00007fe8f1110990: jge    0x00007fe8f11109a0
  0x00007fe8f1110996: mov    $0x178,%rbx
  0x00007fe8f11109a0: mov    (%rdi,%rbx,1),%rax
  0x00007fe8f11109a4: lea    0x1(%rax),%rax
  0x00007fe8f11109a8: mov    %rax,(%rdi,%rbx,1)
  0x00007fe8f11109ac: jl     0x00007fe8f1110b06  ;*ifge
                                                ; - java.lang.String::<init>@22 (line 195)

  0x00007fe8f11109b2: mov    0xc(%rdx),%edi     ;*arraylength
                                                ; - java.lang.String::<init>@36 (line 198)
                                                ; implicit exception: dispatches to 0x00007fe8f1110bb4
  0x00007fe8f11109b5: cmp    %edi,%ecx
  0x00007fe8f11109b7: mov    $0x7fe8ea6fdc60,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f11109c1: mov    $0x198,%rbx
  0x00007fe8f11109cb: jg     0x00007fe8f11109db
  0x00007fe8f11109d1: mov    $0x1a8,%rbx
  0x00007fe8f11109db: mov    (%rdi,%rbx,1),%rax
  0x00007fe8f11109df: lea    0x1(%rax),%rax
  0x00007fe8f11109e3: mov    %rax,(%rdi,%rbx,1)
  0x00007fe8f11109e7: jle    0x00007fe8f1110a82  ;*if_icmpgt
                                                ; - java.lang.String::<init>@37 (line 198)

  0x00007fe8f11109ed: mov    0xc(%rdx),%edi     ;*arraylength
                                                ; - java.lang.String::<init>@52 (line 204)
                                                ; implicit exception: dispatches to 0x00007fe8f1110bb9
  0x00007fe8f11109f0: sub    %r8d,%edi
  0x00007fe8f11109f3: cmp    %edi,%ecx
  0x00007fe8f11109f5: mov    $0x7fe8ea6fdc60,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f11109ff: mov    $0x1b8,%rbx
  0x00007fe8f1110a09: jle    0x00007fe8f1110a19
  0x00007fe8f1110a0f: mov    $0x1c8,%rbx
  0x00007fe8f1110a19: mov    (%rdi,%rbx,1),%rax
  0x00007fe8f1110a1d: lea    0x1(%rax),%rax
  0x00007fe8f1110a21: mov    %rax,(%rdi,%rbx,1)
  0x00007fe8f1110a25: jg     0x00007fe8f1110abc  ;*if_icmple
                                                ; - java.lang.String::<init>@55 (line 204)

  0x00007fe8f1110a2b: mov    %rsi,0x38(%rsp)
  0x00007fe8f1110a30: mov    $0x7fe8ea6fdc60,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f1110a3a: addq   $0x1,0x1e8(%rdi)
  0x00007fe8f1110a42: add    %ecx,%r8d
  0x00007fe8f1110a45: mov    %rdx,%rsi
  0x00007fe8f1110a48: mov    %rcx,%rdx
  0x00007fe8f1110a4b: mov    %r8,%rcx           ;*invokestatic copyOfRange
                                                ; - java.lang.String::<init>@75 (line 207)

  0x00007fe8f1110a4e: nop    
  0x00007fe8f1110a4f: callq  0x00007fe8f1046420  ; OopMap{[56]=Oop off=500}
                                                ;*invokestatic copyOfRange
                                                ; - java.lang.String::<init>@75 (line 207)
                                                ;   {static_call}
  0x00007fe8f1110a54: mov    0x38(%rsp),%rsi
  0x00007fe8f1110a59: mov    %rax,%r10
  0x00007fe8f1110a5c: shr    $0x3,%r10
  0x00007fe8f1110a60: mov    %r10d,0xc(%rsi)
  0x00007fe8f1110a64: shr    $0x9,%rsi
  0x00007fe8f1110a68: mov    $0x7fe9014ff000,%rdx
  0x00007fe8f1110a72: movb   $0x0,(%rsi,%rdx,1)  ;*putfield value
                                                ; - java.lang.String::<init>@78 (line 207)

  0x00007fe8f1110a76: add    $0x60,%rsp
  0x00007fe8f1110a7a: pop    %rbp
  0x00007fe8f1110a7b: test   %eax,0x1755667f(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1110a81: retq                      ;*return
                                                ; - java.lang.String::<init>@81 (line 208)

  0x00007fe8f1110a82: mov    $0x781e0a620,%rdx  ;   {oop("")}
  0x00007fe8f1110a8c: mov    0xc(%rdx),%edx     ; implicit exception: dispatches to 0x00007fe8f1110bbe
  0x00007fe8f1110a8f: shl    $0x3,%rdx          ;*getfield value
                                                ; - java.lang.String::<init>@43 (line 199)

  0x00007fe8f1110a93: mov    %rdx,%r10
  0x00007fe8f1110a96: shr    $0x3,%r10
  0x00007fe8f1110a9a: mov    %r10d,0xc(%rsi)
  0x00007fe8f1110a9e: shr    $0x9,%rsi
  0x00007fe8f1110aa2: mov    $0x7fe9014ff000,%rdx
  0x00007fe8f1110aac: movb   $0x0,(%rsi,%rdx,1)  ;*putfield value
                                                ; - java.lang.String::<init>@46 (line 199)

  0x00007fe8f1110ab0: add    $0x60,%rsp
  0x00007fe8f1110ab4: pop    %rbp
  0x00007fe8f1110ab5: test   %eax,0x17556645(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1110abb: retq                      ;*return
                                                ; - java.lang.String::<init>@49 (line 200)

  0x00007fe8f1110abc: nopl   0x0(%rax)
  0x00007fe8f1110ac0: jmpq   0x00007fe8f1110bd2  ;   {no_reloc}
  0x00007fe8f1110ac5: add    %al,(%rax)
  0x00007fe8f1110ac7: add    %al,(%rax)
  0x00007fe8f1110ac9: add    %ch,%cl
  0x00007fe8f1110acb: or     $0x48000001,%eax   ;*new  ; - java.lang.String::<init>@58 (line 205)

  0x00007fe8f1110ad0: mov    %eax,%edx
  0x00007fe8f1110ad2: mov    $0x7fe8ea6fdc60,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f1110adc: addq   $0x1,0x1d8(%rsi)
  0x00007fe8f1110ae4: add    %ecx,%r8d
  0x00007fe8f1110ae7: mov    %r8,%rdx
  0x00007fe8f1110aea: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::<init>@65 (line 205)

  0x00007fe8f1110aed: mov    %rax,0x40(%rsp)
  0x00007fe8f1110af2: nop    
  0x00007fe8f1110af3: nop    
  0x00007fe8f1110af4: nop    
  0x00007fe8f1110af5: nop    
  0x00007fe8f1110af6: nop    
  0x00007fe8f1110af7: callq  0x00007fe8f1046020  ; OopMap{[64]=Oop off=668}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::<init>@65 (line 205)
                                                ;   {optimized virtual_call}
  0x00007fe8f1110afc: mov    0x40(%rsp),%rax
  0x00007fe8f1110b01: jmpq   0x00007fe8f1110c60  ;*athrow
                                                ; - java.lang.String::<init>@68 (line 205)

  0x00007fe8f1110b06: xchg   %ax,%ax
  0x00007fe8f1110b08: jmpq   0x00007fe8f1110bf8  ;   {no_reloc}
  0x00007fe8f1110b0d: add    %al,(%rax)
  0x00007fe8f1110b0f: add    %al,(%rax)
  0x00007fe8f1110b11: add    %ch,%cl
  0x00007fe8f1110b13: jmp    0x00007fe8f1110b15
  0x00007fe8f1110b15: add    %al,(%rax)         ;*new  ; - java.lang.String::<init>@25 (line 196)

  0x00007fe8f1110b17: mov    %rax,%rdx
  0x00007fe8f1110b1a: mov    $0x7fe8ea6fdc60,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f1110b24: addq   $0x1,0x188(%rsi)
  0x00007fe8f1110b2c: mov    %r8,%rdx
  0x00007fe8f1110b2f: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::<init>@30 (line 196)

  0x00007fe8f1110b32: mov    %rax,0x48(%rsp)
  0x00007fe8f1110b37: callq  0x00007fe8f1046020  ; OopMap{[72]=Oop off=732}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::<init>@30 (line 196)
                                                ;   {optimized virtual_call}
  0x00007fe8f1110b3c: mov    0x48(%rsp),%rax
  0x00007fe8f1110b41: jmpq   0x00007fe8f1110c60  ;*athrow
                                                ; - java.lang.String::<init>@33 (line 196)

  0x00007fe8f1110b46: xchg   %ax,%ax
  0x00007fe8f1110b48: jmpq   0x00007fe8f1110c1e  ;   {no_reloc}
  0x00007fe8f1110b4d: add    %al,(%rax)
  0x00007fe8f1110b4f: add    %al,(%rax)
  0x00007fe8f1110b51: add    %ch,%cl
  0x00007fe8f1110b53: roll   (%rax)
  0x00007fe8f1110b55: add    %al,(%rax)         ;*new  ; - java.lang.String::<init>@8 (line 192)

  0x00007fe8f1110b57: mov    %rax,%rdx
  0x00007fe8f1110b5a: mov    $0x7fe8ea6fdc60,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5001a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007fe8f1110b64: addq   $0x1,0x138(%rsi)
  0x00007fe8f1110b6c: mov    %rcx,%rdx
  0x00007fe8f1110b6f: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::<init>@13 (line 192)

  0x00007fe8f1110b72: mov    %rax,0x50(%rsp)
  0x00007fe8f1110b77: callq  0x00007fe8f1046020  ; OopMap{[80]=Oop off=796}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::<init>@13 (line 192)
                                                ;   {optimized virtual_call}
  0x00007fe8f1110b7c: mov    0x50(%rsp),%rax
  0x00007fe8f1110b81: jmpq   0x00007fe8f1110c60
  0x00007fe8f1110b86: mov    %rdi,0x8(%rsp)
  0x00007fe8f1110b8b: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1110b93: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop rdx=Oop off=824}
                                                ;*synchronization entry
                                                ; - java.lang.String::<init>@-1 (line 190)
                                                ;   {runtime_call}
  0x00007fe8f1110b98: jmpq   0x00007fe8f11108be
  0x00007fe8f1110b9d: mov    %rdi,0x8(%rsp)
  0x00007fe8f1110ba2: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1110baa: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop rdx=Oop off=847}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - java.lang.String::<init>@1 (line 190)
                                                ;   {runtime_call}
  0x00007fe8f1110baf: jmpq   0x00007fe8f1110905
  0x00007fe8f1110bb4: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop rdx=Oop off=857}
                                                ;*arraylength
                                                ; - java.lang.String::<init>@36 (line 198)
                                                ;   {runtime_call}
  0x00007fe8f1110bb9: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop rdx=Oop off=862}
                                                ;*arraylength
                                                ; - java.lang.String::<init>@52 (line 204)
                                                ;   {runtime_call}
  0x00007fe8f1110bbe: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop off=867}
                                                ;*getfield value
                                                ; - java.lang.String::<init>@43 (line 199)
                                                ;   {runtime_call}
  0x00007fe8f1110bc3: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f1110bcd: mov    $0xa050f00,%eax
  0x00007fe8f1110bd2: callq  0x00007fe8f10fdfe0  ; OopMap{off=887}
                                                ;*new  ; - java.lang.String::<init>@58 (line 205)
                                                ;   {runtime_call}
  0x00007fe8f1110bd7: jmpq   0x00007fe8f1110ac0
  0x00007fe8f1110bdc: mov    %rdx,%rdx
  0x00007fe8f1110bdf: callq  0x00007fe8f10f9b20  ; OopMap{off=900}
                                                ;*new  ; - java.lang.String::<init>@58 (line 205)
                                                ;   {runtime_call}
  0x00007fe8f1110be4: jmpq   0x00007fe8f1110acf
  0x00007fe8f1110be9: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f1110bf3: mov    $0xa050f00,%eax
  0x00007fe8f1110bf8: callq  0x00007fe8f10fdfe0  ; OopMap{off=925}
                                                ;*new  ; - java.lang.String::<init>@25 (line 196)
                                                ;   {runtime_call}
  0x00007fe8f1110bfd: jmpq   0x00007fe8f1110b08
  0x00007fe8f1110c02: mov    %rdx,%rdx
  0x00007fe8f1110c05: callq  0x00007fe8f10f9b20  ; OopMap{off=938}
                                                ;*new  ; - java.lang.String::<init>@25 (line 196)
                                                ;   {runtime_call}
  0x00007fe8f1110c0a: jmpq   0x00007fe8f1110b17
  0x00007fe8f1110c0f: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f1110c19: mov    $0xa050f00,%eax
  0x00007fe8f1110c1e: callq  0x00007fe8f10fdfe0  ; OopMap{off=963}
                                                ;*new  ; - java.lang.String::<init>@8 (line 192)
                                                ;   {runtime_call}
  0x00007fe8f1110c23: jmpq   0x00007fe8f1110b48
  0x00007fe8f1110c28: mov    %rdx,%rdx
  0x00007fe8f1110c2b: callq  0x00007fe8f10f9b20  ; OopMap{off=976}
                                                ;*new  ; - java.lang.String::<init>@8 (line 192)
                                                ;   {runtime_call}
  0x00007fe8f1110c30: jmpq   0x00007fe8f1110b57
  0x00007fe8f1110c35: nop    
  0x00007fe8f1110c36: nop    
  0x00007fe8f1110c37: mov    0x2a8(%r15),%rax
  0x00007fe8f1110c3e: mov    $0x0,%r10
  0x00007fe8f1110c48: mov    %r10,0x2a8(%r15)
  0x00007fe8f1110c4f: mov    $0x0,%r10
  0x00007fe8f1110c59: mov    %r10,0x2b0(%r15)
  0x00007fe8f1110c60: add    $0x60,%rsp
  0x00007fe8f1110c64: pop    %rbp
  0x00007fe8f1110c65: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1110c6a: hlt    
  0x00007fe8f1110c6b: hlt    
  0x00007fe8f1110c6c: hlt    
  0x00007fe8f1110c6d: hlt    
  0x00007fe8f1110c6e: hlt    
  0x00007fe8f1110c6f: hlt    
  0x00007fe8f1110c70: hlt    
  0x00007fe8f1110c71: hlt    
  0x00007fe8f1110c72: hlt    
  0x00007fe8f1110c73: hlt    
  0x00007fe8f1110c74: hlt    
  0x00007fe8f1110c75: hlt    
  0x00007fe8f1110c76: hlt    
  0x00007fe8f1110c77: hlt    
  0x00007fe8f1110c78: hlt    
  0x00007fe8f1110c79: hlt    
  0x00007fe8f1110c7a: hlt    
  0x00007fe8f1110c7b: hlt    
  0x00007fe8f1110c7c: hlt    
  0x00007fe8f1110c7d: hlt    
  0x00007fe8f1110c7e: hlt    
  0x00007fe8f1110c7f: hlt    
[Stub Code]
  0x00007fe8f1110c80: nop                       ;   {no_reloc}
  0x00007fe8f1110c81: nop    
  0x00007fe8f1110c82: nop    
  0x00007fe8f1110c83: nop    
  0x00007fe8f1110c84: nop    
  0x00007fe8f1110c85: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1110c8f: jmpq   0x00007fe8f1110c8f  ;   {runtime_call}
  0x00007fe8f1110c94: nop    
  0x00007fe8f1110c95: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1110c9f: jmpq   0x00007fe8f1110c9f  ;   {runtime_call}
  0x00007fe8f1110ca4: nop    
  0x00007fe8f1110ca5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1110caf: jmpq   0x00007fe8f1110caf  ;   {runtime_call}
  0x00007fe8f1110cb4: nop    
  0x00007fe8f1110cb5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1110cbf: jmpq   0x00007fe8f1110cbf  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f1110cc4: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f1110cc9: mov    %rsp,-0x28(%rsp)
  0x00007fe8f1110cce: sub    $0x80,%rsp
  0x00007fe8f1110cd5: mov    %rax,0x78(%rsp)
  0x00007fe8f1110cda: mov    %rcx,0x70(%rsp)
  0x00007fe8f1110cdf: mov    %rdx,0x68(%rsp)
  0x00007fe8f1110ce4: mov    %rbx,0x60(%rsp)
  0x00007fe8f1110ce9: mov    %rbp,0x50(%rsp)
  0x00007fe8f1110cee: mov    %rsi,0x48(%rsp)
  0x00007fe8f1110cf3: mov    %rdi,0x40(%rsp)
  0x00007fe8f1110cf8: mov    %r8,0x38(%rsp)
  0x00007fe8f1110cfd: mov    %r9,0x30(%rsp)
  0x00007fe8f1110d02: mov    %r10,0x28(%rsp)
  0x00007fe8f1110d07: mov    %r11,0x20(%rsp)
  0x00007fe8f1110d0c: mov    %r12,0x18(%rsp)
  0x00007fe8f1110d11: mov    %r13,0x10(%rsp)
  0x00007fe8f1110d16: mov    %r14,0x8(%rsp)
  0x00007fe8f1110d1b: mov    %r15,(%rsp)
  0x00007fe8f1110d1f: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1110d29: mov    $0x7fe8f1110cc9,%rsi  ;   {internal_word}
  0x00007fe8f1110d33: mov    %rsp,%rdx
  0x00007fe8f1110d36: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1110d3a: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1110d3f: hlt    
[Deopt Handler Code]
  0x00007fe8f1110d40: mov    $0x7fe8f1110d40,%r10  ;   {section_word}
  0x00007fe8f1110d4a: push   %r10
  0x00007fe8f1110d4c: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1110d51: hlt    
  0x00007fe8f1110d52: hlt    
  0x00007fe8f1110d53: hlt    
  0x00007fe8f1110d54: hlt    
  0x00007fe8f1110d55: hlt    
  0x00007fe8f1110d56: hlt    
  0x00007fe8f1110d57: hlt    
Decoding compiled method 0x00007fe8f1111350:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  # parm2:    r8:r8     = '[C'
  # parm3:    r9        = int
  #           [sp+0x70]  (sp of caller)
  0x00007fe8f1111500: mov    0x8(%rsi),%r10d
  0x00007fe8f1111504: shl    $0x3,%r10
  0x00007fe8f1111508: cmp    %rax,%r10
  0x00007fe8f111150b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1111511: nopw   0x0(%rax,%rax,1)
  0x00007fe8f111151c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1111520: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1111527: push   %rbp
  0x00007fe8f1111528: sub    $0x60,%rsp
  0x00007fe8f111152c: mov    %rdx,%rdi
  0x00007fe8f111152f: mov    $0x7fe8ea73a360,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f1111539: mov    0xdc(%rdx),%ebx
  0x00007fe8f111153f: add    $0x8,%ebx
  0x00007fe8f1111542: mov    %ebx,0xdc(%rdx)
  0x00007fe8f1111548: mov    $0x7fe8ea501208,%rdx  ;   {metadata({method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f1111552: and    $0x1ff8,%ebx
  0x00007fe8f1111558: cmp    $0x0,%ebx
  0x00007fe8f111155b: je     0x00007fe8f1111786  ;*iload_1
                                                ; - java.lang.String::getChars@0 (line 817)

  0x00007fe8f1111561: cmp    $0x0,%edi
  0x00007fe8f1111564: mov    $0x7fe8ea73a360,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f111156e: mov    $0x108,%rbx
  0x00007fe8f1111578: jge    0x00007fe8f1111588
  0x00007fe8f111157e: mov    $0x118,%rbx
  0x00007fe8f1111588: mov    (%rdx,%rbx,1),%rax
  0x00007fe8f111158c: lea    0x1(%rax),%rax
  0x00007fe8f1111590: mov    %rax,(%rdx,%rbx,1)
  0x00007fe8f1111594: jl     0x00007fe8f1111746  ;*ifge
                                                ; - java.lang.String::getChars@1 (line 817)

  0x00007fe8f111159a: mov    0xc(%rsi),%esi
  0x00007fe8f111159d: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::getChars@15 (line 820)

  0x00007fe8f11115a1: mov    0xc(%rsi),%edx     ;*arraylength
                                                ; - java.lang.String::getChars@18 (line 820)
                                                ; implicit exception: dispatches to 0x00007fe8f111179d
  0x00007fe8f11115a4: cmp    %edx,%ecx
  0x00007fe8f11115a6: mov    $0x7fe8ea73a360,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f11115b0: mov    $0x138,%rbx
  0x00007fe8f11115ba: jle    0x00007fe8f11115ca
  0x00007fe8f11115c0: mov    $0x148,%rbx
  0x00007fe8f11115ca: mov    (%rdx,%rbx,1),%rax
  0x00007fe8f11115ce: lea    0x1(%rax),%rax
  0x00007fe8f11115d2: mov    %rax,(%rdx,%rbx,1)
  0x00007fe8f11115d6: jg     0x00007fe8f1111706  ;*if_icmple
                                                ; - java.lang.String::getChars@19 (line 820)

  0x00007fe8f11115dc: cmp    %ecx,%edi
  0x00007fe8f11115de: mov    $0x7fe8ea73a360,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f11115e8: mov    $0x168,%rbx
  0x00007fe8f11115f2: jle    0x00007fe8f1111602
  0x00007fe8f11115f8: mov    $0x178,%rbx
  0x00007fe8f1111602: mov    (%rdx,%rbx,1),%rax
  0x00007fe8f1111606: lea    0x1(%rax),%rax
  0x00007fe8f111160a: mov    %rax,(%rdx,%rbx,1)
  0x00007fe8f111160e: jg     0x00007fe8f11116bc  ;*if_icmple
                                                ; - java.lang.String::getChars@33 (line 823)

  0x00007fe8f1111614: mov    $0x7fe8ea73a360,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f111161e: addq   $0x1,0x198(%rdx)
  0x00007fe8f1111626: mov    %rcx,%rbx
  0x00007fe8f1111629: sub    %edi,%ebx
  0x00007fe8f111162b: mov    %rdi,%rdx
  0x00007fe8f111162e: mov    %r8,%rcx
  0x00007fe8f1111631: mov    %r9,%r8
  0x00007fe8f1111634: mov    %rbx,%r9
  0x00007fe8f1111637: test   %rcx,%rcx
  0x00007fe8f111163a: je     0x00007fe8f11117a2
  0x00007fe8f1111640: test   %edx,%edx
  0x00007fe8f1111642: jl     0x00007fe8f11117a2
  0x00007fe8f1111648: test   %r8d,%r8d
  0x00007fe8f111164b: jl     0x00007fe8f11117a2
  0x00007fe8f1111651: lea    (%rdx,%r9,1),%rdi
  0x00007fe8f1111655: cmp    0xc(%rsi),%edi
  0x00007fe8f1111658: ja     0x00007fe8f11117a2
  0x00007fe8f111165e: lea    (%r8,%r9,1),%rdi
  0x00007fe8f1111662: cmp    0xc(%rcx),%edi
  0x00007fe8f1111665: ja     0x00007fe8f11117a2
  0x00007fe8f111166b: test   %r9d,%r9d
  0x00007fe8f111166e: jl     0x00007fe8f11117a2
  0x00007fe8f1111674: je     0x00007fe8f11116b0
  0x00007fe8f111167a: movslq %edx,%rdx
  0x00007fe8f111167d: movslq %r8d,%r8
  0x00007fe8f1111680: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007fe8f1111685: lea    0x10(%rcx,%r8,2),%rsi
  0x00007fe8f111168a: mov    %r9,%rdx
  0x00007fe8f111168d: test   $0xf,%esp
  0x00007fe8f1111693: je     0x00007fe8f11116ab
  0x00007fe8f1111699: sub    $0x8,%rsp
  0x00007fe8f111169d: callq  Stub::jshort_arraycopy  ;   {runtime_call}
  0x00007fe8f11116a2: add    $0x8,%rsp
  0x00007fe8f11116a6: jmpq   0x00007fe8f11116b0
  0x00007fe8f11116ab: callq  Stub::jshort_arraycopy  ;*invokestatic arraycopy
                                                ; - java.lang.String::getChars@58 (line 826)
                                                ;   {runtime_call}
  0x00007fe8f11116b0: add    $0x60,%rsp
  0x00007fe8f11116b4: pop    %rbp
  0x00007fe8f11116b5: test   %eax,0x17555a45(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11116bb: retq                      ;*return
                                                ; - java.lang.String::getChars@61 (line 827)

  0x00007fe8f11116bc: nopl   0x0(%rax)
  0x00007fe8f11116c0: jmpq   0x00007fe8f11117c0  ;   {no_reloc}
  0x00007fe8f11116c5: add    %al,(%rax)
  0x00007fe8f11116c7: add    %al,(%rax)
  0x00007fe8f11116c9: add    %ch,%cl
  0x00007fe8f11116cb: sti    
  0x00007fe8f11116cc: add    %al,(%rax)
  0x00007fe8f11116ce: add    %cl,-0x75(%rax)    ;*new  ; - java.lang.String::getChars@36 (line 824)

  0x00007fe8f11116d1: rorb   -0x42(%rax)        ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f11116d4: (bad)  
  0x00007fe8f11116d5: mov    %eax,0x834800007fe8ea73
  0x00007fe8f11116de: xchg   %cl,0x1000001(%rax)
  0x00007fe8f11116e4: sub    %edi,%ecx
  0x00007fe8f11116e6: mov    %rcx,%rdx
  0x00007fe8f11116e9: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::getChars@43 (line 824)

  0x00007fe8f11116ec: mov    %rax,0x38(%rsp)
  0x00007fe8f11116f1: nop    
  0x00007fe8f11116f2: nop    
  0x00007fe8f11116f3: nop    
  0x00007fe8f11116f4: nop    
  0x00007fe8f11116f5: nop    
  0x00007fe8f11116f6: nop    
  0x00007fe8f11116f7: callq  0x00007fe8f1046020  ; OopMap{[56]=Oop off=508}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::getChars@43 (line 824)
                                                ;   {optimized virtual_call}
  0x00007fe8f11116fc: mov    0x38(%rsp),%rax
  0x00007fe8f1111701: jmpq   0x00007fe8f111184e  ;*athrow
                                                ; - java.lang.String::getChars@46 (line 824)

  0x00007fe8f1111706: xchg   %ax,%ax
  0x00007fe8f1111708: jmpq   0x00007fe8f11117e6  ;   {no_reloc}
  0x00007fe8f111170d: add    %al,(%rax)
  0x00007fe8f111170f: add    %al,(%rax)
  0x00007fe8f1111711: add    %ch,%cl
  0x00007fe8f1111713: flds   (%rax)
  0x00007fe8f1111715: add    %al,(%rax)         ;*new  ; - java.lang.String::getChars@22 (line 821)

  0x00007fe8f1111717: mov    %rax,%rdx
  0x00007fe8f111171a: mov    $0x7fe8ea73a360,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f1111724: addq   $0x1,0x158(%rsi)
  0x00007fe8f111172c: mov    %rcx,%rdx
  0x00007fe8f111172f: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::getChars@27 (line 821)

  0x00007fe8f1111732: mov    %rax,0x40(%rsp)
  0x00007fe8f1111737: callq  0x00007fe8f1046020  ; OopMap{[64]=Oop off=572}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::getChars@27 (line 821)
                                                ;   {optimized virtual_call}
  0x00007fe8f111173c: mov    0x40(%rsp),%rax
  0x00007fe8f1111741: jmpq   0x00007fe8f111184e  ;*athrow
                                                ; - java.lang.String::getChars@30 (line 821)

  0x00007fe8f1111746: xchg   %ax,%ax
  0x00007fe8f1111748: jmpq   0x00007fe8f111180c  ;   {no_reloc}
  0x00007fe8f111174d: add    %al,(%rax)
  0x00007fe8f111174f: add    %al,(%rax)
  0x00007fe8f1111751: add    %ch,%cl
  0x00007fe8f1111753: mov    $0x48000000,%edi   ;*new  ; - java.lang.String::getChars@4 (line 818)

  0x00007fe8f1111758: mov    %eax,%edx
  0x00007fe8f111175a: mov    $0x7fe8ea73a360,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea501208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007fe8f1111764: addq   $0x1,0x128(%rsi)
  0x00007fe8f111176c: mov    %rdi,%rdx
  0x00007fe8f111176f: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::getChars@9 (line 818)

  0x00007fe8f1111772: mov    %rax,0x48(%rsp)
  0x00007fe8f1111777: callq  0x00007fe8f1046020  ; OopMap{[72]=Oop off=636}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::getChars@9 (line 818)
                                                ;   {optimized virtual_call}
  0x00007fe8f111177c: mov    0x48(%rsp),%rax
  0x00007fe8f1111781: jmpq   0x00007fe8f111184e
  0x00007fe8f1111786: mov    %rdx,0x8(%rsp)
  0x00007fe8f111178b: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1111793: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop r8=Oop off=664}
                                                ;*synchronization entry
                                                ; - java.lang.String::getChars@-1 (line 817)
                                                ;   {runtime_call}
  0x00007fe8f1111798: jmpq   0x00007fe8f1111561
  0x00007fe8f111179d: callq  0x00007fe8f10f9680  ; OopMap{r8=Oop rsi=Oop off=674}
                                                ;*arraylength
                                                ; - java.lang.String::getChars@18 (line 820)
                                                ;   {runtime_call}
  0x00007fe8f11117a2: nop    
  0x00007fe8f11117a3: nop    
  0x00007fe8f11117a4: nop    
  0x00007fe8f11117a5: nop    
  0x00007fe8f11117a6: nop    
  0x00007fe8f11117a7: callq  0x00007fe8f1046420  ; OopMap{off=684}
                                                ;*invokestatic arraycopy
                                                ; - java.lang.String::getChars@58 (line 826)
                                                ;   {static_call}
  0x00007fe8f11117ac: jmpq   0x00007fe8f11116b0
  0x00007fe8f11117b1: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f11117bb: mov    $0xa050f00,%eax
  0x00007fe8f11117c0: callq  0x00007fe8f10fdfe0  ; OopMap{off=709}
                                                ;*new  ; - java.lang.String::getChars@36 (line 824)
                                                ;   {runtime_call}
  0x00007fe8f11117c5: jmpq   0x00007fe8f11116c0
  0x00007fe8f11117ca: mov    %rdx,%rdx
  0x00007fe8f11117cd: callq  0x00007fe8f10f9b20  ; OopMap{off=722}
                                                ;*new  ; - java.lang.String::getChars@36 (line 824)
                                                ;   {runtime_call}
  0x00007fe8f11117d2: jmpq   0x00007fe8f11116cf
  0x00007fe8f11117d7: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f11117e1: mov    $0xa050f00,%eax
  0x00007fe8f11117e6: callq  0x00007fe8f10fdfe0  ; OopMap{off=747}
                                                ;*new  ; - java.lang.String::getChars@22 (line 821)
                                                ;   {runtime_call}
  0x00007fe8f11117eb: jmpq   0x00007fe8f1111708
  0x00007fe8f11117f0: mov    %rdx,%rdx
  0x00007fe8f11117f3: callq  0x00007fe8f10f9b20  ; OopMap{off=760}
                                                ;*new  ; - java.lang.String::getChars@22 (line 821)
                                                ;   {runtime_call}
  0x00007fe8f11117f8: jmpq   0x00007fe8f1111717
  0x00007fe8f11117fd: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f1111807: mov    $0xa050f00,%eax
  0x00007fe8f111180c: callq  0x00007fe8f10fdfe0  ; OopMap{off=785}
                                                ;*new  ; - java.lang.String::getChars@4 (line 818)
                                                ;   {runtime_call}
  0x00007fe8f1111811: jmpq   0x00007fe8f1111748
  0x00007fe8f1111816: mov    %rdx,%rdx
  0x00007fe8f1111819: callq  0x00007fe8f10f9b20  ; OopMap{off=798}
                                                ;*new  ; - java.lang.String::getChars@4 (line 818)
                                                ;   {runtime_call}
  0x00007fe8f111181e: jmpq   0x00007fe8f1111757
  0x00007fe8f1111823: nop    
  0x00007fe8f1111824: nop    
  0x00007fe8f1111825: mov    0x2a8(%r15),%rax
  0x00007fe8f111182c: mov    $0x0,%r10
  0x00007fe8f1111836: mov    %r10,0x2a8(%r15)
  0x00007fe8f111183d: mov    $0x0,%r10
  0x00007fe8f1111847: mov    %r10,0x2b0(%r15)
  0x00007fe8f111184e: add    $0x60,%rsp
  0x00007fe8f1111852: pop    %rbp
  0x00007fe8f1111853: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1111858: hlt    
  0x00007fe8f1111859: hlt    
  0x00007fe8f111185a: hlt    
  0x00007fe8f111185b: hlt    
  0x00007fe8f111185c: hlt    
  0x00007fe8f111185d: hlt    
  0x00007fe8f111185e: hlt    
  0x00007fe8f111185f: hlt    
[Stub Code]
  0x00007fe8f1111860: nop                       ;   {no_reloc}
  0x00007fe8f1111861: nop    
  0x00007fe8f1111862: nop    
  0x00007fe8f1111863: nop    
  0x00007fe8f1111864: nop    
  0x00007fe8f1111865: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111186f: jmpq   0x00007fe8f111186f  ;   {runtime_call}
  0x00007fe8f1111874: nop    
  0x00007fe8f1111875: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111187f: jmpq   0x00007fe8f111187f  ;   {runtime_call}
  0x00007fe8f1111884: nop    
  0x00007fe8f1111885: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111188f: jmpq   0x00007fe8f111188f  ;   {runtime_call}
  0x00007fe8f1111894: nop    
  0x00007fe8f1111895: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111189f: jmpq   0x00007fe8f111189f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f11118a4: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f11118a9: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11118ae: sub    $0x80,%rsp
  0x00007fe8f11118b5: mov    %rax,0x78(%rsp)
  0x00007fe8f11118ba: mov    %rcx,0x70(%rsp)
  0x00007fe8f11118bf: mov    %rdx,0x68(%rsp)
  0x00007fe8f11118c4: mov    %rbx,0x60(%rsp)
  0x00007fe8f11118c9: mov    %rbp,0x50(%rsp)
  0x00007fe8f11118ce: mov    %rsi,0x48(%rsp)
  0x00007fe8f11118d3: mov    %rdi,0x40(%rsp)
  0x00007fe8f11118d8: mov    %r8,0x38(%rsp)
  0x00007fe8f11118dd: mov    %r9,0x30(%rsp)
  0x00007fe8f11118e2: mov    %r10,0x28(%rsp)
  0x00007fe8f11118e7: mov    %r11,0x20(%rsp)
  0x00007fe8f11118ec: mov    %r12,0x18(%rsp)
  0x00007fe8f11118f1: mov    %r13,0x10(%rsp)
  0x00007fe8f11118f6: mov    %r14,0x8(%rsp)
  0x00007fe8f11118fb: mov    %r15,(%rsp)
  0x00007fe8f11118ff: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1111909: mov    $0x7fe8f11118a9,%rsi  ;   {internal_word}
  0x00007fe8f1111913: mov    %rsp,%rdx
  0x00007fe8f1111916: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f111191a: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f111191f: hlt    
[Deopt Handler Code]
  0x00007fe8f1111920: mov    $0x7fe8f1111920,%r10  ;   {section_word}
  0x00007fe8f111192a: push   %r10
  0x00007fe8f111192c: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1111931: hlt    
  0x00007fe8f1111932: hlt    
  0x00007fe8f1111933: hlt    
  0x00007fe8f1111934: hlt    
  0x00007fe8f1111935: hlt    
  0x00007fe8f1111936: hlt    
  0x00007fe8f1111937: hlt    
Decoding compiled method 0x00007fe8f1111c50:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x80]  (sp of caller)
  0x00007fe8f1111e00: mov    0x8(%rsi),%r10d
  0x00007fe8f1111e04: shl    $0x3,%r10
  0x00007fe8f1111e08: cmp    %rax,%r10
  0x00007fe8f1111e0b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1111e11: nopw   0x0(%rax,%rax,1)
  0x00007fe8f1111e1c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1111e20: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1111e27: push   %rbp
  0x00007fe8f1111e28: sub    $0x70,%rsp
  0x00007fe8f1111e2c: mov    %rsi,0x48(%rsp)
  0x00007fe8f1111e31: mov    $0x7fe8ea6fc8a0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111e3b: mov    0xdc(%rdi),%ebx
  0x00007fe8f1111e41: add    $0x8,%ebx
  0x00007fe8f1111e44: mov    %ebx,0xdc(%rdi)
  0x00007fe8f1111e4a: mov    $0x7fe8ea571dd0,%rdi  ;   {metadata({method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111e54: and    $0x1ff8,%ebx
  0x00007fe8f1111e5a: cmp    $0x0,%ebx
  0x00007fe8f1111e5d: je     0x00007fe8f11121b0  ;*aload_1
                                                ; - java.lang.AbstractStringBuilder::append@0 (line 418)

  0x00007fe8f1111e63: cmp    $0x0,%rdx
  0x00007fe8f1111e67: mov    $0x7fe8ea6fc8a0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111e71: mov    $0x108,%rbx
  0x00007fe8f1111e7b: jne    0x00007fe8f1111e8b
  0x00007fe8f1111e81: mov    $0x118,%rbx
  0x00007fe8f1111e8b: mov    (%rdi,%rbx,1),%rax
  0x00007fe8f1111e8f: lea    0x1(%rax),%rax
  0x00007fe8f1111e93: mov    %rax,(%rdi,%rbx,1)
  0x00007fe8f1111e97: je     0x00007fe8f111218a  ;*ifnonnull
                                                ; - java.lang.AbstractStringBuilder::append@1 (line 418)

  0x00007fe8f1111e9d: cmp    (%rdx),%rax        ;*invokevirtual length
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ; implicit exception: dispatches to 0x00007fe8f11121c7
  0x00007fe8f1111ea0: mov    %rdx,%rdi
  0x00007fe8f1111ea3: mov    $0x7fe8ea6fc8a0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111ead: mov    0x8(%rdi),%edi
  0x00007fe8f1111eb0: shl    $0x3,%rdi
  0x00007fe8f1111eb4: cmp    0x140(%rbx),%rdi
  0x00007fe8f1111ebb: jne    0x00007fe8f1111eca
  0x00007fe8f1111ebd: addq   $0x1,0x148(%rbx)
  0x00007fe8f1111ec5: jmpq   0x00007fe8f1111f30
  0x00007fe8f1111eca: cmp    0x150(%rbx),%rdi
  0x00007fe8f1111ed1: jne    0x00007fe8f1111ee0
  0x00007fe8f1111ed3: addq   $0x1,0x158(%rbx)
  0x00007fe8f1111edb: jmpq   0x00007fe8f1111f30
  0x00007fe8f1111ee0: cmpq   $0x0,0x140(%rbx)
  0x00007fe8f1111eeb: jne    0x00007fe8f1111f04
  0x00007fe8f1111eed: mov    %rdi,0x140(%rbx)
  0x00007fe8f1111ef4: movq   $0x1,0x148(%rbx)
  0x00007fe8f1111eff: jmpq   0x00007fe8f1111f30
  0x00007fe8f1111f04: cmpq   $0x0,0x150(%rbx)
  0x00007fe8f1111f0f: jne    0x00007fe8f1111f28
  0x00007fe8f1111f11: mov    %rdi,0x150(%rbx)
  0x00007fe8f1111f18: movq   $0x1,0x158(%rbx)
  0x00007fe8f1111f23: jmpq   0x00007fe8f1111f30
  0x00007fe8f1111f28: addq   $0x1,0x138(%rbx)
  0x00007fe8f1111f30: mov    $0x7fe8ea6e8340,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea500c60} 'length' '()I' in 'java/lang/String')}
  0x00007fe8f1111f3a: mov    0xdc(%rdi),%ebx
  0x00007fe8f1111f40: add    $0x8,%ebx
  0x00007fe8f1111f43: mov    %ebx,0xdc(%rdi)
  0x00007fe8f1111f49: mov    $0x7fe8ea500c60,%rdi  ;   {metadata({method} {0x00007fe8ea500c60} 'length' '()I' in 'java/lang/String')}
  0x00007fe8f1111f53: and    $0x7ffff8,%ebx
  0x00007fe8f1111f59: cmp    $0x0,%ebx
  0x00007fe8f1111f5c: je     0x00007fe8f11121cc
  0x00007fe8f1111f62: mov    0xc(%rdx),%edi
  0x00007fe8f1111f65: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.String::length@1 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)

  0x00007fe8f1111f69: mov    0xc(%rdi),%edi     ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ; implicit exception: dispatches to 0x00007fe8f11121e3
  0x00007fe8f1111f6c: mov    %edi,0x58(%rsp)
  0x00007fe8f1111f70: mov    0xc(%rsi),%ebx     ;*getfield count
                                                ; - java.lang.AbstractStringBuilder::append@16 (line 421)

  0x00007fe8f1111f73: add    %edi,%ebx
  0x00007fe8f1111f75: mov    %rsi,%rax
  0x00007fe8f1111f78: mov    $0x7fe8ea6fc8a0,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111f82: addq   $0x1,0x168(%rcx)
  0x00007fe8f1111f8a: mov    $0x7fe8ea6f9530,%rax  ;   {metadata(method data for {method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111f94: mov    0xdc(%rax),%ecx
  0x00007fe8f1111f9a: add    $0x8,%ecx
  0x00007fe8f1111f9d: mov    %ecx,0xdc(%rax)
  0x00007fe8f1111fa3: mov    $0x7fe8ea571520,%rax  ;   {metadata({method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111fad: and    $0x7ffff8,%ecx
  0x00007fe8f1111fb3: cmp    $0x0,%ecx
  0x00007fe8f1111fb6: je     0x00007fe8f11121e8
  0x00007fe8f1111fbc: mov    0x10(%rsi),%eax
  0x00007fe8f1111fbf: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@2 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)

  0x00007fe8f1111fc3: mov    0xc(%rax),%eax     ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ; implicit exception: dispatches to 0x00007fe8f11121ff
  0x00007fe8f1111fc6: mov    %rbx,%rcx
  0x00007fe8f1111fc9: sub    %eax,%ecx
  0x00007fe8f1111fcb: cmp    $0x0,%ecx
  0x00007fe8f1111fce: mov    $0x7fe8ea6f9530,%rax  ;   {metadata(method data for {method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1111fd8: mov    $0x108,%rcx
  0x00007fe8f1111fe2: jle    0x00007fe8f1111ff2
  0x00007fe8f1111fe8: mov    $0x118,%rcx
  0x00007fe8f1111ff2: mov    (%rax,%rcx,1),%r8
  0x00007fe8f1111ff6: lea    0x1(%r8),%r8
  0x00007fe8f1111ffa: mov    %r8,(%rax,%rcx,1)
  0x00007fe8f1111ffe: mov    %rdx,0x50(%rsp)
  0x00007fe8f1112003: jle    0x00007fe8f11120ac  ;*ifle
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@7 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)

  0x00007fe8f1112009: mov    %rsi,%rax
  0x00007fe8f111200c: mov    $0x7fe8ea6f9530,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea571520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1112016: mov    0x8(%rax),%eax
  0x00007fe8f1112019: shl    $0x3,%rax
  0x00007fe8f111201d: cmp    0x130(%rcx),%rax
  0x00007fe8f1112024: jne    0x00007fe8f1112033
  0x00007fe8f1112026: addq   $0x1,0x138(%rcx)
  0x00007fe8f111202e: jmpq   0x00007fe8f1112099
  0x00007fe8f1112033: cmp    0x140(%rcx),%rax
  0x00007fe8f111203a: jne    0x00007fe8f1112049
  0x00007fe8f111203c: addq   $0x1,0x148(%rcx)
  0x00007fe8f1112044: jmpq   0x00007fe8f1112099
  0x00007fe8f1112049: cmpq   $0x0,0x130(%rcx)
  0x00007fe8f1112054: jne    0x00007fe8f111206d
  0x00007fe8f1112056: mov    %rax,0x130(%rcx)
  0x00007fe8f111205d: movq   $0x1,0x138(%rcx)
  0x00007fe8f1112068: jmpq   0x00007fe8f1112099
  0x00007fe8f111206d: cmpq   $0x0,0x140(%rcx)
  0x00007fe8f1112078: jne    0x00007fe8f1112091
  0x00007fe8f111207a: mov    %rax,0x140(%rcx)
  0x00007fe8f1112081: movq   $0x1,0x148(%rcx)
  0x00007fe8f111208c: jmpq   0x00007fe8f1112099
  0x00007fe8f1112091: addq   $0x1,0x128(%rcx)
  0x00007fe8f1112099: mov    %rbx,%rdx
  0x00007fe8f111209c: mov    %rsi,%rbx
  0x00007fe8f111209f: mov    %rbx,%rsi          ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)

  0x00007fe8f11120a2: nop    
  0x00007fe8f11120a3: nop    
  0x00007fe8f11120a4: nop    
  0x00007fe8f11120a5: nop    
  0x00007fe8f11120a6: nop    
  0x00007fe8f11120a7: callq  0x00007fe8f1046020  ; OopMap{[72]=Oop [80]=Oop off=684}
                                                ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ;   {optimized virtual_call}
  0x00007fe8f11120ac: mov    0x58(%rsp),%ebx
  0x00007fe8f11120b0: mov    0x50(%rsp),%rdi
  0x00007fe8f11120b5: mov    0x48(%rsp),%rsi
  0x00007fe8f11120ba: mov    0x10(%rsi),%r8d
  0x00007fe8f11120be: shl    $0x3,%r8           ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::append@28 (line 422)

  0x00007fe8f11120c2: mov    0xc(%rsi),%r9d     ;*getfield count
                                                ; - java.lang.AbstractStringBuilder::append@32 (line 422)

  0x00007fe8f11120c6: mov    %rdi,%rdx
  0x00007fe8f11120c9: mov    $0x7fe8ea6fc8a0,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f11120d3: mov    0x8(%rdx),%edx
  0x00007fe8f11120d6: shl    $0x3,%rdx
  0x00007fe8f11120da: cmp    0x180(%rcx),%rdx
  0x00007fe8f11120e1: jne    0x00007fe8f11120f0
  0x00007fe8f11120e3: addq   $0x1,0x188(%rcx)
  0x00007fe8f11120eb: jmpq   0x00007fe8f1112156
  0x00007fe8f11120f0: cmp    0x190(%rcx),%rdx
  0x00007fe8f11120f7: jne    0x00007fe8f1112106
  0x00007fe8f11120f9: addq   $0x1,0x198(%rcx)
  0x00007fe8f1112101: jmpq   0x00007fe8f1112156
  0x00007fe8f1112106: cmpq   $0x0,0x180(%rcx)
  0x00007fe8f1112111: jne    0x00007fe8f111212a
  0x00007fe8f1112113: mov    %rdx,0x180(%rcx)
  0x00007fe8f111211a: movq   $0x1,0x188(%rcx)
  0x00007fe8f1112125: jmpq   0x00007fe8f1112156
  0x00007fe8f111212a: cmpq   $0x0,0x190(%rcx)
  0x00007fe8f1112135: jne    0x00007fe8f111214e
  0x00007fe8f1112137: mov    %rdx,0x190(%rcx)
  0x00007fe8f111213e: movq   $0x1,0x198(%rcx)
  0x00007fe8f1112149: jmpq   0x00007fe8f1112156
  0x00007fe8f111214e: addq   $0x1,0x178(%rcx)
  0x00007fe8f1112156: mov    $0x0,%edx
  0x00007fe8f111215b: mov    %rbx,%rcx
  0x00007fe8f111215e: mov    %rdi,%rsi          ;*invokevirtual getChars
                                                ; - java.lang.AbstractStringBuilder::append@35 (line 422)

  0x00007fe8f1112161: nop    
  0x00007fe8f1112162: nop    
  0x00007fe8f1112163: nop    
  0x00007fe8f1112164: nop    
  0x00007fe8f1112165: nop    
  0x00007fe8f1112166: nop    
  0x00007fe8f1112167: callq  0x00007fe8f1046020  ; OopMap{[72]=Oop off=876}
                                                ;*invokevirtual getChars
                                                ; - java.lang.AbstractStringBuilder::append@35 (line 422)
                                                ;   {optimized virtual_call}
  0x00007fe8f111216c: mov    0x48(%rsp),%rsi
  0x00007fe8f1112171: mov    0xc(%rsi),%eax     ;*getfield count
                                                ; - java.lang.AbstractStringBuilder::append@40 (line 423)

  0x00007fe8f1112174: add    0x58(%rsp),%eax
  0x00007fe8f1112178: mov    %eax,0xc(%rsi)     ;*putfield count
                                                ; - java.lang.AbstractStringBuilder::append@45 (line 423)

  0x00007fe8f111217b: mov    %rsi,%rax
  0x00007fe8f111217e: add    $0x70,%rsp
  0x00007fe8f1112182: pop    %rbp
  0x00007fe8f1112183: test   %eax,0x17554f77(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1112189: retq                      ;*areturn
                                                ; - java.lang.AbstractStringBuilder::append@49 (line 424)

  0x00007fe8f111218a: mov    %rsi,%rdi
  0x00007fe8f111218d: mov    $0x7fe8ea6fc8a0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea571dd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1112197: addq   $0x1,0x128(%rbx)
  0x00007fe8f111219f: callq  0x00007fe8f1046020  ; OopMap{off=932}
                                                ;*invokespecial appendNull
                                                ; - java.lang.AbstractStringBuilder::append@5 (line 419)
                                                ;   {optimized virtual_call}
  0x00007fe8f11121a4: add    $0x70,%rsp
  0x00007fe8f11121a8: pop    %rbp
  0x00007fe8f11121a9: test   %eax,0x17554f51(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11121af: retq   
  0x00007fe8f11121b0: mov    %rdi,0x8(%rsp)
  0x00007fe8f11121b5: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11121bd: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=962}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::append@-1 (line 418)
                                                ;   {runtime_call}
  0x00007fe8f11121c2: jmpq   0x00007fe8f1111e63
  0x00007fe8f11121c7: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=972}
                                                ;*invokevirtual length
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ;   {runtime_call}
  0x00007fe8f11121cc: mov    %rdi,0x8(%rsp)
  0x00007fe8f11121d1: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11121d9: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=990}
                                                ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ;   {runtime_call}
  0x00007fe8f11121de: jmpq   0x00007fe8f1111f62
  0x00007fe8f11121e3: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=1000}
                                                ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ;   {runtime_call}
  0x00007fe8f11121e8: mov    %rax,0x8(%rsp)
  0x00007fe8f11121ed: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11121f5: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=1018}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@-1 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ;   {runtime_call}
  0x00007fe8f11121fa: jmpq   0x00007fe8f1111fbc
  0x00007fe8f11121ff: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=1028}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ;   {runtime_call}
  0x00007fe8f1112204: nop    
  0x00007fe8f1112205: nop    
  0x00007fe8f1112206: mov    0x2a8(%r15),%rax
  0x00007fe8f111220d: mov    $0x0,%r10
  0x00007fe8f1112217: mov    %r10,0x2a8(%r15)
  0x00007fe8f111221e: mov    $0x0,%r10
  0x00007fe8f1112228: mov    %r10,0x2b0(%r15)
  0x00007fe8f111222f: add    $0x70,%rsp
  0x00007fe8f1112233: pop    %rbp
  0x00007fe8f1112234: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1112239: hlt    
  0x00007fe8f111223a: hlt    
  0x00007fe8f111223b: hlt    
  0x00007fe8f111223c: hlt    
  0x00007fe8f111223d: hlt    
  0x00007fe8f111223e: hlt    
  0x00007fe8f111223f: hlt    
[Stub Code]
  0x00007fe8f1112240: nop                       ;   {no_reloc}
  0x00007fe8f1112241: nop    
  0x00007fe8f1112242: nop    
  0x00007fe8f1112243: nop    
  0x00007fe8f1112244: nop    
  0x00007fe8f1112245: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111224f: jmpq   0x00007fe8f111224f  ;   {runtime_call}
  0x00007fe8f1112254: nop    
  0x00007fe8f1112255: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111225f: jmpq   0x00007fe8f111225f  ;   {runtime_call}
  0x00007fe8f1112264: nop    
  0x00007fe8f1112265: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111226f: jmpq   0x00007fe8f111226f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f1112274: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f1112279: mov    %rsp,-0x28(%rsp)
  0x00007fe8f111227e: sub    $0x80,%rsp
  0x00007fe8f1112285: mov    %rax,0x78(%rsp)
  0x00007fe8f111228a: mov    %rcx,0x70(%rsp)
  0x00007fe8f111228f: mov    %rdx,0x68(%rsp)
  0x00007fe8f1112294: mov    %rbx,0x60(%rsp)
  0x00007fe8f1112299: mov    %rbp,0x50(%rsp)
  0x00007fe8f111229e: mov    %rsi,0x48(%rsp)
  0x00007fe8f11122a3: mov    %rdi,0x40(%rsp)
  0x00007fe8f11122a8: mov    %r8,0x38(%rsp)
  0x00007fe8f11122ad: mov    %r9,0x30(%rsp)
  0x00007fe8f11122b2: mov    %r10,0x28(%rsp)
  0x00007fe8f11122b7: mov    %r11,0x20(%rsp)
  0x00007fe8f11122bc: mov    %r12,0x18(%rsp)
  0x00007fe8f11122c1: mov    %r13,0x10(%rsp)
  0x00007fe8f11122c6: mov    %r14,0x8(%rsp)
  0x00007fe8f11122cb: mov    %r15,(%rsp)
  0x00007fe8f11122cf: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f11122d9: mov    $0x7fe8f1112279,%rsi  ;   {internal_word}
  0x00007fe8f11122e3: mov    %rsp,%rdx
  0x00007fe8f11122e6: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f11122ea: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f11122ef: hlt    
[Deopt Handler Code]
  0x00007fe8f11122f0: mov    $0x7fe8f11122f0,%r10  ;   {section_word}
  0x00007fe8f11122fa: push   %r10
  0x00007fe8f11122fc: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1112301: hlt    
  0x00007fe8f1112302: hlt    
  0x00007fe8f1112303: hlt    
  0x00007fe8f1112304: hlt    
  0x00007fe8f1112305: hlt    
  0x00007fe8f1112306: hlt    
  0x00007fe8f1112307: hlt    
Decoding compiled method 0x00007fe8f1112610:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007fe8ea516760} 'getSecurityManager' '()Ljava/lang/SecurityManager;' in 'java/lang/System'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1112760: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1112767: push   %rbp
  0x00007fe8f1112768: sub    $0x30,%rsp
  0x00007fe8f111276c: mov    $0x7fe8ea742aa0,%rax  ;   {metadata(method data for {method} {0x00007fe8ea516760} 'getSecurityManager' '()Ljava/lang/SecurityManager;' in 'java/lang/System')}
  0x00007fe8f1112776: mov    0xdc(%rax),%esi
  0x00007fe8f111277c: add    $0x8,%esi
  0x00007fe8f111277f: mov    %esi,0xdc(%rax)
  0x00007fe8f1112785: mov    $0x7fe8ea516760,%rax  ;   {metadata({method} {0x00007fe8ea516760} 'getSecurityManager' '()Ljava/lang/SecurityManager;' in 'java/lang/System')}
  0x00007fe8f111278f: and    $0x1ff8,%esi
  0x00007fe8f1112795: cmp    $0x0,%esi
  0x00007fe8f1112798: je     0x00007fe8f11127bb
  0x00007fe8f111279e: mov    $0x781e00c78,%rax  ;   {oop(a 'java/lang/Class' = 'java/lang/System')}
  0x00007fe8f11127a8: mov    0x74(%rax),%eax
  0x00007fe8f11127ab: shl    $0x3,%rax          ;*getstatic security
                                                ; - java.lang.System::getSecurityManager@0 (line 334)

  0x00007fe8f11127af: add    $0x30,%rsp
  0x00007fe8f11127b3: pop    %rbp
  0x00007fe8f11127b4: test   %eax,0x17554946(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11127ba: retq   
  0x00007fe8f11127bb: mov    %rax,0x8(%rsp)
  0x00007fe8f11127c0: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11127c8: callq  0x00007fe8f10fd5a0  ; OopMap{off=109}
                                                ;*synchronization entry
                                                ; - java.lang.System::getSecurityManager@-1 (line 334)
                                                ;   {runtime_call}
  0x00007fe8f11127cd: jmp    0x00007fe8f111279e
  0x00007fe8f11127cf: nop    
  0x00007fe8f11127d0: nop    
  0x00007fe8f11127d1: mov    0x2a8(%r15),%rax
  0x00007fe8f11127d8: mov    $0x0,%r10
  0x00007fe8f11127e2: mov    %r10,0x2a8(%r15)
  0x00007fe8f11127e9: mov    $0x0,%r10
  0x00007fe8f11127f3: mov    %r10,0x2b0(%r15)
  0x00007fe8f11127fa: add    $0x30,%rsp
  0x00007fe8f11127fe: pop    %rbp
  0x00007fe8f11127ff: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1112804: hlt    
  0x00007fe8f1112805: hlt    
  0x00007fe8f1112806: hlt    
  0x00007fe8f1112807: hlt    
  0x00007fe8f1112808: hlt    
  0x00007fe8f1112809: hlt    
  0x00007fe8f111280a: hlt    
  0x00007fe8f111280b: hlt    
  0x00007fe8f111280c: hlt    
  0x00007fe8f111280d: hlt    
  0x00007fe8f111280e: hlt    
  0x00007fe8f111280f: hlt    
  0x00007fe8f1112810: hlt    
  0x00007fe8f1112811: hlt    
  0x00007fe8f1112812: hlt    
  0x00007fe8f1112813: hlt    
  0x00007fe8f1112814: hlt    
  0x00007fe8f1112815: hlt    
  0x00007fe8f1112816: hlt    
  0x00007fe8f1112817: hlt    
  0x00007fe8f1112818: hlt    
  0x00007fe8f1112819: hlt    
  0x00007fe8f111281a: hlt    
  0x00007fe8f111281b: hlt    
  0x00007fe8f111281c: hlt    
  0x00007fe8f111281d: hlt    
  0x00007fe8f111281e: hlt    
  0x00007fe8f111281f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f1112820: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f1112825: mov    %rsp,-0x28(%rsp)
  0x00007fe8f111282a: sub    $0x80,%rsp
  0x00007fe8f1112831: mov    %rax,0x78(%rsp)
  0x00007fe8f1112836: mov    %rcx,0x70(%rsp)
  0x00007fe8f111283b: mov    %rdx,0x68(%rsp)
  0x00007fe8f1112840: mov    %rbx,0x60(%rsp)
  0x00007fe8f1112845: mov    %rbp,0x50(%rsp)
  0x00007fe8f111284a: mov    %rsi,0x48(%rsp)
  0x00007fe8f111284f: mov    %rdi,0x40(%rsp)
  0x00007fe8f1112854: mov    %r8,0x38(%rsp)
  0x00007fe8f1112859: mov    %r9,0x30(%rsp)
  0x00007fe8f111285e: mov    %r10,0x28(%rsp)
  0x00007fe8f1112863: mov    %r11,0x20(%rsp)
  0x00007fe8f1112868: mov    %r12,0x18(%rsp)
  0x00007fe8f111286d: mov    %r13,0x10(%rsp)
  0x00007fe8f1112872: mov    %r14,0x8(%rsp)
  0x00007fe8f1112877: mov    %r15,(%rsp)
  0x00007fe8f111287b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1112885: mov    $0x7fe8f1112825,%rsi  ;   {internal_word}
  0x00007fe8f111288f: mov    %rsp,%rdx
  0x00007fe8f1112892: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1112896: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f111289b: hlt    
[Deopt Handler Code]
  0x00007fe8f111289c: mov    $0x7fe8f111289c,%r10  ;   {section_word}
  0x00007fe8f11128a6: push   %r10
  0x00007fe8f11128a8: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f11128ad: hlt    
  0x00007fe8f11128ae: hlt    
  0x00007fe8f11128af: hlt    
Decoding compiled method 0x00007fe8f1112950:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea581a38} 'getPath' '()Ljava/lang/String;' in 'java/io/File'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1112aa0: mov    0x8(%rsi),%r10d
  0x00007fe8f1112aa4: shl    $0x3,%r10
  0x00007fe8f1112aa8: cmp    %rax,%r10
  0x00007fe8f1112aab: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1112ab1: nopw   0x0(%rax,%rax,1)
  0x00007fe8f1112abc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1112ac0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1112ac7: push   %rbp
  0x00007fe8f1112ac8: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.io.File::getPath@0 (line 512)

  0x00007fe8f1112acc: mov    0x10(%rsi),%eax
  0x00007fe8f1112acf: shl    $0x3,%rax          ;*getfield path
                                                ; - java.io.File::getPath@1 (line 512)

  0x00007fe8f1112ad3: add    $0x30,%rsp
  0x00007fe8f1112ad7: pop    %rbp
  0x00007fe8f1112ad8: test   %eax,0x17554622(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1112ade: retq   
  0x00007fe8f1112adf: nop    
  0x00007fe8f1112ae0: nop    
  0x00007fe8f1112ae1: mov    0x2a8(%r15),%rax
  0x00007fe8f1112ae8: mov    $0x0,%r10
  0x00007fe8f1112af2: mov    %r10,0x2a8(%r15)
  0x00007fe8f1112af9: mov    $0x0,%r10
  0x00007fe8f1112b03: mov    %r10,0x2b0(%r15)
  0x00007fe8f1112b0a: add    $0x30,%rsp
  0x00007fe8f1112b0e: pop    %rbp
  0x00007fe8f1112b0f: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1112b14: hlt    
  0x00007fe8f1112b15: hlt    
  0x00007fe8f1112b16: hlt    
  0x00007fe8f1112b17: hlt    
  0x00007fe8f1112b18: hlt    
  0x00007fe8f1112b19: hlt    
  0x00007fe8f1112b1a: hlt    
  0x00007fe8f1112b1b: hlt    
  0x00007fe8f1112b1c: hlt    
  0x00007fe8f1112b1d: hlt    
  0x00007fe8f1112b1e: hlt    
  0x00007fe8f1112b1f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f1112b20: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f1112b25: mov    %rsp,-0x28(%rsp)
  0x00007fe8f1112b2a: sub    $0x80,%rsp
  0x00007fe8f1112b31: mov    %rax,0x78(%rsp)
  0x00007fe8f1112b36: mov    %rcx,0x70(%rsp)
  0x00007fe8f1112b3b: mov    %rdx,0x68(%rsp)
  0x00007fe8f1112b40: mov    %rbx,0x60(%rsp)
  0x00007fe8f1112b45: mov    %rbp,0x50(%rsp)
  0x00007fe8f1112b4a: mov    %rsi,0x48(%rsp)
  0x00007fe8f1112b4f: mov    %rdi,0x40(%rsp)
  0x00007fe8f1112b54: mov    %r8,0x38(%rsp)
  0x00007fe8f1112b59: mov    %r9,0x30(%rsp)
  0x00007fe8f1112b5e: mov    %r10,0x28(%rsp)
  0x00007fe8f1112b63: mov    %r11,0x20(%rsp)
  0x00007fe8f1112b68: mov    %r12,0x18(%rsp)
  0x00007fe8f1112b6d: mov    %r13,0x10(%rsp)
  0x00007fe8f1112b72: mov    %r14,0x8(%rsp)
  0x00007fe8f1112b77: mov    %r15,(%rsp)
  0x00007fe8f1112b7b: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1112b85: mov    $0x7fe8f1112b25,%rsi  ;   {internal_word}
  0x00007fe8f1112b8f: mov    %rsp,%rdx
  0x00007fe8f1112b92: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1112b96: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1112b9b: hlt    
[Deopt Handler Code]
  0x00007fe8f1112b9c: mov    $0x7fe8f1112b9c,%r10  ;   {section_word}
  0x00007fe8f1112ba6: push   %r10
  0x00007fe8f1112ba8: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1112bad: hlt    
  0x00007fe8f1112bae: hlt    
  0x00007fe8f1112baf: hlt    
Decoding compiled method 0x00007fe8f1112e50:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/String'
  # parm1:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1112fc0: mov    0x8(%rsi),%r10d
  0x00007fe8f1112fc4: shl    $0x3,%r10
  0x00007fe8f1112fc8: cmp    %rax,%r10
  0x00007fe8f1112fcb: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1112fd1: nopw   0x0(%rax,%rax,1)
  0x00007fe8f1112fdc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1112fe0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1112fe7: push   %rbp
  0x00007fe8f1112fe8: sub    $0x30,%rsp
  0x00007fe8f1112fec: mov    $0x7fe8ea745288,%rax  ;   {metadata(method data for {method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f1112ff6: mov    0xdc(%rax),%edi
  0x00007fe8f1112ffc: add    $0x8,%edi
  0x00007fe8f1112fff: mov    %edi,0xdc(%rax)
  0x00007fe8f1113005: mov    $0x7fe8ea501df0,%rax  ;   {metadata({method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f111300f: and    $0x1ff8,%edi
  0x00007fe8f1113015: cmp    $0x0,%edi
  0x00007fe8f1113018: je     0x00007fe8f11131cd  ;*aload_0
                                                ; - java.lang.String::startsWith@0 (line 1403)

  0x00007fe8f111301e: mov    0xc(%rsi),%eax
  0x00007fe8f1113021: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::startsWith@1 (line 1403)

  0x00007fe8f1113025: mov    0xc(%rdx),%esi     ; implicit exception: dispatches to 0x00007fe8f11131e4
  0x00007fe8f1113028: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::startsWith@9 (line 1405)

  0x00007fe8f111302c: mov    0xc(%rsi),%edi     ;*arraylength
                                                ; - java.lang.String::startsWith@21 (line 1407)
                                                ; implicit exception: dispatches to 0x00007fe8f11131e9
  0x00007fe8f111302f: cmp    $0x0,%ecx
  0x00007fe8f1113032: mov    $0x7fe8ea745288,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f111303c: mov    $0x108,%rdx
  0x00007fe8f1113046: jl     0x00007fe8f1113056
  0x00007fe8f111304c: mov    $0x118,%rdx
  0x00007fe8f1113056: mov    (%rbx,%rdx,1),%r8
  0x00007fe8f111305a: lea    0x1(%r8),%r8
  0x00007fe8f111305e: mov    %r8,(%rbx,%rdx,1)
  0x00007fe8f1113062: jl     0x00007fe8f111319a  ;*iflt
                                                ; - java.lang.String::startsWith@25 (line 1409)

  0x00007fe8f1113068: mov    0xc(%rax),%ebx     ;*arraylength
                                                ; - java.lang.String::startsWith@33 (line 1409)
                                                ; implicit exception: dispatches to 0x00007fe8f11131ee
  0x00007fe8f111306b: sub    %edi,%ebx
  0x00007fe8f111306d: cmp    %ebx,%ecx
  0x00007fe8f111306f: mov    $0x7fe8ea745288,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f1113079: mov    $0x128,%rdx
  0x00007fe8f1113083: jle    0x00007fe8f1113093
  0x00007fe8f1113089: mov    $0x138,%rdx
  0x00007fe8f1113093: mov    (%rbx,%rdx,1),%r8
  0x00007fe8f1113097: lea    0x1(%r8),%r8
  0x00007fe8f111309b: mov    %r8,(%rbx,%rdx,1)
  0x00007fe8f111309f: jg     0x00007fe8f111319a  ;*if_icmple
                                                ; - java.lang.String::startsWith@37 (line 1409)

  0x00007fe8f11130a5: mov    $0x0,%ebx
  0x00007fe8f11130aa: jmpq   0x00007fe8f111315a  ;*iinc
                                                ; - java.lang.String::startsWith@42 (line 1412)

  0x00007fe8f11130af: nop    
  0x00007fe8f11130b0: mov    %rcx,%rdx
  0x00007fe8f11130b3: inc    %edx
  0x00007fe8f11130b5: movslq %ecx,%r8
  0x00007fe8f11130b8: cmp    0xc(%rax),%ecx
  0x00007fe8f11130bb: jae    0x00007fe8f11131f3
  0x00007fe8f11130c1: movzwl 0x10(%rax,%r8,2),%ecx  ;*caload
                                                ; - java.lang.String::startsWith@56 (line 1413)

  0x00007fe8f11130c7: mov    %rbx,%r8
  0x00007fe8f11130ca: inc    %r8d
  0x00007fe8f11130cd: movslq %ebx,%r9
  0x00007fe8f11130d0: cmp    0xc(%rsi),%ebx
  0x00007fe8f11130d3: jae    0x00007fe8f11131fc
  0x00007fe8f11130d9: movzwl 0x10(%rsi,%r9,2),%ebx  ;*caload
                                                ; - java.lang.String::startsWith@64 (line 1413)

  0x00007fe8f11130df: mov    $0x7fe8ea745288,%r9  ;   {metadata(method data for {method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f11130e9: mov    0xe0(%r9),%r11d
  0x00007fe8f11130f0: add    $0x8,%r11d
  0x00007fe8f11130f4: mov    %r11d,0xe0(%r9)
  0x00007fe8f11130fb: mov    $0x7fe8ea501df0,%r9  ;   {metadata({method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f1113105: and    $0xfff8,%r11d
  0x00007fe8f111310c: cmp    $0x0,%r11d
  0x00007fe8f1113110: je     0x00007fe8f1113205  ; OopMap{rsi=Oop rax=Oop off=342}
                                                ;*if_icmpeq
                                                ; - java.lang.String::startsWith@65 (line 1413)

  0x00007fe8f1113116: test   %eax,0x17553fe4(%rip)        # 0x00007fe908667100
                                                ;   {poll}
  0x00007fe8f111311c: cmp    %ebx,%ecx
  0x00007fe8f111311e: mov    $0x7fe8ea745288,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f1113128: mov    $0x168,%rcx
  0x00007fe8f1113132: je     0x00007fe8f1113142
  0x00007fe8f1113138: mov    $0x178,%rcx
  0x00007fe8f1113142: mov    (%rbx,%rcx,1),%r9
  0x00007fe8f1113146: lea    0x1(%r9),%r9
  0x00007fe8f111314a: mov    %r9,(%rbx,%rcx,1)
  0x00007fe8f111314e: jne    0x00007fe8f11131ab  ;*if_icmpeq
                                                ; - java.lang.String::startsWith@65 (line 1413)

  0x00007fe8f1113154: mov    %r8,%rbx
  0x00007fe8f1113157: mov    %rdx,%rcx          ;*iinc
                                                ; - java.lang.String::startsWith@42 (line 1412)

  0x00007fe8f111315a: dec    %edi
  0x00007fe8f111315c: cmp    $0x0,%edi
  0x00007fe8f111315f: mov    $0x7fe8ea745288,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea501df0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007fe8f1113169: mov    $0x148,%r8
  0x00007fe8f1113173: jl     0x00007fe8f1113183
  0x00007fe8f1113179: mov    $0x158,%r8
  0x00007fe8f1113183: mov    (%rdx,%r8,1),%r9
  0x00007fe8f1113187: lea    0x1(%r9),%r9
  0x00007fe8f111318b: mov    %r9,(%rdx,%r8,1)
  0x00007fe8f111318f: jl     0x00007fe8f11131bc
  0x00007fe8f1113195: jmpq   0x00007fe8f11130b0  ;*iflt
                                                ; - java.lang.String::startsWith@47 (line 1412)

  0x00007fe8f111319a: mov    $0x0,%eax
  0x00007fe8f111319f: add    $0x30,%rsp
  0x00007fe8f11131a3: pop    %rbp
  0x00007fe8f11131a4: test   %eax,0x17553f56(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11131aa: retq                      ;*ireturn
                                                ; - java.lang.String::startsWith@41 (line 1410)

  0x00007fe8f11131ab: mov    $0x0,%eax
  0x00007fe8f11131b0: add    $0x30,%rsp
  0x00007fe8f11131b4: pop    %rbp
  0x00007fe8f11131b5: test   %eax,0x17553f45(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11131bb: retq                      ;*ireturn
                                                ; - java.lang.String::startsWith@69 (line 1414)

  0x00007fe8f11131bc: mov    $0x1,%eax
  0x00007fe8f11131c1: add    $0x30,%rsp
  0x00007fe8f11131c5: pop    %rbp
  0x00007fe8f11131c6: test   %eax,0x17553f34(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f11131cc: retq   
  0x00007fe8f11131cd: mov    %rax,0x8(%rsp)
  0x00007fe8f11131d2: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11131da: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop rdx=Oop off=543}
                                                ;*synchronization entry
                                                ; - java.lang.String::startsWith@-1 (line 1403)
                                                ;   {runtime_call}
  0x00007fe8f11131df: jmpq   0x00007fe8f111301e
  0x00007fe8f11131e4: callq  0x00007fe8f10f9680  ; OopMap{rax=Oop off=553}
                                                ;*getfield value
                                                ; - java.lang.String::startsWith@9 (line 1405)
                                                ;   {runtime_call}
  0x00007fe8f11131e9: callq  0x00007fe8f10f9680  ; OopMap{rax=Oop rsi=Oop off=558}
                                                ;*arraylength
                                                ; - java.lang.String::startsWith@21 (line 1407)
                                                ;   {runtime_call}
  0x00007fe8f11131ee: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop rax=Oop off=563}
                                                ;*arraylength
                                                ; - java.lang.String::startsWith@33 (line 1409)
                                                ;   {runtime_call}
  0x00007fe8f11131f3: mov    %rcx,(%rsp)
  0x00007fe8f11131f7: callq  0x00007fe8f106bc40  ; OopMap{rsi=Oop rax=Oop off=572}
                                                ;*caload
                                                ; - java.lang.String::startsWith@56 (line 1413)
                                                ;   {runtime_call}
  0x00007fe8f11131fc: mov    %rbx,(%rsp)
  0x00007fe8f1113200: callq  0x00007fe8f106bc40  ; OopMap{rsi=Oop rax=Oop off=581}
                                                ;*caload
                                                ; - java.lang.String::startsWith@64 (line 1413)
                                                ;   {runtime_call}
  0x00007fe8f1113205: mov    %r9,0x8(%rsp)
  0x00007fe8f111320a: movq   $0x41,(%rsp)
  0x00007fe8f1113212: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop rax=Oop off=599}
                                                ;*if_icmpeq
                                                ; - java.lang.String::startsWith@65 (line 1413)
                                                ;   {runtime_call}
  0x00007fe8f1113217: jmpq   0x00007fe8f1113116
  0x00007fe8f111321c: nop    
  0x00007fe8f111321d: nop    
  0x00007fe8f111321e: mov    0x2a8(%r15),%rax
  0x00007fe8f1113225: mov    $0x0,%r10
  0x00007fe8f111322f: mov    %r10,0x2a8(%r15)
  0x00007fe8f1113236: mov    $0x0,%r10
  0x00007fe8f1113240: mov    %r10,0x2b0(%r15)
  0x00007fe8f1113247: add    $0x30,%rsp
  0x00007fe8f111324b: pop    %rbp
  0x00007fe8f111324c: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1113251: hlt    
  0x00007fe8f1113252: hlt    
  0x00007fe8f1113253: hlt    
  0x00007fe8f1113254: hlt    
  0x00007fe8f1113255: hlt    
  0x00007fe8f1113256: hlt    
  0x00007fe8f1113257: hlt    
  0x00007fe8f1113258: hlt    
  0x00007fe8f1113259: hlt    
  0x00007fe8f111325a: hlt    
  0x00007fe8f111325b: hlt    
  0x00007fe8f111325c: hlt    
  0x00007fe8f111325d: hlt    
  0x00007fe8f111325e: hlt    
  0x00007fe8f111325f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f1113260: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f1113265: mov    %rsp,-0x28(%rsp)
  0x00007fe8f111326a: sub    $0x80,%rsp
  0x00007fe8f1113271: mov    %rax,0x78(%rsp)
  0x00007fe8f1113276: mov    %rcx,0x70(%rsp)
  0x00007fe8f111327b: mov    %rdx,0x68(%rsp)
  0x00007fe8f1113280: mov    %rbx,0x60(%rsp)
  0x00007fe8f1113285: mov    %rbp,0x50(%rsp)
  0x00007fe8f111328a: mov    %rsi,0x48(%rsp)
  0x00007fe8f111328f: mov    %rdi,0x40(%rsp)
  0x00007fe8f1113294: mov    %r8,0x38(%rsp)
  0x00007fe8f1113299: mov    %r9,0x30(%rsp)
  0x00007fe8f111329e: mov    %r10,0x28(%rsp)
  0x00007fe8f11132a3: mov    %r11,0x20(%rsp)
  0x00007fe8f11132a8: mov    %r12,0x18(%rsp)
  0x00007fe8f11132ad: mov    %r13,0x10(%rsp)
  0x00007fe8f11132b2: mov    %r14,0x8(%rsp)
  0x00007fe8f11132b7: mov    %r15,(%rsp)
  0x00007fe8f11132bb: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f11132c5: mov    $0x7fe8f1113265,%rsi  ;   {internal_word}
  0x00007fe8f11132cf: mov    %rsp,%rdx
  0x00007fe8f11132d2: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f11132d6: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f11132db: hlt    
[Deopt Handler Code]
  0x00007fe8f11132dc: mov    $0x7fe8f11132dc,%r10  ;   {section_word}
  0x00007fe8f11132e6: push   %r10
  0x00007fe8f11132e8: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f11132ed: hlt    
  0x00007fe8f11132ee: hlt    
  0x00007fe8f11132ef: hlt    
Decoding compiled method 0x00007fe8f1113590:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007fe8ea597ff8} 'toLowerCase' '(I)I' in 'java/lang/Character'
  # parm0:    rsi       = int
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1113700: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1113707: push   %rbp
  0x00007fe8f1113708: sub    $0x30,%rsp
  0x00007fe8f111370c: mov    $0x7fe8ea746248,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea597ff8} 'toLowerCase' '(I)I' in 'java/lang/Character')}
  0x00007fe8f1113716: mov    0xdc(%rdi),%ebx
  0x00007fe8f111371c: add    $0x8,%ebx
  0x00007fe8f111371f: mov    %ebx,0xdc(%rdi)
  0x00007fe8f1113725: mov    $0x7fe8ea597ff8,%rdi  ;   {metadata({method} {0x00007fe8ea597ff8} 'toLowerCase' '(I)I' in 'java/lang/Character')}
  0x00007fe8f111372f: and    $0x1ff8,%ebx
  0x00007fe8f1113735: cmp    $0x0,%ebx
  0x00007fe8f1113738: je     0x00007fe8f1113820  ;*iload_0
                                                ; - java.lang.Character::toLowerCase@0 (line 6338)

  0x00007fe8f111373e: mov    $0x7fe8ea746248,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea597ff8} 'toLowerCase' '(I)I' in 'java/lang/Character')}
  0x00007fe8f1113748: addq   $0x1,0x108(%rdi)
  0x00007fe8f1113750: mov    %rsi,%rdi
  0x00007fe8f1113753: mov    %rdi,%rsi          ;*invokestatic of
                                                ; - java.lang.Character::toLowerCase@1 (line 6338)

  0x00007fe8f1113756: mov    %edi,0x20(%rsp)
  0x00007fe8f111375a: nop    
  0x00007fe8f111375b: nop    
  0x00007fe8f111375c: nop    
  0x00007fe8f111375d: nop    
  0x00007fe8f111375e: nop    
  0x00007fe8f111375f: callq  0x00007fe8f1046420  ; OopMap{off=100}
                                                ;*invokestatic of
                                                ; - java.lang.Character::toLowerCase@1 (line 6338)
                                                ;   {static_call}
  0x00007fe8f1113764: cmp    (%rax),%rax        ; implicit exception: dispatches to 0x00007fe8f1113837
  0x00007fe8f1113767: mov    %rax,%rdx
  0x00007fe8f111376a: mov    $0x7fe8ea746248,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea597ff8} 'toLowerCase' '(I)I' in 'java/lang/Character')}
  0x00007fe8f1113774: mov    0x8(%rdx),%edx
  0x00007fe8f1113777: shl    $0x3,%rdx
  0x00007fe8f111377b: cmp    0x120(%rsi),%rdx
  0x00007fe8f1113782: jne    0x00007fe8f1113791
  0x00007fe8f1113784: addq   $0x1,0x128(%rsi)
  0x00007fe8f111378c: jmpq   0x00007fe8f11137f7
  0x00007fe8f1113791: cmp    0x130(%rsi),%rdx
  0x00007fe8f1113798: jne    0x00007fe8f11137a7
  0x00007fe8f111379a: addq   $0x1,0x138(%rsi)
  0x00007fe8f11137a2: jmpq   0x00007fe8f11137f7
  0x00007fe8f11137a7: cmpq   $0x0,0x120(%rsi)
  0x00007fe8f11137b2: jne    0x00007fe8f11137cb
  0x00007fe8f11137b4: mov    %rdx,0x120(%rsi)
  0x00007fe8f11137bb: movq   $0x1,0x128(%rsi)
  0x00007fe8f11137c6: jmpq   0x00007fe8f11137f7
  0x00007fe8f11137cb: cmpq   $0x0,0x130(%rsi)
  0x00007fe8f11137d6: jne    0x00007fe8f11137ef
  0x00007fe8f11137d8: mov    %rdx,0x130(%rsi)
  0x00007fe8f11137df: movq   $0x1,0x138(%rsi)
  0x00007fe8f11137ea: jmpq   0x00007fe8f11137f7
  0x00007fe8f11137ef: addq   $0x1,0x118(%rsi)
  0x00007fe8f11137f7: mov    0x20(%rsp),%edx
  0x00007fe8f11137fb: mov    %rax,%rsi          ;*invokevirtual toLowerCase
                                                ; - java.lang.Character::toLowerCase@5 (line 6338)

  0x00007fe8f11137fe: nop    
  0x00007fe8f11137ff: nop    
  0x00007fe8f1113800: nop    
  0x00007fe8f1113801: nop    
  0x00007fe8f1113802: nop    
  0x00007fe8f1113803: nop    
  0x00007fe8f1113804: nop    
  0x00007fe8f1113805: mov    $0xffffffffffffffff,%rax
  0x00007fe8f111380f: callq  0x00007fe8f1046220  ; OopMap{off=276}
                                                ;*invokevirtual toLowerCase
                                                ; - java.lang.Character::toLowerCase@5 (line 6338)
                                                ;   {virtual_call}
  0x00007fe8f1113814: add    $0x30,%rsp
  0x00007fe8f1113818: pop    %rbp
  0x00007fe8f1113819: test   %eax,0x175538e1(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f111381f: retq   
  0x00007fe8f1113820: mov    %rdi,0x8(%rsp)
  0x00007fe8f1113825: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f111382d: callq  0x00007fe8f10fd5a0  ; OopMap{off=306}
                                                ;*synchronization entry
                                                ; - java.lang.Character::toLowerCase@-1 (line 6338)
                                                ;   {runtime_call}
  0x00007fe8f1113832: jmpq   0x00007fe8f111373e
  0x00007fe8f1113837: callq  0x00007fe8f10f9680  ; OopMap{rax=Oop off=316}
                                                ;*invokevirtual toLowerCase
                                                ; - java.lang.Character::toLowerCase@5 (line 6338)
                                                ;   {runtime_call}
  0x00007fe8f111383c: nop    
  0x00007fe8f111383d: nop    
  0x00007fe8f111383e: mov    0x2a8(%r15),%rax
  0x00007fe8f1113845: mov    $0x0,%r10
  0x00007fe8f111384f: mov    %r10,0x2a8(%r15)
  0x00007fe8f1113856: mov    $0x0,%r10
  0x00007fe8f1113860: mov    %r10,0x2b0(%r15)
  0x00007fe8f1113867: add    $0x30,%rsp
  0x00007fe8f111386b: pop    %rbp
  0x00007fe8f111386c: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1113871: hlt    
  0x00007fe8f1113872: hlt    
  0x00007fe8f1113873: hlt    
  0x00007fe8f1113874: hlt    
  0x00007fe8f1113875: hlt    
  0x00007fe8f1113876: hlt    
  0x00007fe8f1113877: hlt    
  0x00007fe8f1113878: hlt    
  0x00007fe8f1113879: hlt    
  0x00007fe8f111387a: hlt    
  0x00007fe8f111387b: hlt    
  0x00007fe8f111387c: hlt    
  0x00007fe8f111387d: hlt    
  0x00007fe8f111387e: hlt    
  0x00007fe8f111387f: hlt    
[Stub Code]
  0x00007fe8f1113880: nop                       ;   {no_reloc}
  0x00007fe8f1113881: nop    
  0x00007fe8f1113882: nop    
  0x00007fe8f1113883: nop    
  0x00007fe8f1113884: nop    
  0x00007fe8f1113885: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111388f: jmpq   0x00007fe8f111388f  ;   {runtime_call}
  0x00007fe8f1113894: nop    
  0x00007fe8f1113895: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111389f: jmpq   0x00007fe8f111389f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f11138a4: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f11138a9: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11138ae: sub    $0x80,%rsp
  0x00007fe8f11138b5: mov    %rax,0x78(%rsp)
  0x00007fe8f11138ba: mov    %rcx,0x70(%rsp)
  0x00007fe8f11138bf: mov    %rdx,0x68(%rsp)
  0x00007fe8f11138c4: mov    %rbx,0x60(%rsp)
  0x00007fe8f11138c9: mov    %rbp,0x50(%rsp)
  0x00007fe8f11138ce: mov    %rsi,0x48(%rsp)
  0x00007fe8f11138d3: mov    %rdi,0x40(%rsp)
  0x00007fe8f11138d8: mov    %r8,0x38(%rsp)
  0x00007fe8f11138dd: mov    %r9,0x30(%rsp)
  0x00007fe8f11138e2: mov    %r10,0x28(%rsp)
  0x00007fe8f11138e7: mov    %r11,0x20(%rsp)
  0x00007fe8f11138ec: mov    %r12,0x18(%rsp)
  0x00007fe8f11138f1: mov    %r13,0x10(%rsp)
  0x00007fe8f11138f6: mov    %r14,0x8(%rsp)
  0x00007fe8f11138fb: mov    %r15,(%rsp)
  0x00007fe8f11138ff: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1113909: mov    $0x7fe8f11138a9,%rsi  ;   {internal_word}
  0x00007fe8f1113913: mov    %rsp,%rdx
  0x00007fe8f1113916: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f111391a: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f111391f: hlt    
[Deopt Handler Code]
  0x00007fe8f1113920: mov    $0x7fe8f1113920,%r10  ;   {section_word}
  0x00007fe8f111392a: push   %r10
  0x00007fe8f111392c: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1113931: hlt    
  0x00007fe8f1113932: hlt    
  0x00007fe8f1113933: hlt    
  0x00007fe8f1113934: hlt    
  0x00007fe8f1113935: hlt    
  0x00007fe8f1113936: hlt    
  0x00007fe8f1113937: hlt    
Decoding compiled method 0x00007fe8f1113a50:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays'
  # parm0:    rsi:rsi   = '[C'
  # parm1:    rdx       = int
  #           [sp+0x70]  (sp of caller)
  0x00007fe8f1113be0: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1113be7: push   %rbp
  0x00007fe8f1113be8: sub    $0x60,%rsp
  0x00007fe8f1113bec: mov    %rsi,%r8
  0x00007fe8f1113bef: mov    %rdx,%r9
  0x00007fe8f1113bf2: mov    $0x7fe8ea746db8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1113bfc: mov    0xdc(%rbx),%edx
  0x00007fe8f1113c02: add    $0x8,%edx
  0x00007fe8f1113c05: mov    %edx,0xdc(%rbx)
  0x00007fe8f1113c0b: mov    $0x7fe8ea615238,%rbx  ;   {metadata({method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1113c15: and    $0x1ff8,%edx
  0x00007fe8f1113c1b: cmp    $0x0,%edx
  0x00007fe8f1113c1e: je     0x00007fe8f1113dca  ;*iload_1
                                                ; - java.util.Arrays::copyOf@0 (line 3332)

  0x00007fe8f1113c24: mov    %r9,%rbx
  0x00007fe8f1113c27: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007fe8f1113c31: movslq %ebx,%rbx
  0x00007fe8f1113c34: mov    %rbx,%rdi
  0x00007fe8f1113c37: cmp    $0xffffff,%rbx
  0x00007fe8f1113c3e: ja     0x00007fe8f1113de1
  0x00007fe8f1113c44: mov    $0x17,%rsi
  0x00007fe8f1113c4e: lea    (%rsi,%rbx,2),%rsi
  0x00007fe8f1113c52: and    $0xfffffffffffffff8,%rsi
  0x00007fe8f1113c56: mov    0x60(%r15),%rax
  0x00007fe8f1113c5a: lea    (%rax,%rsi,1),%rsi
  0x00007fe8f1113c5e: cmp    0x70(%r15),%rsi
  0x00007fe8f1113c62: ja     0x00007fe8f1113de1
  0x00007fe8f1113c68: mov    %rsi,0x60(%r15)
  0x00007fe8f1113c6c: sub    %rax,%rsi
  0x00007fe8f1113c6f: movq   $0x1,(%rax)
  0x00007fe8f1113c76: mov    %rdx,%rcx
  0x00007fe8f1113c79: shr    $0x3,%rcx
  0x00007fe8f1113c7d: mov    %ecx,0x8(%rax)
  0x00007fe8f1113c80: mov    %ebx,0xc(%rax)
  0x00007fe8f1113c83: sub    $0x10,%rsi
  0x00007fe8f1113c87: je     0x00007fe8f1113c9e
  0x00007fe8f1113c8d: xor    %rbx,%rbx
  0x00007fe8f1113c90: shr    $0x3,%rsi
  0x00007fe8f1113c94: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007fe8f1113c99: dec    %rsi
  0x00007fe8f1113c9c: jne    0x00007fe8f1113c94  ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)

  0x00007fe8f1113c9e: mov    0xc(%r8),%esi      ;*arraylength
                                                ; - java.util.Arrays::copyOf@9 (line 3333)
                                                ; implicit exception: dispatches to 0x00007fe8f1113deb
  0x00007fe8f1113ca2: mov    $0x7fe8ea746db8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1113cac: addq   $0x1,0x108(%rdx)
  0x00007fe8f1113cb4: mov    $0x7fe8ea6cb1c0,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1113cbe: mov    0xdc(%rdx),%ecx
  0x00007fe8f1113cc4: add    $0x8,%ecx
  0x00007fe8f1113cc7: mov    %ecx,0xdc(%rdx)
  0x00007fe8f1113ccd: mov    $0x7fe8ea5f0b90,%rdx  ;   {metadata({method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1113cd7: and    $0x7ffff8,%ecx
  0x00007fe8f1113cdd: cmp    $0x0,%ecx
  0x00007fe8f1113ce0: je     0x00007fe8f1113df0
  0x00007fe8f1113ce6: cmp    %r9d,%esi
  0x00007fe8f1113ce9: mov    $0x7fe8ea6cb1c0,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1113cf3: mov    $0x108,%rcx
  0x00007fe8f1113cfd: jg     0x00007fe8f1113d0d
  0x00007fe8f1113d03: mov    $0x118,%rcx
  0x00007fe8f1113d0d: mov    (%rdx,%rcx,1),%rdi
  0x00007fe8f1113d11: lea    0x1(%rdi),%rdi
  0x00007fe8f1113d15: mov    %rdi,(%rdx,%rcx,1)
  0x00007fe8f1113d19: jg     0x00007fe8f1113d32  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)

  0x00007fe8f1113d1f: mov    $0x7fe8ea6cb1c0,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1113d29: incl   0x128(%rdx)
  0x00007fe8f1113d2f: mov    %rsi,%r9           ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)

  0x00007fe8f1113d32: mov    $0x7fe8ea746db8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1113d3c: addq   $0x1,0x118(%rsi)
  0x00007fe8f1113d44: mov    %r8,%rsi
  0x00007fe8f1113d47: mov    $0x0,%edx
  0x00007fe8f1113d4c: mov    %rax,%rcx
  0x00007fe8f1113d4f: mov    $0x0,%r8d
  0x00007fe8f1113d55: mov    %rax,0x50(%rsp)
  0x00007fe8f1113d5a: lea    (%rdx,%r9,1),%rdi
  0x00007fe8f1113d5e: cmp    0xc(%rsi),%edi
  0x00007fe8f1113d61: ja     0x00007fe8f1113e07
  0x00007fe8f1113d67: lea    (%r8,%r9,1),%rdi
  0x00007fe8f1113d6b: cmp    0xc(%rcx),%edi
  0x00007fe8f1113d6e: ja     0x00007fe8f1113e07
  0x00007fe8f1113d74: test   %r9d,%r9d
  0x00007fe8f1113d77: jl     0x00007fe8f1113e07
  0x00007fe8f1113d7d: je     0x00007fe8f1113db9
  0x00007fe8f1113d83: movslq %edx,%rdx
  0x00007fe8f1113d86: movslq %r8d,%r8
  0x00007fe8f1113d89: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007fe8f1113d8e: lea    0x10(%rcx,%r8,2),%rsi
  0x00007fe8f1113d93: mov    %r9,%rdx
  0x00007fe8f1113d96: test   $0xf,%esp
  0x00007fe8f1113d9c: je     0x00007fe8f1113db4
  0x00007fe8f1113da2: sub    $0x8,%rsp
  0x00007fe8f1113da6: callq  Stub::jshort_disjoint_arraycopy
                                                ;   {runtime_call}
  0x00007fe8f1113dab: add    $0x8,%rsp
  0x00007fe8f1113daf: jmpq   0x00007fe8f1113db9
  0x00007fe8f1113db4: callq  Stub::jshort_disjoint_arraycopy
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ;   {runtime_call}
  0x00007fe8f1113db9: mov    0x50(%rsp),%rax
  0x00007fe8f1113dbe: add    $0x60,%rsp
  0x00007fe8f1113dc2: pop    %rbp
  0x00007fe8f1113dc3: test   %eax,0x17553337(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1113dc9: retq   
  0x00007fe8f1113dca: mov    %rbx,0x8(%rsp)
  0x00007fe8f1113dcf: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1113dd7: callq  0x00007fe8f10fd5a0  ; OopMap{r8=Oop off=508}
                                                ;*synchronization entry
                                                ; - java.util.Arrays::copyOf@-1 (line 3332)
                                                ;   {runtime_call}
  0x00007fe8f1113ddc: jmpq   0x00007fe8f1113c24
  0x00007fe8f1113de1: callq  0x00007fe8f10fa6a0  ; OopMap{r8=Oop off=518}
                                                ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)
                                                ;   {runtime_call}
  0x00007fe8f1113de6: jmpq   0x00007fe8f1113c9e
  0x00007fe8f1113deb: callq  0x00007fe8f10f9680  ; OopMap{r8=Oop rax=Oop off=528}
                                                ;*arraylength
                                                ; - java.util.Arrays::copyOf@9 (line 3333)
                                                ;   {runtime_call}
  0x00007fe8f1113df0: mov    %rdx,0x8(%rsp)
  0x00007fe8f1113df5: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1113dfd: callq  0x00007fe8f10fd5a0  ; OopMap{r8=Oop rax=Oop off=546}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ;   {runtime_call}
  0x00007fe8f1113e02: jmpq   0x00007fe8f1113ce6
  0x00007fe8f1113e07: callq  0x00007fe8f1046420  ; OopMap{[80]=Oop off=556}
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ;   {static_call}
  0x00007fe8f1113e0c: jmp    0x00007fe8f1113db9
  0x00007fe8f1113e0e: nop    
  0x00007fe8f1113e0f: nop    
  0x00007fe8f1113e10: mov    0x2a8(%r15),%rax
  0x00007fe8f1113e17: mov    $0x0,%r10
  0x00007fe8f1113e21: mov    %r10,0x2a8(%r15)
  0x00007fe8f1113e28: mov    $0x0,%r10
  0x00007fe8f1113e32: mov    %r10,0x2b0(%r15)
  0x00007fe8f1113e39: add    $0x60,%rsp
  0x00007fe8f1113e3d: pop    %rbp
  0x00007fe8f1113e3e: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1113e43: hlt    
  0x00007fe8f1113e44: hlt    
  0x00007fe8f1113e45: hlt    
  0x00007fe8f1113e46: hlt    
  0x00007fe8f1113e47: hlt    
  0x00007fe8f1113e48: hlt    
  0x00007fe8f1113e49: hlt    
  0x00007fe8f1113e4a: hlt    
  0x00007fe8f1113e4b: hlt    
  0x00007fe8f1113e4c: hlt    
  0x00007fe8f1113e4d: hlt    
  0x00007fe8f1113e4e: hlt    
  0x00007fe8f1113e4f: hlt    
  0x00007fe8f1113e50: hlt    
  0x00007fe8f1113e51: hlt    
  0x00007fe8f1113e52: hlt    
  0x00007fe8f1113e53: hlt    
  0x00007fe8f1113e54: hlt    
  0x00007fe8f1113e55: hlt    
  0x00007fe8f1113e56: hlt    
  0x00007fe8f1113e57: hlt    
  0x00007fe8f1113e58: hlt    
  0x00007fe8f1113e59: hlt    
  0x00007fe8f1113e5a: hlt    
  0x00007fe8f1113e5b: hlt    
  0x00007fe8f1113e5c: hlt    
  0x00007fe8f1113e5d: hlt    
  0x00007fe8f1113e5e: hlt    
  0x00007fe8f1113e5f: hlt    
[Stub Code]
  0x00007fe8f1113e60: nop                       ;   {no_reloc}
  0x00007fe8f1113e61: nop    
  0x00007fe8f1113e62: nop    
  0x00007fe8f1113e63: nop    
  0x00007fe8f1113e64: nop    
  0x00007fe8f1113e65: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1113e6f: jmpq   0x00007fe8f1113e6f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f1113e74: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f1113e79: mov    %rsp,-0x28(%rsp)
  0x00007fe8f1113e7e: sub    $0x80,%rsp
  0x00007fe8f1113e85: mov    %rax,0x78(%rsp)
  0x00007fe8f1113e8a: mov    %rcx,0x70(%rsp)
  0x00007fe8f1113e8f: mov    %rdx,0x68(%rsp)
  0x00007fe8f1113e94: mov    %rbx,0x60(%rsp)
  0x00007fe8f1113e99: mov    %rbp,0x50(%rsp)
  0x00007fe8f1113e9e: mov    %rsi,0x48(%rsp)
  0x00007fe8f1113ea3: mov    %rdi,0x40(%rsp)
  0x00007fe8f1113ea8: mov    %r8,0x38(%rsp)
  0x00007fe8f1113ead: mov    %r9,0x30(%rsp)
  0x00007fe8f1113eb2: mov    %r10,0x28(%rsp)
  0x00007fe8f1113eb7: mov    %r11,0x20(%rsp)
  0x00007fe8f1113ebc: mov    %r12,0x18(%rsp)
  0x00007fe8f1113ec1: mov    %r13,0x10(%rsp)
  0x00007fe8f1113ec6: mov    %r14,0x8(%rsp)
  0x00007fe8f1113ecb: mov    %r15,(%rsp)
  0x00007fe8f1113ecf: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1113ed9: mov    $0x7fe8f1113e79,%rsi  ;   {internal_word}
  0x00007fe8f1113ee3: mov    %rsp,%rdx
  0x00007fe8f1113ee6: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1113eea: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1113eef: hlt    
[Deopt Handler Code]
  0x00007fe8f1113ef0: mov    $0x7fe8f1113ef0,%r10  ;   {section_word}
  0x00007fe8f1113efa: push   %r10
  0x00007fe8f1113efc: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1113f01: hlt    
  0x00007fe8f1113f02: hlt    
  0x00007fe8f1113f03: hlt    
  0x00007fe8f1113f04: hlt    
  0x00007fe8f1113f05: hlt    
  0x00007fe8f1113f06: hlt    
  0x00007fe8f1113f07: hlt    
Decoding compiled method 0x00007fe8f1114090:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea501e88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1114200: mov    0x8(%rsi),%r10d
  0x00007fe8f1114204: shl    $0x3,%r10
  0x00007fe8f1114208: cmp    %rax,%r10
  0x00007fe8f111420b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1114211: nopw   0x0(%rax,%rax,1)
  0x00007fe8f111421c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1114220: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1114227: push   %rbp
  0x00007fe8f1114228: sub    $0x30,%rsp
  0x00007fe8f111422c: mov    $0x7fe8ea746f48,%rcx  ;   {metadata(method data for {method} {0x00007fe8ea501e88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String')}
  0x00007fe8f1114236: mov    0xdc(%rcx),%edi
  0x00007fe8f111423c: add    $0x8,%edi
  0x00007fe8f111423f: mov    %edi,0xdc(%rcx)
  0x00007fe8f1114245: mov    $0x7fe8ea501e88,%rcx  ;   {metadata({method} {0x00007fe8ea501e88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String')}
  0x00007fe8f111424f: and    $0x1ff8,%edi
  0x00007fe8f1114255: cmp    $0x0,%edi
  0x00007fe8f1114258: je     0x00007fe8f1114308  ;*aload_0
                                                ; - java.lang.String::startsWith@0 (line 1434)

  0x00007fe8f111425e: mov    %rsi,%rcx
  0x00007fe8f1114261: mov    $0x7fe8ea746f48,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea501e88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String')}
  0x00007fe8f111426b: mov    0x8(%rcx),%ecx
  0x00007fe8f111426e: shl    $0x3,%rcx
  0x00007fe8f1114272: cmp    0x110(%rdi),%rcx
  0x00007fe8f1114279: jne    0x00007fe8f1114288
  0x00007fe8f111427b: addq   $0x1,0x118(%rdi)
  0x00007fe8f1114283: jmpq   0x00007fe8f11142ee
  0x00007fe8f1114288: cmp    0x120(%rdi),%rcx
  0x00007fe8f111428f: jne    0x00007fe8f111429e
  0x00007fe8f1114291: addq   $0x1,0x128(%rdi)
  0x00007fe8f1114299: jmpq   0x00007fe8f11142ee
  0x00007fe8f111429e: cmpq   $0x0,0x110(%rdi)
  0x00007fe8f11142a9: jne    0x00007fe8f11142c2
  0x00007fe8f11142ab: mov    %rcx,0x110(%rdi)
  0x00007fe8f11142b2: movq   $0x1,0x118(%rdi)
  0x00007fe8f11142bd: jmpq   0x00007fe8f11142ee
  0x00007fe8f11142c2: cmpq   $0x0,0x120(%rdi)
  0x00007fe8f11142cd: jne    0x00007fe8f11142e6
  0x00007fe8f11142cf: mov    %rcx,0x120(%rdi)
  0x00007fe8f11142d6: movq   $0x1,0x128(%rdi)
  0x00007fe8f11142e1: jmpq   0x00007fe8f11142ee
  0x00007fe8f11142e6: addq   $0x1,0x108(%rdi)
  0x00007fe8f11142ee: mov    $0x0,%ecx          ;*invokevirtual startsWith
                                                ; - java.lang.String::startsWith@3 (line 1434)

  0x00007fe8f11142f3: nop    
  0x00007fe8f11142f4: nop    
  0x00007fe8f11142f5: nop    
  0x00007fe8f11142f6: nop    
  0x00007fe8f11142f7: callq  0x00007fe8f1046020  ; OopMap{off=252}
                                                ;*invokevirtual startsWith
                                                ; - java.lang.String::startsWith@3 (line 1434)
                                                ;   {optimized virtual_call}
  0x00007fe8f11142fc: add    $0x30,%rsp
  0x00007fe8f1114300: pop    %rbp
  0x00007fe8f1114301: test   %eax,0x17552df9(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1114307: retq   
  0x00007fe8f1114308: mov    %rcx,0x8(%rsp)
  0x00007fe8f111430d: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1114315: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop rdx=Oop off=282}
                                                ;*synchronization entry
                                                ; - java.lang.String::startsWith@-1 (line 1434)
                                                ;   {runtime_call}
  0x00007fe8f111431a: jmpq   0x00007fe8f111425e
  0x00007fe8f111431f: nop    
  0x00007fe8f1114320: nop    
  0x00007fe8f1114321: mov    0x2a8(%r15),%rax
  0x00007fe8f1114328: mov    $0x0,%r10
  0x00007fe8f1114332: mov    %r10,0x2a8(%r15)
  0x00007fe8f1114339: mov    $0x0,%r10
  0x00007fe8f1114343: mov    %r10,0x2b0(%r15)
  0x00007fe8f111434a: add    $0x30,%rsp
  0x00007fe8f111434e: pop    %rbp
  0x00007fe8f111434f: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1114354: hlt    
  0x00007fe8f1114355: hlt    
  0x00007fe8f1114356: hlt    
  0x00007fe8f1114357: hlt    
  0x00007fe8f1114358: hlt    
  0x00007fe8f1114359: hlt    
  0x00007fe8f111435a: hlt    
  0x00007fe8f111435b: hlt    
  0x00007fe8f111435c: hlt    
  0x00007fe8f111435d: hlt    
  0x00007fe8f111435e: hlt    
  0x00007fe8f111435f: hlt    
[Stub Code]
  0x00007fe8f1114360: nop                       ;   {no_reloc}
  0x00007fe8f1114361: nop    
  0x00007fe8f1114362: nop    
  0x00007fe8f1114363: nop    
  0x00007fe8f1114364: nop    
  0x00007fe8f1114365: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f111436f: jmpq   0x00007fe8f111436f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f1114374: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f1114379: mov    %rsp,-0x28(%rsp)
  0x00007fe8f111437e: sub    $0x80,%rsp
  0x00007fe8f1114385: mov    %rax,0x78(%rsp)
  0x00007fe8f111438a: mov    %rcx,0x70(%rsp)
  0x00007fe8f111438f: mov    %rdx,0x68(%rsp)
  0x00007fe8f1114394: mov    %rbx,0x60(%rsp)
  0x00007fe8f1114399: mov    %rbp,0x50(%rsp)
  0x00007fe8f111439e: mov    %rsi,0x48(%rsp)
  0x00007fe8f11143a3: mov    %rdi,0x40(%rsp)
  0x00007fe8f11143a8: mov    %r8,0x38(%rsp)
  0x00007fe8f11143ad: mov    %r9,0x30(%rsp)
  0x00007fe8f11143b2: mov    %r10,0x28(%rsp)
  0x00007fe8f11143b7: mov    %r11,0x20(%rsp)
  0x00007fe8f11143bc: mov    %r12,0x18(%rsp)
  0x00007fe8f11143c1: mov    %r13,0x10(%rsp)
  0x00007fe8f11143c6: mov    %r14,0x8(%rsp)
  0x00007fe8f11143cb: mov    %r15,(%rsp)
  0x00007fe8f11143cf: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f11143d9: mov    $0x7fe8f1114379,%rsi  ;   {internal_word}
  0x00007fe8f11143e3: mov    %rsp,%rdx
  0x00007fe8f11143e6: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f11143ea: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f11143ef: hlt    
[Deopt Handler Code]
  0x00007fe8f11143f0: mov    $0x7fe8f11143f0,%r10  ;   {section_word}
  0x00007fe8f11143fa: push   %r10
  0x00007fe8f11143fc: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1114401: hlt    
  0x00007fe8f1114402: hlt    
  0x00007fe8f1114403: hlt    
  0x00007fe8f1114404: hlt    
  0x00007fe8f1114405: hlt    
  0x00007fe8f1114406: hlt    
  0x00007fe8f1114407: hlt    
Decoding compiled method 0x00007fe8f11144d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea5cb448} 'size' '()I' in 'java/util/ArrayList'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1114620: mov    0x8(%rsi),%r10d
  0x00007fe8f1114624: shl    $0x3,%r10
  0x00007fe8f1114628: cmp    %rax,%r10
  0x00007fe8f111462b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1114631: nopw   0x0(%rax,%rax,1)
  0x00007fe8f111463c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1114640: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1114647: push   %rbp
  0x00007fe8f1114648: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.util.ArrayList::size@0 (line 278)

  0x00007fe8f111464c: mov    0x10(%rsi),%eax    ;*getfield size
                                                ; - java.util.ArrayList::size@1 (line 278)

  0x00007fe8f111464f: add    $0x30,%rsp
  0x00007fe8f1114653: pop    %rbp
  0x00007fe8f1114654: test   %eax,0x17552aa6(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f111465a: retq   
  0x00007fe8f111465b: nop    
  0x00007fe8f111465c: nop    
  0x00007fe8f111465d: mov    0x2a8(%r15),%rax
  0x00007fe8f1114664: mov    $0x0,%r10
  0x00007fe8f111466e: mov    %r10,0x2a8(%r15)
  0x00007fe8f1114675: mov    $0x0,%r10
  0x00007fe8f111467f: mov    %r10,0x2b0(%r15)
  0x00007fe8f1114686: add    $0x30,%rsp
  0x00007fe8f111468a: pop    %rbp
  0x00007fe8f111468b: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1114690: hlt    
  0x00007fe8f1114691: hlt    
  0x00007fe8f1114692: hlt    
  0x00007fe8f1114693: hlt    
  0x00007fe8f1114694: hlt    
  0x00007fe8f1114695: hlt    
  0x00007fe8f1114696: hlt    
  0x00007fe8f1114697: hlt    
  0x00007fe8f1114698: hlt    
  0x00007fe8f1114699: hlt    
  0x00007fe8f111469a: hlt    
  0x00007fe8f111469b: hlt    
  0x00007fe8f111469c: hlt    
  0x00007fe8f111469d: hlt    
  0x00007fe8f111469e: hlt    
  0x00007fe8f111469f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f11146a0: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f11146a5: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11146aa: sub    $0x80,%rsp
  0x00007fe8f11146b1: mov    %rax,0x78(%rsp)
  0x00007fe8f11146b6: mov    %rcx,0x70(%rsp)
  0x00007fe8f11146bb: mov    %rdx,0x68(%rsp)
  0x00007fe8f11146c0: mov    %rbx,0x60(%rsp)
  0x00007fe8f11146c5: mov    %rbp,0x50(%rsp)
  0x00007fe8f11146ca: mov    %rsi,0x48(%rsp)
  0x00007fe8f11146cf: mov    %rdi,0x40(%rsp)
  0x00007fe8f11146d4: mov    %r8,0x38(%rsp)
  0x00007fe8f11146d9: mov    %r9,0x30(%rsp)
  0x00007fe8f11146de: mov    %r10,0x28(%rsp)
  0x00007fe8f11146e3: mov    %r11,0x20(%rsp)
  0x00007fe8f11146e8: mov    %r12,0x18(%rsp)
  0x00007fe8f11146ed: mov    %r13,0x10(%rsp)
  0x00007fe8f11146f2: mov    %r14,0x8(%rsp)
  0x00007fe8f11146f7: mov    %r15,(%rsp)
  0x00007fe8f11146fb: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1114705: mov    $0x7fe8f11146a5,%rsi  ;   {internal_word}
  0x00007fe8f111470f: mov    %rsp,%rdx
  0x00007fe8f1114712: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1114716: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f111471b: hlt    
[Deopt Handler Code]
  0x00007fe8f111471c: mov    $0x7fe8f111471c,%r10  ;   {section_word}
  0x00007fe8f1114726: push   %r10
  0x00007fe8f1114728: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f111472d: hlt    
  0x00007fe8f111472e: hlt    
  0x00007fe8f111472f: hlt    
Decoding compiled method 0x00007fe8f11147d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea4fd480} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007fe8f1114920: mov    0x8(%rsi),%r10d
  0x00007fe8f1114924: shl    $0x3,%r10
  0x00007fe8f1114928: cmp    %rax,%r10
  0x00007fe8f111492b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1114931: nopw   0x0(%rax,%rax,1)
  0x00007fe8f111493c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1114940: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1114947: push   %rbp
  0x00007fe8f1114948: sub    $0x30,%rsp
  0x00007fe8f111494c: mov    %rsi,%rdi          ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)

  0x00007fe8f111494f: mov    %rsi,0x20(%rsp)
  0x00007fe8f1114954: callq  0x00007fe8f10f98a0  ; OopMap{[32]=Oop off=57}
                                                ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)
                                                ;   {runtime_call}
  0x00007fe8f1114959: add    $0x30,%rsp
  0x00007fe8f111495d: pop    %rbp
  0x00007fe8f111495e: test   %eax,0x1755279c(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1114964: retq   
  0x00007fe8f1114965: nop    
  0x00007fe8f1114966: nop    
  0x00007fe8f1114967: mov    0x2a8(%r15),%rax
  0x00007fe8f111496e: mov    $0x0,%r10
  0x00007fe8f1114978: mov    %r10,0x2a8(%r15)
  0x00007fe8f111497f: mov    $0x0,%r10
  0x00007fe8f1114989: mov    %r10,0x2b0(%r15)
  0x00007fe8f1114990: add    $0x30,%rsp
  0x00007fe8f1114994: pop    %rbp
  0x00007fe8f1114995: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f111499a: hlt    
  0x00007fe8f111499b: hlt    
  0x00007fe8f111499c: hlt    
  0x00007fe8f111499d: hlt    
  0x00007fe8f111499e: hlt    
  0x00007fe8f111499f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fe8f11149a0: callq  0x00007fe8f10fb460  ;   {no_reloc}
  0x00007fe8f11149a5: mov    %rsp,-0x28(%rsp)
  0x00007fe8f11149aa: sub    $0x80,%rsp
  0x00007fe8f11149b1: mov    %rax,0x78(%rsp)
  0x00007fe8f11149b6: mov    %rcx,0x70(%rsp)
  0x00007fe8f11149bb: mov    %rdx,0x68(%rsp)
  0x00007fe8f11149c0: mov    %rbx,0x60(%rsp)
  0x00007fe8f11149c5: mov    %rbp,0x50(%rsp)
  0x00007fe8f11149ca: mov    %rsi,0x48(%rsp)
  0x00007fe8f11149cf: mov    %rdi,0x40(%rsp)
  0x00007fe8f11149d4: mov    %r8,0x38(%rsp)
  0x00007fe8f11149d9: mov    %r9,0x30(%rsp)
  0x00007fe8f11149de: mov    %r10,0x28(%rsp)
  0x00007fe8f11149e3: mov    %r11,0x20(%rsp)
  0x00007fe8f11149e8: mov    %r12,0x18(%rsp)
  0x00007fe8f11149ed: mov    %r13,0x10(%rsp)
  0x00007fe8f11149f2: mov    %r14,0x8(%rsp)
  0x00007fe8f11149f7: mov    %r15,(%rsp)
  0x00007fe8f11149fb: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1114a05: mov    $0x7fe8f11149a5,%rsi  ;   {internal_word}
  0x00007fe8f1114a0f: mov    %rsp,%rdx
  0x00007fe8f1114a12: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1114a16: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1114a1b: hlt    
[Deopt Handler Code]
  0x00007fe8f1114a1c: mov    $0x7fe8f1114a1c,%r10  ;   {section_word}
  0x00007fe8f1114a26: push   %r10
  0x00007fe8f1114a28: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1114a2d: hlt    
  0x00007fe8f1114a2e: hlt    
  0x00007fe8f1114a2f: hlt    
Decoding compiled method 0x00007fe8f1114ad0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x50]  (sp of caller)
  0x00007fe8f1114c60: mov    0x8(%rsi),%r10d
  0x00007fe8f1114c64: shl    $0x3,%r10
  0x00007fe8f1114c68: cmp    %rax,%r10
  0x00007fe8f1114c6b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1114c71: nopw   0x0(%rax,%rax,1)
  0x00007fe8f1114c7c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1114c80: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1114c87: push   %rbp
  0x00007fe8f1114c88: sub    $0x40,%rsp
  0x00007fe8f1114c8c: mov    $0x7fe8ea7471b0,%rax  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114c96: mov    0xdc(%rax),%edi
  0x00007fe8f1114c9c: add    $0x8,%edi
  0x00007fe8f1114c9f: mov    %edi,0xdc(%rax)
  0x00007fe8f1114ca5: mov    $0x7fe8ea5023c8,%rax  ;   {metadata({method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114caf: and    $0x1ff8,%edi
  0x00007fe8f1114cb5: cmp    $0x0,%edi
  0x00007fe8f1114cb8: je     0x00007fe8f1114eb8  ;*iload_1
                                                ; - java.lang.String::lastIndexOf@0 (line 1649)

  0x00007fe8f1114cbe: cmp    $0x10000,%edx
  0x00007fe8f1114cc4: mov    $0x7fe8ea7471b0,%rax  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114cce: mov    $0x108,%rdi
  0x00007fe8f1114cd8: jge    0x00007fe8f1114ce8
  0x00007fe8f1114cde: mov    $0x118,%rdi
  0x00007fe8f1114ce8: mov    (%rax,%rdi,1),%rbx
  0x00007fe8f1114cec: lea    0x1(%rbx),%rbx
  0x00007fe8f1114cf0: mov    %rbx,(%rax,%rdi,1)
  0x00007fe8f1114cf4: jge    0x00007fe8f1114e91  ;*if_icmpge
                                                ; - java.lang.String::lastIndexOf@3 (line 1649)

  0x00007fe8f1114cfa: mov    0xc(%rsi),%eax
  0x00007fe8f1114cfd: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::lastIndexOf@7 (line 1652)

  0x00007fe8f1114d01: mov    0xc(%rax),%esi     ;*arraylength
                                                ; - java.lang.String::lastIndexOf@13 (line 1653)
                                                ; implicit exception: dispatches to 0x00007fe8f1114ecf
  0x00007fe8f1114d04: dec    %esi
  0x00007fe8f1114d06: mov    $0x7fe8ea7471b0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114d10: addq   $0x1,0x128(%rdi)
  0x00007fe8f1114d18: mov    $0x7fe8ea6cb1c0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1114d22: mov    0xdc(%rdi),%ebx
  0x00007fe8f1114d28: add    $0x8,%ebx
  0x00007fe8f1114d2b: mov    %ebx,0xdc(%rdi)
  0x00007fe8f1114d31: mov    $0x7fe8ea5f0b90,%rdi  ;   {metadata({method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1114d3b: and    $0x7ffff8,%ebx
  0x00007fe8f1114d41: cmp    $0x0,%ebx
  0x00007fe8f1114d44: je     0x00007fe8f1114ed4
  0x00007fe8f1114d4a: cmp    %esi,%ecx
  0x00007fe8f1114d4c: mov    $0x7fe8ea6cb1c0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1114d56: mov    $0x108,%rbx
  0x00007fe8f1114d60: jg     0x00007fe8f1114d70
  0x00007fe8f1114d66: mov    $0x118,%rbx
  0x00007fe8f1114d70: mov    (%rdi,%rbx,1),%r8
  0x00007fe8f1114d74: lea    0x1(%r8),%r8
  0x00007fe8f1114d78: mov    %r8,(%rdi,%rbx,1)
  0x00007fe8f1114d7c: jg     0x00007fe8f1114d97  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)

  0x00007fe8f1114d82: mov    $0x7fe8ea6cb1c0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1114d8c: incl   0x128(%rsi)
  0x00007fe8f1114d92: jmpq   0x00007fe8f1114e33  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)

  0x00007fe8f1114d97: mov    %rsi,%rcx
  0x00007fe8f1114d9a: jmpq   0x00007fe8f1114e33  ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)

  0x00007fe8f1114d9f: nop    
  0x00007fe8f1114da0: movslq %ecx,%rsi
  0x00007fe8f1114da3: cmp    0xc(%rax),%ecx
  0x00007fe8f1114da6: jae    0x00007fe8f1114eeb
  0x00007fe8f1114dac: movzwl 0x10(%rax,%rsi,2),%esi  ;*caload
                                                ; - java.lang.String::lastIndexOf@29 (line 1655)

  0x00007fe8f1114db1: cmp    %edx,%esi
  0x00007fe8f1114db3: mov    $0x7fe8ea7471b0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114dbd: mov    $0x158,%rdi
  0x00007fe8f1114dc7: jne    0x00007fe8f1114dd7
  0x00007fe8f1114dcd: mov    $0x168,%rdi
  0x00007fe8f1114dd7: mov    (%rsi,%rdi,1),%rbx
  0x00007fe8f1114ddb: lea    0x1(%rbx),%rbx
  0x00007fe8f1114ddf: mov    %rbx,(%rsi,%rdi,1)
  0x00007fe8f1114de3: je     0x00007fe8f1114e71  ;*if_icmpne
                                                ; - java.lang.String::lastIndexOf@31 (line 1655)

  0x00007fe8f1114de9: dec    %ecx
  0x00007fe8f1114deb: mov    $0x7fe8ea7471b0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114df5: mov    0xe0(%rsi),%edi
  0x00007fe8f1114dfb: add    $0x8,%edi
  0x00007fe8f1114dfe: mov    %edi,0xe0(%rsi)
  0x00007fe8f1114e04: mov    $0x7fe8ea5023c8,%rsi  ;   {metadata({method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114e0e: and    $0xfff8,%edi
  0x00007fe8f1114e14: cmp    $0x0,%edi
  0x00007fe8f1114e17: je     0x00007fe8f1114ef4  ; OopMap{rax=Oop off=445}
                                                ;*goto
                                                ; - java.lang.String::lastIndexOf@40 (line 1654)

  0x00007fe8f1114e1d: test   %eax,0x175522dd(%rip)        # 0x00007fe908667100
                                                ;   {poll}
  0x00007fe8f1114e23: mov    $0x7fe8ea7471b0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114e2d: incl   0x178(%rsi)        ;*goto
                                                ; - java.lang.String::lastIndexOf@40 (line 1654)

  0x00007fe8f1114e33: cmp    $0x0,%ecx
  0x00007fe8f1114e36: mov    $0x7fe8ea7471b0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114e40: mov    $0x138,%rdi
  0x00007fe8f1114e4a: jl     0x00007fe8f1114e5a
  0x00007fe8f1114e50: mov    $0x148,%rdi
  0x00007fe8f1114e5a: mov    (%rsi,%rdi,1),%rbx
  0x00007fe8f1114e5e: lea    0x1(%rbx),%rbx
  0x00007fe8f1114e62: mov    %rbx,(%rsi,%rdi,1)
  0x00007fe8f1114e66: jl     0x00007fe8f1114e80
  0x00007fe8f1114e6c: jmpq   0x00007fe8f1114da0  ;*iflt
                                                ; - java.lang.String::lastIndexOf@23 (line 1654)

  0x00007fe8f1114e71: mov    %rcx,%rax
  0x00007fe8f1114e74: add    $0x40,%rsp
  0x00007fe8f1114e78: pop    %rbp
  0x00007fe8f1114e79: test   %eax,0x17552281(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1114e7f: retq                      ;*ireturn
                                                ; - java.lang.String::lastIndexOf@36 (line 1656)

  0x00007fe8f1114e80: mov    $0xffffffff,%eax
  0x00007fe8f1114e85: add    $0x40,%rsp
  0x00007fe8f1114e89: pop    %rbp
  0x00007fe8f1114e8a: test   %eax,0x17552270(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1114e90: retq                      ;*ireturn
                                                ; - java.lang.String::lastIndexOf@44 (line 1659)

  0x00007fe8f1114e91: mov    %rsi,%rdi
  0x00007fe8f1114e94: mov    $0x7fe8ea7471b0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea5023c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007fe8f1114e9e: addq   $0x1,0x190(%rbx)
  0x00007fe8f1114ea6: nop    
  0x00007fe8f1114ea7: callq  0x00007fe8f1046020  ; OopMap{off=588}
                                                ;*invokespecial lastIndexOfSupplementary
                                                ; - java.lang.String::lastIndexOf@48 (line 1661)
                                                ;   {optimized virtual_call}
  0x00007fe8f1114eac: add    $0x40,%rsp
  0x00007fe8f1114eb0: pop    %rbp
  0x00007fe8f1114eb1: test   %eax,0x17552249(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f1114eb7: retq   
  0x00007fe8f1114eb8: mov    %rax,0x8(%rsp)
  0x00007fe8f1114ebd: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1114ec5: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=618}
                                                ;*synchronization entry
                                                ; - java.lang.String::lastIndexOf@-1 (line 1649)
                                                ;   {runtime_call}
  0x00007fe8f1114eca: jmpq   0x00007fe8f1114cbe
  0x00007fe8f1114ecf: callq  0x00007fe8f10f9680  ; OopMap{rax=Oop off=628}
                                                ;*arraylength
                                                ; - java.lang.String::lastIndexOf@13 (line 1653)
                                                ;   {runtime_call}
  0x00007fe8f1114ed4: mov    %rdi,0x8(%rsp)
  0x00007fe8f1114ed9: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1114ee1: callq  0x00007fe8f10fd5a0  ; OopMap{rax=Oop off=646}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)
                                                ;   {runtime_call}
  0x00007fe8f1114ee6: jmpq   0x00007fe8f1114d4a
  0x00007fe8f1114eeb: mov    %rcx,(%rsp)
  0x00007fe8f1114eef: callq  0x00007fe8f106bc40  ; OopMap{rax=Oop off=660}
                                                ;*caload
                                                ; - java.lang.String::lastIndexOf@29 (line 1655)
                                                ;   {runtime_call}
  0x00007fe8f1114ef4: mov    %rsi,0x8(%rsp)
  0x00007fe8f1114ef9: movq   $0x28,(%rsp)
  0x00007fe8f1114f01: callq  0x00007fe8f10fd5a0  ; OopMap{rax=Oop off=678}
                                                ;*goto
                                                ; - java.lang.String::lastIndexOf@40 (line 1654)
                                                ;   {runtime_call}
  0x00007fe8f1114f06: jmpq   0x00007fe8f1114e1d
  0x00007fe8f1114f0b: nop    
  0x00007fe8f1114f0c: nop    
  0x00007fe8f1114f0d: mov    0x2a8(%r15),%rax
  0x00007fe8f1114f14: mov    $0x0,%r10
  0x00007fe8f1114f1e: mov    %r10,0x2a8(%r15)
  0x00007fe8f1114f25: mov    $0x0,%r10
  0x00007fe8f1114f2f: mov    %r10,0x2b0(%r15)
  0x00007fe8f1114f36: add    $0x40,%rsp
  0x00007fe8f1114f3a: pop    %rbp
  0x00007fe8f1114f3b: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
[Stub Code]
  0x00007fe8f1114f40: nop                       ;   {no_reloc}
  0x00007fe8f1114f41: nop    
  0x00007fe8f1114f42: nop    
  0x00007fe8f1114f43: nop    
  0x00007fe8f1114f44: nop    
  0x00007fe8f1114f45: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1114f4f: jmpq   0x00007fe8f1114f4f  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f1114f54: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f1114f59: mov    %rsp,-0x28(%rsp)
  0x00007fe8f1114f5e: sub    $0x80,%rsp
  0x00007fe8f1114f65: mov    %rax,0x78(%rsp)
  0x00007fe8f1114f6a: mov    %rcx,0x70(%rsp)
  0x00007fe8f1114f6f: mov    %rdx,0x68(%rsp)
  0x00007fe8f1114f74: mov    %rbx,0x60(%rsp)
  0x00007fe8f1114f79: mov    %rbp,0x50(%rsp)
  0x00007fe8f1114f7e: mov    %rsi,0x48(%rsp)
  0x00007fe8f1114f83: mov    %rdi,0x40(%rsp)
  0x00007fe8f1114f88: mov    %r8,0x38(%rsp)
  0x00007fe8f1114f8d: mov    %r9,0x30(%rsp)
  0x00007fe8f1114f92: mov    %r10,0x28(%rsp)
  0x00007fe8f1114f97: mov    %r11,0x20(%rsp)
  0x00007fe8f1114f9c: mov    %r12,0x18(%rsp)
  0x00007fe8f1114fa1: mov    %r13,0x10(%rsp)
  0x00007fe8f1114fa6: mov    %r14,0x8(%rsp)
  0x00007fe8f1114fab: mov    %r15,(%rsp)
  0x00007fe8f1114faf: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1114fb9: mov    $0x7fe8f1114f59,%rsi  ;   {internal_word}
  0x00007fe8f1114fc3: mov    %rsp,%rdx
  0x00007fe8f1114fc6: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1114fca: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1114fcf: hlt    
[Deopt Handler Code]
  0x00007fe8f1114fd0: mov    $0x7fe8f1114fd0,%r10  ;   {section_word}
  0x00007fe8f1114fda: push   %r10
  0x00007fe8f1114fdc: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1114fe1: hlt    
  0x00007fe8f1114fe2: hlt    
  0x00007fe8f1114fe3: hlt    
  0x00007fe8f1114fe4: hlt    
  0x00007fe8f1114fe5: hlt    
  0x00007fe8f1114fe6: hlt    
  0x00007fe8f1114fe7: hlt    
Decoding compiled method 0x00007fe8f1115450:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx       = int
  #           [sp+0xa0]  (sp of caller)
  0x00007fe8f1115600: mov    0x8(%rsi),%r10d
  0x00007fe8f1115604: shl    $0x3,%r10
  0x00007fe8f1115608: cmp    %rax,%r10
  0x00007fe8f111560b: jne    0x00007fe8f1045e20  ;   {runtime_call}
  0x00007fe8f1115611: nopw   0x0(%rax,%rax,1)
  0x00007fe8f111561c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007fe8f1115620: mov    %eax,-0x14000(%rsp)
  0x00007fe8f1115627: push   %rbp
  0x00007fe8f1115628: sub    $0x90,%rsp
  0x00007fe8f111562f: mov    $0x7fe8ea6f96d0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1115639: mov    0xdc(%rbx),%edi
  0x00007fe8f111563f: add    $0x8,%edi
  0x00007fe8f1115642: mov    %edi,0xdc(%rbx)
  0x00007fe8f1115648: mov    $0x7fe8ea5715e8,%rbx  ;   {metadata({method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1115652: and    $0x1ff8,%edi
  0x00007fe8f1115658: cmp    $0x0,%edi
  0x00007fe8f111565b: je     0x00007fe8f11159c9  ;*aload_0
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@0 (line 129)

  0x00007fe8f1115661: mov    0x10(%rsi),%r8d
  0x00007fe8f1115665: shl    $0x3,%r8           ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@1 (line 129)

  0x00007fe8f1115669: mov    0xc(%r8),%r9d      ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@4 (line 129)
                                                ; implicit exception: dispatches to 0x00007fe8f11159e0
  0x00007fe8f111566d: mov    %r9,%rbx
  0x00007fe8f1115670: shl    %ebx
  0x00007fe8f1115672: add    $0x2,%ebx
  0x00007fe8f1115675: mov    %rbx,%rdi
  0x00007fe8f1115678: sub    %edx,%edi
  0x00007fe8f111567a: cmp    $0x0,%edi
  0x00007fe8f111567d: mov    $0x7fe8ea6f96d0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1115687: mov    $0x108,%rax
  0x00007fe8f1115691: jge    0x00007fe8f11156a1
  0x00007fe8f1115697: mov    $0x118,%rax
  0x00007fe8f11156a1: mov    (%rdi,%rax,1),%rcx
  0x00007fe8f11156a5: lea    0x1(%rcx),%rcx
  0x00007fe8f11156a9: mov    %rcx,(%rdi,%rax,1)
  0x00007fe8f11156ad: jge    0x00007fe8f11156b6  ;*ifge
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@13 (line 130)

  0x00007fe8f11156b3: mov    %rdx,%rbx          ;*iload_2
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@18 (line 132)

  0x00007fe8f11156b6: cmp    $0x0,%ebx
  0x00007fe8f11156b9: mov    $0x7fe8ea6f96d0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f11156c3: mov    $0x128,%rax
  0x00007fe8f11156cd: jge    0x00007fe8f11156dd
  0x00007fe8f11156d3: mov    $0x138,%rax
  0x00007fe8f11156dd: mov    (%rdi,%rax,1),%rcx
  0x00007fe8f11156e1: lea    0x1(%rcx),%rcx
  0x00007fe8f11156e5: mov    %rcx,(%rdi,%rax,1)
  0x00007fe8f11156e9: jl     0x00007fe8f11156f7  ;*ifge
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@19 (line 132)

  0x00007fe8f11156ef: mov    %rbx,%r11
  0x00007fe8f11156f2: jmpq   0x00007fe8f1115736  ;*aload_0
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@37 (line 137)

  0x00007fe8f11156f7: cmp    $0x0,%edx
  0x00007fe8f11156fa: mov    $0x7fe8ea6f96d0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1115704: mov    $0x148,%rdx
  0x00007fe8f111570e: jge    0x00007fe8f111571e
  0x00007fe8f1115714: mov    $0x158,%rdx
  0x00007fe8f111571e: mov    (%rbx,%rdx,1),%rdi
  0x00007fe8f1115722: lea    0x1(%rdi),%rdi
  0x00007fe8f1115726: mov    %rdi,(%rbx,%rdx,1)
  0x00007fe8f111572a: jl     0x00007fe8f111594b  ;*ifge
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@23 (line 133)

  0x00007fe8f1115730: mov    $0x7fffffff,%r11d  ;*aload_0
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@37 (line 137)

  0x00007fe8f1115736: mov    %rsi,0x70(%rsp)
  0x00007fe8f111573b: mov    $0x7fe8ea6f96d0,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f1115745: addq   $0x1,0x178(%rbx)
  0x00007fe8f111574d: mov    $0x7fe8ea746db8,%rbx  ;   {metadata(method data for {method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1115757: mov    0xdc(%rbx),%edx
  0x00007fe8f111575d: add    $0x8,%edx
  0x00007fe8f1115760: mov    %edx,0xdc(%rbx)
  0x00007fe8f1115766: mov    $0x7fe8ea615238,%rbx  ;   {metadata({method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1115770: and    $0x7ffff8,%edx
  0x00007fe8f1115776: cmp    $0x0,%edx
  0x00007fe8f1115779: je     0x00007fe8f11159e5
  0x00007fe8f111577f: mov    %r11,%rbx
  0x00007fe8f1115782: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007fe8f111578c: movslq %ebx,%rbx
  0x00007fe8f111578f: mov    %rbx,%rdi
  0x00007fe8f1115792: cmp    $0xffffff,%rbx
  0x00007fe8f1115799: ja     0x00007fe8f11159fc
  0x00007fe8f111579f: mov    $0x17,%rsi
  0x00007fe8f11157a9: lea    (%rsi,%rbx,2),%rsi
  0x00007fe8f11157ad: and    $0xfffffffffffffff8,%rsi
  0x00007fe8f11157b1: mov    0x60(%r15),%rax
  0x00007fe8f11157b5: lea    (%rax,%rsi,1),%rsi
  0x00007fe8f11157b9: cmp    0x70(%r15),%rsi
  0x00007fe8f11157bd: ja     0x00007fe8f11159fc
  0x00007fe8f11157c3: mov    %rsi,0x60(%r15)
  0x00007fe8f11157c7: sub    %rax,%rsi
  0x00007fe8f11157ca: movq   $0x1,(%rax)
  0x00007fe8f11157d1: mov    %rdx,%rcx
  0x00007fe8f11157d4: shr    $0x3,%rcx
  0x00007fe8f11157d8: mov    %ecx,0x8(%rax)
  0x00007fe8f11157db: mov    %ebx,0xc(%rax)
  0x00007fe8f11157de: sub    $0x10,%rsi
  0x00007fe8f11157e2: je     0x00007fe8f11157f9
  0x00007fe8f11157e8: xor    %rbx,%rbx
  0x00007fe8f11157eb: shr    $0x3,%rsi
  0x00007fe8f11157ef: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007fe8f11157f4: dec    %rsi
  0x00007fe8f11157f7: jne    0x00007fe8f11157ef  ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007fe8f11157f9: mov    $0x7fe8ea746db8,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1115803: addq   $0x1,0x108(%rsi)
  0x00007fe8f111580b: mov    $0x7fe8ea6cb1c0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1115815: mov    0xdc(%rsi),%edx
  0x00007fe8f111581b: add    $0x8,%edx
  0x00007fe8f111581e: mov    %edx,0xdc(%rsi)
  0x00007fe8f1115824: mov    $0x7fe8ea5f0b90,%rsi  ;   {metadata({method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f111582e: and    $0x7ffff8,%edx
  0x00007fe8f1115834: cmp    $0x0,%edx
  0x00007fe8f1115837: je     0x00007fe8f1115a06
  0x00007fe8f111583d: cmp    %r11d,%r9d
  0x00007fe8f1115840: mov    $0x7fe8ea6cb1c0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f111584a: mov    $0x108,%rdx
  0x00007fe8f1115854: jg     0x00007fe8f1115864
  0x00007fe8f111585a: mov    $0x118,%rdx
  0x00007fe8f1115864: mov    (%rsi,%rdx,1),%rcx
  0x00007fe8f1115868: lea    0x1(%rcx),%rcx
  0x00007fe8f111586c: mov    %rcx,(%rsi,%rdx,1)
  0x00007fe8f1115870: jg     0x00007fe8f111588b  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007fe8f1115876: mov    $0x7fe8ea6cb1c0,%rsi  ;   {metadata(method data for {method} {0x00007fe8ea5f0b90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007fe8f1115880: incl   0x128(%rsi)
  0x00007fe8f1115886: jmpq   0x00007fe8f111588e  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007fe8f111588b: mov    %r11,%r9           ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007fe8f111588e: mov    $0x7fe8ea746db8,%rdx  ;   {metadata(method data for {method} {0x00007fe8ea615238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007fe8f1115898: addq   $0x1,0x118(%rdx)
  0x00007fe8f11158a0: mov    %r8,%rsi
  0x00007fe8f11158a3: mov    $0x0,%edx
  0x00007fe8f11158a8: mov    %rax,%rcx
  0x00007fe8f11158ab: mov    $0x0,%r8d
  0x00007fe8f11158b1: mov    %rax,0x78(%rsp)
  0x00007fe8f11158b6: lea    (%rdx,%r9,1),%rdi
  0x00007fe8f11158ba: cmp    0xc(%rsi),%edi
  0x00007fe8f11158bd: ja     0x00007fe8f1115a1d
  0x00007fe8f11158c3: lea    (%r8,%r9,1),%rdi
  0x00007fe8f11158c7: cmp    0xc(%rcx),%edi
  0x00007fe8f11158ca: ja     0x00007fe8f1115a1d
  0x00007fe8f11158d0: test   %r9d,%r9d
  0x00007fe8f11158d3: jl     0x00007fe8f1115a1d
  0x00007fe8f11158d9: je     0x00007fe8f1115915
  0x00007fe8f11158df: movslq %edx,%rdx
  0x00007fe8f11158e2: movslq %r8d,%r8
  0x00007fe8f11158e5: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007fe8f11158ea: lea    0x10(%rcx,%r8,2),%rsi
  0x00007fe8f11158ef: mov    %r9,%rdx
  0x00007fe8f11158f2: test   $0xf,%esp
  0x00007fe8f11158f8: je     0x00007fe8f1115910
  0x00007fe8f11158fe: sub    $0x8,%rsp
  0x00007fe8f1115902: callq  Stub::jshort_disjoint_arraycopy
                                                ;   {runtime_call}
  0x00007fe8f1115907: add    $0x8,%rsp
  0x00007fe8f111590b: jmpq   0x00007fe8f1115915
  0x00007fe8f1115910: callq  Stub::jshort_disjoint_arraycopy
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007fe8f1115915: mov    0x78(%rsp),%rax
  0x00007fe8f111591a: mov    0x70(%rsp),%rsi
  0x00007fe8f111591f: mov    %rax,%r10
  0x00007fe8f1115922: shr    $0x3,%r10
  0x00007fe8f1115926: mov    %r10d,0x10(%rsi)
  0x00007fe8f111592a: shr    $0x9,%rsi
  0x00007fe8f111592e: mov    $0x7fe9014ff000,%rdx
  0x00007fe8f1115938: movb   $0x0,(%rsi,%rdx,1)  ;*putfield value
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@46 (line 137)

  0x00007fe8f111593c: add    $0x90,%rsp
  0x00007fe8f1115943: pop    %rbp
  0x00007fe8f1115944: test   %eax,0x175517b6(%rip)        # 0x00007fe908667100
                                                ;   {poll_return}
  0x00007fe8f111594a: retq                      ;*return
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@49 (line 138)

  0x00007fe8f111594b: nopl   0x0(%rax,%rax,1)
  0x00007fe8f1115950: jmpq   0x00007fe8f1115a38  ;   {no_reloc}
  0x00007fe8f1115955: add    %al,(%rax)
  0x00007fe8f1115957: add    %al,(%rax)
  0x00007fe8f1115959: add    %cl,-0x75(%rcx)
  0x00007fe8f111595c: rex.RXB (bad)  
  0x00007fe8f111595e: lea    0x20(%rax),%rdi
  0x00007fe8f1115962: cmp    0x70(%r15),%rdi
  0x00007fe8f1115966: ja     0x00007fe8f1115a42
  0x00007fe8f111596c: mov    %rdi,0x60(%r15)
  0x00007fe8f1115970: mov    0xa8(%rdx),%rcx
  0x00007fe8f1115977: mov    %rcx,(%rax)
  0x00007fe8f111597a: mov    %rdx,%rcx
  0x00007fe8f111597d: shr    $0x3,%rcx
  0x00007fe8f1115981: mov    %ecx,0x8(%rax)
  0x00007fe8f1115984: xor    %rcx,%rcx
  0x00007fe8f1115987: mov    %ecx,0xc(%rax)
  0x00007fe8f111598a: xor    %rcx,%rcx
  0x00007fe8f111598d: mov    %rcx,0x10(%rax)
  0x00007fe8f1115991: mov    %rcx,0x18(%rax)    ;*new  ; - java.lang.AbstractStringBuilder::expandCapacity@26 (line 134)

  0x00007fe8f1115995: mov    %rax,%rsi
  0x00007fe8f1115998: mov    $0x7fe8ea6f96d0,%rdi  ;   {metadata(method data for {method} {0x00007fe8ea5715e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007fe8f11159a2: addq   $0x1,0x168(%rdi)
  0x00007fe8f11159aa: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@30 (line 134)

  0x00007fe8f11159ad: mov    %rax,0x80(%rsp)
  0x00007fe8f11159b5: nop    
  0x00007fe8f11159b6: nop    
  0x00007fe8f11159b7: callq  0x00007fe8f1046020  ; OopMap{[128]=Oop off=956}
                                                ;*invokespecial <init>
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@30 (line 134)
                                                ;   {optimized virtual_call}
  0x00007fe8f11159bc: mov    0x80(%rsp),%rax
  0x00007fe8f11159c4: jmpq   0x00007fe8f1115a7a
  0x00007fe8f11159c9: mov    %rbx,0x8(%rsp)
  0x00007fe8f11159ce: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11159d6: callq  0x00007fe8f10fd5a0  ; OopMap{rsi=Oop off=987}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@-1 (line 129)
                                                ;   {runtime_call}
  0x00007fe8f11159db: jmpq   0x00007fe8f1115661
  0x00007fe8f11159e0: callq  0x00007fe8f10f9680  ; OopMap{rsi=Oop r8=Oop off=997}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@4 (line 129)
                                                ;   {runtime_call}
  0x00007fe8f11159e5: mov    %rbx,0x8(%rsp)
  0x00007fe8f11159ea: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f11159f2: callq  0x00007fe8f10fd5a0  ; OopMap{r8=Oop [112]=Oop off=1015}
                                                ;*synchronization entry
                                                ; - java.util.Arrays::copyOf@-1 (line 3332)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007fe8f11159f7: jmpq   0x00007fe8f111577f
  0x00007fe8f11159fc: callq  0x00007fe8f10fa6a0  ; OopMap{r8=Oop [112]=Oop off=1025}
                                                ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007fe8f1115a01: jmpq   0x00007fe8f11157f9
  0x00007fe8f1115a06: mov    %rsi,0x8(%rsp)
  0x00007fe8f1115a0b: movq   $0xffffffffffffffff,(%rsp)
  0x00007fe8f1115a13: callq  0x00007fe8f10fd5a0  ; OopMap{r8=Oop [112]=Oop rax=Oop off=1048}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007fe8f1115a18: jmpq   0x00007fe8f111583d
  0x00007fe8f1115a1d: nop    
  0x00007fe8f1115a1e: nop    
  0x00007fe8f1115a1f: callq  0x00007fe8f1046420  ; OopMap{[112]=Oop [120]=Oop off=1060}
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {static_call}
  0x00007fe8f1115a24: jmpq   0x00007fe8f1115915
  0x00007fe8f1115a29: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007fe8f1115a33: mov    $0xa050f00,%eax
  0x00007fe8f1115a38: callq  0x00007fe8f10fdfe0  ; OopMap{off=1085}
                                                ;*new  ; - java.lang.AbstractStringBuilder::expandCapacity@26 (line 134)
                                                ;   {runtime_call}
  0x00007fe8f1115a3d: jmpq   0x00007fe8f1115950
  0x00007fe8f1115a42: mov    %rdx,%rdx
  0x00007fe8f1115a45: callq  0x00007fe8f10f9de0  ; OopMap{off=1098}
                                                ;*new  ; - java.lang.AbstractStringBuilder::expandCapacity@26 (line 134)
                                                ;   {runtime_call}
  0x00007fe8f1115a4a: jmpq   0x00007fe8f1115995
  0x00007fe8f1115a4f: nop    
  0x00007fe8f1115a50: nop    
  0x00007fe8f1115a51: mov    0x2a8(%r15),%rax
  0x00007fe8f1115a58: mov    $0x0,%r10
  0x00007fe8f1115a62: mov    %r10,0x2a8(%r15)
  0x00007fe8f1115a69: mov    $0x0,%r10
  0x00007fe8f1115a73: mov    %r10,0x2b0(%r15)
  0x00007fe8f1115a7a: add    $0x90,%rsp
  0x00007fe8f1115a81: pop    %rbp
  0x00007fe8f1115a82: jmpq   0x00007fe8f106c0e0  ;   {runtime_call}
  0x00007fe8f1115a87: hlt    
  0x00007fe8f1115a88: hlt    
  0x00007fe8f1115a89: hlt    
  0x00007fe8f1115a8a: hlt    
  0x00007fe8f1115a8b: hlt    
  0x00007fe8f1115a8c: hlt    
  0x00007fe8f1115a8d: hlt    
  0x00007fe8f1115a8e: hlt    
  0x00007fe8f1115a8f: hlt    
  0x00007fe8f1115a90: hlt    
  0x00007fe8f1115a91: hlt    
  0x00007fe8f1115a92: hlt    
  0x00007fe8f1115a93: hlt    
  0x00007fe8f1115a94: hlt    
  0x00007fe8f1115a95: hlt    
  0x00007fe8f1115a96: hlt    
  0x00007fe8f1115a97: hlt    
  0x00007fe8f1115a98: hlt    
  0x00007fe8f1115a99: hlt    
  0x00007fe8f1115a9a: hlt    
  0x00007fe8f1115a9b: hlt    
  0x00007fe8f1115a9c: hlt    
  0x00007fe8f1115a9d: hlt    
  0x00007fe8f1115a9e: hlt    
  0x00007fe8f1115a9f: hlt    
[Stub Code]
  0x00007fe8f1115aa0: nop                       ;   {no_reloc}
  0x00007fe8f1115aa1: nop    
  0x00007fe8f1115aa2: nop    
  0x00007fe8f1115aa3: nop    
  0x00007fe8f1115aa4: nop    
  0x00007fe8f1115aa5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1115aaf: jmpq   0x00007fe8f1115aaf  ;   {runtime_call}
  0x00007fe8f1115ab4: nop    
  0x00007fe8f1115ab5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007fe8f1115abf: jmpq   0x00007fe8f1115abf  ;   {runtime_call}
[Exception Handler]
  0x00007fe8f1115ac4: callq  0x00007fe8f10fb460  ;   {runtime_call}
  0x00007fe8f1115ac9: mov    %rsp,-0x28(%rsp)
  0x00007fe8f1115ace: sub    $0x80,%rsp
  0x00007fe8f1115ad5: mov    %rax,0x78(%rsp)
  0x00007fe8f1115ada: mov    %rcx,0x70(%rsp)
  0x00007fe8f1115adf: mov    %rdx,0x68(%rsp)
  0x00007fe8f1115ae4: mov    %rbx,0x60(%rsp)
  0x00007fe8f1115ae9: mov    %rbp,0x50(%rsp)
  0x00007fe8f1115aee: mov    %rsi,0x48(%rsp)
  0x00007fe8f1115af3: mov    %rdi,0x40(%rsp)
  0x00007fe8f1115af8: mov    %r8,0x38(%rsp)
  0x00007fe8f1115afd: mov    %r9,0x30(%rsp)
  0x00007fe8f1115b02: mov    %r10,0x28(%rsp)
  0x00007fe8f1115b07: mov    %r11,0x20(%rsp)
  0x00007fe8f1115b0c: mov    %r12,0x18(%rsp)
  0x00007fe8f1115b11: mov    %r13,0x10(%rsp)
  0x00007fe8f1115b16: mov    %r14,0x8(%rsp)
  0x00007fe8f1115b1b: mov    %r15,(%rsp)
  0x00007fe8f1115b1f: mov    $0x7fe907564c9e,%rdi  ;   {external_word}
  0x00007fe8f1115b29: mov    $0x7fe8f1115ac9,%rsi  ;   {internal_word}
  0x00007fe8f1115b33: mov    %rsp,%rdx
  0x00007fe8f1115b36: and    $0xfffffffffffffff0,%rsp
  0x00007fe8f1115b3a: callq  0x00007fe9072986a0  ;   {runtime_call}
  0x00007fe8f1115b3f: hlt    
[Deopt Handler Code]
  0x00007fe8f1115b40: mov    $0x7fe8f1115b40,%r10  ;   {section_word}
  0x00007fe8f1115b4a: push   %r10
  0x00007fe8f1115b4c: jmpq   0x00007fe8f10473c0  ;   {runtime_call}
  0x00007fe8f1115b51: hlt    
  0x00007fe8f1115b52: hlt    
  0x00007fe8f1115b53: hlt    
  0x00007fe8f1115b54: hlt    
  0x00007fe8f1115b55: hlt    
  0x00007fe8f1115b56: hlt    
  0x00007fe8f1115b57: hlt    
