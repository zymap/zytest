Loaded disassembler from /usr/share/jdk1.8.0_72/jre/lib/amd64/hsdis-amd64.so
Decoding compiled method 0x00007f94e1101a90:
Code:
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Constants]
  # {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1101c20: mov    0x8(%rsi),%r10d
  0x00007f94e1101c24: shl    $0x3,%r10
  0x00007f94e1101c28: cmp    %rax,%r10
  0x00007f94e1101c2b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1101c31: nopw   0x0(%rax,%rax,1)
  0x00007f94e1101c3c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1101c40: mov    %eax,-0x14000(%rsp)
  0x00007f94e1101c47: push   %rbp
  0x00007f94e1101c48: sub    $0x30,%rsp
  0x00007f94e1101c4c: mov    $0x7f94e020f6f8,%rax  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101c56: mov    0xdc(%rax),%edi
  0x00007f94e1101c5c: add    $0x8,%edi
  0x00007f94e1101c5f: mov    %edi,0xdc(%rax)
  0x00007f94e1101c65: mov    $0x7f94e002f618,%rax  ;   {metadata({method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101c6f: and    $0x1ff8,%edi
  0x00007f94e1101c75: cmp    $0x0,%edi
  0x00007f94e1101c78: je     0x00007f94e1102046  ;*aload_0
                                                ; - java.lang.String::equals@0 (line 977)

  0x00007f94e1101c7e: cmp    %rdx,%rsi
  0x00007f94e1101c81: mov    $0x7f94e020f6f8,%rax  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101c8b: mov    $0x108,%rdi
  0x00007f94e1101c95: jne    0x00007f94e1101ca5
  0x00007f94e1101c9b: mov    $0x118,%rdi
  0x00007f94e1101ca5: mov    (%rax,%rdi,1),%rbx
  0x00007f94e1101ca9: lea    0x1(%rbx),%rbx
  0x00007f94e1101cad: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e1101cb1: je     0x00007f94e1102035  ;*if_acmpne
                                                ; - java.lang.String::equals@2 (line 977)

  0x00007f94e1101cb7: cmp    $0x0,%rdx
  0x00007f94e1101cbb: jne    0x00007f94e1101cd6
  0x00007f94e1101cbd: mov    $0x7f94e020f6f8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101cc7: orl    $0x100,0x120(%rbx)
  0x00007f94e1101cd1: jmpq   0x00007f94e1101d96
  0x00007f94e1101cd6: mov    $0x7c00016d0,%rcx  ;   {metadata('java/lang/String')}
  0x00007f94e1101ce0: mov    0x8(%rdx),%edi
  0x00007f94e1101ce3: shl    $0x3,%rdi
  0x00007f94e1101ce7: cmp    %rdi,%rcx
  0x00007f94e1101cea: jne    0x00007f94e1101d7a
  0x00007f94e1101cf0: mov    $0x7f94e020f6f8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101cfa: mov    0x8(%rdx),%ecx
  0x00007f94e1101cfd: shl    $0x3,%rcx
  0x00007f94e1101d01: cmp    0x130(%rbx),%rcx
  0x00007f94e1101d08: jne    0x00007f94e1101d17
  0x00007f94e1101d0a: addq   $0x1,0x138(%rbx)
  0x00007f94e1101d12: jmpq   0x00007f94e1101d9b
  0x00007f94e1101d17: cmp    0x140(%rbx),%rcx
  0x00007f94e1101d1e: jne    0x00007f94e1101d2d
  0x00007f94e1101d20: addq   $0x1,0x148(%rbx)
  0x00007f94e1101d28: jmpq   0x00007f94e1101d9b
  0x00007f94e1101d2d: cmpq   $0x0,0x130(%rbx)
  0x00007f94e1101d38: jne    0x00007f94e1101d51
  0x00007f94e1101d3a: mov    %rcx,0x130(%rbx)
  0x00007f94e1101d41: movq   $0x1,0x138(%rbx)
  0x00007f94e1101d4c: jmpq   0x00007f94e1101d9b
  0x00007f94e1101d51: cmpq   $0x0,0x140(%rbx)
  0x00007f94e1101d5c: jne    0x00007f94e1101d75
  0x00007f94e1101d5e: mov    %rcx,0x140(%rbx)
  0x00007f94e1101d65: movq   $0x1,0x148(%rbx)
  0x00007f94e1101d70: jmpq   0x00007f94e1101d9b
  0x00007f94e1101d75: jmpq   0x00007f94e1101d9b
  0x00007f94e1101d7a: mov    $0x7f94e020f6f8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101d84: subq   $0x1,0x128(%rbx)
  0x00007f94e1101d8c: jmpq   0x00007f94e1101d96
  0x00007f94e1101d91: jmpq   0x00007f94e1101d9b
  0x00007f94e1101d96: xor    %rax,%rax
  0x00007f94e1101d99: jmp    0x00007f94e1101da5
  0x00007f94e1101d9b: mov    $0x1,%rax          ;*instanceof
                                                ; - java.lang.String::equals@8 (line 980)

  0x00007f94e1101da5: cmp    $0x0,%eax
  0x00007f94e1101da8: mov    $0x7f94e020f6f8,%rax  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101db2: mov    $0x158,%rdi
  0x00007f94e1101dbc: je     0x00007f94e1101dcc
  0x00007f94e1101dc2: mov    $0x168,%rdi
  0x00007f94e1101dcc: mov    (%rax,%rdi,1),%rbx
  0x00007f94e1101dd0: lea    0x1(%rbx),%rbx
  0x00007f94e1101dd4: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e1101dd8: je     0x00007f94e1102024  ;*ifeq
                                                ; - java.lang.String::equals@11 (line 980)

  0x00007f94e1101dde: cmp    $0x0,%rdx
  0x00007f94e1101de2: jne    0x00007f94e1101dfd
  0x00007f94e1101de4: mov    $0x7f94e020f6f8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101dee: orl    $0x100,0x170(%rbx)
  0x00007f94e1101df8: jmpq   0x00007f94e1101ebd
  0x00007f94e1101dfd: mov    $0x7c00016d0,%rax  ;   {metadata('java/lang/String')}
  0x00007f94e1101e07: mov    0x8(%rdx),%edi
  0x00007f94e1101e0a: shl    $0x3,%rdi
  0x00007f94e1101e0e: cmp    %rdi,%rax
  0x00007f94e1101e11: jne    0x00007f94e1101ea1
  0x00007f94e1101e17: mov    $0x7f94e020f6f8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101e21: mov    0x8(%rdx),%eax
  0x00007f94e1101e24: shl    $0x3,%rax
  0x00007f94e1101e28: cmp    0x180(%rbx),%rax
  0x00007f94e1101e2f: jne    0x00007f94e1101e3e
  0x00007f94e1101e31: addq   $0x1,0x188(%rbx)
  0x00007f94e1101e39: jmpq   0x00007f94e1101ebd
  0x00007f94e1101e3e: cmp    0x190(%rbx),%rax
  0x00007f94e1101e45: jne    0x00007f94e1101e54
  0x00007f94e1101e47: addq   $0x1,0x198(%rbx)
  0x00007f94e1101e4f: jmpq   0x00007f94e1101ebd
  0x00007f94e1101e54: cmpq   $0x0,0x180(%rbx)
  0x00007f94e1101e5f: jne    0x00007f94e1101e78
  0x00007f94e1101e61: mov    %rax,0x180(%rbx)
  0x00007f94e1101e68: movq   $0x1,0x188(%rbx)
  0x00007f94e1101e73: jmpq   0x00007f94e1101ebd
  0x00007f94e1101e78: cmpq   $0x0,0x190(%rbx)
  0x00007f94e1101e83: jne    0x00007f94e1101e9c
  0x00007f94e1101e85: mov    %rax,0x190(%rbx)
  0x00007f94e1101e8c: movq   $0x1,0x198(%rbx)
  0x00007f94e1101e97: jmpq   0x00007f94e1101ebd
  0x00007f94e1101e9c: jmpq   0x00007f94e1101ebd
  0x00007f94e1101ea1: mov    $0x7f94e020f6f8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101eab: subq   $0x1,0x178(%rbx)
  0x00007f94e1101eb3: jmpq   0x00007f94e110205d
  0x00007f94e1101eb8: jmpq   0x00007f94e1101ebd
  0x00007f94e1101ebd: mov    %rdx,%rax          ;*checkcast
                                                ; - java.lang.String::equals@15 (line 981)

  0x00007f94e1101ec0: mov    0xc(%rsi),%esi
  0x00007f94e1101ec3: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::equals@20 (line 982)

  0x00007f94e1101ec7: mov    0xc(%rsi),%edi     ;*arraylength
                                                ; - java.lang.String::equals@23 (line 982)
                                                ; implicit exception: dispatches to 0x00007f94e1102066
  0x00007f94e1101eca: mov    0xc(%rax),%eax     ; implicit exception: dispatches to 0x00007f94e110206b
  0x00007f94e1101ecd: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::equals@27 (line 983)

  0x00007f94e1101ed1: mov    0xc(%rax),%ebx     ;*arraylength
                                                ; - java.lang.String::equals@30 (line 983)
                                                ; implicit exception: dispatches to 0x00007f94e1102070
  0x00007f94e1101ed4: cmp    %ebx,%edi
  0x00007f94e1101ed6: mov    $0x7f94e020f6f8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101ee0: mov    $0x1a8,%rdx
  0x00007f94e1101eea: jne    0x00007f94e1101efa
  0x00007f94e1101ef0: mov    $0x1b8,%rdx
  0x00007f94e1101efa: mov    (%rbx,%rdx,1),%rcx
  0x00007f94e1101efe: lea    0x1(%rcx),%rcx
  0x00007f94e1101f02: mov    %rcx,(%rbx,%rdx,1)
  0x00007f94e1101f06: jne    0x00007f94e1102024  ;*if_icmpne
                                                ; - java.lang.String::equals@31 (line 983)

  0x00007f94e1101f0c: mov    $0x0,%ebx
  0x00007f94e1101f11: jmpq   0x00007f94e1101fbf  ;*iload_3
                                                ; - java.lang.String::equals@49 (line 987)

  0x00007f94e1101f16: xchg   %ax,%ax
  0x00007f94e1101f18: movslq %ebx,%rdi
  0x00007f94e1101f1b: cmp    0xc(%rsi),%ebx
  0x00007f94e1101f1e: jae    0x00007f94e1102075
  0x00007f94e1101f24: movzwl 0x10(%rsi,%rdi,2),%edi  ;*caload
                                                ; - java.lang.String::equals@60 (line 988)

  0x00007f94e1101f29: movslq %ebx,%rcx
  0x00007f94e1101f2c: cmp    0xc(%rax),%ebx
  0x00007f94e1101f2f: jae    0x00007f94e110207e
  0x00007f94e1101f35: movzwl 0x10(%rax,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::equals@65 (line 988)

  0x00007f94e1101f3a: cmp    %ecx,%edi
  0x00007f94e1101f3c: mov    $0x7f94e020f6f8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101f46: mov    $0x1e8,%rcx
  0x00007f94e1101f50: je     0x00007f94e1101f60
  0x00007f94e1101f56: mov    $0x1f8,%rcx
  0x00007f94e1101f60: mov    (%rdi,%rcx,1),%r8
  0x00007f94e1101f64: lea    0x1(%r8),%r8
  0x00007f94e1101f68: mov    %r8,(%rdi,%rcx,1)
  0x00007f94e1101f6c: jne    0x00007f94e1102002  ;*if_icmpeq
                                                ; - java.lang.String::equals@66 (line 988)

  0x00007f94e1101f72: inc    %ebx
  0x00007f94e1101f74: mov    $0x7f94e020f6f8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101f7e: mov    0xe0(%rdi),%ecx
  0x00007f94e1101f84: add    $0x8,%ecx
  0x00007f94e1101f87: mov    %ecx,0xe0(%rdi)
  0x00007f94e1101f8d: mov    $0x7f94e002f618,%rdi  ;   {metadata({method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101f97: and    $0xfff8,%ecx
  0x00007f94e1101f9d: cmp    $0x0,%ecx
  0x00007f94e1101fa0: je     0x00007f94e1102087  ; OopMap{rax=Oop rsi=Oop off=902}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 990)

  0x00007f94e1101fa6: test   %eax,0x16eed154(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e1101fac: mov    $0x7f94e020f6f8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101fb6: incl   0x208(%rdi)
  0x00007f94e1101fbc: mov    %rdx,%rdi          ;*goto
                                                ; - java.lang.String::equals@74 (line 990)

  0x00007f94e1101fbf: mov    %rdi,%rdx
  0x00007f94e1101fc2: dec    %edx
  0x00007f94e1101fc4: cmp    $0x0,%edi
  0x00007f94e1101fc7: mov    $0x7f94e020f6f8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002f618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f94e1101fd1: mov    $0x1c8,%rcx
  0x00007f94e1101fdb: je     0x00007f94e1101feb
  0x00007f94e1101fe1: mov    $0x1d8,%rcx
  0x00007f94e1101feb: mov    (%rdi,%rcx,1),%r8
  0x00007f94e1101fef: lea    0x1(%r8),%r8
  0x00007f94e1101ff3: mov    %r8,(%rdi,%rcx,1)
  0x00007f94e1101ff7: je     0x00007f94e1102013
  0x00007f94e1101ffd: jmpq   0x00007f94e1101f18  ;*ifeq
                                                ; - java.lang.String::equals@53 (line 987)

  0x00007f94e1102002: mov    $0x0,%eax
  0x00007f94e1102007: add    $0x30,%rsp
  0x00007f94e110200b: pop    %rbp
  0x00007f94e110200c: test   %eax,0x16eed0ee(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1102012: retq                      ;*ireturn
                                                ; - java.lang.String::equals@70 (line 989)

  0x00007f94e1102013: mov    $0x1,%eax
  0x00007f94e1102018: add    $0x30,%rsp
  0x00007f94e110201c: pop    %rbp
  0x00007f94e110201d: test   %eax,0x16eed0dd(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1102023: retq                      ;*ireturn
                                                ; - java.lang.String::equals@78 (line 992)

  0x00007f94e1102024: mov    $0x0,%eax
  0x00007f94e1102029: add    $0x30,%rsp
  0x00007f94e110202d: pop    %rbp
  0x00007f94e110202e: test   %eax,0x16eed0cc(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1102034: retq                      ;*ireturn
                                                ; - java.lang.String::equals@80 (line 995)

  0x00007f94e1102035: mov    $0x1,%eax
  0x00007f94e110203a: add    $0x30,%rsp
  0x00007f94e110203e: pop    %rbp
  0x00007f94e110203f: test   %eax,0x16eed0bb(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1102045: retq   
  0x00007f94e1102046: mov    %rax,0x8(%rsp)
  0x00007f94e110204b: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1102053: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop rdx=Oop off=1080}
                                                ;*synchronization entry
                                                ; - java.lang.String::equals@-1 (line 977)
                                                ;   {runtime_call}
  0x00007f94e1102058: jmpq   0x00007f94e1101c7e
  0x00007f94e110205d: mov    %rdx,(%rsp)
  0x00007f94e1102061: callq  0x00007f94e10fb7c0  ; OopMap{rsi=Oop off=1094}
                                                ;*checkcast
                                                ; - java.lang.String::equals@15 (line 981)
                                                ;   {runtime_call}
  0x00007f94e1102066: callq  0x00007f94e10f9680  ; OopMap{rax=Oop rsi=Oop off=1099}
                                                ;*arraylength
                                                ; - java.lang.String::equals@23 (line 982)
                                                ;   {runtime_call}
  0x00007f94e110206b: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop off=1104}
                                                ;*getfield value
                                                ; - java.lang.String::equals@27 (line 983)
                                                ;   {runtime_call}
  0x00007f94e1102070: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop rax=Oop off=1109}
                                                ;*arraylength
                                                ; - java.lang.String::equals@30 (line 983)
                                                ;   {runtime_call}
  0x00007f94e1102075: mov    %rbx,(%rsp)
  0x00007f94e1102079: callq  0x00007f94e106bc40  ; OopMap{rax=Oop rsi=Oop off=1118}
                                                ;*caload
                                                ; - java.lang.String::equals@60 (line 988)
                                                ;   {runtime_call}
  0x00007f94e110207e: mov    %rbx,(%rsp)
  0x00007f94e1102082: callq  0x00007f94e106bc40  ; OopMap{rax=Oop rsi=Oop off=1127}
                                                ;*caload
                                                ; - java.lang.String::equals@65 (line 988)
                                                ;   {runtime_call}
  0x00007f94e1102087: mov    %rdi,0x8(%rsp)
  0x00007f94e110208c: movq   $0x4a,(%rsp)
  0x00007f94e1102094: callq  0x00007f94e10fc760  ; OopMap{rax=Oop rsi=Oop off=1145}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 990)
                                                ;   {runtime_call}
  0x00007f94e1102099: jmpq   0x00007f94e1101fa6
  0x00007f94e110209e: nop    
  0x00007f94e110209f: nop    
  0x00007f94e11020a0: mov    0x2a8(%r15),%rax
  0x00007f94e11020a7: mov    $0x0,%r10
  0x00007f94e11020b1: mov    %r10,0x2a8(%r15)
  0x00007f94e11020b8: mov    $0x0,%r10
  0x00007f94e11020c2: mov    %r10,0x2b0(%r15)
  0x00007f94e11020c9: add    $0x30,%rsp
  0x00007f94e11020cd: pop    %rbp
  0x00007f94e11020ce: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e11020d3: hlt    
  0x00007f94e11020d4: hlt    
  0x00007f94e11020d5: hlt    
  0x00007f94e11020d6: hlt    
  0x00007f94e11020d7: hlt    
  0x00007f94e11020d8: hlt    
  0x00007f94e11020d9: hlt    
  0x00007f94e11020da: hlt    
  0x00007f94e11020db: hlt    
  0x00007f94e11020dc: hlt    
  0x00007f94e11020dd: hlt    
  0x00007f94e11020de: hlt    
  0x00007f94e11020df: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e11020e0: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e11020e5: mov    %rsp,-0x28(%rsp)
  0x00007f94e11020ea: sub    $0x80,%rsp
  0x00007f94e11020f1: mov    %rax,0x78(%rsp)
  0x00007f94e11020f6: mov    %rcx,0x70(%rsp)
  0x00007f94e11020fb: mov    %rdx,0x68(%rsp)
  0x00007f94e1102100: mov    %rbx,0x60(%rsp)
  0x00007f94e1102105: mov    %rbp,0x50(%rsp)
  0x00007f94e110210a: mov    %rsi,0x48(%rsp)
  0x00007f94e110210f: mov    %rdi,0x40(%rsp)
  0x00007f94e1102114: mov    %r8,0x38(%rsp)
  0x00007f94e1102119: mov    %r9,0x30(%rsp)
  0x00007f94e110211e: mov    %r10,0x28(%rsp)
  0x00007f94e1102123: mov    %r11,0x20(%rsp)
  0x00007f94e1102128: mov    %r12,0x18(%rsp)
  0x00007f94e110212d: mov    %r13,0x10(%rsp)
  0x00007f94e1102132: mov    %r14,0x8(%rsp)
  0x00007f94e1102137: mov    %r15,(%rsp)
  0x00007f94e110213b: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1102145: mov    $0x7f94e11020e5,%rsi  ;   {internal_word}
  0x00007f94e110214f: mov    %rsp,%rdx
  0x00007f94e1102152: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1102156: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110215b: hlt    
[Deopt Handler Code]
  0x00007f94e110215c: mov    $0x7f94e110215c,%r10  ;   {section_word}
  0x00007f94e1102166: push   %r10
  0x00007f94e1102168: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110216d: hlt    
  0x00007f94e110216e: hlt    
  0x00007f94e110216f: hlt    
Decoding compiled method 0x00007f94e10ffd90:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002edb0} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f94e10fff00: mov    0x8(%rsi),%r10d
  0x00007f94e10fff04: shl    $0x3,%r10
  0x00007f94e10fff08: cmp    %rax,%r10
  0x00007f94e10fff0b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e10fff11: nopw   0x0(%rax,%rax,1)
  0x00007f94e10fff1c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e10fff20: mov    %eax,-0x14000(%rsp)
  0x00007f94e10fff27: push   %rbp
  0x00007f94e10fff28: sub    $0x30,%rsp
  0x00007f94e10fff2c: mov    %rdx,%rdi
  0x00007f94e10fff2f: mov    $0x7f94e01bf868,%rax  ;   {metadata(method data for {method} {0x00007f94e002edb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f94e10fff39: mov    0xdc(%rax),%edx
  0x00007f94e10fff3f: add    $0x8,%edx
  0x00007f94e10fff42: mov    %edx,0xdc(%rax)
  0x00007f94e10fff48: mov    $0x7f94e002edb0,%rax  ;   {metadata({method} {0x00007f94e002edb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f94e10fff52: and    $0x1ff8,%edx
  0x00007f94e10fff58: cmp    $0x0,%edx
  0x00007f94e10fff5b: je     0x00007f94e110002e  ;*iload_1
                                                ; - java.lang.String::charAt@0 (line 657)

  0x00007f94e10fff61: cmp    $0x0,%edi
  0x00007f94e10fff64: mov    $0x7f94e01bf868,%rax  ;   {metadata(method data for {method} {0x00007f94e002edb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f94e10fff6e: mov    $0x108,%rdx
  0x00007f94e10fff78: jl     0x00007f94e10fff88
  0x00007f94e10fff7e: mov    $0x118,%rdx
  0x00007f94e10fff88: mov    (%rax,%rdx,1),%rbx
  0x00007f94e10fff8c: lea    0x1(%rbx),%rbx
  0x00007f94e10fff90: mov    %rbx,(%rax,%rdx,1)
  0x00007f94e10fff94: jl     0x00007f94e10ffff0  ;*iflt
                                                ; - java.lang.String::charAt@1 (line 657)

  0x00007f94e10fff9a: mov    0xc(%rsi),%eax
  0x00007f94e10fff9d: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::charAt@6 (line 657)

  0x00007f94e10fffa1: mov    0xc(%rax),%edx     ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 657)
                                                ; implicit exception: dispatches to 0x00007f94e1100045
  0x00007f94e10fffa4: cmp    %edx,%edi
  0x00007f94e10fffa6: mov    $0x7f94e01bf868,%rdx  ;   {metadata(method data for {method} {0x00007f94e002edb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f94e10fffb0: mov    $0x128,%rsi
  0x00007f94e10fffba: jl     0x00007f94e10fffca
  0x00007f94e10fffc0: mov    $0x138,%rsi
  0x00007f94e10fffca: mov    (%rdx,%rsi,1),%rbx
  0x00007f94e10fffce: lea    0x1(%rbx),%rbx
  0x00007f94e10fffd2: mov    %rbx,(%rdx,%rsi,1)
  0x00007f94e10fffd6: jge    0x00007f94e10ffff0  ;*if_icmplt
                                                ; - java.lang.String::charAt@10 (line 657)

  0x00007f94e10fffdc: movslq %edi,%rdi
  0x00007f94e10fffdf: movzwl 0x10(%rax,%rdi,2),%eax  ;*caload
                                                ; - java.lang.String::charAt@27 (line 660)

  0x00007f94e10fffe4: add    $0x30,%rsp
  0x00007f94e10fffe8: pop    %rbp
  0x00007f94e10fffe9: test   %eax,0x16eef111(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e10fffef: retq                      ;*ireturn
                                                ; - java.lang.String::charAt@28 (line 660)

  0x00007f94e10ffff0: jmpq   0x00007f94e1100059  ;   {no_reloc}
  0x00007f94e10ffff5: add    %al,(%rax)
  0x00007f94e10ffff7: add    %al,(%rax)
  0x00007f94e10ffff9: add    %ch,%cl
  0x00007f94e10ffffb: add    %al,%fs:(%rax)
  0x00007f94e10ffffe: add    %cl,-0x75(%rax)    ;*new  ; - java.lang.String::charAt@13 (line 658)

  0x00007f94e1100001: rorb   -0x42(%rax)        ;   {metadata(method data for {method} {0x00007f94e002edb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f94e1100004: pushq  $0xffffffff94e01bf8
  0x00007f94e1100009: jg     0x00007f94e110000b
  0x00007f94e110000b: add    %cl,-0x7d(%rax)
  0x00007f94e110000e: xchg   %cl,0x1(%rax)
  0x00007f94e1100011: add    %al,(%rax)
  0x00007f94e1100013: add    %ecx,-0x75(%rax)
  0x00007f94e1100016: xlat   %ds:(%rbx)
  0x00007f94e1100017: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 658)

  0x00007f94e110001a: mov    %rax,0x20(%rsp)
  0x00007f94e110001f: callq  0x00007f94e1046020  ; OopMap{[32]=Oop off=292}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 658)
                                                ;   {optimized virtual_call}
  0x00007f94e1100024: mov    0x20(%rsp),%rax
  0x00007f94e1100029: jmpq   0x00007f94e1100098
  0x00007f94e110002e: mov    %rax,0x8(%rsp)
  0x00007f94e1100033: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110003b: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=320}
                                                ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 657)
                                                ;   {runtime_call}
  0x00007f94e1100040: jmpq   0x00007f94e10fff61
  0x00007f94e1100045: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=330}
                                                ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 657)
                                                ;   {runtime_call}
  0x00007f94e110004a: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e1100054: mov    $0xa050f00,%eax
  0x00007f94e1100059: callq  0x00007f94e10fd5a0  ; OopMap{off=350}
                                                ;*new  ; - java.lang.String::charAt@13 (line 658)
                                                ;   {runtime_call}
  0x00007f94e110005e: jmp    0x00007f94e10ffff0
  0x00007f94e1100060: nop    
  0x00007f94e1100061: nop    
  0x00007f94e1100062: nop    
  0x00007f94e1100063: mov    %rdx,%rdx
  0x00007f94e1100066: callq  0x00007f94e10f9b20  ; OopMap{off=363}
                                                ;*new  ; - java.lang.String::charAt@13 (line 658)
                                                ;   {runtime_call}
  0x00007f94e110006b: jmp    0x00007f94e10fffff
  0x00007f94e110006d: nop    
  0x00007f94e110006e: nop    
  0x00007f94e110006f: mov    0x2a8(%r15),%rax
  0x00007f94e1100076: mov    $0x0,%r10
  0x00007f94e1100080: mov    %r10,0x2a8(%r15)
  0x00007f94e1100087: mov    $0x0,%r10
  0x00007f94e1100091: mov    %r10,0x2b0(%r15)
  0x00007f94e1100098: add    $0x30,%rsp
  0x00007f94e110009c: pop    %rbp
  0x00007f94e110009d: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e11000a2: hlt    
  0x00007f94e11000a3: hlt    
  0x00007f94e11000a4: hlt    
  0x00007f94e11000a5: hlt    
  0x00007f94e11000a6: hlt    
  0x00007f94e11000a7: hlt    
  0x00007f94e11000a8: hlt    
  0x00007f94e11000a9: hlt    
  0x00007f94e11000aa: hlt    
  0x00007f94e11000ab: hlt    
  0x00007f94e11000ac: hlt    
  0x00007f94e11000ad: hlt    
  0x00007f94e11000ae: hlt    
  0x00007f94e11000af: hlt    
  0x00007f94e11000b0: hlt    
  0x00007f94e11000b1: hlt    
  0x00007f94e11000b2: hlt    
  0x00007f94e11000b3: hlt    
  0x00007f94e11000b4: hlt    
  0x00007f94e11000b5: hlt    
  0x00007f94e11000b6: hlt    
  0x00007f94e11000b7: hlt    
  0x00007f94e11000b8: hlt    
  0x00007f94e11000b9: hlt    
  0x00007f94e11000ba: hlt    
  0x00007f94e11000bb: hlt    
  0x00007f94e11000bc: hlt    
  0x00007f94e11000bd: hlt    
  0x00007f94e11000be: hlt    
  0x00007f94e11000bf: hlt    
[Stub Code]
  0x00007f94e11000c0: nop                       ;   {no_reloc}
  0x00007f94e11000c1: nop    
  0x00007f94e11000c2: nop    
  0x00007f94e11000c3: nop    
  0x00007f94e11000c4: nop    
  0x00007f94e11000c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11000cf: jmpq   0x00007f94e11000cf  ;   {runtime_call}
[Exception Handler]
  0x00007f94e11000d4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e11000d9: mov    %rsp,-0x28(%rsp)
  0x00007f94e11000de: sub    $0x80,%rsp
  0x00007f94e11000e5: mov    %rax,0x78(%rsp)
  0x00007f94e11000ea: mov    %rcx,0x70(%rsp)
  0x00007f94e11000ef: mov    %rdx,0x68(%rsp)
  0x00007f94e11000f4: mov    %rbx,0x60(%rsp)
  0x00007f94e11000f9: mov    %rbp,0x50(%rsp)
  0x00007f94e11000fe: mov    %rsi,0x48(%rsp)
  0x00007f94e1100103: mov    %rdi,0x40(%rsp)
  0x00007f94e1100108: mov    %r8,0x38(%rsp)
  0x00007f94e110010d: mov    %r9,0x30(%rsp)
  0x00007f94e1100112: mov    %r10,0x28(%rsp)
  0x00007f94e1100117: mov    %r11,0x20(%rsp)
  0x00007f94e110011c: mov    %r12,0x18(%rsp)
  0x00007f94e1100121: mov    %r13,0x10(%rsp)
  0x00007f94e1100126: mov    %r14,0x8(%rsp)
  0x00007f94e110012b: mov    %r15,(%rsp)
  0x00007f94e110012f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1100139: mov    $0x7f94e11000d9,%rsi  ;   {internal_word}
  0x00007f94e1100143: mov    %rsp,%rdx
  0x00007f94e1100146: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110014a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110014f: hlt    
[Deopt Handler Code]
  0x00007f94e1100150: mov    $0x7f94e1100150,%r10  ;   {section_word}
  0x00007f94e110015a: push   %r10
  0x00007f94e110015c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1100161: hlt    
  0x00007f94e1100162: hlt    
  0x00007f94e1100163: hlt    
  0x00007f94e1100164: hlt    
  0x00007f94e1100165: hlt    
  0x00007f94e1100166: hlt    
  0x00007f94e1100167: hlt    
Decoding compiled method 0x00007f94e10ff910:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002ec60} 'length' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e10ffa80: mov    0x8(%rsi),%r10d
  0x00007f94e10ffa84: shl    $0x3,%r10
  0x00007f94e10ffa88: cmp    %rax,%r10
  0x00007f94e10ffa8b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e10ffa91: nopw   0x0(%rax,%rax,1)
  0x00007f94e10ffa9c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e10ffaa0: mov    %eax,-0x14000(%rsp)
  0x00007f94e10ffaa7: push   %rbp
  0x00007f94e10ffaa8: sub    $0x30,%rsp
  0x00007f94e10ffaac: mov    $0x7f94e0216340,%rax  ;   {metadata(method data for {method} {0x00007f94e002ec60} 'length' '()I' in 'java/lang/String')}
  0x00007f94e10ffab6: mov    0xdc(%rax),%edi
  0x00007f94e10ffabc: add    $0x8,%edi
  0x00007f94e10ffabf: mov    %edi,0xdc(%rax)
  0x00007f94e10ffac5: mov    $0x7f94e002ec60,%rax  ;   {metadata({method} {0x00007f94e002ec60} 'length' '()I' in 'java/lang/String')}
  0x00007f94e10ffacf: and    $0x1ff8,%edi
  0x00007f94e10ffad5: cmp    $0x0,%edi
  0x00007f94e10ffad8: je     0x00007f94e10ffaf4  ;*aload_0
                                                ; - java.lang.String::length@0 (line 623)

  0x00007f94e10ffade: mov    0xc(%rsi),%eax
  0x00007f94e10ffae1: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::length@1 (line 623)

  0x00007f94e10ffae5: mov    0xc(%rax),%eax     ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; implicit exception: dispatches to 0x00007f94e10ffb08
  0x00007f94e10ffae8: add    $0x30,%rsp
  0x00007f94e10ffaec: pop    %rbp
  0x00007f94e10ffaed: test   %eax,0x16eef60d(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e10ffaf3: retq   
  0x00007f94e10ffaf4: mov    %rax,0x8(%rsp)
  0x00007f94e10ffaf9: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e10ffb01: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=134}
                                                ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 623)
                                                ;   {runtime_call}
  0x00007f94e10ffb06: jmp    0x00007f94e10ffade
  0x00007f94e10ffb08: callq  0x00007f94e10f9680  ; OopMap{off=141}
                                                ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ;   {runtime_call}
  0x00007f94e10ffb0d: nop    
  0x00007f94e10ffb0e: nop    
  0x00007f94e10ffb0f: mov    0x2a8(%r15),%rax
  0x00007f94e10ffb16: mov    $0x0,%r10
  0x00007f94e10ffb20: mov    %r10,0x2a8(%r15)
  0x00007f94e10ffb27: mov    $0x0,%r10
  0x00007f94e10ffb31: mov    %r10,0x2b0(%r15)
  0x00007f94e10ffb38: add    $0x30,%rsp
  0x00007f94e10ffb3c: pop    %rbp
  0x00007f94e10ffb3d: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e10ffb42: hlt    
  0x00007f94e10ffb43: hlt    
  0x00007f94e10ffb44: hlt    
  0x00007f94e10ffb45: hlt    
  0x00007f94e10ffb46: hlt    
  0x00007f94e10ffb47: hlt    
  0x00007f94e10ffb48: hlt    
  0x00007f94e10ffb49: hlt    
  0x00007f94e10ffb4a: hlt    
  0x00007f94e10ffb4b: hlt    
  0x00007f94e10ffb4c: hlt    
  0x00007f94e10ffb4d: hlt    
  0x00007f94e10ffb4e: hlt    
  0x00007f94e10ffb4f: hlt    
  0x00007f94e10ffb50: hlt    
  0x00007f94e10ffb51: hlt    
  0x00007f94e10ffb52: hlt    
  0x00007f94e10ffb53: hlt    
  0x00007f94e10ffb54: hlt    
  0x00007f94e10ffb55: hlt    
  0x00007f94e10ffb56: hlt    
  0x00007f94e10ffb57: hlt    
  0x00007f94e10ffb58: hlt    
  0x00007f94e10ffb59: hlt    
  0x00007f94e10ffb5a: hlt    
  0x00007f94e10ffb5b: hlt    
  0x00007f94e10ffb5c: hlt    
  0x00007f94e10ffb5d: hlt    
  0x00007f94e10ffb5e: hlt    
  0x00007f94e10ffb5f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e10ffb60: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e10ffb65: mov    %rsp,-0x28(%rsp)
  0x00007f94e10ffb6a: sub    $0x80,%rsp
  0x00007f94e10ffb71: mov    %rax,0x78(%rsp)
  0x00007f94e10ffb76: mov    %rcx,0x70(%rsp)
  0x00007f94e10ffb7b: mov    %rdx,0x68(%rsp)
  0x00007f94e10ffb80: mov    %rbx,0x60(%rsp)
  0x00007f94e10ffb85: mov    %rbp,0x50(%rsp)
  0x00007f94e10ffb8a: mov    %rsi,0x48(%rsp)
  0x00007f94e10ffb8f: mov    %rdi,0x40(%rsp)
  0x00007f94e10ffb94: mov    %r8,0x38(%rsp)
  0x00007f94e10ffb99: mov    %r9,0x30(%rsp)
  0x00007f94e10ffb9e: mov    %r10,0x28(%rsp)
  0x00007f94e10ffba3: mov    %r11,0x20(%rsp)
  0x00007f94e10ffba8: mov    %r12,0x18(%rsp)
  0x00007f94e10ffbad: mov    %r13,0x10(%rsp)
  0x00007f94e10ffbb2: mov    %r14,0x8(%rsp)
  0x00007f94e10ffbb7: mov    %r15,(%rsp)
  0x00007f94e10ffbbb: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e10ffbc5: mov    $0x7f94e10ffb65,%rsi  ;   {internal_word}
  0x00007f94e10ffbcf: mov    %rsp,%rdx
  0x00007f94e10ffbd2: and    $0xfffffffffffffff0,%rsp
  0x00007f94e10ffbd6: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e10ffbdb: hlt    
[Deopt Handler Code]
  0x00007f94e10ffbdc: mov    $0x7f94e10ffbdc,%r10  ;   {section_word}
  0x00007f94e10ffbe6: push   %r10
  0x00007f94e10ffbe8: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e10ffbed: hlt    
  0x00007f94e10ffbee: hlt    
  0x00007f94e10ffbef: hlt    
Decoding compiled method 0x00007f94e11013d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e00533d0} 'get' '()Ljava/lang/Object;' in 'java/lang/ref/Reference'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1101520: mov    0x8(%rsi),%r10d
  0x00007f94e1101524: shl    $0x3,%r10
  0x00007f94e1101528: cmp    %rax,%r10
  0x00007f94e110152b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1101531: nopw   0x0(%rax,%rax,1)
  0x00007f94e110153c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1101540: mov    %eax,-0x14000(%rsp)
  0x00007f94e1101547: push   %rbp
  0x00007f94e1101548: sub    $0x30,%rsp
  0x00007f94e110154c: mov    0xc(%rsi),%eax
  0x00007f94e110154f: shl    $0x3,%rax          ;*aload_0
                                                ; - java.lang.ref.Reference::get@0 (line 254)

  0x00007f94e1101553: add    $0x30,%rsp
  0x00007f94e1101557: pop    %rbp
  0x00007f94e1101558: test   %eax,0x16eedba2(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110155e: retq   
  0x00007f94e110155f: nop    
  0x00007f94e1101560: nop    
  0x00007f94e1101561: mov    0x2a8(%r15),%rax
  0x00007f94e1101568: mov    $0x0,%r10
  0x00007f94e1101572: mov    %r10,0x2a8(%r15)
  0x00007f94e1101579: mov    $0x0,%r10
  0x00007f94e1101583: mov    %r10,0x2b0(%r15)
  0x00007f94e110158a: add    $0x30,%rsp
  0x00007f94e110158e: pop    %rbp
  0x00007f94e110158f: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1101594: hlt    
  0x00007f94e1101595: hlt    
  0x00007f94e1101596: hlt    
  0x00007f94e1101597: hlt    
  0x00007f94e1101598: hlt    
  0x00007f94e1101599: hlt    
  0x00007f94e110159a: hlt    
  0x00007f94e110159b: hlt    
  0x00007f94e110159c: hlt    
  0x00007f94e110159d: hlt    
  0x00007f94e110159e: hlt    
  0x00007f94e110159f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e11015a0: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e11015a5: mov    %rsp,-0x28(%rsp)
  0x00007f94e11015aa: sub    $0x80,%rsp
  0x00007f94e11015b1: mov    %rax,0x78(%rsp)
  0x00007f94e11015b6: mov    %rcx,0x70(%rsp)
  0x00007f94e11015bb: mov    %rdx,0x68(%rsp)
  0x00007f94e11015c0: mov    %rbx,0x60(%rsp)
  0x00007f94e11015c5: mov    %rbp,0x50(%rsp)
  0x00007f94e11015ca: mov    %rsi,0x48(%rsp)
  0x00007f94e11015cf: mov    %rdi,0x40(%rsp)
  0x00007f94e11015d4: mov    %r8,0x38(%rsp)
  0x00007f94e11015d9: mov    %r9,0x30(%rsp)
  0x00007f94e11015de: mov    %r10,0x28(%rsp)
  0x00007f94e11015e3: mov    %r11,0x20(%rsp)
  0x00007f94e11015e8: mov    %r12,0x18(%rsp)
  0x00007f94e11015ed: mov    %r13,0x10(%rsp)
  0x00007f94e11015f2: mov    %r14,0x8(%rsp)
  0x00007f94e11015f7: mov    %r15,(%rsp)
  0x00007f94e11015fb: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1101605: mov    $0x7f94e11015a5,%rsi  ;   {internal_word}
  0x00007f94e110160f: mov    %rsp,%rdx
  0x00007f94e1101612: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1101616: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110161b: hlt    
[Deopt Handler Code]
  0x00007f94e110161c: mov    $0x7f94e110161c,%r10  ;   {section_word}
  0x00007f94e1101626: push   %r10
  0x00007f94e1101628: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110162d: hlt    
  0x00007f94e110162e: hlt    
  0x00007f94e110162f: hlt    
Decoding compiled method 0x00007f94e1100e10:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1100f80: mov    0x8(%rsi),%r10d
  0x00007f94e1100f84: shl    $0x3,%r10
  0x00007f94e1100f88: cmp    %rax,%r10
  0x00007f94e1100f8b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1100f91: nopw   0x0(%rax,%rax,1)
  0x00007f94e1100f9c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1100fa0: mov    %eax,-0x14000(%rsp)
  0x00007f94e1100fa7: push   %rbp
  0x00007f94e1100fa8: sub    $0x30,%rsp
  0x00007f94e1100fac: mov    $0x7f94e01fb218,%rax  ;   {metadata(method data for {method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e1100fb6: mov    0xdc(%rax),%edi
  0x00007f94e1100fbc: add    $0x8,%edi
  0x00007f94e1100fbf: mov    %edi,0xdc(%rax)
  0x00007f94e1100fc5: mov    $0x7f94e002fff8,%rax  ;   {metadata({method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e1100fcf: and    $0x1ff8,%edi
  0x00007f94e1100fd5: cmp    $0x0,%edi
  0x00007f94e1100fd8: je     0x00007f94e1101111  ;*aload_0
                                                ; - java.lang.String::hashCode@0 (line 1466)

  0x00007f94e1100fde: mov    0x10(%rsi),%eax    ;*getfield hash
                                                ; - java.lang.String::hashCode@1 (line 1466)

  0x00007f94e1100fe1: cmp    $0x0,%eax
  0x00007f94e1100fe4: mov    $0x7f94e01fb218,%rdi  ;   {metadata(method data for {method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e1100fee: mov    $0x108,%rbx
  0x00007f94e1100ff8: jne    0x00007f94e1101008
  0x00007f94e1100ffe: mov    $0x118,%rbx
  0x00007f94e1101008: mov    (%rdi,%rbx,1),%rdx
  0x00007f94e110100c: lea    0x1(%rdx),%rdx
  0x00007f94e1101010: mov    %rdx,(%rdi,%rbx,1)
  0x00007f94e1101014: jne    0x00007f94e1101105  ;*ifne
                                                ; - java.lang.String::hashCode@6 (line 1467)

  0x00007f94e110101a: mov    0xc(%rsi),%edi
  0x00007f94e110101d: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.String::hashCode@10 (line 1467)

  0x00007f94e1101021: mov    0xc(%rdi),%ebx     ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1467)
                                                ; implicit exception: dispatches to 0x00007f94e1101128
  0x00007f94e1101024: cmp    $0x0,%ebx
  0x00007f94e1101027: mov    $0x7f94e01fb218,%rdx  ;   {metadata(method data for {method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e1101031: mov    $0x128,%rcx
  0x00007f94e110103b: jle    0x00007f94e110104b
  0x00007f94e1101041: mov    $0x138,%rcx
  0x00007f94e110104b: mov    (%rdx,%rcx,1),%r8
  0x00007f94e110104f: lea    0x1(%r8),%r8
  0x00007f94e1101053: mov    %r8,(%rdx,%rcx,1)
  0x00007f94e1101057: jle    0x00007f94e1101105  ;*ifle
                                                ; - java.lang.String::hashCode@14 (line 1467)

  0x00007f94e110105d: mov    $0x0,%edx
  0x00007f94e1101062: jmpq   0x00007f94e11010ca  ;*iload_3
                                                ; - java.lang.String::hashCode@24 (line 1470)

  0x00007f94e1101067: nop    
  0x00007f94e1101068: movslq %edx,%rcx
  0x00007f94e110106b: movzwl 0x10(%rdi,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::hashCode@39 (line 1471)

  0x00007f94e1101070: mov    %rax,%r8
  0x00007f94e1101073: shl    $0x5,%eax
  0x00007f94e1101076: sub    %r8d,%eax
  0x00007f94e1101079: add    %ecx,%eax
  0x00007f94e110107b: inc    %edx
  0x00007f94e110107d: mov    $0x7f94e01fb218,%rcx  ;   {metadata(method data for {method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e1101087: mov    0xe0(%rcx),%r8d
  0x00007f94e110108e: add    $0x8,%r8d
  0x00007f94e1101092: mov    %r8d,0xe0(%rcx)
  0x00007f94e1101099: mov    $0x7f94e002fff8,%rcx  ;   {metadata({method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e11010a3: and    $0xfff8,%r8d
  0x00007f94e11010aa: cmp    $0x0,%r8d
  0x00007f94e11010ae: je     0x00007f94e110112d  ; OopMap{rdi=Oop rsi=Oop off=308}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)

  0x00007f94e11010b4: test   %eax,0x16eee046(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e11010ba: mov    $0x7f94e01fb218,%rcx  ;   {metadata(method data for {method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e11010c4: incl   0x168(%rcx)        ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)

  0x00007f94e11010ca: cmp    %ebx,%edx
  0x00007f94e11010cc: mov    $0x7f94e01fb218,%rcx  ;   {metadata(method data for {method} {0x00007f94e002fff8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f94e11010d6: mov    $0x148,%r8
  0x00007f94e11010e0: jge    0x00007f94e11010f0
  0x00007f94e11010e6: mov    $0x158,%r8
  0x00007f94e11010f0: mov    (%rcx,%r8,1),%r9
  0x00007f94e11010f4: lea    0x1(%r9),%r9
  0x00007f94e11010f8: mov    %r9,(%rcx,%r8,1)
  0x00007f94e11010fc: jl     0x00007f94e1101068  ;*if_icmpge
                                                ; - java.lang.String::hashCode@30 (line 1470)

  0x00007f94e1101102: mov    %eax,0x10(%rsi)    ;*putfield hash
                                                ; - java.lang.String::hashCode@50 (line 1473)

  0x00007f94e1101105: add    $0x30,%rsp
  0x00007f94e1101109: pop    %rbp
  0x00007f94e110110a: test   %eax,0x16eedff0(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1101110: retq   
  0x00007f94e1101111: mov    %rax,0x8(%rsp)
  0x00007f94e1101116: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110111e: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=419}
                                                ;*synchronization entry
                                                ; - java.lang.String::hashCode@-1 (line 1466)
                                                ;   {runtime_call}
  0x00007f94e1101123: jmpq   0x00007f94e1100fde
  0x00007f94e1101128: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop rdi=Oop off=429}
                                                ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1467)
                                                ;   {runtime_call}
  0x00007f94e110112d: mov    %rcx,0x8(%rsp)
  0x00007f94e1101132: movq   $0x2d,(%rsp)
  0x00007f94e110113a: callq  0x00007f94e10fc760  ; OopMap{rdi=Oop rsi=Oop off=447}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)
                                                ;   {runtime_call}
  0x00007f94e110113f: jmpq   0x00007f94e11010b4
  0x00007f94e1101144: nop    
  0x00007f94e1101145: nop    
  0x00007f94e1101146: mov    0x2a8(%r15),%rax
  0x00007f94e110114d: mov    $0x0,%r10
  0x00007f94e1101157: mov    %r10,0x2a8(%r15)
  0x00007f94e110115e: mov    $0x0,%r10
  0x00007f94e1101168: mov    %r10,0x2b0(%r15)
  0x00007f94e110116f: add    $0x30,%rsp
  0x00007f94e1101173: pop    %rbp
  0x00007f94e1101174: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1101179: hlt    
  0x00007f94e110117a: hlt    
  0x00007f94e110117b: hlt    
  0x00007f94e110117c: hlt    
  0x00007f94e110117d: hlt    
  0x00007f94e110117e: hlt    
  0x00007f94e110117f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e1101180: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e1101185: mov    %rsp,-0x28(%rsp)
  0x00007f94e110118a: sub    $0x80,%rsp
  0x00007f94e1101191: mov    %rax,0x78(%rsp)
  0x00007f94e1101196: mov    %rcx,0x70(%rsp)
  0x00007f94e110119b: mov    %rdx,0x68(%rsp)
  0x00007f94e11011a0: mov    %rbx,0x60(%rsp)
  0x00007f94e11011a5: mov    %rbp,0x50(%rsp)
  0x00007f94e11011aa: mov    %rsi,0x48(%rsp)
  0x00007f94e11011af: mov    %rdi,0x40(%rsp)
  0x00007f94e11011b4: mov    %r8,0x38(%rsp)
  0x00007f94e11011b9: mov    %r9,0x30(%rsp)
  0x00007f94e11011be: mov    %r10,0x28(%rsp)
  0x00007f94e11011c3: mov    %r11,0x20(%rsp)
  0x00007f94e11011c8: mov    %r12,0x18(%rsp)
  0x00007f94e11011cd: mov    %r13,0x10(%rsp)
  0x00007f94e11011d2: mov    %r14,0x8(%rsp)
  0x00007f94e11011d7: mov    %r15,(%rsp)
  0x00007f94e11011db: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e11011e5: mov    $0x7f94e1101185,%rsi  ;   {internal_word}
  0x00007f94e11011ef: mov    %rsp,%rdx
  0x00007f94e11011f2: and    $0xfffffffffffffff0,%rsp
  0x00007f94e11011f6: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e11011fb: hlt    
[Deopt Handler Code]
  0x00007f94e11011fc: mov    $0x7f94e11011fc,%r10  ;   {section_word}
  0x00007f94e1101206: push   %r10
  0x00007f94e1101208: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110120d: hlt    
  0x00007f94e110120e: hlt    
  0x00007f94e110120f: hlt    
Decoding compiled method 0x00007f94e1100690:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1100800: mov    0x8(%rsi),%r10d
  0x00007f94e1100804: shl    $0x3,%r10
  0x00007f94e1100808: cmp    %rax,%r10
  0x00007f94e110080b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1100811: nopw   0x0(%rax,%rax,1)
  0x00007f94e110081c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1100820: mov    %eax,-0x14000(%rsp)
  0x00007f94e1100827: push   %rbp
  0x00007f94e1100828: sub    $0x30,%rsp
  0x00007f94e110082c: mov    $0x7f94e019efd0,%rdi  ;   {metadata(method data for {method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e1100836: mov    0xdc(%rdi),%ebx
  0x00007f94e110083c: add    $0x8,%ebx
  0x00007f94e110083f: mov    %ebx,0xdc(%rdi)
  0x00007f94e1100845: mov    $0x7f94e002b480,%rdi  ;   {metadata({method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e110084f: and    $0x1ff8,%ebx
  0x00007f94e1100855: cmp    $0x0,%ebx
  0x00007f94e1100858: je     0x00007f94e1100877
  0x00007f94e110085e: mov    %rsi,%rdi          ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)

  0x00007f94e1100861: mov    %rsi,0x20(%rsp)
  0x00007f94e1100866: callq  0x00007f94e10f98a0  ; OopMap{[32]=Oop off=107}
                                                ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)
                                                ;   {runtime_call}
  0x00007f94e110086b: add    $0x30,%rsp
  0x00007f94e110086f: pop    %rbp
  0x00007f94e1100870: test   %eax,0x16eee88a(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1100876: retq   
  0x00007f94e1100877: mov    %rdi,0x8(%rsp)
  0x00007f94e110087c: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1100884: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=137}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ;   {runtime_call}
  0x00007f94e1100889: jmp    0x00007f94e110085e
  0x00007f94e110088b: nop    
  0x00007f94e110088c: nop    
  0x00007f94e110088d: mov    0x2a8(%r15),%rax
  0x00007f94e1100894: mov    $0x0,%r10
  0x00007f94e110089e: mov    %r10,0x2a8(%r15)
  0x00007f94e11008a5: mov    $0x0,%r10
  0x00007f94e11008af: mov    %r10,0x2b0(%r15)
  0x00007f94e11008b6: add    $0x30,%rsp
  0x00007f94e11008ba: pop    %rbp
  0x00007f94e11008bb: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
[Exception Handler]
[Stub Code]
  0x00007f94e11008c0: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e11008c5: mov    %rsp,-0x28(%rsp)
  0x00007f94e11008ca: sub    $0x80,%rsp
  0x00007f94e11008d1: mov    %rax,0x78(%rsp)
  0x00007f94e11008d6: mov    %rcx,0x70(%rsp)
  0x00007f94e11008db: mov    %rdx,0x68(%rsp)
  0x00007f94e11008e0: mov    %rbx,0x60(%rsp)
  0x00007f94e11008e5: mov    %rbp,0x50(%rsp)
  0x00007f94e11008ea: mov    %rsi,0x48(%rsp)
  0x00007f94e11008ef: mov    %rdi,0x40(%rsp)
  0x00007f94e11008f4: mov    %r8,0x38(%rsp)
  0x00007f94e11008f9: mov    %r9,0x30(%rsp)
  0x00007f94e11008fe: mov    %r10,0x28(%rsp)
  0x00007f94e1100903: mov    %r11,0x20(%rsp)
  0x00007f94e1100908: mov    %r12,0x18(%rsp)
  0x00007f94e110090d: mov    %r13,0x10(%rsp)
  0x00007f94e1100912: mov    %r14,0x8(%rsp)
  0x00007f94e1100917: mov    %r15,(%rsp)
  0x00007f94e110091b: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1100925: mov    $0x7f94e11008c5,%rsi  ;   {internal_word}
  0x00007f94e110092f: mov    %rsp,%rdx
  0x00007f94e1100932: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1100936: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110093b: hlt    
[Deopt Handler Code]
  0x00007f94e110093c: mov    $0x7f94e110093c,%r10  ;   {section_word}
  0x00007f94e1100946: push   %r10
  0x00007f94e1100948: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110094d: hlt    
  0x00007f94e110094e: hlt    
  0x00007f94e110094f: hlt    
Decoding compiled method 0x00007f94e110b8d0:
Code:
[Entry Point]
  # {method} {0x00007f94e0044918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  #           [sp+0x60]  (sp of caller)
  0x00007f94e110ba40: mov    0x8(%rsi),%r10d
  0x00007f94e110ba44: shl    $0x3,%r10
  0x00007f94e110ba48: cmp    %r10,%rax
  0x00007f94e110ba4b: je     0x00007f94e110ba58
  0x00007f94e110ba51: jmpq   0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e110ba56: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e110ba58: mov    %eax,-0x14000(%rsp)
  0x00007f94e110ba5f: push   %rbp
  0x00007f94e110ba60: mov    %rsp,%rbp
  0x00007f94e110ba63: sub    $0x50,%rsp
  0x00007f94e110ba67: mov    %r9,(%rsp)
  0x00007f94e110ba6b: mov    %r8,%r9
  0x00007f94e110ba6e: mov    %rcx,0x18(%rsp)
  0x00007f94e110ba73: cmp    $0x0,%rcx
  0x00007f94e110ba77: lea    0x18(%rsp),%r8
  0x00007f94e110ba7c: cmove  0x18(%rsp),%r8
  0x00007f94e110ba82: mov    %rdx,%rcx
  0x00007f94e110ba85: mov    %rsi,0x8(%rsp)
  0x00007f94e110ba8a: cmp    $0x0,%rsi
  0x00007f94e110ba8e: lea    0x8(%rsp),%rdx
  0x00007f94e110ba93: cmove  0x8(%rsp),%rdx
  0x00007f94e110ba99: mov    $0x781e00c78,%r14  ;   {oop(a 'java/lang/Class' = 'java/lang/System')}
  0x00007f94e110baa3: mov    %r14,0x38(%rsp)
  0x00007f94e110baa8: lea    0x38(%rsp),%r14
  0x00007f94e110baad: mov    %r14,%rsi          ; OopMap{[24]=Oop [8]=Oop [56]=Oop off=112}
  0x00007f94e110bab0: mov    $0x7f94e110bab0,%r10  ;   {section_word}
  0x00007f94e110baba: mov    %r10,0x1e0(%r15)
  0x00007f94e110bac1: mov    %rsp,0x1d8(%r15)
  0x00007f94e110bac8: cmpb   $0x0,0x162895f3(%rip)        # 0x00007f94f73950c2
                                                ;   {external_word}
  0x00007f94e110bacf: je     0x00007f94e110bb13
  0x00007f94e110bad5: push   %rsi
  0x00007f94e110bad6: push   %rdx
  0x00007f94e110bad7: push   %rcx
  0x00007f94e110bad8: push   %r8
  0x00007f94e110bada: push   %r9
  0x00007f94e110badc: mov    $0x7f94e0044918,%rsi  ;   {metadata({method} {0x00007f94e0044918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x00007f94e110bae6: mov    %r15,%rdi
  0x00007f94e110bae9: test   $0xf,%esp
  0x00007f94e110baef: je     0x00007f94e110bb07
  0x00007f94e110baf5: sub    $0x8,%rsp
  0x00007f94e110baf9: callq  0x00007f94f6da7170  ;   {runtime_call}
  0x00007f94e110bafe: add    $0x8,%rsp
  0x00007f94e110bb02: jmpq   0x00007f94e110bb0c
  0x00007f94e110bb07: callq  0x00007f94f6da7170  ;   {runtime_call}
  0x00007f94e110bb0c: pop    %r9
  0x00007f94e110bb0e: pop    %r8
  0x00007f94e110bb10: pop    %rcx
  0x00007f94e110bb11: pop    %rdx
  0x00007f94e110bb12: pop    %rsi
  0x00007f94e110bb13: lea    0x1f8(%r15),%rdi
  0x00007f94e110bb1a: movl   $0x4,0x270(%r15)
  0x00007f94e110bb25: callq  0x00007f94f6b0ebf0  ;   {runtime_call}
  0x00007f94e110bb2a: vzeroupper 
  0x00007f94e110bb2d: movl   $0x5,0x270(%r15)
  0x00007f94e110bb38: mov    %r15d,%ecx
  0x00007f94e110bb3b: shr    $0x4,%ecx
  0x00007f94e110bb3e: and    $0xffc,%ecx
  0x00007f94e110bb44: mov    $0x7f94f7fee000,%r10  ;   {external_word}
  0x00007f94e110bb4e: mov    %ecx,(%r10,%rcx,1)
  0x00007f94e110bb52: cmpl   $0x0,0x16298ae4(%rip)        # 0x00007f94f73a4640
                                                ;   {external_word}
  0x00007f94e110bb5c: jne    0x00007f94e110bb70
  0x00007f94e110bb62: cmpl   $0x0,0x30(%r15)
  0x00007f94e110bb6a: je     0x00007f94e110bb89
  0x00007f94e110bb70: mov    %r15,%rdi
  0x00007f94e110bb73: mov    %rsp,%r12
  0x00007f94e110bb76: sub    $0x0,%rsp
  0x00007f94e110bb7a: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110bb7e: callq  0x00007f94f6e56090  ;   {runtime_call}
  0x00007f94e110bb83: mov    %r12,%rsp
  0x00007f94e110bb86: xor    %r12,%r12
  0x00007f94e110bb89: movl   $0x8,0x270(%r15)
  0x00007f94e110bb94: cmpl   $0x1,0x29c(%r15)
  0x00007f94e110bb9f: je     0x00007f94e110bc27
  0x00007f94e110bba5: cmpb   $0x0,0x16289516(%rip)        # 0x00007f94f73950c2
                                                ;   {external_word}
  0x00007f94e110bbac: je     0x00007f94e110bbe2
  0x00007f94e110bbb2: mov    $0x7f94e0044918,%rsi  ;   {metadata({method} {0x00007f94e0044918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x00007f94e110bbbc: mov    %r15,%rdi
  0x00007f94e110bbbf: test   $0xf,%esp
  0x00007f94e110bbc5: je     0x00007f94e110bbdd
  0x00007f94e110bbcb: sub    $0x8,%rsp
  0x00007f94e110bbcf: callq  0x00007f94f6da7160  ;   {runtime_call}
  0x00007f94e110bbd4: add    $0x8,%rsp
  0x00007f94e110bbd8: jmpq   0x00007f94e110bbe2
  0x00007f94e110bbdd: callq  0x00007f94f6da7160  ;   {runtime_call}
  0x00007f94e110bbe2: mov    $0x0,%r10
  0x00007f94e110bbec: mov    %r10,0x1d8(%r15)
  0x00007f94e110bbf3: mov    $0x0,%r10
  0x00007f94e110bbfd: mov    %r10,0x1e0(%r15)
  0x00007f94e110bc04: mov    0x38(%r15),%rcx
  0x00007f94e110bc08: movl   $0x0,0x100(%rcx)
  0x00007f94e110bc12: leaveq 
  0x00007f94e110bc13: cmpq   $0x0,0x8(%r15)
  0x00007f94e110bc1b: jne    0x00007f94e110bc22
  0x00007f94e110bc21: retq   
  0x00007f94e110bc22: jmpq   Stub::forward exception  ;   {runtime_call}
  0x00007f94e110bc27: mov    %rsp,%r12
  0x00007f94e110bc2a: sub    $0x0,%rsp
  0x00007f94e110bc2e: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110bc32: callq  0x00007f94f6da7140  ;   {runtime_call}
  0x00007f94e110bc37: mov    %r12,%rsp
  0x00007f94e110bc3a: xor    %r12,%r12
  0x00007f94e110bc3d: jmpq   0x00007f94e110bba5
  0x00007f94e110bc42: hlt    
  0x00007f94e110bc43: hlt    
  0x00007f94e110bc44: hlt    
  0x00007f94e110bc45: hlt    
  0x00007f94e110bc46: hlt    
  0x00007f94e110bc47: hlt    
Decoding compiled method 0x00007f94e110b150:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f94e110b2e0: mov    0x8(%rsi),%r10d
  0x00007f94e110b2e4: shl    $0x3,%r10
  0x00007f94e110b2e8: cmp    %rax,%r10
  0x00007f94e110b2eb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e110b2f1: nopw   0x0(%rax,%rax,1)
  0x00007f94e110b2fc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e110b300: mov    %eax,-0x14000(%rsp)
  0x00007f94e110b307: push   %rbp
  0x00007f94e110b308: sub    $0x30,%rsp
  0x00007f94e110b30c: mov    $0x7f94e0228330,%rax  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b316: mov    0xdc(%rax),%edi
  0x00007f94e110b31c: add    $0x8,%edi
  0x00007f94e110b31f: mov    %edi,0xdc(%rax)
  0x00007f94e110b325: mov    $0x7f94e0030178,%rax  ;   {metadata({method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b32f: and    $0x1ff8,%edi
  0x00007f94e110b335: cmp    $0x0,%edi
  0x00007f94e110b338: je     0x00007f94e110b541  ;*aload_0
                                                ; - java.lang.String::indexOf@0 (line 1546)

  0x00007f94e110b33e: mov    0xc(%rsi),%eax
  0x00007f94e110b341: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::indexOf@1 (line 1546)

  0x00007f94e110b345: mov    0xc(%rax),%edi     ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1546)
                                                ; implicit exception: dispatches to 0x00007f94e110b558
  0x00007f94e110b348: cmp    $0x0,%ecx
  0x00007f94e110b34b: mov    $0x7f94e0228330,%rbx  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b355: mov    $0x108,%r8
  0x00007f94e110b35f: jge    0x00007f94e110b36f
  0x00007f94e110b365: mov    $0x118,%r8
  0x00007f94e110b36f: mov    (%rbx,%r8,1),%r9
  0x00007f94e110b373: lea    0x1(%r9),%r9
  0x00007f94e110b377: mov    %r9,(%rbx,%r8,1)
  0x00007f94e110b37b: jge    0x00007f94e110b39b  ;*ifge
                                                ; - java.lang.String::indexOf@7 (line 1547)

  0x00007f94e110b381: mov    $0x7f94e0228330,%rcx  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b38b: incl   0x128(%rcx)
  0x00007f94e110b391: mov    $0x0,%ecx
  0x00007f94e110b396: jmpq   0x00007f94e110b3d3  ;*goto
                                                ; - java.lang.String::indexOf@12 (line 1548)

  0x00007f94e110b39b: cmp    %edi,%ecx
  0x00007f94e110b39d: mov    $0x7f94e0228330,%rbx  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b3a7: mov    $0x140,%r8
  0x00007f94e110b3b1: jl     0x00007f94e110b3c1
  0x00007f94e110b3b7: mov    $0x150,%r8
  0x00007f94e110b3c1: mov    (%rbx,%r8,1),%r9
  0x00007f94e110b3c5: lea    0x1(%r9),%r9
  0x00007f94e110b3c9: mov    %r9,(%rbx,%r8,1)
  0x00007f94e110b3cd: jge    0x00007f94e110b530  ;*if_icmplt
                                                ; - java.lang.String::indexOf@17 (line 1549)

  0x00007f94e110b3d3: cmp    $0x10000,%edx
  0x00007f94e110b3d9: mov    $0x7f94e0228330,%rbx  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b3e3: mov    $0x160,%r8
  0x00007f94e110b3ed: jge    0x00007f94e110b3fd
  0x00007f94e110b3f3: mov    $0x170,%r8
  0x00007f94e110b3fd: mov    (%rbx,%r8,1),%r9
  0x00007f94e110b401: lea    0x1(%r9),%r9
  0x00007f94e110b405: mov    %r9,(%rbx,%r8,1)
  0x00007f94e110b409: jge    0x00007f94e110b508
  0x00007f94e110b40f: jmpq   0x00007f94e110b4ab  ;*if_icmpge
                                                ; - java.lang.String::indexOf@25 (line 1554)

  0x00007f94e110b414: nopl   0x0(%rax)
  0x00007f94e110b418: movslq %ecx,%rsi
  0x00007f94e110b41b: cmp    0xc(%rax),%ecx
  0x00007f94e110b41e: jae    0x00007f94e110b55d
  0x00007f94e110b424: movzwl 0x10(%rax,%rsi,2),%esi  ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1559)

  0x00007f94e110b429: cmp    %edx,%esi
  0x00007f94e110b42b: mov    $0x7f94e0228330,%rsi  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b435: mov    $0x1a0,%rbx
  0x00007f94e110b43f: jne    0x00007f94e110b44f
  0x00007f94e110b445: mov    $0x1b0,%rbx
  0x00007f94e110b44f: mov    (%rsi,%rbx,1),%r8
  0x00007f94e110b453: lea    0x1(%r8),%r8
  0x00007f94e110b457: mov    %r8,(%rsi,%rbx,1)
  0x00007f94e110b45b: je     0x00007f94e110b4e8  ;*if_icmpne
                                                ; - java.lang.String::indexOf@49 (line 1559)

  0x00007f94e110b461: inc    %ecx
  0x00007f94e110b463: mov    $0x7f94e0228330,%rsi  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b46d: mov    0xe0(%rsi),%ebx
  0x00007f94e110b473: add    $0x8,%ebx
  0x00007f94e110b476: mov    %ebx,0xe0(%rsi)
  0x00007f94e110b47c: mov    $0x7f94e0030178,%rsi  ;   {metadata({method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b486: and    $0xfff8,%ebx
  0x00007f94e110b48c: cmp    $0x0,%ebx
  0x00007f94e110b48f: je     0x00007f94e110b566  ; OopMap{rax=Oop off=437}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)

  0x00007f94e110b495: test   %eax,0x16ee3c65(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e110b49b: mov    $0x7f94e0228330,%rsi  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b4a5: incl   0x1c0(%rsi)        ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)

  0x00007f94e110b4ab: cmp    %edi,%ecx
  0x00007f94e110b4ad: mov    $0x7f94e0228330,%rsi  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b4b7: mov    $0x180,%rbx
  0x00007f94e110b4c1: jge    0x00007f94e110b4d1
  0x00007f94e110b4c7: mov    $0x190,%rbx
  0x00007f94e110b4d1: mov    (%rsi,%rbx,1),%r8
  0x00007f94e110b4d5: lea    0x1(%r8),%r8
  0x00007f94e110b4d9: mov    %r8,(%rsi,%rbx,1)
  0x00007f94e110b4dd: jge    0x00007f94e110b4f7
  0x00007f94e110b4e3: jmpq   0x00007f94e110b418  ;*if_icmpge
                                                ; - java.lang.String::indexOf@40 (line 1558)

  0x00007f94e110b4e8: mov    %rcx,%rax
  0x00007f94e110b4eb: add    $0x30,%rsp
  0x00007f94e110b4ef: pop    %rbp
  0x00007f94e110b4f0: test   %eax,0x16ee3c0a(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110b4f6: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@54 (line 1560)

  0x00007f94e110b4f7: mov    $0xffffffff,%eax
  0x00007f94e110b4fc: add    $0x30,%rsp
  0x00007f94e110b500: pop    %rbp
  0x00007f94e110b501: test   %eax,0x16ee3bf9(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110b507: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@62 (line 1563)

  0x00007f94e110b508: mov    %rsi,%rdi
  0x00007f94e110b50b: mov    $0x7f94e0228330,%rbx  ;   {metadata(method data for {method} {0x00007f94e0030178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e110b515: addq   $0x1,0x1d8(%rbx)
  0x00007f94e110b51d: nop    
  0x00007f94e110b51e: nop    
  0x00007f94e110b51f: callq  0x00007f94e1046020  ; OopMap{off=580}
                                                ;*invokespecial indexOfSupplementary
                                                ; - java.lang.String::indexOf@66 (line 1565)
                                                ;   {optimized virtual_call}
  0x00007f94e110b524: add    $0x30,%rsp
  0x00007f94e110b528: pop    %rbp
  0x00007f94e110b529: test   %eax,0x16ee3bd1(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110b52f: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@69 (line 1565)

  0x00007f94e110b530: mov    $0xffffffff,%eax
  0x00007f94e110b535: add    $0x30,%rsp
  0x00007f94e110b539: pop    %rbp
  0x00007f94e110b53a: test   %eax,0x16ee3bc0(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110b540: retq   
  0x00007f94e110b541: mov    %rax,0x8(%rsp)
  0x00007f94e110b546: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110b54e: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=627}
                                                ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1546)
                                                ;   {runtime_call}
  0x00007f94e110b553: jmpq   0x00007f94e110b33e
  0x00007f94e110b558: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop rax=Oop off=637}
                                                ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1546)
                                                ;   {runtime_call}
  0x00007f94e110b55d: mov    %rcx,(%rsp)
  0x00007f94e110b561: callq  0x00007f94e106bc40  ; OopMap{rax=Oop off=646}
                                                ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1559)
                                                ;   {runtime_call}
  0x00007f94e110b566: mov    %rsi,0x8(%rsp)
  0x00007f94e110b56b: movq   $0x3a,(%rsp)
  0x00007f94e110b573: callq  0x00007f94e10fc760  ; OopMap{rax=Oop off=664}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)
                                                ;   {runtime_call}
  0x00007f94e110b578: jmpq   0x00007f94e110b495
  0x00007f94e110b57d: nop    
  0x00007f94e110b57e: nop    
  0x00007f94e110b57f: mov    0x2a8(%r15),%rax
  0x00007f94e110b586: mov    $0x0,%r10
  0x00007f94e110b590: mov    %r10,0x2a8(%r15)
  0x00007f94e110b597: mov    $0x0,%r10
  0x00007f94e110b5a1: mov    %r10,0x2b0(%r15)
  0x00007f94e110b5a8: add    $0x30,%rsp
  0x00007f94e110b5ac: pop    %rbp
  0x00007f94e110b5ad: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e110b5b2: hlt    
  0x00007f94e110b5b3: hlt    
  0x00007f94e110b5b4: hlt    
  0x00007f94e110b5b5: hlt    
  0x00007f94e110b5b6: hlt    
  0x00007f94e110b5b7: hlt    
  0x00007f94e110b5b8: hlt    
  0x00007f94e110b5b9: hlt    
  0x00007f94e110b5ba: hlt    
  0x00007f94e110b5bb: hlt    
  0x00007f94e110b5bc: hlt    
  0x00007f94e110b5bd: hlt    
  0x00007f94e110b5be: hlt    
  0x00007f94e110b5bf: hlt    
[Stub Code]
  0x00007f94e110b5c0: nop                       ;   {no_reloc}
  0x00007f94e110b5c1: nop    
  0x00007f94e110b5c2: nop    
  0x00007f94e110b5c3: nop    
  0x00007f94e110b5c4: nop    
  0x00007f94e110b5c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110b5cf: jmpq   0x00007f94e110b5cf  ;   {runtime_call}
[Exception Handler]
  0x00007f94e110b5d4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e110b5d9: mov    %rsp,-0x28(%rsp)
  0x00007f94e110b5de: sub    $0x80,%rsp
  0x00007f94e110b5e5: mov    %rax,0x78(%rsp)
  0x00007f94e110b5ea: mov    %rcx,0x70(%rsp)
  0x00007f94e110b5ef: mov    %rdx,0x68(%rsp)
  0x00007f94e110b5f4: mov    %rbx,0x60(%rsp)
  0x00007f94e110b5f9: mov    %rbp,0x50(%rsp)
  0x00007f94e110b5fe: mov    %rsi,0x48(%rsp)
  0x00007f94e110b603: mov    %rdi,0x40(%rsp)
  0x00007f94e110b608: mov    %r8,0x38(%rsp)
  0x00007f94e110b60d: mov    %r9,0x30(%rsp)
  0x00007f94e110b612: mov    %r10,0x28(%rsp)
  0x00007f94e110b617: mov    %r11,0x20(%rsp)
  0x00007f94e110b61c: mov    %r12,0x18(%rsp)
  0x00007f94e110b621: mov    %r13,0x10(%rsp)
  0x00007f94e110b626: mov    %r14,0x8(%rsp)
  0x00007f94e110b62b: mov    %r15,(%rsp)
  0x00007f94e110b62f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e110b639: mov    $0x7f94e110b5d9,%rsi  ;   {internal_word}
  0x00007f94e110b643: mov    %rsp,%rdx
  0x00007f94e110b646: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110b64a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110b64f: hlt    
[Deopt Handler Code]
  0x00007f94e110b650: mov    $0x7f94e110b650,%r10  ;   {section_word}
  0x00007f94e110b65a: push   %r10
  0x00007f94e110b65c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110b661: hlt    
  0x00007f94e110b662: hlt    
  0x00007f94e110b663: hlt    
  0x00007f94e110b664: hlt    
  0x00007f94e110b665: hlt    
  0x00007f94e110b666: hlt    
  0x00007f94e110b667: hlt    
Decoding compiled method 0x00007f94e110ad90:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f94e110af00: mov    %eax,-0x14000(%rsp)
  0x00007f94e110af07: push   %rbp
  0x00007f94e110af08: sub    $0x30,%rsp
  0x00007f94e110af0c: mov    $0x7f94e01f91c0,%rax  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110af16: mov    0xdc(%rax),%edi
  0x00007f94e110af1c: add    $0x8,%edi
  0x00007f94e110af1f: mov    %edi,0xdc(%rax)
  0x00007f94e110af25: mov    $0x7f94e011eb90,%rax  ;   {metadata({method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110af2f: and    $0x1ff8,%edi
  0x00007f94e110af35: cmp    $0x0,%edi
  0x00007f94e110af38: je     0x00007f94e110af9d  ;*iload_0
                                                ; - java.lang.Math::min@0 (line 1336)

  0x00007f94e110af3e: cmp    %edx,%esi
  0x00007f94e110af40: mov    $0x7f94e01f91c0,%rax  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110af4a: mov    $0x108,%rdi
  0x00007f94e110af54: jg     0x00007f94e110af64
  0x00007f94e110af5a: mov    $0x118,%rdi
  0x00007f94e110af64: mov    (%rax,%rdi,1),%rbx
  0x00007f94e110af68: lea    0x1(%rbx),%rbx
  0x00007f94e110af6c: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e110af70: jg     0x00007f94e110af8b  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)

  0x00007f94e110af76: mov    $0x7f94e01f91c0,%rax  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110af80: incl   0x128(%rax)
  0x00007f94e110af86: jmpq   0x00007f94e110af8e  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)

  0x00007f94e110af8b: mov    %rdx,%rsi          ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)

  0x00007f94e110af8e: mov    %rsi,%rax
  0x00007f94e110af91: add    $0x30,%rsp
  0x00007f94e110af95: pop    %rbp
  0x00007f94e110af96: test   %eax,0x16ee4164(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110af9c: retq   
  0x00007f94e110af9d: mov    %rax,0x8(%rsp)
  0x00007f94e110afa2: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110afaa: callq  0x00007f94e10fc760  ; OopMap{off=175}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ;   {runtime_call}
  0x00007f94e110afaf: jmp    0x00007f94e110af3e
  0x00007f94e110afb1: nop    
  0x00007f94e110afb2: nop    
  0x00007f94e110afb3: mov    0x2a8(%r15),%rax
  0x00007f94e110afba: mov    $0x0,%r10
  0x00007f94e110afc4: mov    %r10,0x2a8(%r15)
  0x00007f94e110afcb: mov    $0x0,%r10
  0x00007f94e110afd5: mov    %r10,0x2b0(%r15)
  0x00007f94e110afdc: add    $0x30,%rsp
  0x00007f94e110afe0: pop    %rbp
  0x00007f94e110afe1: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e110afe6: hlt    
  0x00007f94e110afe7: hlt    
  0x00007f94e110afe8: hlt    
  0x00007f94e110afe9: hlt    
  0x00007f94e110afea: hlt    
  0x00007f94e110afeb: hlt    
  0x00007f94e110afec: hlt    
  0x00007f94e110afed: hlt    
  0x00007f94e110afee: hlt    
  0x00007f94e110afef: hlt    
  0x00007f94e110aff0: hlt    
  0x00007f94e110aff1: hlt    
  0x00007f94e110aff2: hlt    
  0x00007f94e110aff3: hlt    
  0x00007f94e110aff4: hlt    
  0x00007f94e110aff5: hlt    
  0x00007f94e110aff6: hlt    
  0x00007f94e110aff7: hlt    
  0x00007f94e110aff8: hlt    
  0x00007f94e110aff9: hlt    
  0x00007f94e110affa: hlt    
  0x00007f94e110affb: hlt    
  0x00007f94e110affc: hlt    
  0x00007f94e110affd: hlt    
  0x00007f94e110affe: hlt    
  0x00007f94e110afff: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e110b000: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e110b005: mov    %rsp,-0x28(%rsp)
  0x00007f94e110b00a: sub    $0x80,%rsp
  0x00007f94e110b011: mov    %rax,0x78(%rsp)
  0x00007f94e110b016: mov    %rcx,0x70(%rsp)
  0x00007f94e110b01b: mov    %rdx,0x68(%rsp)
  0x00007f94e110b020: mov    %rbx,0x60(%rsp)
  0x00007f94e110b025: mov    %rbp,0x50(%rsp)
  0x00007f94e110b02a: mov    %rsi,0x48(%rsp)
  0x00007f94e110b02f: mov    %rdi,0x40(%rsp)
  0x00007f94e110b034: mov    %r8,0x38(%rsp)
  0x00007f94e110b039: mov    %r9,0x30(%rsp)
  0x00007f94e110b03e: mov    %r10,0x28(%rsp)
  0x00007f94e110b043: mov    %r11,0x20(%rsp)
  0x00007f94e110b048: mov    %r12,0x18(%rsp)
  0x00007f94e110b04d: mov    %r13,0x10(%rsp)
  0x00007f94e110b052: mov    %r14,0x8(%rsp)
  0x00007f94e110b057: mov    %r15,(%rsp)
  0x00007f94e110b05b: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e110b065: mov    $0x7f94e110b005,%rsi  ;   {internal_word}
  0x00007f94e110b06f: mov    %rsp,%rdx
  0x00007f94e110b072: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110b076: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110b07b: hlt    
[Deopt Handler Code]
  0x00007f94e110b07c: mov    $0x7f94e110b07c,%r10  ;   {section_word}
  0x00007f94e110b086: push   %r10
  0x00007f94e110b088: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110b08d: hlt    
  0x00007f94e110b08e: hlt    
  0x00007f94e110b08f: hlt    
Decoding compiled method 0x00007f94e110a8d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f94e110aa40: mov    0x8(%rsi),%r10d
  0x00007f94e110aa44: shl    $0x3,%r10
  0x00007f94e110aa48: cmp    %rax,%r10
  0x00007f94e110aa4b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e110aa51: nopw   0x0(%rax,%rax,1)
  0x00007f94e110aa5c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e110aa60: mov    %eax,-0x14000(%rsp)
  0x00007f94e110aa67: push   %rbp
  0x00007f94e110aa68: sub    $0x30,%rsp
  0x00007f94e110aa6c: mov    $0x7f94e022b7c0,%rdi  ;   {metadata(method data for {method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110aa76: mov    0xdc(%rdi),%ebx
  0x00007f94e110aa7c: add    $0x8,%ebx
  0x00007f94e110aa7f: mov    %ebx,0xdc(%rdi)
  0x00007f94e110aa85: mov    $0x7f94e009f520,%rdi  ;   {metadata({method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110aa8f: and    $0x1ff8,%ebx
  0x00007f94e110aa95: cmp    $0x0,%ebx
  0x00007f94e110aa98: je     0x00007f94e110ab88  ;*iload_1
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@0 (line 120)

  0x00007f94e110aa9e: mov    0x10(%rsi),%edi
  0x00007f94e110aaa1: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@2 (line 120)

  0x00007f94e110aaa5: mov    0xc(%rdi),%edi     ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; implicit exception: dispatches to 0x00007f94e110ab9f
  0x00007f94e110aaa8: mov    %rdx,%rbx
  0x00007f94e110aaab: sub    %edi,%ebx
  0x00007f94e110aaad: cmp    $0x0,%ebx
  0x00007f94e110aab0: mov    $0x7f94e022b7c0,%rdi  ;   {metadata(method data for {method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110aaba: mov    $0x108,%rbx
  0x00007f94e110aac4: jle    0x00007f94e110aad4
  0x00007f94e110aaca: mov    $0x118,%rbx
  0x00007f94e110aad4: mov    (%rdi,%rbx,1),%rax
  0x00007f94e110aad8: lea    0x1(%rax),%rax
  0x00007f94e110aadc: mov    %rax,(%rdi,%rbx,1)
  0x00007f94e110aae0: jle    0x00007f94e110ab7c  ;*ifle
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@7 (line 120)

  0x00007f94e110aae6: mov    %rsi,%rdi
  0x00007f94e110aae9: mov    $0x7f94e022b7c0,%rbx  ;   {metadata(method data for {method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110aaf3: mov    0x8(%rdi),%edi
  0x00007f94e110aaf6: shl    $0x3,%rdi
  0x00007f94e110aafa: cmp    0x130(%rbx),%rdi
  0x00007f94e110ab01: jne    0x00007f94e110ab10
  0x00007f94e110ab03: addq   $0x1,0x138(%rbx)
  0x00007f94e110ab0b: jmpq   0x00007f94e110ab76
  0x00007f94e110ab10: cmp    0x140(%rbx),%rdi
  0x00007f94e110ab17: jne    0x00007f94e110ab26
  0x00007f94e110ab19: addq   $0x1,0x148(%rbx)
  0x00007f94e110ab21: jmpq   0x00007f94e110ab76
  0x00007f94e110ab26: cmpq   $0x0,0x130(%rbx)
  0x00007f94e110ab31: jne    0x00007f94e110ab4a
  0x00007f94e110ab33: mov    %rdi,0x130(%rbx)
  0x00007f94e110ab3a: movq   $0x1,0x138(%rbx)
  0x00007f94e110ab45: jmpq   0x00007f94e110ab76
  0x00007f94e110ab4a: cmpq   $0x0,0x140(%rbx)
  0x00007f94e110ab55: jne    0x00007f94e110ab6e
  0x00007f94e110ab57: mov    %rdi,0x140(%rbx)
  0x00007f94e110ab5e: movq   $0x1,0x148(%rbx)
  0x00007f94e110ab69: jmpq   0x00007f94e110ab76
  0x00007f94e110ab6e: addq   $0x1,0x128(%rbx)
  0x00007f94e110ab76: nop    
  0x00007f94e110ab77: callq  0x00007f94e1046020  ; OopMap{off=316}
                                                ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ;   {optimized virtual_call}
  0x00007f94e110ab7c: add    $0x30,%rsp
  0x00007f94e110ab80: pop    %rbp
  0x00007f94e110ab81: test   %eax,0x16ee4579(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110ab87: retq   
  0x00007f94e110ab88: mov    %rdi,0x8(%rsp)
  0x00007f94e110ab8d: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110ab95: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=346}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@-1 (line 120)
                                                ;   {runtime_call}
  0x00007f94e110ab9a: jmpq   0x00007f94e110aa9e
  0x00007f94e110ab9f: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop off=356}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ;   {runtime_call}
  0x00007f94e110aba4: nop    
  0x00007f94e110aba5: nop    
  0x00007f94e110aba6: mov    0x2a8(%r15),%rax
  0x00007f94e110abad: mov    $0x0,%r10
  0x00007f94e110abb7: mov    %r10,0x2a8(%r15)
  0x00007f94e110abbe: mov    $0x0,%r10
  0x00007f94e110abc8: mov    %r10,0x2b0(%r15)
  0x00007f94e110abcf: add    $0x30,%rsp
  0x00007f94e110abd3: pop    %rbp
  0x00007f94e110abd4: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e110abd9: hlt    
  0x00007f94e110abda: hlt    
  0x00007f94e110abdb: hlt    
  0x00007f94e110abdc: hlt    
  0x00007f94e110abdd: hlt    
  0x00007f94e110abde: hlt    
  0x00007f94e110abdf: hlt    
[Stub Code]
  0x00007f94e110abe0: nop                       ;   {no_reloc}
  0x00007f94e110abe1: nop    
  0x00007f94e110abe2: nop    
  0x00007f94e110abe3: nop    
  0x00007f94e110abe4: nop    
  0x00007f94e110abe5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110abef: jmpq   0x00007f94e110abef  ;   {runtime_call}
[Exception Handler]
  0x00007f94e110abf4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e110abf9: mov    %rsp,-0x28(%rsp)
  0x00007f94e110abfe: sub    $0x80,%rsp
  0x00007f94e110ac05: mov    %rax,0x78(%rsp)
  0x00007f94e110ac0a: mov    %rcx,0x70(%rsp)
  0x00007f94e110ac0f: mov    %rdx,0x68(%rsp)
  0x00007f94e110ac14: mov    %rbx,0x60(%rsp)
  0x00007f94e110ac19: mov    %rbp,0x50(%rsp)
  0x00007f94e110ac1e: mov    %rsi,0x48(%rsp)
  0x00007f94e110ac23: mov    %rdi,0x40(%rsp)
  0x00007f94e110ac28: mov    %r8,0x38(%rsp)
  0x00007f94e110ac2d: mov    %r9,0x30(%rsp)
  0x00007f94e110ac32: mov    %r10,0x28(%rsp)
  0x00007f94e110ac37: mov    %r11,0x20(%rsp)
  0x00007f94e110ac3c: mov    %r12,0x18(%rsp)
  0x00007f94e110ac41: mov    %r13,0x10(%rsp)
  0x00007f94e110ac46: mov    %r14,0x8(%rsp)
  0x00007f94e110ac4b: mov    %r15,(%rsp)
  0x00007f94e110ac4f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e110ac59: mov    $0x7f94e110abf9,%rsi  ;   {internal_word}
  0x00007f94e110ac63: mov    %rsp,%rdx
  0x00007f94e110ac66: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110ac6a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110ac6f: hlt    
[Deopt Handler Code]
  0x00007f94e110ac70: mov    $0x7f94e110ac70,%r10  ;   {section_word}
  0x00007f94e110ac7a: push   %r10
  0x00007f94e110ac7c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110ac81: hlt    
  0x00007f94e110ac82: hlt    
  0x00007f94e110ac83: hlt    
  0x00007f94e110ac84: hlt    
  0x00007f94e110ac85: hlt    
  0x00007f94e110ac86: hlt    
  0x00007f94e110ac87: hlt    
Decoding compiled method 0x00007f94e110be90:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f94e012daf0} 'access$400' '(Ljava/lang/ThreadLocal;)I' in 'java/lang/ThreadLocal'
  # parm0:    rsi:rsi   = 'java/lang/ThreadLocal'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e110bfe0: mov    %eax,-0x14000(%rsp)
  0x00007f94e110bfe7: push   %rbp
  0x00007f94e110bfe8: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.lang.ThreadLocal::access$400@0 (line 74)

  0x00007f94e110bfec: mov    0xc(%rsi),%eax     ;*getfield threadLocalHashCode
                                                ; - java.lang.ThreadLocal::access$400@1 (line 74)
                                                ; implicit exception: dispatches to 0x00007f94e110bffb
  0x00007f94e110bfef: add    $0x30,%rsp
  0x00007f94e110bff3: pop    %rbp
  0x00007f94e110bff4: test   %eax,0x16ee3106(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110bffa: retq   
  0x00007f94e110bffb: callq  0x00007f94e10f9680  ; OopMap{off=32}
                                                ;*getfield threadLocalHashCode
                                                ; - java.lang.ThreadLocal::access$400@1 (line 74)
                                                ;   {runtime_call}
  0x00007f94e110c000: nop    
  0x00007f94e110c001: nop    
  0x00007f94e110c002: mov    0x2a8(%r15),%rax
  0x00007f94e110c009: mov    $0x0,%r10
  0x00007f94e110c013: mov    %r10,0x2a8(%r15)
  0x00007f94e110c01a: mov    $0x0,%r10
  0x00007f94e110c024: mov    %r10,0x2b0(%r15)
  0x00007f94e110c02b: add    $0x30,%rsp
  0x00007f94e110c02f: pop    %rbp
  0x00007f94e110c030: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e110c035: hlt    
  0x00007f94e110c036: hlt    
  0x00007f94e110c037: hlt    
  0x00007f94e110c038: hlt    
  0x00007f94e110c039: hlt    
  0x00007f94e110c03a: hlt    
  0x00007f94e110c03b: hlt    
  0x00007f94e110c03c: hlt    
  0x00007f94e110c03d: hlt    
  0x00007f94e110c03e: hlt    
  0x00007f94e110c03f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e110c040: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e110c045: mov    %rsp,-0x28(%rsp)
  0x00007f94e110c04a: sub    $0x80,%rsp
  0x00007f94e110c051: mov    %rax,0x78(%rsp)
  0x00007f94e110c056: mov    %rcx,0x70(%rsp)
  0x00007f94e110c05b: mov    %rdx,0x68(%rsp)
  0x00007f94e110c060: mov    %rbx,0x60(%rsp)
  0x00007f94e110c065: mov    %rbp,0x50(%rsp)
  0x00007f94e110c06a: mov    %rsi,0x48(%rsp)
  0x00007f94e110c06f: mov    %rdi,0x40(%rsp)
  0x00007f94e110c074: mov    %r8,0x38(%rsp)
  0x00007f94e110c079: mov    %r9,0x30(%rsp)
  0x00007f94e110c07e: mov    %r10,0x28(%rsp)
  0x00007f94e110c083: mov    %r11,0x20(%rsp)
  0x00007f94e110c088: mov    %r12,0x18(%rsp)
  0x00007f94e110c08d: mov    %r13,0x10(%rsp)
  0x00007f94e110c092: mov    %r14,0x8(%rsp)
  0x00007f94e110c097: mov    %r15,(%rsp)
  0x00007f94e110c09b: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e110c0a5: mov    $0x7f94e110c045,%rsi  ;   {internal_word}
  0x00007f94e110c0af: mov    %rsp,%rdx
  0x00007f94e110c0b2: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110c0b6: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110c0bb: hlt    
[Deopt Handler Code]
  0x00007f94e110c0bc: mov    $0x7f94e110c0bc,%r10  ;   {section_word}
  0x00007f94e110c0c6: push   %r10
  0x00007f94e110c0c8: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110c0cd: hlt    
  0x00007f94e110c0ce: hlt    
  0x00007f94e110c0cf: hlt    
Decoding compiled method 0x00007f94e110c590:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x80]  (sp of caller)
  0x00007f94e110c740: mov    0x8(%rsi),%r10d
  0x00007f94e110c744: shl    $0x3,%r10
  0x00007f94e110c748: cmp    %rax,%r10
  0x00007f94e110c74b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e110c751: nopw   0x0(%rax,%rax,1)
  0x00007f94e110c75c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e110c760: mov    %eax,-0x14000(%rsp)
  0x00007f94e110c767: push   %rbp
  0x00007f94e110c768: sub    $0x70,%rsp
  0x00007f94e110c76c: mov    %rsi,0x48(%rsp)
  0x00007f94e110c771: mov    $0x7f94e023a738,%rdi  ;   {metadata(method data for {method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c77b: mov    0xdc(%rdi),%ebx
  0x00007f94e110c781: add    $0x8,%ebx
  0x00007f94e110c784: mov    %ebx,0xdc(%rdi)
  0x00007f94e110c78a: mov    $0x7f94e009fdd0,%rdi  ;   {metadata({method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c794: and    $0x1ff8,%ebx
  0x00007f94e110c79a: cmp    $0x0,%ebx
  0x00007f94e110c79d: je     0x00007f94e110caf0  ;*aload_1
                                                ; - java.lang.AbstractStringBuilder::append@0 (line 418)

  0x00007f94e110c7a3: cmp    $0x0,%rdx
  0x00007f94e110c7a7: mov    $0x7f94e023a738,%rdi  ;   {metadata(method data for {method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c7b1: mov    $0x108,%rbx
  0x00007f94e110c7bb: jne    0x00007f94e110c7cb
  0x00007f94e110c7c1: mov    $0x118,%rbx
  0x00007f94e110c7cb: mov    (%rdi,%rbx,1),%rax
  0x00007f94e110c7cf: lea    0x1(%rax),%rax
  0x00007f94e110c7d3: mov    %rax,(%rdi,%rbx,1)
  0x00007f94e110c7d7: je     0x00007f94e110caca  ;*ifnonnull
                                                ; - java.lang.AbstractStringBuilder::append@1 (line 418)

  0x00007f94e110c7dd: cmp    (%rdx),%rax        ;*inMyokevirtual length
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ; implicit exception: dispatches to 0x00007f94e110cb07
  0x00007f94e110c7e0: mov    %rdx,%rdi
  0x00007f94e110c7e3: mov    $0x7f94e023a738,%rbx  ;   {metadata(method data for {method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c7ed: mov    0x8(%rdi),%edi
  0x00007f94e110c7f0: shl    $0x3,%rdi
  0x00007f94e110c7f4: cmp    0x140(%rbx),%rdi
  0x00007f94e110c7fb: jne    0x00007f94e110c80a
  0x00007f94e110c7fd: addq   $0x1,0x148(%rbx)
  0x00007f94e110c805: jmpq   0x00007f94e110c870
  0x00007f94e110c80a: cmp    0x150(%rbx),%rdi
  0x00007f94e110c811: jne    0x00007f94e110c820
  0x00007f94e110c813: addq   $0x1,0x158(%rbx)
  0x00007f94e110c81b: jmpq   0x00007f94e110c870
  0x00007f94e110c820: cmpq   $0x0,0x140(%rbx)
  0x00007f94e110c82b: jne    0x00007f94e110c844
  0x00007f94e110c82d: mov    %rdi,0x140(%rbx)
  0x00007f94e110c834: movq   $0x1,0x148(%rbx)
  0x00007f94e110c83f: jmpq   0x00007f94e110c870
  0x00007f94e110c844: cmpq   $0x0,0x150(%rbx)
  0x00007f94e110c84f: jne    0x00007f94e110c868
  0x00007f94e110c851: mov    %rdi,0x150(%rbx)
  0x00007f94e110c858: movq   $0x1,0x158(%rbx)
  0x00007f94e110c863: jmpq   0x00007f94e110c870
  0x00007f94e110c868: addq   $0x1,0x138(%rbx)
  0x00007f94e110c870: mov    $0x7f94e0216340,%rdi  ;   {metadata(method data for {method} {0x00007f94e002ec60} 'length' '()I' in 'java/lang/String')}
  0x00007f94e110c87a: mov    0xdc(%rdi),%ebx
  0x00007f94e110c880: add    $0x8,%ebx
  0x00007f94e110c883: mov    %ebx,0xdc(%rdi)
  0x00007f94e110c889: mov    $0x7f94e002ec60,%rdi  ;   {metadata({method} {0x00007f94e002ec60} 'length' '()I' in 'java/lang/String')}
  0x00007f94e110c893: and    $0x7ffff8,%ebx
  0x00007f94e110c899: cmp    $0x0,%ebx
  0x00007f94e110c89c: je     0x00007f94e110cb0c
  0x00007f94e110c8a2: mov    0xc(%rdx),%edi
  0x00007f94e110c8a5: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.String::length@1 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)

  0x00007f94e110c8a9: mov    0xc(%rdi),%edi     ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ; implicit exception: dispatches to 0x00007f94e110cb23
  0x00007f94e110c8ac: mov    %edi,0x58(%rsp)
  0x00007f94e110c8b0: mov    0xc(%rsi),%ebx     ;*getfield count
                                                ; - java.lang.AbstractStringBuilder::append@16 (line 421)

  0x00007f94e110c8b3: add    %edi,%ebx
  0x00007f94e110c8b5: mov    %rsi,%rax
  0x00007f94e110c8b8: mov    $0x7f94e023a738,%rcx  ;   {metadata(method data for {method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c8c2: addq   $0x1,0x168(%rcx)
  0x00007f94e110c8ca: mov    $0x7f94e022b7c0,%rax  ;   {metadata(method data for {method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c8d4: mov    0xdc(%rax),%ecx
  0x00007f94e110c8da: add    $0x8,%ecx
  0x00007f94e110c8dd: mov    %ecx,0xdc(%rax)
  0x00007f94e110c8e3: mov    $0x7f94e009f520,%rax  ;   {metadata({method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c8ed: and    $0x7ffff8,%ecx
  0x00007f94e110c8f3: cmp    $0x0,%ecx
  0x00007f94e110c8f6: je     0x00007f94e110cb28
  0x00007f94e110c8fc: mov    0x10(%rsi),%eax
  0x00007f94e110c8ff: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@2 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)

  0x00007f94e110c903: mov    0xc(%rax),%eax     ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ; implicit exception: dispatches to 0x00007f94e110cb3f
  0x00007f94e110c906: mov    %rbx,%rcx
  0x00007f94e110c909: sub    %eax,%ecx
  0x00007f94e110c90b: cmp    $0x0,%ecx
  0x00007f94e110c90e: mov    $0x7f94e022b7c0,%rax  ;   {metadata(method data for {method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c918: mov    $0x108,%rcx
  0x00007f94e110c922: jle    0x00007f94e110c932
  0x00007f94e110c928: mov    $0x118,%rcx
  0x00007f94e110c932: mov    (%rax,%rcx,1),%r8
  0x00007f94e110c936: lea    0x1(%r8),%r8
  0x00007f94e110c93a: mov    %r8,(%rax,%rcx,1)
  0x00007f94e110c93e: mov    %rdx,0x50(%rsp)
  0x00007f94e110c943: jle    0x00007f94e110c9ec  ;*ifle
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@7 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)

  0x00007f94e110c949: mov    %rsi,%rax
  0x00007f94e110c94c: mov    $0x7f94e022b7c0,%rcx  ;   {metadata(method data for {method} {0x00007f94e009f520} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110c956: mov    0x8(%rax),%eax
  0x00007f94e110c959: shl    $0x3,%rax
  0x00007f94e110c95d: cmp    0x130(%rcx),%rax
  0x00007f94e110c964: jne    0x00007f94e110c973
  0x00007f94e110c966: addq   $0x1,0x138(%rcx)
  0x00007f94e110c96e: jmpq   0x00007f94e110c9d9
  0x00007f94e110c973: cmp    0x140(%rcx),%rax
  0x00007f94e110c97a: jne    0x00007f94e110c989
  0x00007f94e110c97c: addq   $0x1,0x148(%rcx)
  0x00007f94e110c984: jmpq   0x00007f94e110c9d9
  0x00007f94e110c989: cmpq   $0x0,0x130(%rcx)
  0x00007f94e110c994: jne    0x00007f94e110c9ad
  0x00007f94e110c996: mov    %rax,0x130(%rcx)
  0x00007f94e110c99d: movq   $0x1,0x138(%rcx)
  0x00007f94e110c9a8: jmpq   0x00007f94e110c9d9
  0x00007f94e110c9ad: cmpq   $0x0,0x140(%rcx)
  0x00007f94e110c9b8: jne    0x00007f94e110c9d1
  0x00007f94e110c9ba: mov    %rax,0x140(%rcx)
  0x00007f94e110c9c1: movq   $0x1,0x148(%rcx)
  0x00007f94e110c9cc: jmpq   0x00007f94e110c9d9
  0x00007f94e110c9d1: addq   $0x1,0x128(%rcx)
  0x00007f94e110c9d9: mov    %rbx,%rdx
  0x00007f94e110c9dc: mov    %rsi,%rbx
  0x00007f94e110c9df: mov    %rbx,%rsi          ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)

  0x00007f94e110c9e2: nop    
  0x00007f94e110c9e3: nop    
  0x00007f94e110c9e4: nop    
  0x00007f94e110c9e5: nop    
  0x00007f94e110c9e6: nop    
  0x00007f94e110c9e7: callq  0x00007f94e1046020  ; OopMap{[72]=Oop [80]=Oop off=684}
                                                ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ;   {optimized virtual_call}
  0x00007f94e110c9ec: mov    0x58(%rsp),%ebx
  0x00007f94e110c9f0: mov    0x50(%rsp),%rdi
  0x00007f94e110c9f5: mov    0x48(%rsp),%rsi
  0x00007f94e110c9fa: mov    0x10(%rsi),%r8d
  0x00007f94e110c9fe: shl    $0x3,%r8           ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::append@28 (line 422)

  0x00007f94e110ca02: mov    0xc(%rsi),%r9d     ;*getfield count
                                                ; - java.lang.AbstractStringBuilder::append@32 (line 422)

  0x00007f94e110ca06: mov    %rdi,%rdx
  0x00007f94e110ca09: mov    $0x7f94e023a738,%rcx  ;   {metadata(method data for {method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110ca13: mov    0x8(%rdx),%edx
  0x00007f94e110ca16: shl    $0x3,%rdx
  0x00007f94e110ca1a: cmp    0x180(%rcx),%rdx
  0x00007f94e110ca21: jne    0x00007f94e110ca30
  0x00007f94e110ca23: addq   $0x1,0x188(%rcx)
  0x00007f94e110ca2b: jmpq   0x00007f94e110ca96
  0x00007f94e110ca30: cmp    0x190(%rcx),%rdx
  0x00007f94e110ca37: jne    0x00007f94e110ca46
  0x00007f94e110ca39: addq   $0x1,0x198(%rcx)
  0x00007f94e110ca41: jmpq   0x00007f94e110ca96
  0x00007f94e110ca46: cmpq   $0x0,0x180(%rcx)
  0x00007f94e110ca51: jne    0x00007f94e110ca6a
  0x00007f94e110ca53: mov    %rdx,0x180(%rcx)
  0x00007f94e110ca5a: movq   $0x1,0x188(%rcx)
  0x00007f94e110ca65: jmpq   0x00007f94e110ca96
  0x00007f94e110ca6a: cmpq   $0x0,0x190(%rcx)
  0x00007f94e110ca75: jne    0x00007f94e110ca8e
  0x00007f94e110ca77: mov    %rdx,0x190(%rcx)
  0x00007f94e110ca7e: movq   $0x1,0x198(%rcx)
  0x00007f94e110ca89: jmpq   0x00007f94e110ca96
  0x00007f94e110ca8e: addq   $0x1,0x178(%rcx)
  0x00007f94e110ca96: mov    $0x0,%edx
  0x00007f94e110ca9b: mov    %rbx,%rcx
  0x00007f94e110ca9e: mov    %rdi,%rsi          ;*invokevirtual getChars
                                                ; - java.lang.AbstractStringBuilder::append@35 (line 422)

  0x00007f94e110caa1: nop    
  0x00007f94e110caa2: nop    
  0x00007f94e110caa3: nop    
  0x00007f94e110caa4: nop    
  0x00007f94e110caa5: nop    
  0x00007f94e110caa6: nop    
  0x00007f94e110caa7: callq  0x00007f94e1046020  ; OopMap{[72]=Oop off=876}
                                                ;*invokevirtual getChars
                                                ; - java.lang.AbstractStringBuilder::append@35 (line 422)
                                                ;   {optimized virtual_call}
  0x00007f94e110caac: mov    0x48(%rsp),%rsi
  0x00007f94e110cab1: mov    0xc(%rsi),%eax     ;*getfield count
                                                ; - java.lang.AbstractStringBuilder::append@40 (line 423)

  0x00007f94e110cab4: add    0x58(%rsp),%eax
  0x00007f94e110cab8: mov    %eax,0xc(%rsi)     ;*putfield count
                                                ; - java.lang.AbstractStringBuilder::append@45 (line 423)

  0x00007f94e110cabb: mov    %rsi,%rax
  0x00007f94e110cabe: add    $0x70,%rsp
  0x00007f94e110cac2: pop    %rbp
  0x00007f94e110cac3: test   %eax,0x16ee2637(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110cac9: retq                      ;*areturn
                                                ; - java.lang.AbstractStringBuilder::append@49 (line 424)

  0x00007f94e110caca: mov    %rsi,%rdi
  0x00007f94e110cacd: mov    $0x7f94e023a738,%rbx  ;   {metadata(method data for {method} {0x00007f94e009fdd0} 'append' '(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110cad7: addq   $0x1,0x128(%rbx)
  0x00007f94e110cadf: callq  0x00007f94e1046020  ; OopMap{off=932}
                                                ;*invokespecial appendNull
                                                ; - java.lang.AbstractStringBuilder::append@5 (line 419)
                                                ;   {optimized virtual_call}
  0x00007f94e110cae4: add    $0x70,%rsp
  0x00007f94e110cae8: pop    %rbp
  0x00007f94e110cae9: test   %eax,0x16ee2611(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110caef: retq   
  0x00007f94e110caf0: mov    %rdi,0x8(%rsp)
  0x00007f94e110caf5: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110cafd: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=962}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::append@-1 (line 418)
                                                ;   {runtime_call}
  0x00007f94e110cb02: jmpq   0x00007f94e110c7a3
  0x00007f94e110cb07: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=972}
                                                ;*invokevirtual length
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ;   {runtime_call}
  0x00007f94e110cb0c: mov    %rdi,0x8(%rsp)
  0x00007f94e110cb11: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110cb19: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=990}
                                                ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ;   {runtime_call}
  0x00007f94e110cb1e: jmpq   0x00007f94e110c8a2
  0x00007f94e110cb23: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=1000}
                                                ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 420)
                                                ;   {runtime_call}
  0x00007f94e110cb28: mov    %rax,0x8(%rsp)
  0x00007f94e110cb2d: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110cb35: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=1018}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@-1 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ;   {runtime_call}
  0x00007f94e110cb3a: jmpq   0x00007f94e110c8fc
  0x00007f94e110cb3f: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop off=1028}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 421)
                                                ;   {runtime_call}
  0x00007f94e110cb44: nop    
  0x00007f94e110cb45: nop    
  0x00007f94e110cb46: mov    0x2a8(%r15),%rax
  0x00007f94e110cb4d: mov    $0x0,%r10
  0x00007f94e110cb57: mov    %r10,0x2a8(%r15)
  0x00007f94e110cb5e: mov    $0x0,%r10
  0x00007f94e110cb68: mov    %r10,0x2b0(%r15)
  0x00007f94e110cb6f: add    $0x70,%rsp
  0x00007f94e110cb73: pop    %rbp
  0x00007f94e110cb74: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e110cb79: hlt    
  0x00007f94e110cb7a: hlt    
  0x00007f94e110cb7b: hlt    
  0x00007f94e110cb7c: hlt    
  0x00007f94e110cb7d: hlt    
  0x00007f94e110cb7e: hlt    
  0x00007f94e110cb7f: hlt    
[Stub Code]
  0x00007f94e110cb80: nop                       ;   {no_reloc}
  0x00007f94e110cb81: nop    
  0x00007f94e110cb82: nop    
  0x00007f94e110cb83: nop    
  0x00007f94e110cb84: nop    
  0x00007f94e110cb85: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110cb8f: jmpq   0x00007f94e110cb8f  ;   {runtime_call}
  0x00007f94e110cb94: nop    
  0x00007f94e110cb95: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110cb9f: jmpq   0x00007f94e110cb9f  ;   {runtime_call}
  0x00007f94e110cba4: nop    
  0x00007f94e110cba5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110cbaf: jmpq   0x00007f94e110cbaf  ;   {runtime_call}
[Exception Handler]
  0x00007f94e110cbb4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e110cbb9: mov    %rsp,-0x28(%rsp)
  0x00007f94e110cbbe: sub    $0x80,%rsp
  0x00007f94e110cbc5: mov    %rax,0x78(%rsp)
  0x00007f94e110cbca: mov    %rcx,0x70(%rsp)
  0x00007f94e110cbcf: mov    %rdx,0x68(%rsp)
  0x00007f94e110cbd4: mov    %rbx,0x60(%rsp)
  0x00007f94e110cbd9: mov    %rbp,0x50(%rsp)
  0x00007f94e110cbde: mov    %rsi,0x48(%rsp)
  0x00007f94e110cbe3: mov    %rdi,0x40(%rsp)
  0x00007f94e110cbe8: mov    %r8,0x38(%rsp)
  0x00007f94e110cbed: mov    %r9,0x30(%rsp)
  0x00007f94e110cbf2: mov    %r10,0x28(%rsp)
  0x00007f94e110cbf7: mov    %r11,0x20(%rsp)
  0x00007f94e110cbfc: mov    %r12,0x18(%rsp)
  0x00007f94e110cc01: mov    %r13,0x10(%rsp)
  0x00007f94e110cc06: mov    %r14,0x8(%rsp)
  0x00007f94e110cc0b: mov    %r15,(%rsp)
  0x00007f94e110cc0f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e110cc19: mov    $0x7f94e110cbb9,%rsi  ;   {internal_word}
  0x00007f94e110cc23: mov    %rsp,%rdx
  0x00007f94e110cc26: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110cc2a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110cc2f: hlt    
[Deopt Handler Code]
  0x00007f94e110cc30: mov    $0x7f94e110cc30,%r10  ;   {section_word}
  0x00007f94e110cc3a: push   %r10
  0x00007f94e110cc3c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110cc41: hlt    
  0x00007f94e110cc42: hlt    
  0x00007f94e110cc43: hlt    
  0x00007f94e110cc44: hlt    
  0x00007f94e110cc45: hlt    
  0x00007f94e110cc46: hlt    
  0x00007f94e110cc47: hlt    
Decoding compiled method 0x00007f94e110cf50:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  # parm2:    r8:r8     = '[C'
  # parm3:    r9        = int
  #           [sp+0x70]  (sp of caller)
  0x00007f94e110d100: mov    0x8(%rsi),%r10d
  0x00007f94e110d104: shl    $0x3,%r10
  0x00007f94e110d108: cmp    %rax,%r10
  0x00007f94e110d10b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e110d111: nopw   0x0(%rax,%rax,1)
  0x00007f94e110d11c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e110d120: mov    %eax,-0x14000(%rsp)
  0x00007f94e110d127: push   %rbp
  0x00007f94e110d128: sub    $0x60,%rsp
  0x00007f94e110d12c: mov    %rdx,%rdi
  0x00007f94e110d12f: mov    $0x7f94e023c930,%rdx  ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d139: mov    0xdc(%rdx),%ebx
  0x00007f94e110d13f: add    $0x8,%ebx
  0x00007f94e110d142: mov    %ebx,0xdc(%rdx)
  0x00007f94e110d148: mov    $0x7f94e002f208,%rdx  ;   {metadata({method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d152: and    $0x1ff8,%ebx
  0x00007f94e110d158: cmp    $0x0,%ebx
  0x00007f94e110d15b: je     0x00007f94e110d386  ;*iload_1
                                                ; - java.lang.String::getChars@0 (line 817)

  0x00007f94e110d161: cmp    $0x0,%edi
  0x00007f94e110d164: mov    $0x7f94e023c930,%rdx  ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d16e: mov    $0x108,%rbx
  0x00007f94e110d178: jge    0x00007f94e110d188
  0x00007f94e110d17e: mov    $0x118,%rbx
  0x00007f94e110d188: mov    (%rdx,%rbx,1),%rax
  0x00007f94e110d18c: lea    0x1(%rax),%rax
  0x00007f94e110d190: mov    %rax,(%rdx,%rbx,1)
  0x00007f94e110d194: jl     0x00007f94e110d346  ;*ifge
                                                ; - java.lang.String::getChars@1 (line 817)

  0x00007f94e110d19a: mov    0xc(%rsi),%esi
  0x00007f94e110d19d: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::getChars@15 (line 820)

  0x00007f94e110d1a1: mov    0xc(%rsi),%edx     ;*arraylength
                                                ; - java.lang.String::getChars@18 (line 820)
                                                ; implicit exception: dispatches to 0x00007f94e110d39d
  0x00007f94e110d1a4: cmp    %edx,%ecx
  0x00007f94e110d1a6: mov    $0x7f94e023c930,%rdx  ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d1b0: mov    $0x138,%rbx
  0x00007f94e110d1ba: jle    0x00007f94e110d1ca
  0x00007f94e110d1c0: mov    $0x148,%rbx
  0x00007f94e110d1ca: mov    (%rdx,%rbx,1),%rax
  0x00007f94e110d1ce: lea    0x1(%rax),%rax
  0x00007f94e110d1d2: mov    %rax,(%rdx,%rbx,1)
  0x00007f94e110d1d6: jg     0x00007f94e110d306  ;*if_icmple
                                                ; - java.lang.String::getChars@19 (line 820)

  0x00007f94e110d1dc: cmp    %ecx,%edi
  0x00007f94e110d1de: mov    $0x7f94e023c930,%rdx  ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d1e8: mov    $0x168,%rbx
  0x00007f94e110d1f2: jle    0x00007f94e110d202
  0x00007f94e110d1f8: mov    $0x178,%rbx
  0x00007f94e110d202: mov    (%rdx,%rbx,1),%rax
  0x00007f94e110d206: lea    0x1(%rax),%rax
  0x00007f94e110d20a: mov    %rax,(%rdx,%rbx,1)
  0x00007f94e110d20e: jg     0x00007f94e110d2bc  ;*if_icmple
                                                ; - java.lang.String::getChars@33 (line 823)

  0x00007f94e110d214: mov    $0x7f94e023c930,%rdx  ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d21e: addq   $0x1,0x198(%rdx)
  0x00007f94e110d226: mov    %rcx,%rbx
  0x00007f94e110d229: sub    %edi,%ebx
  0x00007f94e110d22b: mov    %rdi,%rdx
  0x00007f94e110d22e: mov    %r8,%rcx
  0x00007f94e110d231: mov    %r9,%r8
  0x00007f94e110d234: mov    %rbx,%r9
  0x00007f94e110d237: test   %rcx,%rcx
  0x00007f94e110d23a: je     0x00007f94e110d3a2
  0x00007f94e110d240: test   %edx,%edx
  0x00007f94e110d242: jl     0x00007f94e110d3a2
  0x00007f94e110d248: test   %r8d,%r8d
  0x00007f94e110d24b: jl     0x00007f94e110d3a2
  0x00007f94e110d251: lea    (%rdx,%r9,1),%rdi
  0x00007f94e110d255: cmp    0xc(%rsi),%edi
  0x00007f94e110d258: ja     0x00007f94e110d3a2
  0x00007f94e110d25e: lea    (%r8,%r9,1),%rdi
  0x00007f94e110d262: cmp    0xc(%rcx),%edi
  0x00007f94e110d265: ja     0x00007f94e110d3a2
  0x00007f94e110d26b: test   %r9d,%r9d
  0x00007f94e110d26e: jl     0x00007f94e110d3a2
  0x00007f94e110d274: je     0x00007f94e110d2b0
  0x00007f94e110d27a: movslq %edx,%rdx
  0x00007f94e110d27d: movslq %r8d,%r8
  0x00007f94e110d280: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007f94e110d285: lea    0x10(%rcx,%r8,2),%rsi
  0x00007f94e110d28a: mov    %r9,%rdx
  0x00007f94e110d28d: test   $0xf,%esp
  0x00007f94e110d293: je     0x00007f94e110d2ab
  0x00007f94e110d299: sub    $0x8,%rsp
  0x00007f94e110d29d: callq  Stub::jshort_arraycopy  ;   {runtime_call}
  0x00007f94e110d2a2: add    $0x8,%rsp
  0x00007f94e110d2a6: jmpq   0x00007f94e110d2b0
  0x00007f94e110d2ab: callq  Stub::jshort_arraycopy  ;*invokestatic arraycopy
                                                ; - java.lang.String::getChars@58 (line 826)
                                                ;   {runtime_call}
  0x00007f94e110d2b0: add    $0x60,%rsp
  0x00007f94e110d2b4: pop    %rbp
  0x00007f94e110d2b5: test   %eax,0x16ee1e45(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110d2bb: retq                      ;*return
                                                ; - java.lang.String::getChars@61 (line 827)

  0x00007f94e110d2bc: nopl   0x0(%rax)
  0x00007f94e110d2c0: jmpq   0x00007f94e110d3c0  ;   {no_reloc}
  0x00007f94e110d2c5: add    %al,(%rax)
  0x00007f94e110d2c7: add    %al,(%rax)
  0x00007f94e110d2c9: add    %ch,%cl
  0x00007f94e110d2cb: sti    
  0x00007f94e110d2cc: add    %al,(%rax)
  0x00007f94e110d2ce: add    %cl,-0x75(%rax)    ;*new  ; - java.lang.String::getChars@36 (line 824)

  0x00007f94e110d2d1: rorb   -0x42(%rax)        ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d2d4: xor    %cl,%cl
  0x00007f94e110d2d6: and    %eax,%esp
  0x00007f94e110d2d8: xchg   %eax,%esp
  0x00007f94e110d2d9: jg     0x00007f94e110d2db
  0x00007f94e110d2db: add    %cl,-0x7d(%rax)
  0x00007f94e110d2de: xchg   %cl,0x1000001(%rax)
  0x00007f94e110d2e4: sub    %edi,%ecx
  0x00007f94e110d2e6: mov    %rcx,%rdx
  0x00007f94e110d2e9: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::getChars@43 (line 824)

  0x00007f94e110d2ec: mov    %rax,0x38(%rsp)
  0x00007f94e110d2f1: nop    
  0x00007f94e110d2f2: nop    
  0x00007f94e110d2f3: nop    
  0x00007f94e110d2f4: nop    
  0x00007f94e110d2f5: nop    
  0x00007f94e110d2f6: nop    
  0x00007f94e110d2f7: callq  0x00007f94e1046020  ; OopMap{[56]=Oop off=508}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::getChars@43 (line 824)
                                                ;   {optimized virtual_call}
  0x00007f94e110d2fc: mov    0x38(%rsp),%rax
  0x00007f94e110d301: jmpq   0x00007f94e110d44e  ;*athrow
                                                ; - java.lang.String::getChars@46 (line 824)

  0x00007f94e110d306: xchg   %ax,%ax
  0x00007f94e110d308: jmpq   0x00007f94e110d3e6  ;   {no_reloc}
  0x00007f94e110d30d: add    %al,(%rax)
  0x00007f94e110d30f: add    %al,(%rax)
  0x00007f94e110d311: add    %ch,%cl
  0x00007f94e110d313: flds   (%rax)
  0x00007f94e110d315: add    %al,(%rax)         ;*new  ; - java.lang.String::getChars@22 (line 821)

  0x00007f94e110d317: mov    %rax,%rdx
  0x00007f94e110d31a: mov    $0x7f94e023c930,%rsi  ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d324: addq   $0x1,0x158(%rsi)
  0x00007f94e110d32c: mov    %rcx,%rdx
  0x00007f94e110d32f: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::getChars@27 (line 821)

  0x00007f94e110d332: mov    %rax,0x40(%rsp)
  0x00007f94e110d337: callq  0x00007f94e1046020  ; OopMap{[64]=Oop off=572}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::getChars@27 (line 821)
                                                ;   {optimized virtual_call}
  0x00007f94e110d33c: mov    0x40(%rsp),%rax
  0x00007f94e110d341: jmpq   0x00007f94e110d44e  ;*athrow
                                                ; - java.lang.String::getChars@30 (line 821)

  0x00007f94e110d346: xchg   %ax,%ax
  0x00007f94e110d348: jmpq   0x00007f94e110d40c  ;   {no_reloc}
  0x00007f94e110d34d: add    %al,(%rax)
  0x00007f94e110d34f: add    %al,(%rax)
  0x00007f94e110d351: add    %ch,%cl
  0x00007f94e110d353: mov    $0x48000000,%edi   ;*new  ; - java.lang.String::getChars@4 (line 818)

  0x00007f94e110d358: mov    %eax,%edx
  0x00007f94e110d35a: mov    $0x7f94e023c930,%rsi  ;   {metadata(method data for {method} {0x00007f94e002f208} 'getChars' '(II[CI)V' in 'java/lang/String')}
  0x00007f94e110d364: addq   $0x1,0x128(%rsi)
  0x00007f94e110d36c: mov    %rdi,%rdx
  0x00007f94e110d36f: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::getChars@9 (line 818)

  0x00007f94e110d372: mov    %rax,0x48(%rsp)
  0x00007f94e110d377: callq  0x00007f94e1046020  ; OopMap{[72]=Oop off=636}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::getChars@9 (line 818)
                                                ;   {optimized virtual_call}
  0x00007f94e110d37c: mov    0x48(%rsp),%rax
  0x00007f94e110d381: jmpq   0x00007f94e110d44e
  0x00007f94e110d386: mov    %rdx,0x8(%rsp)
  0x00007f94e110d38b: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110d393: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop r8=Oop off=664}
                                                ;*synchronization entry
                                                ; - java.lang.String::getChars@-1 (line 817)
                                                ;   {runtime_call}
  0x00007f94e110d398: jmpq   0x00007f94e110d161
  0x00007f94e110d39d: callq  0x00007f94e10f9680  ; OopMap{r8=Oop rsi=Oop off=674}
                                                ;*arraylength
                                                ; - java.lang.String::getChars@18 (line 820)
                                                ;   {runtime_call}
  0x00007f94e110d3a2: nop    
  0x00007f94e110d3a3: nop    
  0x00007f94e110d3a4: nop    
  0x00007f94e110d3a5: nop    
  0x00007f94e110d3a6: nop    
  0x00007f94e110d3a7: callq  0x00007f94e1046420  ; OopMap{off=684}
                                                ;*invokestatic arraycopy
                                                ; - java.lang.String::getChars@58 (line 826)
                                                ;   {static_call}
  0x00007f94e110d3ac: jmpq   0x00007f94e110d2b0
  0x00007f94e110d3b1: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e110d3bb: mov    $0xa050f00,%eax
  0x00007f94e110d3c0: callq  0x00007f94e10fd5a0  ; OopMap{off=709}
                                                ;*new  ; - java.lang.String::getChars@36 (line 824)
                                                ;   {runtime_call}
  0x00007f94e110d3c5: jmpq   0x00007f94e110d2c0
  0x00007f94e110d3ca: mov    %rdx,%rdx
  0x00007f94e110d3cd: callq  0x00007f94e10f9b20  ; OopMap{off=722}
                                                ;*new  ; - java.lang.String::getChars@36 (line 824)
                                                ;   {runtime_call}
  0x00007f94e110d3d2: jmpq   0x00007f94e110d2cf
  0x00007f94e110d3d7: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e110d3e1: mov    $0xa050f00,%eax
  0x00007f94e110d3e6: callq  0x00007f94e10fd5a0  ; OopMap{off=747}
                                                ;*new  ; - java.lang.String::getChars@22 (line 821)
                                                ;   {runtime_call}
  0x00007f94e110d3eb: jmpq   0x00007f94e110d308
  0x00007f94e110d3f0: mov    %rdx,%rdx
  0x00007f94e110d3f3: callq  0x00007f94e10f9b20  ; OopMap{off=760}
                                                ;*new  ; - java.lang.String::getChars@22 (line 821)
                                                ;   {runtime_call}
  0x00007f94e110d3f8: jmpq   0x00007f94e110d317
  0x00007f94e110d3fd: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e110d407: mov    $0xa050f00,%eax
  0x00007f94e110d40c: callq  0x00007f94e10fd5a0  ; OopMap{off=785}
                                                ;*new  ; - java.lang.String::getChars@4 (line 818)
                                                ;   {runtime_call}
  0x00007f94e110d411: jmpq   0x00007f94e110d348
  0x00007f94e110d416: mov    %rdx,%rdx
  0x00007f94e110d419: callq  0x00007f94e10f9b20  ; OopMap{off=798}
                                                ;*new  ; - java.lang.String::getChars@4 (line 818)
                                                ;   {runtime_call}
  0x00007f94e110d41e: jmpq   0x00007f94e110d357
  0x00007f94e110d423: nop    
  0x00007f94e110d424: nop    
  0x00007f94e110d425: mov    0x2a8(%r15),%rax
  0x00007f94e110d42c: mov    $0x0,%r10
  0x00007f94e110d436: mov    %r10,0x2a8(%r15)
  0x00007f94e110d43d: mov    $0x0,%r10
  0x00007f94e110d447: mov    %r10,0x2b0(%r15)
  0x00007f94e110d44e: add    $0x60,%rsp
  0x00007f94e110d452: pop    %rbp
  0x00007f94e110d453: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e110d458: hlt    
  0x00007f94e110d459: hlt    
  0x00007f94e110d45a: hlt    
  0x00007f94e110d45b: hlt    
  0x00007f94e110d45c: hlt    
  0x00007f94e110d45d: hlt    
  0x00007f94e110d45e: hlt    
  0x00007f94e110d45f: hlt    
[Stub Code]
  0x00007f94e110d460: nop                       ;   {no_reloc}
  0x00007f94e110d461: nop    
  0x00007f94e110d462: nop    
  0x00007f94e110d463: nop    
  0x00007f94e110d464: nop    
  0x00007f94e110d465: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110d46f: jmpq   0x00007f94e110d46f  ;   {runtime_call}
  0x00007f94e110d474: nop    
  0x00007f94e110d475: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110d47f: jmpq   0x00007f94e110d47f  ;   {runtime_call}
  0x00007f94e110d484: nop    
  0x00007f94e110d485: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110d48f: jmpq   0x00007f94e110d48f  ;   {runtime_call}
  0x00007f94e110d494: nop    
  0x00007f94e110d495: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110d49f: jmpq   0x00007f94e110d49f  ;   {runtime_call}
[Exception Handler]
  0x00007f94e110d4a4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e110d4a9: mov    %rsp,-0x28(%rsp)
  0x00007f94e110d4ae: sub    $0x80,%rsp
  0x00007f94e110d4b5: mov    %rax,0x78(%rsp)
  0x00007f94e110d4ba: mov    %rcx,0x70(%rsp)
  0x00007f94e110d4bf: mov    %rdx,0x68(%rsp)
  0x00007f94e110d4c4: mov    %rbx,0x60(%rsp)
  0x00007f94e110d4c9: mov    %rbp,0x50(%rsp)
  0x00007f94e110d4ce: mov    %rsi,0x48(%rsp)
  0x00007f94e110d4d3: mov    %rdi,0x40(%rsp)
  0x00007f94e110d4d8: mov    %r8,0x38(%rsp)
  0x00007f94e110d4dd: mov    %r9,0x30(%rsp)
  0x00007f94e110d4e2: mov    %r10,0x28(%rsp)
  0x00007f94e110d4e7: mov    %r11,0x20(%rsp)
  0x00007f94e110d4ec: mov    %r12,0x18(%rsp)
  0x00007f94e110d4f1: mov    %r13,0x10(%rsp)
  0x00007f94e110d4f6: mov    %r14,0x8(%rsp)
  0x00007f94e110d4fb: mov    %r15,(%rsp)
  0x00007f94e110d4ff: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e110d509: mov    $0x7f94e110d4a9,%rsi  ;   {internal_word}
  0x00007f94e110d513: mov    %rsp,%rdx
  0x00007f94e110d516: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110d51a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110d51f: hlt    
[Deopt Handler Code]
  0x00007f94e110d520: mov    $0x7f94e110d520,%r10  ;   {section_word}
  0x00007f94e110d52a: push   %r10
  0x00007f94e110d52c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110d531: hlt    
  0x00007f94e110d532: hlt    
  0x00007f94e110d533: hlt    
  0x00007f94e110d534: hlt    
  0x00007f94e110d535: hlt    
  0x00007f94e110d536: hlt    
  0x00007f94e110d537: hlt    
Decoding compiled method 0x00007f94e110d850:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays'
  # parm0:    rsi:rsi   = '[C'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  #           [sp+0xb0]  (sp of caller)
  0x00007f94e110da60: mov    %eax,-0x14000(%rsp)
  0x00007f94e110da67: push   %rbp
  0x00007f94e110da68: sub    $0xa0,%rsp
  0x00007f94e110da6f: mov    %rsi,%r8
  0x00007f94e110da72: mov    %rdx,%r9
  0x00007f94e110da75: mov    $0x7f94e025b540,%rbx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110da7f: mov    0xdc(%rbx),%edx
  0x00007f94e110da85: add    $0x8,%edx
  0x00007f94e110da88: mov    %edx,0xdc(%rbx)
  0x00007f94e110da8e: mov    $0x7f94e0143a00,%rbx  ;   {metadata({method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110da98: and    $0x1ff8,%edx
  0x00007f94e110da9e: cmp    $0x0,%edx
  0x00007f94e110daa1: je     0x00007f94e110e301  ;*iload_2
                                                ; - java.util.Arrays::copyOfRange@0 (line 3661)

  0x00007f94e110daa7: mov    %rcx,%r11
  0x00007f94e110daaa: sub    %r9d,%r11d
  0x00007f94e110daad: cmp    $0x0,%r11d
  0x00007f94e110dab1: mov    $0x7f94e025b540,%rbx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110dabb: mov    $0x108,%rdx
  0x00007f94e110dac5: jge    0x00007f94e110dad5
  0x00007f94e110dacb: mov    $0x118,%rdx
  0x00007f94e110dad5: mov    (%rbx,%rdx,1),%rsi
  0x00007f94e110dad9: lea    0x1(%rsi),%rsi
  0x00007f94e110dadd: mov    %rsi,(%rbx,%rdx,1)
  0x00007f94e110dae1: jl     0x00007f94e110dca4  ;*ifge
                                                ; - java.util.Arrays::copyOfRange@5 (line 3662)

  0x00007f94e110dae7: mov    %r11,%rbx
  0x00007f94e110daea: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007f94e110daf4: movslq %ebx,%rbx
  0x00007f94e110daf7: mov    %rbx,%rdi
  0x00007f94e110dafa: cmp    $0xffffff,%rbx
  0x00007f94e110db01: ja     0x00007f94e110e318
  0x00007f94e110db07: mov    $0x17,%rsi
  0x00007f94e110db11: lea    (%rsi,%rbx,2),%rsi
  0x00007f94e110db15: and    $0xfffffffffffffff8,%rsi
  0x00007f94e110db19: mov    0x60(%r15),%rax
  0x00007f94e110db1d: lea    (%rax,%rsi,1),%rsi
  0x00007f94e110db21: cmp    0x70(%r15),%rsi
  0x00007f94e110db25: ja     0x00007f94e110e318
  0x00007f94e110db2b: mov    %rsi,0x60(%r15)
  0x00007f94e110db2f: sub    %rax,%rsi
  0x00007f94e110db32: movq   $0x1,(%rax)
  0x00007f94e110db39: mov    %rdx,%rcx
  0x00007f94e110db3c: shr    $0x3,%rcx
  0x00007f94e110db40: mov    %ecx,0x8(%rax)
  0x00007f94e110db43: mov    %ebx,0xc(%rax)
  0x00007f94e110db46: sub    $0x10,%rsi
  0x00007f94e110db4a: je     0x00007f94e110db61
  0x00007f94e110db50: xor    %rbx,%rbx
  0x00007f94e110db53: shr    $0x3,%rsi
  0x00007f94e110db57: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f94e110db5c: dec    %rsi
  0x00007f94e110db5f: jne    0x00007f94e110db57  ;*newarray
                                                ; - java.util.Arrays::copyOfRange@40 (line 3664)

  0x00007f94e110db61: mov    0xc(%r8),%esi      ;*arraylength
                                                ; - java.util.Arrays::copyOfRange@50 (line 3665)
                                                ; implicit exception: dispatches to 0x00007f94e110e322
  0x00007f94e110db65: sub    %r9d,%esi
  0x00007f94e110db68: mov    $0x7f94e025b540,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110db72: addq   $0x1,0x208(%rdx)
  0x00007f94e110db7a: mov    $0x7f94e01f91c0,%rdx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110db84: mov    0xdc(%rdx),%ecx
  0x00007f94e110db8a: add    $0x8,%ecx
  0x00007f94e110db8d: mov    %ecx,0xdc(%rdx)
  0x00007f94e110db93: mov    $0x7f94e011eb90,%rdx  ;   {metadata({method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110db9d: and    $0x7ffff8,%ecx
  0x00007f94e110dba3: cmp    $0x0,%ecx
  0x00007f94e110dba6: je     0x00007f94e110e327
  0x00007f94e110dbac: cmp    %r11d,%esi
  0x00007f94e110dbaf: mov    $0x7f94e01f91c0,%rdx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110dbb9: mov    $0x108,%rcx
  0x00007f94e110dbc3: jg     0x00007f94e110dbd3
  0x00007f94e110dbc9: mov    $0x118,%rcx
  0x00007f94e110dbd3: mov    (%rdx,%rcx,1),%rdi
  0x00007f94e110dbd7: lea    0x1(%rdi),%rdi
  0x00007f94e110dbdb: mov    %rdi,(%rdx,%rcx,1)
  0x00007f94e110dbdf: jg     0x00007f94e110dbfd  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007f94e110dbe5: mov    $0x7f94e01f91c0,%rdx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e110dbef: incl   0x128(%rdx)
  0x00007f94e110dbf5: mov    %rsi,%rdi
  0x00007f94e110dbf8: jmpq   0x00007f94e110dc00  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007f94e110dbfd: mov    %r11,%rdi          ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007f94e110dc00: mov    $0x7f94e025b540,%rsi  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110dc0a: addq   $0x1,0x218(%rsi)
  0x00007f94e110dc12: mov    %r8,%rsi
  0x00007f94e110dc15: mov    %r9,%rdx
  0x00007f94e110dc18: mov    %rax,%rcx
  0x00007f94e110dc1b: mov    $0x0,%r8d
  0x00007f94e110dc21: mov    %rdi,%r9
  0x00007f94e110dc24: mov    %rax,0x70(%rsp)
  0x00007f94e110dc29: test   %edx,%edx
  0x00007f94e110dc2b: jl     0x00007f94e110e33e
  0x00007f94e110dc31: lea    (%rdx,%r9,1),%rdi
  0x00007f94e110dc35: cmp    0xc(%rsi),%edi
  0x00007f94e110dc38: ja     0x00007f94e110e33e
  0x00007f94e110dc3e: lea    (%r8,%r9,1),%rdi
  0x00007f94e110dc42: cmp    0xc(%rcx),%edi
  0x00007f94e110dc45: ja     0x00007f94e110e33e
  0x00007f94e110dc4b: test   %r9d,%r9d
  0x00007f94e110dc4e: jl     0x00007f94e110e33e
  0x00007f94e110dc54: je     0x00007f94e110dc90
  0x00007f94e110dc5a: movslq %edx,%rdx
  0x00007f94e110dc5d: movslq %r8d,%r8
  0x00007f94e110dc60: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007f94e110dc65: lea    0x10(%rcx,%r8,2),%rsi
  0x00007f94e110dc6a: mov    %r9,%rdx
  0x00007f94e110dc6d: test   $0xf,%esp
  0x00007f94e110dc73: je     0x00007f94e110dc8b
  0x00007f94e110dc79: sub    $0x8,%rsp
  0x00007f94e110dc7d: callq  Stub::jshort_disjoint_arraycopy
                                                ;   {runtime_call}
  0x00007f94e110dc82: add    $0x8,%rsp
  0x00007f94e110dc86: jmpq   0x00007f94e110dc90
  0x00007f94e110dc8b: callq  Stub::jshort_disjoint_arraycopy
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOfRange@57 (line 3665)
                                                ;   {runtime_call}
  0x00007f94e110dc90: mov    0x70(%rsp),%rax
  0x00007f94e110dc95: add    $0xa0,%rsp
  0x00007f94e110dc9c: pop    %rbp
  0x00007f94e110dc9d: test   %eax,0x16ee145d(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110dca3: retq                      ;*areturn
                                                ; - java.util.Arrays::copyOfRange@62 (line 3667)

  0x00007f94e110dca4: mov    %ecx,0x80(%rsp)
  0x00007f94e110dcab: nopl   0x0(%rax,%rax,1)
  0x00007f94e110dcb0: jmpq   0x00007f94e110e358  ;   {no_reloc}
  0x00007f94e110dcb5: add    %al,(%rax)
  0x00007f94e110dcb7: add    %al,(%rax)
  0x00007f94e110dcb9: add    %cl,-0x75(%rcx)
  0x00007f94e110dcbc: rex.RXB (bad)  
  0x00007f94e110dcbe: lea    0x20(%rax),%rdi
  0x00007f94e110dcc2: cmp    0x70(%r15),%rdi
  0x00007f94e110dcc6: ja     0x00007f94e110e362
  0x00007f94e110dccc: mov    %rdi,0x60(%r15)
  0x00007f94e110dcd0: mov    0xa8(%rdx),%rcx
  0x00007f94e110dcd7: mov    %rcx,(%rax)
  0x00007f94e110dcda: mov    %rdx,%rcx
  0x00007f94e110dcdd: shr    $0x3,%rcx
  0x00007f94e110dce1: mov    %ecx,0x8(%rax)
  0x00007f94e110dce4: xor    %rcx,%rcx
  0x00007f94e110dce7: mov    %ecx,0xc(%rax)
  0x00007f94e110dcea: xor    %rcx,%rcx
  0x00007f94e110dced: mov    %rcx,0x10(%rax)
  0x00007f94e110dcf1: mov    %rcx,0x18(%rax)    ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)

  0x00007f94e110dcf5: xchg   %ax,%ax
  0x00007f94e110dcf8: jmpq   0x00007f94e110e37e  ;   {no_reloc}
  0x00007f94e110dcfd: add    %al,(%rax)
  0x00007f94e110dcff: add    %al,(%rax)
  0x00007f94e110dd01: add    %cl,-0x77(%rax)
  0x00007f94e110dd04: test   %ah,(%rax,%rcx,4)
  0x00007f94e110dd07: add    %al,(%rax)
  0x00007f94e110dd09: add    %cl,-0x75(%rcx)
  0x00007f94e110dd0c: rex.RXB (bad)  
  0x00007f94e110dd0e: lea    0x18(%rax),%rdi
  0x00007f94e110dd12: cmp    0x70(%r15),%rdi
  0x00007f94e110dd16: ja     0x00007f94e110e388
  0x00007f94e110dd1c: mov    %rdi,0x60(%r15)
  0x00007f94e110dd20: mov    0xa8(%rdx),%rcx
  0x00007f94e110dd27: mov    %rcx,(%rax)
  0x00007f94e110dd2a: mov    %rdx,%rcx
  0x00007f94e110dd2d: shr    $0x3,%rcx
  0x00007f94e110dd31: mov    %ecx,0x8(%rax)
  0x00007f94e110dd34: xor    %rcx,%rcx
  0x00007f94e110dd37: mov    %ecx,0xc(%rax)
  0x00007f94e110dd3a: xor    %rcx,%rcx
  0x00007f94e110dd3d: mov    %rcx,0x10(%rax)    ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)

  0x00007f94e110dd41: mov    %rax,%rbx
  0x00007f94e110dd44: mov    $0x7f94e025b540,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110dd4e: addq   $0x1,0x128(%rdx)
  0x00007f94e110dd56: mov    $0x7f94e025b7b8,%rbx  ;   {metadata(method data for {method} {0x00007f94e00a2ec8} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007f94e110dd60: mov    0xdc(%rbx),%edx
  0x00007f94e110dd66: add    $0x8,%edx
  0x00007f94e110dd69: mov    %edx,0xdc(%rbx)
  0x00007f94e110dd6f: mov    $0x7f94e00a2ec8,%rbx  ;   {metadata({method} {0x00007f94e00a2ec8} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007f94e110dd79: and    $0x7ffff8,%edx
  0x00007f94e110dd7f: cmp    $0x0,%edx
  0x00007f94e110dd82: je     0x00007f94e110e395
  0x00007f94e110dd88: mov    %rax,%rbx
  0x00007f94e110dd8b: mov    $0x7f94e025b7b8,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a2ec8} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007f94e110dd95: addq   $0x1,0x108(%rdx)
  0x00007f94e110dd9d: mov    $0x7f94e025b8e8,%rbx  ;   {metadata(method data for {method} {0x00007f94e009f2b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110dda7: mov    0xdc(%rbx),%edx
  0x00007f94e110ddad: add    $0x8,%edx
  0x00007f94e110ddb0: mov    %edx,0xdc(%rbx)
  0x00007f94e110ddb6: mov    $0x7f94e009f2b0,%rbx  ;   {metadata({method} {0x00007f94e009f2b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110ddc0: and    $0x7ffff8,%edx
  0x00007f94e110ddc6: cmp    $0x0,%edx
  0x00007f94e110ddc9: je     0x00007f94e110e3ac
  0x00007f94e110ddcf: mov    %rax,%rbx
  0x00007f94e110ddd2: mov    $0x7f94e025b8e8,%rdx  ;   {metadata(method data for {method} {0x00007f94e009f2b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110dddc: addq   $0x1,0x108(%rdx)
  0x00007f94e110dde4: mov    $0x7f94e019efd0,%rbx  ;   {metadata(method data for {method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e110ddee: mov    0xdc(%rbx),%edx
  0x00007f94e110ddf4: add    $0x8,%edx
  0x00007f94e110ddf7: mov    %edx,0xdc(%rbx)
  0x00007f94e110ddfd: mov    $0x7f94e002b480,%rbx  ;   {metadata({method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e110de07: and    $0x7ffff8,%edx
  0x00007f94e110de0d: cmp    $0x0,%edx
  0x00007f94e110de10: je     0x00007f94e110e3c3
  0x00007f94e110de16: mov    $0x10,%ebx
  0x00007f94e110de1b: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007f94e110de25: mov    %rax,%r13
  0x00007f94e110de28: movslq %ebx,%rbx
  0x00007f94e110de2b: mov    %rbx,%rdi
  0x00007f94e110de2e: cmp    $0xffffff,%rbx
  0x00007f94e110de35: ja     0x00007f94e110e3da
  0x00007f94e110de3b: mov    $0x17,%rsi
  0x00007f94e110de45: lea    (%rsi,%rbx,2),%rsi
  0x00007f94e110de49: and    $0xfffffffffffffff8,%rsi
  0x00007f94e110de4d: mov    0x60(%r15),%rax
  0x00007f94e110de51: lea    (%rax,%rsi,1),%rsi
  0x00007f94e110de55: cmp    0x70(%r15),%rsi
  0x00007f94e110de59: ja     0x00007f94e110e3da
  0x00007f94e110de5f: mov    %rsi,0x60(%r15)
  0x00007f94e110de63: sub    %rax,%rsi
  0x00007f94e110de66: movq   $0x1,(%rax)
  0x00007f94e110de6d: mov    %rdx,%rcx
  0x00007f94e110de70: shr    $0x3,%rcx
  0x00007f94e110de74: mov    %ecx,0x8(%rax)
  0x00007f94e110de77: mov    %ebx,0xc(%rax)
  0x00007f94e110de7a: sub    $0x10,%rsi
  0x00007f94e110de7e: je     0x00007f94e110de95
  0x00007f94e110de84: xor    %rbx,%rbx
  0x00007f94e110de87: shr    $0x3,%rsi
  0x00007f94e110de8b: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f94e110de90: dec    %rsi
  0x00007f94e110de93: jne    0x00007f94e110de8b  ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)

  0x00007f94e110de95: mov    %rax,%r10
  0x00007f94e110de98: shr    $0x3,%r10
  0x00007f94e110de9c: mov    %r10d,0x10(%r13)
  0x00007f94e110dea0: mov    %r13,%rax
  0x00007f94e110dea3: shr    $0x9,%rax
  0x00007f94e110dea7: mov    $0x7f94f0e87000,%rdx
  0x00007f94e110deb1: movb   $0x0,(%rax,%rdx,1)  ;*putfield value
                                                ; - java.lang.AbstractStringBuilder::<init>@8 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)

  0x00007f94e110deb5: mov    %r13,%rax
  0x00007f94e110deb8: mov    $0x7f94e025b540,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110dec2: mov    0x8(%rax),%eax
  0x00007f94e110dec5: shl    $0x3,%rax
  0x00007f94e110dec9: cmp    0x140(%rdx),%rax
  0x00007f94e110ded0: jne    0x00007f94e110dedf
  0x00007f94e110ded2: addq   $0x1,0x148(%rdx)
  0x00007f94e110deda: jmpq   0x00007f94e110df45
  0x00007f94e110dedf: cmp    0x150(%rdx),%rax
  0x00007f94e110dee6: jne    0x00007f94e110def5
  0x00007f94e110dee8: addq   $0x1,0x158(%rdx)
  0x00007f94e110def0: jmpq   0x00007f94e110df45
  0x00007f94e110def5: cmpq   $0x0,0x140(%rdx)
  0x00007f94e110df00: jne    0x00007f94e110df19
  0x00007f94e110df02: mov    %rax,0x140(%rdx)
  0x00007f94e110df09: movq   $0x1,0x148(%rdx)
  0x00007f94e110df14: jmpq   0x00007f94e110df45
  0x00007f94e110df19: cmpq   $0x0,0x150(%rdx)
  0x00007f94e110df24: jne    0x00007f94e110df3d
  0x00007f94e110df26: mov    %rax,0x150(%rdx)
  0x00007f94e110df2d: movq   $0x1,0x158(%rdx)
  0x00007f94e110df38: jmpq   0x00007f94e110df45
  0x00007f94e110df3d: addq   $0x1,0x138(%rdx)
  0x00007f94e110df45: mov    $0x7f94e025ba40,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a36a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110df4f: mov    0xdc(%rdx),%esi
  0x00007f94e110df55: add    $0x8,%esi
  0x00007f94e110df58: mov    %esi,0xdc(%rdx)
  0x00007f94e110df5e: mov    $0x7f94e00a36a0,%rdx  ;   {metadata({method} {0x00007f94e00a36a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110df68: and    $0x7ffff8,%esi
  0x00007f94e110df6e: cmp    $0x0,%esi
  0x00007f94e110df71: je     0x00007f94e110e3e4
  0x00007f94e110df77: mov    %r13,%rax
  0x00007f94e110df7a: mov    $0x7f94e025ba40,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a36a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110df84: addq   $0x1,0x108(%rdx)
  0x00007f94e110df8c: mov    %r9,%rdx
  0x00007f94e110df8f: mov    %r13,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)

  0x00007f94e110df92: mov    %r13,0x78(%rsp)
  0x00007f94e110df97: callq  0x00007f94e1046020  ; OopMap{[120]=Oop [136]=Oop off=1340}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f94e110df9c: mov    0x78(%rsp),%rax
  0x00007f94e110dfa1: mov    $0x7f94e025b540,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110dfab: mov    0x8(%rax),%eax
  0x00007f94e110dfae: shl    $0x3,%rax
  0x00007f94e110dfb2: cmp    0x170(%rdx),%rax
  0x00007f94e110dfb9: jne    0x00007f94e110dfc8
  0x00007f94e110dfbb: addq   $0x1,0x178(%rdx)
  0x00007f94e110dfc3: jmpq   0x00007f94e110e02e
  0x00007f94e110dfc8: cmp    0x180(%rdx),%rax
  0x00007f94e110dfcf: jne    0x00007f94e110dfde
  0x00007f94e110dfd1: addq   $0x1,0x188(%rdx)
  0x00007f94e110dfd9: jmpq   0x00007f94e110e02e
  0x00007f94e110dfde: cmpq   $0x0,0x170(%rdx)
  0x00007f94e110dfe9: jne    0x00007f94e110e002
  0x00007f94e110dfeb: mov    %rax,0x170(%rdx)
  0x00007f94e110dff2: movq   $0x1,0x178(%rdx)
  0x00007f94e110dffd: jmpq   0x00007f94e110e02e
  0x00007f94e110e002: cmpq   $0x0,0x180(%rdx)
  0x00007f94e110e00d: jne    0x00007f94e110e026
  0x00007f94e110e00f: mov    %rax,0x180(%rdx)
  0x00007f94e110e016: movq   $0x1,0x188(%rdx)
  0x00007f94e110e021: jmpq   0x00007f94e110e02e
  0x00007f94e110e026: addq   $0x1,0x168(%rdx)
  0x00007f94e110e02e: mov    $0x7f94e025bd90,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a31e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110e038: mov    0xdc(%rdx),%esi
  0x00007f94e110e03e: add    $0x8,%esi
  0x00007f94e110e041: mov    %esi,0xdc(%rdx)
  0x00007f94e110e047: mov    $0x7f94e00a31e0,%rdx  ;   {metadata({method} {0x00007f94e00a31e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110e051: and    $0x7ffff8,%esi
  0x00007f94e110e057: cmp    $0x0,%esi
  0x00007f94e110e05a: je     0x00007f94e110e3fb
  0x00007f94e110e060: mov    0x78(%rsp),%rax
  0x00007f94e110e065: mov    $0x7f94e025bd90,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a31e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110e06f: addq   $0x1,0x108(%rdx)
  0x00007f94e110e077: mov    $0x781ef3340,%rdx  ;   {oop(" > ")}
  0x00007f94e110e081: mov    0x78(%rsp),%rsi    ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)

  0x00007f94e110e086: nop    
  0x00007f94e110e087: callq  0x00007f94e1046020  ; OopMap{[120]=Oop [136]=Oop off=1580}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f94e110e08c: mov    0x78(%rsp),%rax
  0x00007f94e110e091: mov    $0x7f94e025b540,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110e09b: mov    0x8(%rax),%eax
  0x00007f94e110e09e: shl    $0x3,%rax
  0x00007f94e110e0a2: cmp    0x1a0(%rdx),%rax
  0x00007f94e110e0a9: jne    0x00007f94e110e0b8
  0x00007f94e110e0ab: addq   $0x1,0x1a8(%rdx)
  0x00007f94e110e0b3: jmpq   0x00007f94e110e11e
  0x00007f94e110e0b8: cmp    0x1b0(%rdx),%rax
  0x00007f94e110e0bf: jne    0x00007f94e110e0ce
  0x00007f94e110e0c1: addq   $0x1,0x1b8(%rdx)
  0x00007f94e110e0c9: jmpq   0x00007f94e110e11e
  0x00007f94e110e0ce: cmpq   $0x0,0x1a0(%rdx)
  0x00007f94e110e0d9: jne    0x00007f94e110e0f2
  0x00007f94e110e0db: mov    %rax,0x1a0(%rdx)
  0x00007f94e110e0e2: movq   $0x1,0x1a8(%rdx)
  0x00007f94e110e0ed: jmpq   0x00007f94e110e11e
  0x00007f94e110e0f2: cmpq   $0x0,0x1b0(%rdx)
  0x00007f94e110e0fd: jne    0x00007f94e110e116
  0x00007f94e110e0ff: mov    %rax,0x1b0(%rdx)
  0x00007f94e110e106: movq   $0x1,0x1b8(%rdx)
  0x00007f94e110e111: jmpq   0x00007f94e110e11e
  0x00007f94e110e116: addq   $0x1,0x198(%rdx)
  0x00007f94e110e11e: mov    $0x7f94e025ba40,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a36a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110e128: mov    0xdc(%rdx),%esi
  0x00007f94e110e12e: add    $0x8,%esi
  0x00007f94e110e131: mov    %esi,0xdc(%rdx)
  0x00007f94e110e137: mov    $0x7f94e00a36a0,%rdx  ;   {metadata({method} {0x00007f94e00a36a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110e141: and    $0x7ffff8,%esi
  0x00007f94e110e147: cmp    $0x0,%esi
  0x00007f94e110e14a: je     0x00007f94e110e412
  0x00007f94e110e150: mov    0x78(%rsp),%rax
  0x00007f94e110e155: mov    $0x7f94e025ba40,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a36a0} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e110e15f: addq   $0x1,0x108(%rdx)
  0x00007f94e110e167: mov    0x80(%rsp),%edx
  0x00007f94e110e16e: mov    0x78(%rsp),%rsi    ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)

  0x00007f94e110e173: nop    
  0x00007f94e110e174: nop    
  0x00007f94e110e175: nop    
  0x00007f94e110e176: nop    
  0x00007f94e110e177: callq  0x00007f94e1046020  ; OopMap{[120]=Oop [136]=Oop off=1820}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f94e110e17c: mov    0x78(%rsp),%rax
  0x00007f94e110e181: mov    $0x7f94e025b540,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110e18b: mov    0x8(%rax),%eax
  0x00007f94e110e18e: shl    $0x3,%rax
  0x00007f94e110e192: cmp    0x1d0(%rdx),%rax
  0x00007f94e110e199: jne    0x00007f94e110e1a8
  0x00007f94e110e19b: addq   $0x1,0x1d8(%rdx)
  0x00007f94e110e1a3: jmpq   0x00007f94e110e20e
  0x00007f94e110e1a8: cmp    0x1e0(%rdx),%rax
  0x00007f94e110e1af: jne    0x00007f94e110e1be
  0x00007f94e110e1b1: addq   $0x1,0x1e8(%rdx)
  0x00007f94e110e1b9: jmpq   0x00007f94e110e20e
  0x00007f94e110e1be: cmpq   $0x0,0x1d0(%rdx)
  0x00007f94e110e1c9: jne    0x00007f94e110e1e2
  0x00007f94e110e1cb: mov    %rax,0x1d0(%rdx)
  0x00007f94e110e1d2: movq   $0x1,0x1d8(%rdx)
  0x00007f94e110e1dd: jmpq   0x00007f94e110e20e
  0x00007f94e110e1e2: cmpq   $0x0,0x1e0(%rdx)
  0x00007f94e110e1ed: jne    0x00007f94e110e206
  0x00007f94e110e1ef: mov    %rax,0x1e0(%rdx)
  0x00007f94e110e1f6: movq   $0x1,0x1e8(%rdx)
  0x00007f94e110e201: jmpq   0x00007f94e110e20e
  0x00007f94e110e206: addq   $0x1,0x1c8(%rdx)
  0x00007f94e110e20e: mov    $0x7f94e025bec8,%rdx  ;   {metadata(method data for {method} {0x00007f94e00a4590} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007f94e110e218: mov    0xdc(%rdx),%esi
  0x00007f94e110e21e: add    $0x8,%esi
  0x00007f94e110e221: mov    %esi,0xdc(%rdx)
  0x00007f94e110e227: mov    $0x7f94e00a4590,%rdx  ;   {metadata({method} {0x00007f94e00a4590} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007f94e110e231: and    $0x7ffff8,%esi
  0x00007f94e110e237: cmp    $0x0,%esi
  0x00007f94e110e23a: je     0x00007f94e110e429
  0x00007f94e110e240: mov    $0x7c00016d0,%rdx  ;   {metadata('java/lang/String')}
  0x00007f94e110e24a: mov    0x60(%r15),%rax
  0x00007f94e110e24e: lea    0x18(%rax),%rdi
  0x00007f94e110e252: cmp    0x70(%r15),%rdi
  0x00007f94e110e256: ja     0x00007f94e110e440
  0x00007f94e110e25c: mov    %rdi,0x60(%r15)
  0x00007f94e110e260: mov    0xa8(%rdx),%rcx
  0x00007f94e110e267: mov    %rcx,(%rax)
  0x00007f94e110e26a: mov    %rdx,%rcx
  0x00007f94e110e26d: shr    $0x3,%rcx
  0x00007f94e110e271: mov    %ecx,0x8(%rax)
  0x00007f94e110e274: xor    %rcx,%rcx
  0x00007f94e110e277: mov    %ecx,0xc(%rax)
  0x00007f94e110e27a: xor    %rcx,%rcx
  0x00007f94e110e27d: mov    %rcx,0x10(%rax)    ;*new  ; - java.lang.StringBuilder::toString@0 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f94e110e281: mov    0x78(%rsp),%rdx
  0x00007f94e110e286: mov    0x10(%rdx),%ecx
  0x00007f94e110e289: shl    $0x3,%rcx          ;*getfield value
                                                ; - java.lang.StringBuilder::toString@5 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f94e110e28d: mov    0xc(%rdx),%r8d     ;*getfield count
                                                ; - java.lang.StringBuilder::toString@10 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f94e110e291: mov    %rax,%rdx
  0x00007f94e110e294: mov    $0x7f94e025bec8,%rsi  ;   {metadata(method data for {method} {0x00007f94e00a4590} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007f94e110e29e: addq   $0x1,0x108(%rsi)
  0x00007f94e110e2a6: mov    %rcx,%rdx
  0x00007f94e110e2a9: mov    $0x0,%ecx
  0x00007f94e110e2ae: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.StringBuilder::toString@13 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f94e110e2b1: mov    %rax,0x90(%rsp)
  0x00007f94e110e2b9: nop    
  0x00007f94e110e2ba: nop    
  0x00007f94e110e2bb: nop    
  0x00007f94e110e2bc: nop    
  0x00007f94e110e2bd: nop    
  0x00007f94e110e2be: nop    
  0x00007f94e110e2bf: callq  0x00007f94e1046020  ; OopMap{[136]=Oop [144]=Oop off=2148}
                                                ;*invokespecial <init>
                                                ; - java.lang.StringBuilder::toString@13 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f94e110e2c4: mov    0x88(%rsp),%rax
  0x00007f94e110e2cc: mov    $0x7f94e025b540,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143a00} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f94e110e2d6: addq   $0x1,0x1f8(%rdx)
  0x00007f94e110e2de: mov    0x90(%rsp),%rdx
  0x00007f94e110e2e6: mov    0x88(%rsp),%rsi    ;*invokespecial <init>
                                                ; - java.util.Arrays::copyOfRange@35 (line 3663)

  0x00007f94e110e2ee: nop    
  0x00007f94e110e2ef: callq  0x00007f94e1046020  ; OopMap{[136]=Oop off=2196}
                                                ;*invokespecial <init>
                                                ; - java.util.Arrays::copyOfRange@35 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f94e110e2f4: mov    0x88(%rsp),%rax
  0x00007f94e110e2fc: jmpq   0x00007f94e110e478
  0x00007f94e110e301: mov    %rbx,0x8(%rsp)
  0x00007f94e110e306: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e30e: callq  0x00007f94e10fc760  ; OopMap{r8=Oop off=2227}
                                                ;*synchronization entry
                                                ; - java.util.Arrays::copyOfRange@-1 (line 3661)
                                                ;   {runtime_call}
  0x00007f94e110e313: jmpq   0x00007f94e110daa7
  0x00007f94e110e318: callq  0x00007f94e10fa6a0  ; OopMap{r8=Oop off=2237}
                                                ;*newarray
                                                ; - java.util.Arrays::copyOfRange@40 (line 3664)
                                                ;   {runtime_call}
  0x00007f94e110e31d: jmpq   0x00007f94e110db61
  0x00007f94e110e322: callq  0x00007f94e10f9680  ; OopMap{r8=Oop rax=Oop off=2247}
                                                ;*arraylength
                                                ; - java.util.Arrays::copyOfRange@50 (line 3665)
                                                ;   {runtime_call}
  0x00007f94e110e327: mov    %rdx,0x8(%rsp)
  0x00007f94e110e32c: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e334: callq  0x00007f94e10fc760  ; OopMap{r8=Oop rax=Oop off=2265}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)
                                                ;   {runtime_call}
  0x00007f94e110e339: jmpq   0x00007f94e110dbac
  0x00007f94e110e33e: nop    
  0x00007f94e110e33f: callq  0x00007f94e1046420  ; OopMap{[112]=Oop off=2276}
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOfRange@57 (line 3665)
                                                ;   {static_call}
  0x00007f94e110e344: jmpq   0x00007f94e110dc90
  0x00007f94e110e349: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e110e353: mov    $0xa050f00,%eax
  0x00007f94e110e358: callq  0x00007f94e10fd5a0  ; OopMap{off=2301}
                                                ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e35d: jmpq   0x00007f94e110dcb0
  0x00007f94e110e362: mov    %rdx,%rdx
  0x00007f94e110e365: callq  0x00007f94e10f9de0  ; OopMap{off=2314}
                                                ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e36a: jmpq   0x00007f94e110dcf5
  0x00007f94e110e36f: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e110e379: mov    $0xa050f00,%eax
  0x00007f94e110e37e: callq  0x00007f94e10fd5a0  ; OopMap{rax=Oop off=2339}
                                                ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e383: jmpq   0x00007f94e110dcf8
  0x00007f94e110e388: mov    %rdx,%rdx
  0x00007f94e110e38b: callq  0x00007f94e10f9de0  ; OopMap{[136]=Oop off=2352}
                                                ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e390: jmpq   0x00007f94e110dd41
  0x00007f94e110e395: mov    %rbx,0x8(%rsp)
  0x00007f94e110e39a: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e3a2: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop rax=Oop off=2375}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::<init>@-1 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e3a7: jmpq   0x00007f94e110dd88
  0x00007f94e110e3ac: mov    %rbx,0x8(%rsp)
  0x00007f94e110e3b1: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e3b9: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop rax=Oop off=2398}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::<init>@-1 (line 67)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e3be: jmpq   0x00007f94e110ddcf
  0x00007f94e110e3c3: mov    %rbx,0x8(%rsp)
  0x00007f94e110e3c8: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e3d0: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop rax=Oop off=2421}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - java.lang.AbstractStringBuilder::<init>@1 (line 67)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e3d5: jmpq   0x00007f94e110de16
  0x00007f94e110e3da: callq  0x00007f94e10fa6a0  ; OopMap{[136]=Oop r13=Oop off=2431}
                                                ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e3df: jmpq   0x00007f94e110de95
  0x00007f94e110e3e4: mov    %rdx,0x8(%rsp)
  0x00007f94e110e3e9: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e3f1: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop r13=Oop off=2454}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e3f6: jmpq   0x00007f94e110df77
  0x00007f94e110e3fb: mov    %rdx,0x8(%rsp)
  0x00007f94e110e400: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e408: callq  0x00007f94e10fc760  ; OopMap{[120]=Oop [136]=Oop off=2477}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e40d: jmpq   0x00007f94e110e060
  0x00007f94e110e412: mov    %rdx,0x8(%rsp)
  0x00007f94e110e417: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e41f: callq  0x00007f94e10fc760  ; OopMap{[120]=Oop [136]=Oop off=2500}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e424: jmpq   0x00007f94e110e150
  0x00007f94e110e429: mov    %rdx,0x8(%rsp)
  0x00007f94e110e42e: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e110e436: callq  0x00007f94e10fc760  ; OopMap{[120]=Oop [136]=Oop off=2523}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::toString@-1 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e43b: jmpq   0x00007f94e110e240
  0x00007f94e110e440: mov    %rdx,%rdx
  0x00007f94e110e443: callq  0x00007f94e10f9de0  ; OopMap{[120]=Oop [136]=Oop off=2536}
                                                ;*new  ; - java.lang.StringBuilder::toString@0 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {runtime_call}
  0x00007f94e110e448: jmpq   0x00007f94e110e281
  0x00007f94e110e44d: nop    
  0x00007f94e110e44e: nop    
  0x00007f94e110e44f: mov    0x2a8(%r15),%rax
  0x00007f94e110e456: mov    $0x0,%r10
  0x00007f94e110e460: mov    %r10,0x2a8(%r15)
  0x00007f94e110e467: mov    $0x0,%r10
  0x00007f94e110e471: mov    %r10,0x2b0(%r15)
  0x00007f94e110e478: add    $0xa0,%rsp
  0x00007f94e110e47f: pop    %rbp
  0x00007f94e110e480: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e110e485: hlt    
  0x00007f94e110e486: hlt    
  0x00007f94e110e487: hlt    
  0x00007f94e110e488: hlt    
  0x00007f94e110e489: hlt    
  0x00007f94e110e48a: hlt    
  0x00007f94e110e48b: hlt    
  0x00007f94e110e48c: hlt    
  0x00007f94e110e48d: hlt    
  0x00007f94e110e48e: hlt    
  0x00007f94e110e48f: hlt    
  0x00007f94e110e490: hlt    
  0x00007f94e110e491: hlt    
  0x00007f94e110e492: hlt    
  0x00007f94e110e493: hlt    
  0x00007f94e110e494: hlt    
  0x00007f94e110e495: hlt    
  0x00007f94e110e496: hlt    
  0x00007f94e110e497: hlt    
  0x00007f94e110e498: hlt    
  0x00007f94e110e499: hlt    
  0x00007f94e110e49a: hlt    
  0x00007f94e110e49b: hlt    
  0x00007f94e110e49c: hlt    
  0x00007f94e110e49d: hlt    
  0x00007f94e110e49e: hlt    
  0x00007f94e110e49f: hlt    
[Stub Code]
  0x00007f94e110e4a0: nop                       ;   {no_reloc}
  0x00007f94e110e4a1: nop    
  0x00007f94e110e4a2: nop    
  0x00007f94e110e4a3: nop    
  0x00007f94e110e4a4: nop    
  0x00007f94e110e4a5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110e4af: jmpq   0x00007f94e110e4af  ;   {runtime_call}
  0x00007f94e110e4b4: nop    
  0x00007f94e110e4b5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110e4bf: jmpq   0x00007f94e110e4bf  ;   {runtime_call}
  0x00007f94e110e4c4: nop    
  0x00007f94e110e4c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110e4cf: jmpq   0x00007f94e110e4cf  ;   {runtime_call}
  0x00007f94e110e4d4: nop    
  0x00007f94e110e4d5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110e4df: jmpq   0x00007f94e110e4df  ;   {runtime_call}
  0x00007f94e110e4e4: nop    
  0x00007f94e110e4e5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110e4ef: jmpq   0x00007f94e110e4ef  ;   {runtime_call}
  0x00007f94e110e4f4: nop    
  0x00007f94e110e4f5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e110e4ff: jmpq   0x00007f94e110e4ff  ;   {runtime_call}
[Exception Handler]
  0x00007f94e110e504: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e110e509: mov    %rsp,-0x28(%rsp)
  0x00007f94e110e50e: sub    $0x80,%rsp
  0x00007f94e110e515: mov    %rax,0x78(%rsp)
  0x00007f94e110e51a: mov    %rcx,0x70(%rsp)
  0x00007f94e110e51f: mov    %rdx,0x68(%rsp)
  0x00007f94e110e524: mov    %rbx,0x60(%rsp)
  0x00007f94e110e529: mov    %rbp,0x50(%rsp)
  0x00007f94e110e52e: mov    %rsi,0x48(%rsp)
  0x00007f94e110e533: mov    %rdi,0x40(%rsp)
  0x00007f94e110e538: mov    %r8,0x38(%rsp)
  0x00007f94e110e53d: mov    %r9,0x30(%rsp)
  0x00007f94e110e542: mov    %r10,0x28(%rsp)
  0x00007f94e110e547: mov    %r11,0x20(%rsp)
  0x00007f94e110e54c: mov    %r12,0x18(%rsp)
  0x00007f94e110e551: mov    %r13,0x10(%rsp)
  0x00007f94e110e556: mov    %r14,0x8(%rsp)
  0x00007f94e110e55b: mov    %r15,(%rsp)
  0x00007f94e110e55f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e110e569: mov    $0x7f94e110e509,%rsi  ;   {internal_word}
  0x00007f94e110e573: mov    %rsp,%rdx
  0x00007f94e110e576: and    $0xfffffffffffffff0,%rsp
  0x00007f94e110e57a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e110e57f: hlt    
[Deopt Handler Code]
  0x00007f94e110e580: mov    $0x7f94e110e580,%r10  ;   {section_word}
  0x00007f94e110e58a: push   %r10
  0x00007f94e110e58c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e110e591: hlt    
  0x00007f94e110e592: hlt    
  0x00007f94e110e593: hlt    
  0x00007f94e110e594: hlt    
  0x00007f94e110e595: hlt    
  0x00007f94e110e596: hlt    
  0x00007f94e110e597: hlt    
Decoding compiled method 0x00007f94e110eb90:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader'
  # this:     rsi:rsi   = 'java/io/BufferedReader'
  # parm0:    rdx       = boolean
  #           [sp+0xf0]  (sp of caller)
  0x00007f94e110ee40: mov    0x8(%rsi),%r10d
  0x00007f94e110ee44: shl    $0x3,%r10
  0x00007f94e110ee48: cmp    %rax,%r10
  0x00007f94e110ee4b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e110ee51: nopw   0x0(%rax,%rax,1)
  0x00007f94e110ee5c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e110ee60: mov    %eax,-0x14000(%rsp)
  0x00007f94e110ee67: push   %rbp
  0x00007f94e110ee68: sub    $0xe0,%rsp
  0x00007f94e110ee6f: mov    %rsi,0x70(%rsp)
  0x00007f94e110ee74: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110ee7e: mov    0xdc(%rax),%edi
  0x00007f94e110ee84: add    $0x8,%edi
  0x00007f94e110ee87: mov    %edi,0xdc(%rax)
  0x00007f94e110ee8d: mov    $0x7f94e01afa88,%rax  ;   {metadata({method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110ee97: and    $0x1ff8,%edi
  0x00007f94e110ee9d: cmp    $0x0,%edi
  0x00007f94e110eea0: je     0x00007f94e111017a  ;*aconst_null
                                                ; - java.io.BufferedReader::readLine@0 (line 313)

  0x00007f94e110eea6: mov    0xc(%rsi),%edi
  0x00007f94e110eea9: shl    $0x3,%rdi          ;*getfield lock
                                                ; - java.io.BufferedReader::readLine@3 (line 316)

  0x00007f94e110eead: mov    %rdi,0x88(%rsp)
  0x00007f94e110eeb5: lea    0xb0(%rsp),%rbx
  0x00007f94e110eebd: mov    %rdi,0x8(%rbx)
  0x00007f94e110eec1: mov    (%rdi),%rax        ; implicit exception: dispatches to 0x00007f94e1110191
  0x00007f94e110eec4: mov    %rax,%rcx
  0x00007f94e110eec7: and    $0x7,%rcx
  0x00007f94e110eecb: cmp    $0x5,%rcx
  0x00007f94e110eecf: jne    0x00007f94e110ef56
  0x00007f94e110eed5: mov    0x8(%rdi),%ecx
  0x00007f94e110eed8: shl    $0x3,%rcx
  0x00007f94e110eedc: mov    0xa8(%rcx),%rcx
  0x00007f94e110eee3: or     %r15,%rcx
  0x00007f94e110eee6: xor    %rax,%rcx
  0x00007f94e110eee9: and    $0xffffffffffffff87,%rcx
  0x00007f94e110eeed: je     0x00007f94e110ef7e
  0x00007f94e110eef3: test   $0x7,%rcx
  0x00007f94e110eefa: jne    0x00007f94e110ef43
  0x00007f94e110eefc: test   $0x300,%rcx
  0x00007f94e110ef03: jne    0x00007f94e110ef22
  0x00007f94e110ef05: and    $0x37f,%rax
  0x00007f94e110ef0c: mov    %rax,%rcx
  0x00007f94e110ef0f: or     %r15,%rcx
  0x00007f94e110ef12: lock cmpxchg %rcx,(%rdi)
  0x00007f94e110ef17: jne    0x00007f94e1110196
  0x00007f94e110ef1d: jmpq   0x00007f94e110ef7e
  0x00007f94e110ef22: mov    0x8(%rdi),%ecx
  0x00007f94e110ef25: shl    $0x3,%rcx
  0x00007f94e110ef29: mov    0xa8(%rcx),%rcx
  0x00007f94e110ef30: or     %r15,%rcx
  0x00007f94e110ef33: lock cmpxchg %rcx,(%rdi)
  0x00007f94e110ef38: jne    0x00007f94e1110196
  0x00007f94e110ef3e: jmpq   0x00007f94e110ef7e
  0x00007f94e110ef43: mov    0x8(%rdi),%ecx
  0x00007f94e110ef46: shl    $0x3,%rcx
  0x00007f94e110ef4a: mov    0xa8(%rcx),%rcx
  0x00007f94e110ef51: lock cmpxchg %rcx,(%rdi)
  0x00007f94e110ef56: mov    (%rdi),%rax
  0x00007f94e110ef59: or     $0x1,%rax
  0x00007f94e110ef5d: mov    %rax,(%rbx)
  0x00007f94e110ef60: lock cmpxchg %rbx,(%rdi)
  0x00007f94e110ef65: je     0x00007f94e110ef7e
  0x00007f94e110ef6b: sub    %rsp,%rax
  0x00007f94e110ef6e: and    $0xfffffffffffff007,%rax
  0x00007f94e110ef75: mov    %rax,(%rbx)
  0x00007f94e110ef78: jne    0x00007f94e1110196  ;*monitorenter
                                                ; - java.io.BufferedReader::readLine@9 (line 316)

  0x00007f94e110ef7e: mov    %rsi,%rbx
  0x00007f94e110ef81: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110ef8b: addq   $0x1,0x108(%rax)
  0x00007f94e110ef93: mov    $0x7f94e025e0f0,%rbx  ;   {metadata(method data for {method} {0x00007f94e01af360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007f94e110ef9d: mov    0xdc(%rbx),%eax
  0x00007f94e110efa3: add    $0x8,%eax
  0x00007f94e110efa6: mov    %eax,0xdc(%rbx)
  0x00007f94e110efac: mov    $0x7f94e01af360,%rbx  ;   {metadata({method} {0x00007f94e01af360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007f94e110efb6: and    $0x7ffff8,%eax
  0x00007f94e110efbc: cmp    $0x0,%eax
  0x00007f94e110efbf: je     0x00007f94e11101a9
  0x00007f94e110efc5: mov    0x28(%rsi),%ebx
  0x00007f94e110efc8: shl    $0x3,%rbx          ;*getfield in
                                                ; - java.io.BufferedReader::ensureOpen@1 (line 121)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007f94e110efcc: cmp    $0x0,%rbx
  0x00007f94e110efd0: mov    $0x7f94e025e0f0,%rbx  ;   {metadata(method data for {method} {0x00007f94e01af360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007f94e110efda: mov    $0x108,%rax
  0x00007f94e110efe4: jne    0x00007f94e110eff4
  0x00007f94e110efea: mov    $0x118,%rax
  0x00007f94e110eff4: mov    (%rbx,%rax,1),%rcx
  0x00007f94e110eff8: lea    0x1(%rcx),%rcx
  0x00007f94e110effc: mov    %rcx,(%rbx,%rax,1)
  0x00007f94e110f000: je     0x00007f94e110ff7b  ;*ifnonnull
                                                ; - java.io.BufferedReader::ensureOpen@4 (line 121)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007f94e110f006: cmp    $0x0,%edx
  0x00007f94e110f009: mov    $0x7f94e025ccc0,%rbx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f013: mov    $0x118,%rax
  0x00007f94e110f01d: jne    0x00007f94e110f02d
  0x00007f94e110f023: mov    $0x128,%rax
  0x00007f94e110f02d: mov    (%rbx,%rax,1),%rdx
  0x00007f94e110f031: lea    0x1(%rdx),%rdx
  0x00007f94e110f035: mov    %rdx,(%rbx,%rax,1)
  0x00007f94e110f039: jne    0x00007f94e110f07c  ;*ifne
                                                ; - java.io.BufferedReader::readLine@15 (line 318)

  0x00007f94e110f03f: movsbl 0x24(%rsi),%ebx    ;*getfield skipLF
                                                ; - java.io.BufferedReader::readLine@19 (line 318)

  0x00007f94e110f043: cmp    $0x0,%ebx
  0x00007f94e110f046: mov    $0x7f94e025ccc0,%rbx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f050: mov    $0x138,%rax
  0x00007f94e110f05a: je     0x00007f94e110f06a
  0x00007f94e110f060: mov    $0x148,%rax
  0x00007f94e110f06a: mov    (%rbx,%rax,1),%rdx
  0x00007f94e110f06e: lea    0x1(%rdx),%rdx
  0x00007f94e110f072: mov    %rdx,(%rbx,%rax,1)
  0x00007f94e110f076: je     0x00007f94e110f096  ;*ifeq
                                                ; - java.io.BufferedReader::readLine@22 (line 318)

  0x00007f94e110f07c: mov    $0x7f94e025ccc0,%rbx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f086: incl   0x158(%rbx)
  0x00007f94e110f08c: mov    $0x1,%ebx
  0x00007f94e110f091: jmpq   0x00007f94e110f09b  ;*goto
                                                ; - java.io.BufferedReader::readLine@26 (line 318)

  0x00007f94e110f096: mov    $0x0,%ebx          ;*istore
                                                ; - java.io.BufferedReader::readLine@30 (line 318)

  0x00007f94e110f09b: mov    $0x0,%rax          ;*aload_0
                                                ; - java.io.BufferedReader::readLine@32 (line 323)
                                                ;   {oop(NULL)}
  0x00007f94e110f0a5: mov    %ebx,0x78(%rsp)
  0x00007f94e110f0a9: mov    %rax,0x80(%rsp)
  0x00007f94e110f0b1: nopl   0x0(%rax)
  0x00007f94e110f0b8: mov    0x18(%rsi),%edx    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@33 (line 323)

  0x00007f94e110f0bb: mov    0x14(%rsi),%ecx    ;*getfield nChars
                                                ; - java.io.BufferedReader::readLine@37 (line 323)

  0x00007f94e110f0be: cmp    %ecx,%edx
  0x00007f94e110f0c0: mov    $0x7f94e025ccc0,%rdx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f0ca: mov    $0x170,%rcx
  0x00007f94e110f0d4: jl     0x00007f94e110f0e4
  0x00007f94e110f0da: mov    $0x180,%rcx
  0x00007f94e110f0e4: mov    (%rdx,%rcx,1),%r8
  0x00007f94e110f0e8: lea    0x1(%r8),%r8
  0x00007f94e110f0ec: mov    %r8,(%rdx,%rcx,1)
  0x00007f94e110f0f0: jl     0x00007f94e110f121  ;*if_icmplt
                                                ; - java.io.BufferedReader::readLine@40 (line 323)

  0x00007f94e110f0f6: mov    %rsi,%rdx
  0x00007f94e110f0f9: mov    $0x7f94e025ccc0,%rcx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f103: addq   $0x1,0x190(%rcx)
  0x00007f94e110f10b: mov    %rsi,%rdx
  0x00007f94e110f10e: mov    %rdx,%rsi          ;*invokespecial fill
                                                ; - java.io.BufferedReader::readLine@44 (line 324)

  0x00007f94e110f111: nop    
  0x00007f94e110f112: nop    
  0x00007f94e110f113: nop    
  0x00007f94e110f114: nop    
  0x00007f94e110f115: nop    
  0x00007f94e110f116: nop    
  0x00007f94e110f117: callq  0x00007f94e1046020  ; OopMap{[112]=Oop [136]=Oop [128]=Oop [184]=Oop off=732}
                                                ;*invokespecial fill
                                                ; - java.io.BufferedReader::readLine@44 (line 324)
                                                ;   {optimized virtual_call}
  0x00007f94e110f11c: mov    0x70(%rsp),%rsi
  0x00007f94e110f121: mov    0x18(%rsi),%edx    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@48 (line 325)

  0x00007f94e110f124: mov    0x14(%rsi),%edi    ;*getfield nChars
                                                ; - java.io.BufferedReader::readLine@52 (line 325)

  0x00007f94e110f127: cmp    %edi,%edx
  0x00007f94e110f129: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f133: mov    $0x1a0,%rcx
  0x00007f94e110f13d: jl     0x00007f94e110f14d
  0x00007f94e110f143: mov    $0x1b0,%rcx
  0x00007f94e110f14d: mov    (%rax,%rcx,1),%rbx
  0x00007f94e110f151: lea    0x1(%rbx),%rbx
  0x00007f94e110f155: mov    %rbx,(%rax,%rcx,1)
  0x00007f94e110f159: jge    0x00007f94e110fbfa  ;*if_icmplt
                                                ; - java.io.BufferedReader::readLine@55 (line 325)

  0x00007f94e110f15f: mov    0x78(%rsp),%ebx
  0x00007f94e110f163: cmp    $0x0,%ebx
  0x00007f94e110f166: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f170: mov    $0x260,%rcx
  0x00007f94e110f17a: je     0x00007f94e110f18a
  0x00007f94e110f180: mov    $0x270,%rcx
  0x00007f94e110f18a: mov    (%rax,%rcx,1),%rbx
  0x00007f94e110f18e: lea    0x1(%rbx),%rbx
  0x00007f94e110f192: mov    %rbx,(%rax,%rcx,1)
  0x00007f94e110f196: je     0x00007f94e110f1f2  ;*ifeq
                                                ; - java.io.BufferedReader::readLine@90 (line 336)

  0x00007f94e110f19c: mov    0x2c(%rsi),%eax
  0x00007f94e110f19f: shl    $0x3,%rax          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@94 (line 336)

  0x00007f94e110f1a3: movslq %edx,%rcx
  0x00007f94e110f1a6: cmp    0xc(%rax),%edx     ; implicit exception: dispatches to 0x00007f94e11101c0
  0x00007f94e110f1a9: jae    0x00007f94e11101ca
  0x00007f94e110f1af: movzwl 0x10(%rax,%rcx,2),%eax  ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)

  0x00007f94e110f1b4: cmp    $0xa,%eax
  0x00007f94e110f1b7: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f1c1: mov    $0x280,%rcx
  0x00007f94e110f1cb: jne    0x00007f94e110f1db
  0x00007f94e110f1d1: mov    $0x290,%rcx
  0x00007f94e110f1db: mov    (%rax,%rcx,1),%rbx
  0x00007f94e110f1df: lea    0x1(%rbx),%rbx
  0x00007f94e110f1e3: mov    %rbx,(%rax,%rcx,1)
  0x00007f94e110f1e7: jne    0x00007f94e110f1f2  ;*if_icmpne
                                                ; - java.io.BufferedReader::readLine@104 (line 336)

  0x00007f94e110f1ed: inc    %edx
  0x00007f94e110f1ef: mov    %edx,0x18(%rsi)    ;*putfield nextChar
                                                ; - java.io.BufferedReader::readLine@114 (line 337)

  0x00007f94e110f1f2: movb   $0x0,0x24(%rsi)    ;*putfield skipLF
                                                ; - java.io.BufferedReader::readLine@119 (line 338)

  0x00007f94e110f1f6: mov    0x18(%rsi),%r8d    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@126 (line 342)

  0x00007f94e110f1fa: mov    %r8,%r9
  0x00007f94e110f1fd: mov    $0x0,%edx
  0x00007f94e110f202: jmpq   0x00007f94e110f2de  ;*iload
                                                ; - java.io.BufferedReader::readLine@131 (line 342)

  0x00007f94e110f207: nop    
  0x00007f94e110f208: mov    0x2c(%rsi),%edx
  0x00007f94e110f20b: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@141 (line 343)

  0x00007f94e110f20f: movslq %r9d,%rax
  0x00007f94e110f212: cmp    0xc(%rdx),%r9d     ; implicit exception: dispatches to 0x00007f94e11101d3
  0x00007f94e110f216: jae    0x00007f94e11101dd
  0x00007f94e110f21c: movzwl 0x10(%rdx,%rax,2),%edx  ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)

  0x00007f94e110f221: cmp    $0xa,%edx
  0x00007f94e110f224: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f22e: mov    $0x2c0,%rcx
  0x00007f94e110f238: je     0x00007f94e110f248
  0x00007f94e110f23e: mov    $0x2d0,%rcx
  0x00007f94e110f248: mov    (%rax,%rcx,1),%rbx
  0x00007f94e110f24c: lea    0x1(%rbx),%rbx
  0x00007f94e110f250: mov    %rbx,(%rax,%rcx,1)
  0x00007f94e110f254: je     0x00007f94e110f321  ;*if_icmpeq
                                                ; - java.io.BufferedReader::readLine@153 (line 344)

  0x00007f94e110f25a: cmp    $0xd,%edx
  0x00007f94e110f25d: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f267: mov    $0x2e0,%rcx
  0x00007f94e110f271: jne    0x00007f94e110f281
  0x00007f94e110f277: mov    $0x2f0,%rcx
  0x00007f94e110f281: mov    (%rax,%rcx,1),%rbx
  0x00007f94e110f285: lea    0x1(%rbx),%rbx
  0x00007f94e110f289: mov    %rbx,(%rax,%rcx,1)
  0x00007f94e110f28d: je     0x00007f94e110f321  ;*if_icmpne
                                                ; - java.io.BufferedReader::readLine@160 (line 344)

  0x00007f94e110f293: inc    %r9d
  0x00007f94e110f296: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f2a0: mov    0xe0(%rax),%ecx
  0x00007f94e110f2a6: add    $0x8,%ecx
  0x00007f94e110f2a9: mov    %ecx,0xe0(%rax)
  0x00007f94e110f2af: mov    $0x7f94e01afa88,%rax  ;   {metadata({method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f2b9: and    $0xfff8,%ecx
  0x00007f94e110f2bf: cmp    $0x0,%ecx
  0x00007f94e110f2c2: je     0x00007f94e11101e6  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop [184]=Oop off=1160}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@172 (line 342)

  0x00007f94e110f2c8: test   %eax,0x16edfe32(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e110f2ce: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f2d8: incl   0x318(%rax)        ;*goto
                                                ; - java.io.BufferedReader::readLine@172 (line 342)

  0x00007f94e110f2de: cmp    %edi,%r9d
  0x00007f94e110f2e1: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f2eb: mov    $0x2a0,%rcx
  0x00007f94e110f2f5: jge    0x00007f94e110f305
  0x00007f94e110f2fb: mov    $0x2b0,%rcx
  0x00007f94e110f305: mov    (%rax,%rcx,1),%rbx
  0x00007f94e110f309: lea    0x1(%rbx),%rbx
  0x00007f94e110f30d: mov    %rbx,(%rax,%rcx,1)
  0x00007f94e110f311: jl     0x00007f94e110f208  ;*if_icmpge
                                                ; - java.io.BufferedReader::readLine@137 (line 342)

  0x00007f94e110f317: mov    $0x0,%edi
  0x00007f94e110f31c: jmpq   0x00007f94e110f336  ;*aload_0
                                                ; - java.io.BufferedReader::readLine@175 (line 350)

  0x00007f94e110f321: mov    $0x7f94e025ccc0,%rdi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f32b: incl   0x300(%rdi)
  0x00007f94e110f331: mov    $0x1,%edi          ;*goto
                                                ; - java.io.BufferedReader::readLine@166 (line 346)

  0x00007f94e110f336: mov    %r9d,0x18(%rsi)    ;*putfield nextChar
                                                ; - java.io.BufferedReader::readLine@183 (line 351)

  0x00007f94e110f33a: cmp    $0x0,%edi
  0x00007f94e110f33d: mov    $0x7f94e025ccc0,%rdi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f347: mov    $0x330,%rax
  0x00007f94e110f351: je     0x00007f94e110f361
  0x00007f94e110f357: mov    $0x340,%rax
  0x00007f94e110f361: mov    (%rdi,%rax,1),%rcx
  0x00007f94e110f365: lea    0x1(%rcx),%rcx
  0x00007f94e110f369: mov    %rcx,(%rdi,%rax,1)
  0x00007f94e110f36d: mov    0x80(%rsp),%rax
  0x00007f94e110f375: jne    0x00007f94e110f80b  ;*ifeq
                                                ; - java.io.BufferedReader::readLine@188 (line 353)

  0x00007f94e110f37b: cmp    $0x0,%rax
  0x00007f94e110f37f: mov    $0x7f94e025ccc0,%rdx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f389: mov    $0x418,%rdi
  0x00007f94e110f393: jne    0x00007f94e110f3a3
  0x00007f94e110f399: mov    $0x428,%rdi
  0x00007f94e110f3a3: mov    (%rdx,%rdi,1),%rcx
  0x00007f94e110f3a7: lea    0x1(%rcx),%rcx
  0x00007f94e110f3ab: mov    %rcx,(%rdx,%rdi,1)
  0x00007f94e110f3af: je     0x00007f94e110f3bd  ;*ifnonnull
                                                ; - java.io.BufferedReader::readLine@265 (line 368)

  0x00007f94e110f3b5: mov    %rsi,%r11
  0x00007f94e110f3b8: jmpq   0x00007f94e110f583  ;*aload_2
                                                ; - java.io.BufferedReader::readLine@279 (line 370)

  0x00007f94e110f3bd: xchg   %ax,%ax
  0x00007f94e110f3c0: jmpq   0x00007f94e111020c  ;   {no_reloc}
  0x00007f94e110f3c5: add    %al,(%rax)
  0x00007f94e110f3c7: add    %al,(%rax)
  0x00007f94e110f3c9: add    %cl,-0x22(%rbx,%rcx,4)
  0x00007f94e110f3cd: mov    0x60(%r15),%rax
  0x00007f94e110f3d1: lea    0x18(%rax),%rdi
  0x00007f94e110f3d5: cmp    0x70(%r15),%rdi
  0x00007f94e110f3d9: ja     0x00007f94e1110216
  0x00007f94e110f3df: mov    %rdi,0x60(%r15)
  0x00007f94e110f3e3: mov    0xa8(%rdx),%rcx
  0x00007f94e110f3ea: mov    %rcx,(%rax)
  0x00007f94e110f3ed: mov    %rdx,%rcx
  0x00007f94e110f3f0: shr    $0x3,%rcx
  0x00007f94e110f3f4: mov    %ecx,0x8(%rax)
  0x00007f94e110f3f7: xor    %rcx,%rcx
  0x00007f94e110f3fa: mov    %ecx,0xc(%rax)
  0x00007f94e110f3fd: xor    %rcx,%rcx
  0x00007f94e110f400: mov    %rcx,0x10(%rax)
  0x00007f94e110f404: mov    %rax,%r13          ;*new  ; - java.io.BufferedReader::readLine@268 (line 369)

  0x00007f94e110f407: mov    $0x781e30638,%rbx  ;   {oop(a 'java/lang/Class' = 'java/io/BufferedReader')}
  0x00007f94e110f411: mov    0x74(%rbx),%ebx    ;*getstatic defaultExpectedLineLength
                                                ; - java.io.BufferedReader::readLine@272 (line 369)

  0x00007f94e110f414: mov    %r13,%rdx
  0x00007f94e110f417: mov    $0x7f94e025ccc0,%rsi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f421: addq   $0x1,0x438(%rsi)
  0x00007f94e110f429: mov    $0x7f94e025f8e0,%rdx  ;   {metadata(method data for {method} {0x00007f94e009a9e0} '<init>' '(I)V' in 'java/lang/StringBuffer')}
  0x00007f94e110f433: mov    0xdc(%rdx),%esi
  0x00007f94e110f439: add    $0x8,%esi
  0x00007f94e110f43c: mov    %esi,0xdc(%rdx)
  0x00007f94e110f442: mov    $0x7f94e009a9e0,%rdx  ;   {metadata({method} {0x00007f94e009a9e0} '<init>' '(I)V' in 'java/lang/StringBuffer')}
  0x00007f94e110f44c: and    $0x7ffff8,%esi
  0x00007f94e110f452: cmp    $0x0,%esi
  0x00007f94e110f455: je     0x00007f94e1110223
  0x00007f94e110f45b: mov    %r13,%rdx
  0x00007f94e110f45e: mov    $0x7f94e025f8e0,%rsi  ;   {metadata(method data for {method} {0x00007f94e009a9e0} '<init>' '(I)V' in 'java/lang/StringBuffer')}
  0x00007f94e110f468: addq   $0x1,0x108(%rsi)
  0x00007f94e110f470: mov    $0x7f94e025b8e8,%rdx  ;   {metadata(method data for {method} {0x00007f94e009f2b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110f47a: mov    0xdc(%rdx),%esi
  0x00007f94e110f480: add    $0x8,%esi
  0x00007f94e110f483: mov    %esi,0xdc(%rdx)
  0x00007f94e110f489: mov    $0x7f94e009f2b0,%rdx  ;   {metadata({method} {0x00007f94e009f2b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110f493: and    $0x7ffff8,%esi
  0x00007f94e110f499: cmp    $0x0,%esi
  0x00007f94e110f49c: je     0x00007f94e111023a
  0x00007f94e110f4a2: mov    %r13,%rdx
  0x00007f94e110f4a5: mov    $0x7f94e025b8e8,%rsi  ;   {metadata(method data for {method} {0x00007f94e009f2b0} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e110f4af: addq   $0x1,0x108(%rsi)
  0x00007f94e110f4b7: mov    $0x7f94e019efd0,%rdx  ;   {metadata(method data for {method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e110f4c1: mov    0xdc(%rdx),%esi
  0x00007f94e110f4c7: add    $0x8,%esi
  0x00007f94e110f4ca: mov    %esi,0xdc(%rdx)
  0x00007f94e110f4d0: mov    $0x7f94e002b480,%rdx  ;   {metadata({method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e110f4da: and    $0x7ffff8,%esi
  0x00007f94e110f4e0: cmp    $0x0,%esi
  0x00007f94e110f4e3: je     0x00007f94e1110251
  0x00007f94e110f4e9: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007f94e110f4f3: movslq %ebx,%rbx
  0x00007f94e110f4f6: mov    %rbx,%rdi
  0x00007f94e110f4f9: cmp    $0xffffff,%rbx
  0x00007f94e110f500: ja     0x00007f94e1110268
  0x00007f94e110f506: mov    $0x17,%rsi
  0x00007f94e110f510: lea    (%rsi,%rbx,2),%rsi
  0x00007f94e110f514: and    $0xfffffffffffffff8,%rsi
  0x00007f94e110f518: mov    0x60(%r15),%rax
  0x00007f94e110f51c: lea    (%rax,%rsi,1),%rsi
  0x00007f94e110f520: cmp    0x70(%r15),%rsi
  0x00007f94e110f524: ja     0x00007f94e1110268
  0x00007f94e110f52a: mov    %rsi,0x60(%r15)
  0x00007f94e110f52e: sub    %rax,%rsi
  0x00007f94e110f531: movq   $0x1,(%rax)
  0x00007f94e110f538: mov    %rdx,%rcx
  0x00007f94e110f53b: shr    $0x3,%rcx
  0x00007f94e110f53f: mov    %ecx,0x8(%rax)
  0x00007f94e110f542: mov    %ebx,0xc(%rax)
  0x00007f94e110f545: sub    $0x10,%rsi
  0x00007f94e110f549: je     0x00007f94e110f560
  0x00007f94e110f54f: xor    %rbx,%rbx
  0x00007f94e110f552: shr    $0x3,%rsi
  0x00007f94e110f556: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f94e110f55b: dec    %rsi
  0x00007f94e110f55e: jne    0x00007f94e110f556  ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)

  0x00007f94e110f560: mov    %rax,%r10
  0x00007f94e110f563: shr    $0x3,%r10
  0x00007f94e110f567: mov    %r10d,0x10(%r13)
  0x00007f94e110f56b: mov    %r13,%rax
  0x00007f94e110f56e: shr    $0x9,%rax
  0x00007f94e110f572: mov    $0x7f94f0e87000,%rdx
  0x00007f94e110f57c: movb   $0x0,(%rax,%rdx,1)  ;*putfield value
                                                ; - java.lang.AbstractStringBuilder::<init>@8 (line 68)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)

  0x00007f94e110f580: mov    %r13,%rax          ;*aload_2
                                                ; - java.io.BufferedReader::readLine@279 (line 370)

  0x00007f94e110f583: mov    0x2c(%r11),%edx
  0x00007f94e110f587: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@281 (line 370)

  0x00007f94e110f58b: cmp    (%rax),%rax        ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ; implicit exception: dispatches to 0x00007f94e1110272
  0x00007f94e110f58e: mov    %rax,%rcx
  0x00007f94e110f591: mov    $0x7f94e025ccc0,%rsi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f59b: mov    0x8(%rcx),%ecx
  0x00007f94e110f59e: shl    $0x3,%rcx
  0x00007f94e110f5a2: cmp    0x450(%rsi),%rcx
  0x00007f94e110f5a9: jne    0x00007f94e110f5b8
  0x00007f94e110f5ab: addq   $0x1,0x458(%rsi)
  0x00007f94e110f5b3: jmpq   0x00007f94e110f61e
  0x00007f94e110f5b8: cmp    0x460(%rsi),%rcx
  0x00007f94e110f5bf: jne    0x00007f94e110f5ce
  0x00007f94e110f5c1: addq   $0x1,0x468(%rsi)
  0x00007f94e110f5c9: jmpq   0x00007f94e110f61e
  0x00007f94e110f5ce: cmpq   $0x0,0x450(%rsi)
  0x00007f94e110f5d9: jne    0x00007f94e110f5f2
  0x00007f94e110f5db: mov    %rcx,0x450(%rsi)
  0x00007f94e110f5e2: movq   $0x1,0x458(%rsi)
  0x00007f94e110f5ed: jmpq   0x00007f94e110f61e
  0x00007f94e110f5f2: cmpq   $0x0,0x460(%rsi)
  0x00007f94e110f5fd: jne    0x00007f94e110f616
  0x00007f94e110f5ff: mov    %rcx,0x460(%rsi)
  0x00007f94e110f606: movq   $0x1,0x468(%rsi)
  0x00007f94e110f611: jmpq   0x00007f94e110f61e
  0x00007f94e110f616: addq   $0x1,0x448(%rsi)
  0x00007f94e110f61e: sub    %r8d,%r9d
  0x00007f94e110f621: lea    0xc0(%rsp),%rcx
  0x00007f94e110f629: mov    %rax,%rdi
  0x00007f94e110f62c: mov    %rdi,0x8(%rcx)
  0x00007f94e110f630: mov    (%rdi),%rax
  0x00007f94e110f633: mov    %rax,%rsi
  0x00007f94e110f636: and    $0x7,%rsi
  0x00007f94e110f63a: cmp    $0x5,%rsi
  0x00007f94e110f63e: jne    0x00007f94e110f6c5
  0x00007f94e110f644: mov    0x8(%rdi),%esi
  0x00007f94e110f647: shl    $0x3,%rsi
  0x00007f94e110f64b: mov    0xa8(%rsi),%rsi
  0x00007f94e110f652: or     %r15,%rsi
  0x00007f94e110f655: xor    %rax,%rsi
  0x00007f94e110f658: and    $0xffffffffffffff87,%rsi
  0x00007f94e110f65c: je     0x00007f94e110f6ed
  0x00007f94e110f662: test   $0x7,%rsi
  0x00007f94e110f669: jne    0x00007f94e110f6b2
  0x00007f94e110f66b: test   $0x300,%rsi
  0x00007f94e110f672: jne    0x00007f94e110f691
  0x00007f94e110f674: and    $0x37f,%rax
  0x00007f94e110f67b: mov    %rax,%rsi
  0x00007f94e110f67e: or     %r15,%rsi
  0x00007f94e110f681: lock cmpxchg %rsi,(%rdi)
  0x00007f94e110f686: jne    0x00007f94e1110277
  0x00007f94e110f68c: jmpq   0x00007f94e110f6ed
  0x00007f94e110f691: mov    0x8(%rdi),%esi
  0x00007f94e110f694: shl    $0x3,%rsi
  0x00007f94e110f698: mov    0xa8(%rsi),%rsi
  0x00007f94e110f69f: or     %r15,%rsi
  0x00007f94e110f6a2: lock cmpxchg %rsi,(%rdi)
  0x00007f94e110f6a7: jne    0x00007f94e1110277
  0x00007f94e110f6ad: jmpq   0x00007f94e110f6ed
  0x00007f94e110f6b2: mov    0x8(%rdi),%esi
  0x00007f94e110f6b5: shl    $0x3,%rsi
  0x00007f94e110f6b9: mov    0xa8(%rsi),%rsi
  0x00007f94e110f6c0: lock cmpxchg %rsi,(%rdi)
  0x00007f94e110f6c5: mov    (%rdi),%rax
  0x00007f94e110f6c8: or     $0x1,%rax
  0x00007f94e110f6cc: mov    %rax,(%rcx)
  0x00007f94e110f6cf: lock cmpxchg %rcx,(%rdi)
  0x00007f94e110f6d4: je     0x00007f94e110f6ed
  0x00007f94e110f6da: sub    %rsp,%rax
  0x00007f94e110f6dd: and    $0xfffffffffffff007,%rax
  0x00007f94e110f6e4: mov    %rax,(%rcx)
  0x00007f94e110f6e7: jne    0x00007f94e1110277  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007f94e110f6ed: mov    $0x7f94e025f5f8,%rcx  ;   {metadata(method data for {method} {0x00007f94e009b798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007f94e110f6f7: mov    0xdc(%rcx),%esi
  0x00007f94e110f6fd: add    $0x8,%esi
  0x00007f94e110f700: mov    %esi,0xdc(%rcx)
  0x00007f94e110f706: mov    $0x7f94e009b798,%rcx  ;   {metadata({method} {0x00007f94e009b798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007f94e110f710: and    $0x7ffff8,%esi
  0x00007f94e110f716: cmp    $0x0,%esi
  0x00007f94e110f719: je     0x00007f94e111028a
  0x00007f94e110f71f: movl   $0x0,0x14(%rdi)
  0x00007f94e110f726: mov    %rdi,%rax
  0x00007f94e110f729: shr    $0x9,%rax
  0x00007f94e110f72d: mov    $0x7f94f0e87000,%rcx
  0x00007f94e110f737: movb   $0x0,(%rax,%rcx,1)  ;*putfield toStringCache
                                                ; - java.lang.StringBuffer::append@2 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007f94e110f73b: mov    %rdi,%rax
  0x00007f94e110f73e: mov    $0x7f94e025f5f8,%rcx  ;   {metadata(method data for {method} {0x00007f94e009b798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007f94e110f748: addq   $0x1,0x108(%rcx)
  0x00007f94e110f750: mov    %r8,%rcx
  0x00007f94e110f753: mov    %r9,%r8
  0x00007f94e110f756: mov    %rdi,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007f94e110f759: mov    %rdi,0x90(%rsp)
  0x00007f94e110f761: nop    
  0x00007f94e110f762: nop    
  0x00007f94e110f763: nop    
  0x00007f94e110f764: nop    
  0x00007f94e110f765: nop    
  0x00007f94e110f766: nop    
  0x00007f94e110f767: callq  0x00007f94e1046020  ; OopMap{[136]=Oop [144]=Oop [112]=Oop [184]=Oop [200]=Oop off=2348}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {optimized virtual_call}
  0x00007f94e110f76c: lea    0xc0(%rsp),%rax
  0x00007f94e110f774: mov    0x8(%rax),%rsi
  0x00007f94e110f778: mov    (%rsi),%rdx
  0x00007f94e110f77b: and    $0x7,%rdx
  0x00007f94e110f77f: cmp    $0x5,%rdx
  0x00007f94e110f783: je     0x00007f94e110f7a0
  0x00007f94e110f789: mov    (%rax),%rdx
  0x00007f94e110f78c: test   %rdx,%rdx
  0x00007f94e110f78f: je     0x00007f94e110f7a0
  0x00007f94e110f795: lock cmpxchg %rdx,(%rsi)
  0x00007f94e110f79a: jne    0x00007f94e11102a1  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007f94e110f7a0: mov    $0x7f94e025ccc0,%rdx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f7aa: mov    0xe0(%rdx),%esi
  0x00007f94e110f7b0: add    $0x8,%esi
  0x00007f94e110f7b3: mov    %esi,0xe0(%rdx)
  0x00007f94e110f7b9: mov    $0x7f94e01afa88,%rdx  ;   {metadata({method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f7c3: and    $0xfff8,%esi
  0x00007f94e110f7c9: cmp    $0x0,%esi
  0x00007f94e110f7cc: je     0x00007f94e11102b7  ; OopMap{[136]=Oop [144]=Oop [112]=Oop [184]=Oop off=2450}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@293 (line 371)

  0x00007f94e110f7d2: test   %eax,0x16edf928(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e110f7d8: mov    $0x7f94e025ccc0,%rdx  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f7e2: incl   0x478(%rdx)
  0x00007f94e110f7e8: mov    0x90(%rsp),%rax
  0x00007f94e110f7f0: mov    $0x0,%ebx
  0x00007f94e110f7f5: mov    %ebx,0x78(%rsp)
  0x00007f94e110f7f9: mov    %rax,0x80(%rsp)
  0x00007f94e110f801: mov    0x70(%rsp),%rsi
  0x00007f94e110f806: jmpq   0x00007f94e110f0b8  ;*goto
                                                ; - java.io.BufferedReader::readLine@293 (line 371)

  0x00007f94e110f80b: cmp    $0x0,%rax
  0x00007f94e110f80f: mov    $0x7f94e025ccc0,%rsi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f819: mov    $0x350,%rdi
  0x00007f94e110f823: jne    0x00007f94e110f833
  0x00007f94e110f829: mov    $0x360,%rdi
  0x00007f94e110f833: mov    (%rsi,%rdi,1),%rcx
  0x00007f94e110f837: lea    0x1(%rcx),%rcx
  0x00007f94e110f83b: mov    %rcx,(%rsi,%rdi,1)
  0x00007f94e110f83f: mov    %edx,0x7c(%rsp)
  0x00007f94e110f843: mov    0x70(%rsp),%rsi
  0x00007f94e110f848: jne    0x00007f94e110f8e9  ;*ifnonnull
                                                ; - java.io.BufferedReader::readLine@192 (line 355)

  0x00007f94e110f84e: mov    $0x7c00016d0,%rdx  ;   {metadata('java/lang/String')}
  0x00007f94e110f858: mov    %rsi,%r11
  0x00007f94e110f85b: mov    0x60(%r15),%rax
  0x00007f94e110f85f: lea    0x18(%rax),%rdi
  0x00007f94e110f863: cmp    0x70(%r15),%rdi
  0x00007f94e110f867: ja     0x00007f94e11102ce
  0x00007f94e110f86d: mov    %rdi,0x60(%r15)
  0x00007f94e110f871: mov    0xa8(%rdx),%rcx
  0x00007f94e110f878: mov    %rcx,(%rax)
  0x00007f94e110f87b: mov    %rdx,%rcx
  0x00007f94e110f87e: shr    $0x3,%rcx
  0x00007f94e110f882: mov    %ecx,0x8(%rax)
  0x00007f94e110f885: xor    %rcx,%rcx
  0x00007f94e110f888: mov    %ecx,0xc(%rax)
  0x00007f94e110f88b: xor    %rcx,%rcx
  0x00007f94e110f88e: mov    %rcx,0x10(%rax)    ;*new  ; - java.io.BufferedReader::readLine@195 (line 356)

  0x00007f94e110f892: mov    0x2c(%r11),%edx
  0x00007f94e110f896: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@200 (line 356)

  0x00007f94e110f89a: mov    %rax,%rcx
  0x00007f94e110f89d: mov    $0x7f94e025ccc0,%rsi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f8a7: addq   $0x1,0x370(%rsi)
  0x00007f94e110f8af: sub    %r8d,%r9d
  0x00007f94e110f8b2: mov    %r8,%rcx
  0x00007f94e110f8b5: mov    %r9,%r8
  0x00007f94e110f8b8: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.io.BufferedReader::readLine@208 (line 356)

  0x00007f94e110f8bb: mov    %rax,0x98(%rsp)
  0x00007f94e110f8c3: nop    
  0x00007f94e110f8c4: nop    
  0x00007f94e110f8c5: nop    
  0x00007f94e110f8c6: nop    
  0x00007f94e110f8c7: callq  0x00007f94e1046020  ; OopMap{[136]=Oop [152]=Oop [112]=Oop [184]=Oop off=2700}
                                                ;*invokespecial <init>
                                                ; - java.io.BufferedReader::readLine@208 (line 356)
                                                ;   {optimized virtual_call}
  0x00007f94e110f8cc: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f8d6: incl   0x380(%rax)
  0x00007f94e110f8dc: mov    0x98(%rsp),%rsi
  0x00007f94e110f8e4: jmpq   0x00007f94e110fba7  ;*goto
                                                ; - java.io.BufferedReader::readLine@213 (line 356)

  0x00007f94e110f8e9: mov    0x2c(%rsi),%edx
  0x00007f94e110f8ec: shl    $0x3,%rdx          ;*getfield cb
                                                ; - java.io.BufferedReader::readLine@218 (line 358)

  0x00007f94e110f8f0: cmp    (%rax),%rax        ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ; implicit exception: dispatches to 0x00007f94e11102db
  0x00007f94e110f8f3: mov    %rax,%rcx
  0x00007f94e110f8f6: mov    $0x7f94e025ccc0,%rdi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110f900: mov    0x8(%rcx),%ecx
  0x00007f94e110f903: shl    $0x3,%rcx
  0x00007f94e110f907: cmp    0x3a0(%rdi),%rcx
  0x00007f94e110f90e: jne    0x00007f94e110f91d
  0x00007f94e110f910: addq   $0x1,0x3a8(%rdi)
  0x00007f94e110f918: jmpq   0x00007f94e110f983
  0x00007f94e110f91d: cmp    0x3b0(%rdi),%rcx
  0x00007f94e110f924: jne    0x00007f94e110f933
  0x00007f94e110f926: addq   $0x1,0x3b8(%rdi)
  0x00007f94e110f92e: jmpq   0x00007f94e110f983
  0x00007f94e110f933: cmpq   $0x0,0x3a0(%rdi)
  0x00007f94e110f93e: jne    0x00007f94e110f957
  0x00007f94e110f940: mov    %rcx,0x3a0(%rdi)
  0x00007f94e110f947: movq   $0x1,0x3a8(%rdi)
  0x00007f94e110f952: jmpq   0x00007f94e110f983
  0x00007f94e110f957: cmpq   $0x0,0x3b0(%rdi)
  0x00007f94e110f962: jne    0x00007f94e110f97b
  0x00007f94e110f964: mov    %rcx,0x3b0(%rdi)
  0x00007f94e110f96b: movq   $0x1,0x3b8(%rdi)
  0x00007f94e110f976: jmpq   0x00007f94e110f983
  0x00007f94e110f97b: addq   $0x1,0x398(%rdi)
  0x00007f94e110f983: sub    %r8d,%r9d
  0x00007f94e110f986: lea    0xc0(%rsp),%rcx
  0x00007f94e110f98e: mov    %rax,%rdi
  0x00007f94e110f991: mov    %rdi,0x8(%rcx)
  0x00007f94e110f995: mov    (%rdi),%rax
  0x00007f94e110f998: mov    %rax,%rbx
  0x00007f94e110f99b: and    $0x7,%rbx
  0x00007f94e110f99f: cmp    $0x5,%rbx
  0x00007f94e110f9a3: jne    0x00007f94e110fa2a
  0x00007f94e110f9a9: mov    0x8(%rdi),%ebx
  0x00007f94e110f9ac: shl    $0x3,%rbx
  0x00007f94e110f9b0: mov    0xa8(%rbx),%rbx
  0x00007f94e110f9b7: or     %r15,%rbx
  0x00007f94e110f9ba: xor    %rax,%rbx
  0x00007f94e110f9bd: and    $0xffffffffffffff87,%rbx
  0x00007f94e110f9c1: je     0x00007f94e110fa52
  0x00007f94e110f9c7: test   $0x7,%rbx
  0x00007f94e110f9ce: jne    0x00007f94e110fa17
  0x00007f94e110f9d0: test   $0x300,%rbx
  0x00007f94e110f9d7: jne    0x00007f94e110f9f6
  0x00007f94e110f9d9: and    $0x37f,%rax
  0x00007f94e110f9e0: mov    %rax,%rbx
  0x00007f94e110f9e3: or     %r15,%rbx
  0x00007f94e110f9e6: lock cmpxchg %rbx,(%rdi)
  0x00007f94e110f9eb: jne    0x00007f94e11102e0
  0x00007f94e110f9f1: jmpq   0x00007f94e110fa52
  0x00007f94e110f9f6: mov    0x8(%rdi),%ebx
  0x00007f94e110f9f9: shl    $0x3,%rbx
  0x00007f94e110f9fd: mov    0xa8(%rbx),%rbx
  0x00007f94e110fa04: or     %r15,%rbx
  0x00007f94e110fa07: lock cmpxchg %rbx,(%rdi)
  0x00007f94e110fa0c: jne    0x00007f94e11102e0
  0x00007f94e110fa12: jmpq   0x00007f94e110fa52
  0x00007f94e110fa17: mov    0x8(%rdi),%ebx
  0x00007f94e110fa1a: shl    $0x3,%rbx
  0x00007f94e110fa1e: mov    0xa8(%rbx),%rbx
  0x00007f94e110fa25: lock cmpxchg %rbx,(%rdi)
  0x00007f94e110fa2a: mov    (%rdi),%rax
  0x00007f94e110fa2d: or     $0x1,%rax
  0x00007f94e110fa31: mov    %rax,(%rcx)
  0x00007f94e110fa34: lock cmpxchg %rcx,(%rdi)
  0x00007f94e110fa39: je     0x00007f94e110fa52
  0x00007f94e110fa3f: sub    %rsp,%rax
  0x00007f94e110fa42: and    $0xfffffffffffff007,%rax
  0x00007f94e110fa49: mov    %rax,(%rcx)
  0x00007f94e110fa4c: jne    0x00007f94e11102e0  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007f94e110fa52: mov    $0x7f94e025f5f8,%rcx  ;   {metadata(method data for {method} {0x00007f94e009b798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007f94e110fa5c: mov    0xdc(%rcx),%ebx
  0x00007f94e110fa62: add    $0x8,%ebx
  0x00007f94e110fa65: mov    %ebx,0xdc(%rcx)
  0x00007f94e110fa6b: mov    $0x7f94e009b798,%rcx  ;   {metadata({method} {0x00007f94e009b798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007f94e110fa75: and    $0x7ffff8,%ebx
  0x00007f94e110fa7b: cmp    $0x0,%ebx
  0x00007f94e110fa7e: je     0x00007f94e11102f3
  0x00007f94e110fa84: movl   $0x0,0x14(%rdi)
  0x00007f94e110fa8b: mov    %rdi,%rax
  0x00007f94e110fa8e: shr    $0x9,%rax
  0x00007f94e110fa92: mov    $0x7f94f0e87000,%rcx
  0x00007f94e110fa9c: movb   $0x0,(%rax,%rcx,1)  ;*putfield toStringCache
                                                ; - java.lang.StringBuffer::append@2 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007f94e110faa0: mov    %rdi,%rax
  0x00007f94e110faa3: mov    $0x7f94e025f5f8,%rcx  ;   {metadata(method data for {method} {0x00007f94e009b798} 'append' '([CII)Ljava/lang/StringBuffer;' in 'java/lang/StringBuffer')}
  0x00007f94e110faad: addq   $0x1,0x108(%rcx)
  0x00007f94e110fab5: mov    %r8,%rcx
  0x00007f94e110fab8: mov    %r9,%r8
  0x00007f94e110fabb: mov    %rdi,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007f94e110fabe: mov    %rdi,0x80(%rsp)
  0x00007f94e110fac6: nop    
  0x00007f94e110fac7: callq  0x00007f94e1046020  ; OopMap{[136]=Oop [112]=Oop [128]=Oop [184]=Oop [200]=Oop off=3212}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuffer::append@9 (line 369)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {optimized virtual_call}
  0x00007f94e110facc: lea    0xc0(%rsp),%rax
  0x00007f94e110fad4: mov    0x8(%rax),%rdi
  0x00007f94e110fad8: mov    (%rdi),%rsi
  0x00007f94e110fadb: and    $0x7,%rsi
  0x00007f94e110fadf: cmp    $0x5,%rsi
  0x00007f94e110fae3: je     0x00007f94e110fb00
  0x00007f94e110fae9: mov    (%rax),%rsi
  0x00007f94e110faec: test   %rsi,%rsi
  0x00007f94e110faef: je     0x00007f94e110fb00
  0x00007f94e110faf5: lock cmpxchg %rsi,(%rdi)
  0x00007f94e110fafa: jne    0x00007f94e111030a  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007f94e110fb00: mov    0x80(%rsp),%rax
  0x00007f94e110fb08: mov    $0x7f94e025ccc0,%rsi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110fb12: mov    0x8(%rax),%eax
  0x00007f94e110fb15: shl    $0x3,%rax
  0x00007f94e110fb19: cmp    0x3d0(%rsi),%rax
  0x00007f94e110fb20: jne    0x00007f94e110fb2f
  0x00007f94e110fb22: addq   $0x1,0x3d8(%rsi)
  0x00007f94e110fb2a: jmpq   0x00007f94e110fb95
  0x00007f94e110fb2f: cmp    0x3e0(%rsi),%rax
  0x00007f94e110fb36: jne    0x00007f94e110fb45
  0x00007f94e110fb38: addq   $0x1,0x3e8(%rsi)
  0x00007f94e110fb40: jmpq   0x00007f94e110fb95
  0x00007f94e110fb45: cmpq   $0x0,0x3d0(%rsi)
  0x00007f94e110fb50: jne    0x00007f94e110fb69
  0x00007f94e110fb52: mov    %rax,0x3d0(%rsi)
  0x00007f94e110fb59: movq   $0x1,0x3d8(%rsi)
  0x00007f94e110fb64: jmpq   0x00007f94e110fb95
  0x00007f94e110fb69: cmpq   $0x0,0x3e0(%rsi)
  0x00007f94e110fb74: jne    0x00007f94e110fb8d
  0x00007f94e110fb76: mov    %rax,0x3e0(%rsi)
  0x00007f94e110fb7d: movq   $0x1,0x3e8(%rsi)
  0x00007f94e110fb88: jmpq   0x00007f94e110fb95
  0x00007f94e110fb8d: addq   $0x1,0x3c8(%rsi)
  0x00007f94e110fb95: mov    0x80(%rsp),%rsi    ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@231 (line 359)

  0x00007f94e110fb9d: nop    
  0x00007f94e110fb9e: nop    
  0x00007f94e110fb9f: callq  0x00007f94e1046020  ; OopMap{[136]=Oop [112]=Oop [128]=Oop [184]=Oop off=3428}
                                                ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@231 (line 359)
                                                ;   {optimized virtual_call}
  0x00007f94e110fba4: mov    %rax,%rsi          ;*aload_0
                                                ; - java.io.BufferedReader::readLine@236 (line 361)

  0x00007f94e110fba7: mov    0x7c(%rsp),%ebx
  0x00007f94e110fbab: mov    0x70(%rsp),%rdi
  0x00007f94e110fbb0: mov    0x18(%rdi),%eax    ;*getfield nextChar
                                                ; - java.io.BufferedReader::readLine@238 (line 361)

  0x00007f94e110fbb3: inc    %eax
  0x00007f94e110fbb5: mov    %eax,0x18(%rdi)    ;*putfield nextChar
                                                ; - java.io.BufferedReader::readLine@243 (line 361)

  0x00007f94e110fbb8: cmp    $0xd,%ebx
  0x00007f94e110fbbb: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110fbc5: mov    $0x3f8,%rbx
  0x00007f94e110fbcf: jne    0x00007f94e110fbdf
  0x00007f94e110fbd5: mov    $0x408,%rbx
  0x00007f94e110fbdf: mov    (%rax,%rbx,1),%rdx
  0x00007f94e110fbe3: lea    0x1(%rdx),%rdx
  0x00007f94e110fbe7: mov    %rdx,(%rax,%rbx,1)
  0x00007f94e110fbeb: jne    0x00007f94e110ff35  ;*if_icmpne
                                                ; - java.io.BufferedReader::readLine@250 (line 362)

  0x00007f94e110fbf1: movb   $0x1,0x24(%rdi)    ;*putfield skipLF
                                                ; - java.io.BufferedReader::readLine@255 (line 363)

  0x00007f94e110fbf5: jmpq   0x00007f94e110ff35  ;*aload
                                                ; - java.io.BufferedReader::readLine@258 (line 365)

  0x00007f94e110fbfa: mov    0x80(%rsp),%rsi
  0x00007f94e110fc02: cmp    $0x0,%rsi
  0x00007f94e110fc06: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110fc10: mov    $0x1c0,%rdi
  0x00007f94e110fc1a: je     0x00007f94e110fc2a
  0x00007f94e110fc20: mov    $0x1d0,%rdi
  0x00007f94e110fc2a: mov    (%rax,%rdi,1),%rbx
  0x00007f94e110fc2e: lea    0x1(%rbx),%rbx
  0x00007f94e110fc32: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e110fc36: je     0x00007f94e110fe08  ;*ifnull
                                                ; - java.io.BufferedReader::readLine@59 (line 326)

  0x00007f94e110fc3c: cmp    (%rsi),%rax        ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)
                                                ; implicit exception: dispatches to 0x00007f94e1110320
  0x00007f94e110fc3f: mov    %rsi,%rax
  0x00007f94e110fc42: mov    $0x7f94e025ccc0,%rdi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110fc4c: mov    0x8(%rax),%eax
  0x00007f94e110fc4f: shl    $0x3,%rax
  0x00007f94e110fc53: cmp    0x1e8(%rdi),%rax
  0x00007f94e110fc5a: jne    0x00007f94e110fc69
  0x00007f94e110fc5c: addq   $0x1,0x1f0(%rdi)
  0x00007f94e110fc64: jmpq   0x00007f94e110fccf
  0x00007f94e110fc69: cmp    0x1f8(%rdi),%rax
  0x00007f94e110fc70: jne    0x00007f94e110fc7f
  0x00007f94e110fc72: addq   $0x1,0x200(%rdi)
  0x00007f94e110fc7a: jmpq   0x00007f94e110fccf
  0x00007f94e110fc7f: cmpq   $0x0,0x1e8(%rdi)
  0x00007f94e110fc8a: jne    0x00007f94e110fca3
  0x00007f94e110fc8c: mov    %rax,0x1e8(%rdi)
  0x00007f94e110fc93: movq   $0x1,0x1f0(%rdi)
  0x00007f94e110fc9e: jmpq   0x00007f94e110fccf
  0x00007f94e110fca3: cmpq   $0x0,0x1f8(%rdi)
  0x00007f94e110fcae: jne    0x00007f94e110fcc7
  0x00007f94e110fcb0: mov    %rax,0x1f8(%rdi)
  0x00007f94e110fcb7: movq   $0x1,0x200(%rdi)
  0x00007f94e110fcc2: jmpq   0x00007f94e110fccf
  0x00007f94e110fcc7: addq   $0x1,0x1e0(%rdi)
  0x00007f94e110fccf: lea    0xc0(%rsp),%rdi
  0x00007f94e110fcd7: mov    %rsi,0x8(%rdi)
  0x00007f94e110fcdb: mov    (%rsi),%rax
  0x00007f94e110fcde: mov    %rax,%rbx
  0x00007f94e110fce1: and    $0x7,%rbx
  0x00007f94e110fce5: cmp    $0x5,%rbx
  0x00007f94e110fce9: jne    0x00007f94e110fd70
  0x00007f94e110fcef: mov    0x8(%rsi),%ebx
  0x00007f94e110fcf2: shl    $0x3,%rbx
  0x00007f94e110fcf6: mov    0xa8(%rbx),%rbx
  0x00007f94e110fcfd: or     %r15,%rbx
  0x00007f94e110fd00: xor    %rax,%rbx
  0x00007f94e110fd03: and    $0xffffffffffffff87,%rbx
  0x00007f94e110fd07: je     0x00007f94e110fd98
  0x00007f94e110fd0d: test   $0x7,%rbx
  0x00007f94e110fd14: jne    0x00007f94e110fd5d
  0x00007f94e110fd16: test   $0x300,%rbx
  0x00007f94e110fd1d: jne    0x00007f94e110fd3c
  0x00007f94e110fd1f: and    $0x37f,%rax
  0x00007f94e110fd26: mov    %rax,%rbx
  0x00007f94e110fd29: or     %r15,%rbx
  0x00007f94e110fd2c: lock cmpxchg %rbx,(%rsi)
  0x00007f94e110fd31: jne    0x00007f94e1110325
  0x00007f94e110fd37: jmpq   0x00007f94e110fd98
  0x00007f94e110fd3c: mov    0x8(%rsi),%ebx
  0x00007f94e110fd3f: shl    $0x3,%rbx
  0x00007f94e110fd43: mov    0xa8(%rbx),%rbx
  0x00007f94e110fd4a: or     %r15,%rbx
  0x00007f94e110fd4d: lock cmpxchg %rbx,(%rsi)
  0x00007f94e110fd52: jne    0x00007f94e1110325
  0x00007f94e110fd58: jmpq   0x00007f94e110fd98
  0x00007f94e110fd5d: mov    0x8(%rsi),%ebx
  0x00007f94e110fd60: shl    $0x3,%rbx
  0x00007f94e110fd64: mov    0xa8(%rbx),%rbx
  0x00007f94e110fd6b: lock cmpxchg %rbx,(%rsi)
  0x00007f94e110fd70: mov    (%rsi),%rax
  0x00007f94e110fd73: or     $0x1,%rax
  0x00007f94e110fd77: mov    %rax,(%rdi)
  0x00007f94e110fd7a: lock cmpxchg %rdi,(%rsi)
  0x00007f94e110fd7f: je     0x00007f94e110fd98
  0x00007f94e110fd85: sub    %rsp,%rax
  0x00007f94e110fd88: and    $0xfffffffffffff007,%rax
  0x00007f94e110fd8f: mov    %rax,(%rdi)
  0x00007f94e110fd92: jne    0x00007f94e1110325  ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007f94e110fd98: mov    0xc(%rsi),%edi     ;*getfield count
                                                ; - java.lang.StringBuffer::length@1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007f94e110fd9b: lea    0xc0(%rsp),%rax
  0x00007f94e110fda3: mov    0x8(%rax),%rdx
  0x00007f94e110fda7: mov    (%rdx),%rbx
  0x00007f94e110fdaa: and    $0x7,%rbx
  0x00007f94e110fdae: cmp    $0x5,%rbx
  0x00007f94e110fdb2: je     0x00007f94e110fdcf
  0x00007f94e110fdb8: mov    (%rax),%rbx
  0x00007f94e110fdbb: test   %rbx,%rbx
  0x00007f94e110fdbe: je     0x00007f94e110fdcf
  0x00007f94e110fdc4: lock cmpxchg %rbx,(%rdx)
  0x00007f94e110fdc9: jne    0x00007f94e1110338  ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007f94e110fdcf: cmp    $0x0,%edi
  0x00007f94e110fdd2: mov    $0x7f94e025ccc0,%rax  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110fddc: mov    $0x210,%rdi
  0x00007f94e110fde6: jle    0x00007f94e110fdf6
  0x00007f94e110fdec: mov    $0x220,%rdi
  0x00007f94e110fdf6: mov    (%rax,%rdi,1),%rbx
  0x00007f94e110fdfa: lea    0x1(%rbx),%rbx
  0x00007f94e110fdfe: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e110fe02: jg     0x00007f94e110fe55  ;*ifle
                                                ; - java.io.BufferedReader::readLine@66 (line 326)

  0x00007f94e110fe08: lea    0xb0(%rsp),%rax
  0x00007f94e110fe10: mov    0x8(%rax),%rdi
  0x00007f94e110fe14: mov    (%rdi),%rsi
  0x00007f94e110fe17: and    $0x7,%rsi
  0x00007f94e110fe1b: cmp    $0x5,%rsi
  0x00007f94e110fe1f: je     0x00007f94e110fe3c
  0x00007f94e110fe25: mov    (%rax),%rsi
  0x00007f94e110fe28: test   %rsi,%rsi
  0x00007f94e110fe2b: je     0x00007f94e110fe3c
  0x00007f94e110fe31: lock cmpxchg %rsi,(%rdi)
  0x00007f94e110fe36: jne    0x00007f94e111034e  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@80 (line 329)

  0x00007f94e110fe3c: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007f94e110fe46: add    $0xe0,%rsp
  0x00007f94e110fe4d: pop    %rbp
  0x00007f94e110fe4e: test   %eax,0x16edf2ac(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110fe54: retq                      ;*areturn
                                                ; - java.io.BufferedReader::readLine@81 (line 329)

  0x00007f94e110fe55: mov    %rsi,%rax
  0x00007f94e110fe58: mov    $0x7f94e025ccc0,%rdi  ;   {metadata(method data for {method} {0x00007f94e01afa88} 'readLine' '(Z)Ljava/lang/String;' in 'java/io/BufferedReader')}
  0x00007f94e110fe62: mov    0x8(%rax),%eax
  0x00007f94e110fe65: shl    $0x3,%rax
  0x00007f94e110fe69: cmp    0x238(%rdi),%rax
  0x00007f94e110fe70: jne    0x00007f94e110fe7f
  0x00007f94e110fe72: addq   $0x1,0x240(%rdi)
  0x00007f94e110fe7a: jmpq   0x00007f94e110fee5
  0x00007f94e110fe7f: cmp    0x248(%rdi),%rax
  0x00007f94e110fe86: jne    0x00007f94e110fe95
  0x00007f94e110fe88: addq   $0x1,0x250(%rdi)
  0x00007f94e110fe90: jmpq   0x00007f94e110fee5
  0x00007f94e110fe95: cmpq   $0x0,0x238(%rdi)
  0x00007f94e110fea0: jne    0x00007f94e110feb9
  0x00007f94e110fea2: mov    %rax,0x238(%rdi)
  0x00007f94e110fea9: movq   $0x1,0x240(%rdi)
  0x00007f94e110feb4: jmpq   0x00007f94e110fee5
  0x00007f94e110feb9: cmpq   $0x0,0x248(%rdi)
  0x00007f94e110fec4: jne    0x00007f94e110fedd
  0x00007f94e110fec6: mov    %rax,0x248(%rdi)
  0x00007f94e110fecd: movq   $0x1,0x250(%rdi)
  0x00007f94e110fed8: jmpq   0x00007f94e110fee5
  0x00007f94e110fedd: addq   $0x1,0x230(%rdi)
  0x00007f94e110fee5: nop    
  0x00007f94e110fee6: nop    
  0x00007f94e110fee7: callq  0x00007f94e1046020  ; OopMap{[136]=Oop [184]=Oop off=4268}
                                                ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@70 (line 327)
                                                ;   {optimized virtual_call}
  0x00007f94e110feec: mov    %rax,%rdx          ;*invokevirtual toString
                                                ; - java.io.BufferedReader::readLine@70 (line 327)

  0x00007f94e110feef: lea    0xb0(%rsp),%rax
  0x00007f94e110fef7: mov    0x8(%rax),%rdi
  0x00007f94e110fefb: mov    (%rdi),%rsi
  0x00007f94e110fefe: and    $0x7,%rsi
  0x00007f94e110ff02: cmp    $0x5,%rsi
  0x00007f94e110ff06: je     0x00007f94e110ff23
  0x00007f94e110ff0c: mov    (%rax),%rsi
  0x00007f94e110ff0f: test   %rsi,%rsi
  0x00007f94e110ff12: je     0x00007f94e110ff23
  0x00007f94e110ff18: lock cmpxchg %rsi,(%rdi)
  0x00007f94e110ff1d: jne    0x00007f94e1110364  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@75 (line 327)

  0x00007f94e110ff23: mov    %rdx,%rax
  0x00007f94e110ff26: add    $0xe0,%rsp
  0x00007f94e110ff2d: pop    %rbp
  0x00007f94e110ff2e: test   %eax,0x16edf1cc(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110ff34: retq                      ;*areturn
                                                ; - java.io.BufferedReader::readLine@76 (line 327)

  0x00007f94e110ff35: lea    0xb0(%rsp),%rax
  0x00007f94e110ff3d: mov    0x8(%rax),%rdi
  0x00007f94e110ff41: mov    (%rdi),%rdx
  0x00007f94e110ff44: and    $0x7,%rdx
  0x00007f94e110ff48: cmp    $0x5,%rdx
  0x00007f94e110ff4c: je     0x00007f94e110ff69
  0x00007f94e110ff52: mov    (%rax),%rdx
  0x00007f94e110ff55: test   %rdx,%rdx
  0x00007f94e110ff58: je     0x00007f94e110ff69
  0x00007f94e110ff5e: lock cmpxchg %rdx,(%rdi)
  0x00007f94e110ff63: jne    0x00007f94e111037a  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@262 (line 365)

  0x00007f94e110ff69: mov    %rsi,%rax
  0x00007f94e110ff6c: add    $0xe0,%rsp
  0x00007f94e110ff73: pop    %rbp
  0x00007f94e110ff74: test   %eax,0x16edf186(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e110ff7a: retq                      ;*areturn
                                                ; - java.io.BufferedReader::readLine@263 (line 365)

  0x00007f94e110ff7b: mov    %edx,0xa8(%rsp)
  0x00007f94e110ff82: nopw   0x0(%rax,%rax,1)
  0x00007f94e110ff88: jmpq   0x00007f94e111039f  ;   {no_reloc}
  0x00007f94e110ff8d: add    %al,(%rax)
  0x00007f94e110ff8f: add    %al,(%rax)
  0x00007f94e110ff91: add    %ch,%cl
  0x00007f94e110ff93: adc    (%rax,%rax,1),%al
  0x00007f94e110ff96: add    %cl,-0x75(%rax)    ;*new  ; - java.io.BufferedReader::ensureOpen@7 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007f94e110ff99: rorb   -0x45(%rax)        ;   {metadata(method data for {method} {0x00007f94e01af360} 'ensureOpen' '()V' in 'java/io/BufferedReader')}
  0x00007f94e110ff9c: lock loopne 0x00007f94e110ffc4
  0x00007f94e110ff9f: loopne 0x00007f94e110ff35
  0x00007f94e110ffa1: jg     0x00007f94e110ffa3
  0x00007f94e110ffa3: add    %cl,-0x7d(%rax)
  0x00007f94e110ffa6: subl   $0x1,(%rax)
  0x00007f94e110ffa9: add    %al,(%rax)
  0x00007f94e110ffab: add    %ecx,-0x46(%rax)   ;   {oop("Stream closed")}
  0x00007f94e110ffae: jo     0x00007f94e110ffe3
  0x00007f94e110ffb0: out    %eax,(%dx)
  0x00007f94e110ffb1: addl   $0x48000000,(%rdi)
  0x00007f94e110ffb7: mov    %eax,%esi          ;*invokespecial <init>
                                                ; - java.io.BufferedReader::ensureOpen@13 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007f94e110ffb9: mov    %rax,0xa0(%rsp)
  0x00007f94e110ffc1: nop    
  0x00007f94e110ffc2: nop    
  0x00007f94e110ffc3: nop    
  0x00007f94e110ffc4: nop    
  0x00007f94e110ffc5: nop    
  0x00007f94e110ffc6: nop    
  0x00007f94e110ffc7: callq  0x00007f94e1046020  ; OopMap{[136]=Oop [112]=Oop [160]=Oop [184]=Oop off=4492}
                                                ;*invokespecial <init>
                                                ; - java.io.BufferedReader::ensureOpen@13 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {optimized virtual_call}
  0x00007f94e110ffcc: mov    0xa0(%rsp),%rax    ; OopMap{[136]=Oop [112]=Oop [184]=Oop rax=Oop off=4500}
                                                ;*athrow
                                                ; - java.io.BufferedReader::ensureOpen@16 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007f94e110ffd4: mov    $0x7f94e110ffd4,%rdx  ;   {section_word}
  0x00007f94e110ffde: callq  0x00007f94e106ba20  ;   {runtime_call}
  0x00007f94e110ffe3: nop                       ;*athrow
                                                ; - java.io.BufferedReader::ensureOpen@16 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)

  0x00007f94e110ffe4: mov    0x2a8(%r15),%rax
  0x00007f94e110ffeb: xor    %r10,%r10
  0x00007f94e110ffee: mov    %r10,0x2a8(%r15)
  0x00007f94e110fff5: xor    %r10,%r10
  0x00007f94e110fff8: mov    %r10,0x2b0(%r15)
  0x00007f94e110ffff: mov    %rax,%rdx
  0x00007f94e1110002: lea    0xc0(%rsp),%rax
  0x00007f94e111000a: mov    0x8(%rax),%rbx
  0x00007f94e111000e: mov    (%rbx),%rdi
  0x00007f94e1110011: and    $0x7,%rdi
  0x00007f94e1110015: cmp    $0x5,%rdi
  0x00007f94e1110019: je     0x00007f94e1110036
  0x00007f94e111001f: mov    (%rax),%rdi
  0x00007f94e1110022: test   %rdi,%rdi
  0x00007f94e1110025: je     0x00007f94e1110036
  0x00007f94e111002b: lock cmpxchg %rdi,(%rbx)
  0x00007f94e1110030: jne    0x00007f94e11103b6  ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007f94e1110036: mov    %rdx,%rax          ; OopMap{rsi=Oop [136]=Oop [184]=Oop rax=Oop off=4601}
                                                ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007f94e1110039: mov    $0x7f94e1110039,%rdx  ;   {section_word}
  0x00007f94e1110043: callq  0x00007f94e106ba20  ;   {runtime_call}
  0x00007f94e1110048: nop                       ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)

  0x00007f94e1110049: mov    0x2a8(%r15),%rax
  0x00007f94e1110050: xor    %r10,%r10
  0x00007f94e1110053: mov    %r10,0x2a8(%r15)
  0x00007f94e111005a: xor    %r10,%r10
  0x00007f94e111005d: mov    %r10,0x2b0(%r15)
  0x00007f94e1110064: mov    %rax,%rdx
  0x00007f94e1110067: lea    0xc0(%rsp),%rax
  0x00007f94e111006f: mov    0x8(%rax),%rcx
  0x00007f94e1110073: mov    (%rcx),%rdi
  0x00007f94e1110076: and    $0x7,%rdi
  0x00007f94e111007a: cmp    $0x5,%rdi
  0x00007f94e111007e: je     0x00007f94e111009b
  0x00007f94e1110084: mov    (%rax),%rdi
  0x00007f94e1110087: test   %rdi,%rdi
  0x00007f94e111008a: je     0x00007f94e111009b
  0x00007f94e1110090: lock cmpxchg %rdi,(%rcx)
  0x00007f94e1110095: jne    0x00007f94e11103cc  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007f94e111009b: mov    %rdx,%rax          ; OopMap{[112]=Oop [136]=Oop rsi=Oop [184]=Oop rax=Oop off=4702}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007f94e111009e: mov    $0x7f94e111009e,%rdx  ;   {section_word}
  0x00007f94e11100a8: callq  0x00007f94e106ba20  ;   {runtime_call}
  0x00007f94e11100ad: nop                       ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)

  0x00007f94e11100ae: mov    0x88(%rsp),%rbx
  0x00007f94e11100b6: mov    0x70(%rsp),%rsi
  0x00007f94e11100bb: mov    0x2a8(%r15),%rax
  0x00007f94e11100c2: xor    %r10,%r10
  0x00007f94e11100c5: mov    %r10,0x2a8(%r15)
  0x00007f94e11100cc: xor    %r10,%r10
  0x00007f94e11100cf: mov    %r10,0x2b0(%r15)
  0x00007f94e11100d6: mov    %rax,%rdx
  0x00007f94e11100d9: lea    0xc0(%rsp),%rax
  0x00007f94e11100e1: mov    0x8(%rax),%r8
  0x00007f94e11100e5: mov    (%r8),%rcx
  0x00007f94e11100e8: and    $0x7,%rcx
  0x00007f94e11100ec: cmp    $0x5,%rcx
  0x00007f94e11100f0: je     0x00007f94e111010d
  0x00007f94e11100f6: mov    (%rax),%rcx
  0x00007f94e11100f9: test   %rcx,%rcx
  0x00007f94e11100fc: je     0x00007f94e111010d
  0x00007f94e1110102: lock cmpxchg %rcx,(%r8)
  0x00007f94e1110107: jne    0x00007f94e11103e2  ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007f94e111010d: mov    %rdx,%rax          ; OopMap{rdi=Oop rsi=Oop [112]=Oop rbx=Oop [136]=Oop [184]=Oop rax=Oop off=4816}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007f94e1110110: mov    $0x7f94e1110110,%rdx  ;   {section_word}
  0x00007f94e111011a: callq  0x00007f94e106ba20  ;   {runtime_call}
  0x00007f94e111011f: nop                       ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)

  0x00007f94e1110120: mov    0x2a8(%r15),%rax
  0x00007f94e1110127: xor    %r10,%r10
  0x00007f94e111012a: mov    %r10,0x2a8(%r15)
  0x00007f94e1110131: xor    %r10,%r10
  0x00007f94e1110134: mov    %r10,0x2b0(%r15)
  0x00007f94e111013b: mov    %rax,%rsi
  0x00007f94e111013e: lea    0xb0(%rsp),%rax
  0x00007f94e1110146: mov    0x8(%rax),%rbx
  0x00007f94e111014a: mov    (%rbx),%rdi
  0x00007f94e111014d: and    $0x7,%rdi
  0x00007f94e1110151: cmp    $0x5,%rdi
  0x00007f94e1110155: je     0x00007f94e1110172
  0x00007f94e111015b: mov    (%rax),%rdi
  0x00007f94e111015e: test   %rdi,%rdi
  0x00007f94e1110161: je     0x00007f94e1110172
  0x00007f94e1110167: lock cmpxchg %rdi,(%rbx)
  0x00007f94e111016c: jne    0x00007f94e11103f8  ;*monitorexit
                                                ; - java.io.BufferedReader::readLine@300 (line 372)

  0x00007f94e1110172: mov    %rsi,%rax
  0x00007f94e1110175: jmpq   0x00007f94e1110457
  0x00007f94e111017a: mov    %rax,0x8(%rsp)
  0x00007f94e111017f: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1110187: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [112]=Oop off=4940}
                                                ;*synchronization entry
                                                ; - java.io.BufferedReader::readLine@-1 (line 313)
                                                ;   {runtime_call}
  0x00007f94e111018c: jmpq   0x00007f94e110eea6
  0x00007f94e1110191: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [112]=Oop rdi=Oop [136]=Oop off=4950}
                                                ;*monitorenter
                                                ; - java.io.BufferedReader::readLine@9 (line 316)
                                                ;   {runtime_call}
  0x00007f94e1110196: mov    %rdi,0x8(%rsp)
  0x00007f94e111019b: mov    %rbx,(%rsp)
  0x00007f94e111019f: callq  0x00007f94e10fbf60  ; OopMap{rsi=Oop [112]=Oop rdi=Oop [136]=Oop [184]=Oop off=4964}
                                                ;*monitorenter
                                                ; - java.io.BufferedReader::readLine@9 (line 316)
                                                ;   {runtime_call}
  0x00007f94e11101a4: jmpq   0x00007f94e110ef7e
  0x00007f94e11101a9: mov    %rbx,0x8(%rsp)
  0x00007f94e11101ae: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e11101b6: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [112]=Oop rdi=Oop [136]=Oop [184]=Oop off=4987}
                                                ;*synchronization entry
                                                ; - java.io.BufferedReader::ensureOpen@-1 (line 121)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {runtime_call}
  0x00007f94e11101bb: jmpq   0x00007f94e110efc5
  0x00007f94e11101c0: callq  0x00007f94e10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rax=Oop [184]=Oop off=4997}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)
                                                ;   {runtime_call}
  0x00007f94e11101c5: callq  0x00007f94e10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rax=Oop [184]=Oop off=5002}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)
                                                ;   {runtime_call}
  0x00007f94e11101ca: mov    %rdx,(%rsp)
  0x00007f94e11101ce: callq  0x00007f94e106bc40  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rax=Oop [184]=Oop off=5011}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@101 (line 336)
                                                ;   {runtime_call}
  0x00007f94e11101d3: callq  0x00007f94e10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rdx=Oop [184]=Oop off=5016}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)
                                                ;   {runtime_call}
  0x00007f94e11101d8: callq  0x00007f94e10f9680  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rdx=Oop [184]=Oop off=5021}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)
                                                ;   {runtime_call}
  0x00007f94e11101dd: mov    %r9,(%rsp)
  0x00007f94e11101e1: callq  0x00007f94e106bc40  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop rdx=Oop [184]=Oop off=5030}
                                                ;*caload
                                                ; - java.io.BufferedReader::readLine@146 (line 343)
                                                ;   {runtime_call}
  0x00007f94e11101e6: mov    %rax,0x8(%rsp)
  0x00007f94e11101eb: movq   $0xac,(%rsp)
  0x00007f94e11101f3: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop [128]=Oop rsi=Oop [112]=Oop [184]=Oop off=5048}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@172 (line 342)
                                                ;   {runtime_call}
  0x00007f94e11101f8: jmpq   0x00007f94e110f2c8
  0x00007f94e11101fd: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e1110207: mov    $0xa050f00,%eax
  0x00007f94e111020c: callq  0x00007f94e10fd5a0  ; OopMap{[136]=Oop rsi=Oop [112]=Oop [184]=Oop off=5073}
                                                ;*new  ; - java.io.BufferedReader::readLine@268 (line 369)
                                                ;   {runtime_call}
  0x00007f94e1110211: jmpq   0x00007f94e110f3c0
  0x00007f94e1110216: mov    %rdx,%rdx
  0x00007f94e1110219: callq  0x00007f94e10f9de0  ; OopMap{[136]=Oop r11=Oop [112]=Oop [184]=Oop off=5086}
                                                ;*new  ; - java.io.BufferedReader::readLine@268 (line 369)
                                                ;   {runtime_call}
  0x00007f94e111021e: jmpq   0x00007f94e110f404
  0x00007f94e1110223: mov    %rdx,0x8(%rsp)
  0x00007f94e1110228: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1110230: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5109}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::<init>@-1 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007f94e1110235: jmpq   0x00007f94e110f45b
  0x00007f94e111023a: mov    %rdx,0x8(%rsp)
  0x00007f94e111023f: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1110247: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5132}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::<init>@-1 (line 67)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007f94e111024c: jmpq   0x00007f94e110f4a2
  0x00007f94e1110251: mov    %rdx,0x8(%rsp)
  0x00007f94e1110256: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e111025e: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5155}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - java.lang.AbstractStringBuilder::<init>@1 (line 67)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007f94e1110263: jmpq   0x00007f94e110f4e9
  0x00007f94e1110268: callq  0x00007f94e10fa6a0  ; OopMap{[136]=Oop r11=Oop [112]=Oop r13=Oop [184]=Oop off=5165}
                                                ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuffer::<init>@2 (line 128)
                                                ; - java.io.BufferedReader::readLine@275 (line 369)
                                                ;   {runtime_call}
  0x00007f94e111026d: jmpq   0x00007f94e110f560
  0x00007f94e1110272: callq  0x00007f94e10f9680  ; OopMap{[136]=Oop r11=Oop [112]=Oop rax=Oop rdx=Oop [184]=Oop off=5175}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {runtime_call}
  0x00007f94e1110277: mov    %rdi,0x8(%rsp)
  0x00007f94e111027c: mov    %rcx,(%rsp)
  0x00007f94e1110280: callq  0x00007f94e10fbf60  ; OopMap{[136]=Oop r11=Oop [112]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5189}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {runtime_call}
  0x00007f94e1110285: jmpq   0x00007f94e110f6ed
  0x00007f94e111028a: mov    %rcx,0x8(%rsp)
  0x00007f94e111028f: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1110297: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop r11=Oop [112]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5212}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@289 (line 370)
                                                ;   {runtime_call}
  0x00007f94e111029c: jmpq   0x00007f94e110f71f
  0x00007f94e11102a1: lea    0xc0(%rsp),%rax
  0x00007f94e11102a9: mov    %rax,(%rsp)
  0x00007f94e11102ad: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e11102b2: jmpq   0x00007f94e110f7a0
  0x00007f94e11102b7: mov    %rdx,0x8(%rsp)
  0x00007f94e11102bc: movq   $0x125,(%rsp)
  0x00007f94e11102c4: callq  0x00007f94e10fc760  ; OopMap{[136]=Oop [144]=Oop [112]=Oop [184]=Oop off=5257}
                                                ;*goto
                                                ; - java.io.BufferedReader::readLine@293 (line 371)
                                                ;   {runtime_call}
  0x00007f94e11102c9: jmpq   0x00007f94e110f7d2
  0x00007f94e11102ce: mov    %rdx,%rdx
  0x00007f94e11102d1: callq  0x00007f94e10f9de0  ; OopMap{[136]=Oop r11=Oop [112]=Oop [184]=Oop off=5270}
                                                ;*new  ; - java.io.BufferedReader::readLine@195 (line 356)
                                                ;   {runtime_call}
  0x00007f94e11102d6: jmpq   0x00007f94e110f892
  0x00007f94e11102db: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [112]=Oop rax=Oop [136]=Oop rdx=Oop [184]=Oop off=5280}
                                                ;*invokevirtual append
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {runtime_call}
  0x00007f94e11102e0: mov    %rdi,0x8(%rsp)
  0x00007f94e11102e5: mov    %rcx,(%rsp)
  0x00007f94e11102e9: callq  0x00007f94e10fbf60  ; OopMap{rsi=Oop [112]=Oop [136]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5294}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {runtime_call}
  0x00007f94e11102ee: jmpq   0x00007f94e110fa52
  0x00007f94e11102f3: mov    %rcx,0x8(%rsp)
  0x00007f94e11102f8: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1110300: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [112]=Oop [136]=Oop rdx=Oop rdi=Oop [184]=Oop [200]=Oop off=5317}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::append@-1 (line 368)
                                                ; - java.io.BufferedReader::readLine@226 (line 358)
                                                ;   {runtime_call}
  0x00007f94e1110305: jmpq   0x00007f94e110fa84
  0x00007f94e111030a: lea    0xc0(%rsp),%rax
  0x00007f94e1110312: mov    %rax,(%rsp)
  0x00007f94e1110316: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e111031b: jmpq   0x00007f94e110fb00
  0x00007f94e1110320: callq  0x00007f94e10f9680  ; OopMap{[136]=Oop rsi=Oop [184]=Oop off=5349}
                                                ;*invokevirtual length
                                                ; - java.io.BufferedReader::readLine@63 (line 326)
                                                ;   {runtime_call}
  0x00007f94e1110325: mov    %rsi,0x8(%rsp)
  0x00007f94e111032a: mov    %rdi,(%rsp)
  0x00007f94e111032e: callq  0x00007f94e10fbf60  ; OopMap{[136]=Oop rsi=Oop [184]=Oop [200]=Oop off=5363}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuffer::length@-1 (line 163)
                                                ; - java.io.BufferedReader::readLine@63 (line 326)
                                                ;   {runtime_call}
  0x00007f94e1110333: jmpq   0x00007f94e110fd98
  0x00007f94e1110338: lea    0xc0(%rsp),%rax
  0x00007f94e1110340: mov    %rax,(%rsp)
  0x00007f94e1110344: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e1110349: jmpq   0x00007f94e110fdcf
  0x00007f94e111034e: lea    0xb0(%rsp),%rax
  0x00007f94e1110356: mov    %rax,(%rsp)
  0x00007f94e111035a: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e111035f: jmpq   0x00007f94e110fe3c
  0x00007f94e1110364: lea    0xb0(%rsp),%rax
  0x00007f94e111036c: mov    %rax,(%rsp)
  0x00007f94e1110370: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e1110375: jmpq   0x00007f94e110ff23
  0x00007f94e111037a: lea    0xb0(%rsp),%rax
  0x00007f94e1110382: mov    %rax,(%rsp)
  0x00007f94e1110386: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e111038b: jmpq   0x00007f94e110ff69
  0x00007f94e1110390: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e111039a: mov    $0xa050f00,%eax
  0x00007f94e111039f: callq  0x00007f94e10fd5a0  ; OopMap{[112]=Oop [136]=Oop [184]=Oop off=5476}
                                                ;*new  ; - java.io.BufferedReader::ensureOpen@7 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {runtime_call}
  0x00007f94e11103a4: jmpq   0x00007f94e110ff88
  0x00007f94e11103a9: mov    %rdx,%rdx
  0x00007f94e11103ac: callq  0x00007f94e10f9b20  ; OopMap{[112]=Oop [136]=Oop [184]=Oop off=5489}
                                                ;*new  ; - java.io.BufferedReader::ensureOpen@7 (line 122)
                                                ; - java.io.BufferedReader::readLine@11 (line 317)
                                                ;   {runtime_call}
  0x00007f94e11103b1: jmpq   0x00007f94e110ff97
  0x00007f94e11103b6: lea    0xc0(%rsp),%rax
  0x00007f94e11103be: mov    %rax,(%rsp)
  0x00007f94e11103c2: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e11103c7: jmpq   0x00007f94e1110036
  0x00007f94e11103cc: lea    0xc0(%rsp),%rax
  0x00007f94e11103d4: mov    %rax,(%rsp)
  0x00007f94e11103d8: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e11103dd: jmpq   0x00007f94e111009b
  0x00007f94e11103e2: lea    0xc0(%rsp),%rax
  0x00007f94e11103ea: mov    %rax,(%rsp)
  0x00007f94e11103ee: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e11103f3: jmpq   0x00007f94e111010d
  0x00007f94e11103f8: lea    0xb0(%rsp),%rax
  0x00007f94e1110400: mov    %rax,(%rsp)
  0x00007f94e1110404: callq  0x00007f94e10fc320  ;   {runtime_call}
  0x00007f94e1110409: jmpq   0x00007f94e1110172
  0x00007f94e111040e: mov    0x90(%rsp),%rdi
  0x00007f94e1110416: jmpq   0x00007f94e11100ae
  0x00007f94e111041b: mov    0x7c(%rsp),%ebx
  0x00007f94e111041f: mov    0x80(%rsp),%rsi
  0x00007f94e1110427: jmpq   0x00007f94e1110049
  0x00007f94e111042c: nop    
  0x00007f94e111042d: nop    
  0x00007f94e111042e: mov    0x2a8(%r15),%rax
  0x00007f94e1110435: mov    $0x0,%r10
  0x00007f94e111043f: mov    %r10,0x2a8(%r15)
  0x00007f94e1110446: mov    $0x0,%r10
  0x00007f94e1110450: mov    %r10,0x2b0(%r15)
  0x00007f94e1110457: add    $0xe0,%rsp
  0x00007f94e111045e: pop    %rbp
  0x00007f94e111045f: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1110464: hlt    
  0x00007f94e1110465: hlt    
  0x00007f94e1110466: hlt    
  0x00007f94e1110467: hlt    
  0x00007f94e1110468: hlt    
  0x00007f94e1110469: hlt    
  0x00007f94e111046a: hlt    
  0x00007f94e111046b: hlt    
  0x00007f94e111046c: hlt    
  0x00007f94e111046d: hlt    
  0x00007f94e111046e: hlt    
  0x00007f94e111046f: hlt    
  0x00007f94e1110470: hlt    
  0x00007f94e1110471: hlt    
  0x00007f94e1110472: hlt    
  0x00007f94e1110473: hlt    
  0x00007f94e1110474: hlt    
  0x00007f94e1110475: hlt    
  0x00007f94e1110476: hlt    
  0x00007f94e1110477: hlt    
  0x00007f94e1110478: hlt    
  0x00007f94e1110479: hlt    
  0x00007f94e111047a: hlt    
  0x00007f94e111047b: hlt    
  0x00007f94e111047c: hlt    
  0x00007f94e111047d: hlt    
  0x00007f94e111047e: hlt    
  0x00007f94e111047f: hlt    
[Stub Code]
  0x00007f94e1110480: nop                       ;   {no_reloc}
  0x00007f94e1110481: nop    
  0x00007f94e1110482: nop    
  0x00007f94e1110483: nop    
  0x00007f94e1110484: nop    
  0x00007f94e1110485: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111048f: jmpq   0x00007f94e111048f  ;   {runtime_call}
  0x00007f94e1110494: nop    
  0x00007f94e1110495: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111049f: jmpq   0x00007f94e111049f  ;   {runtime_call}
  0x00007f94e11104a4: nop    
  0x00007f94e11104a5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11104af: jmpq   0x00007f94e11104af  ;   {runtime_call}
  0x00007f94e11104b4: nop    
  0x00007f94e11104b5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11104bf: jmpq   0x00007f94e11104bf  ;   {runtime_call}
  0x00007f94e11104c4: nop    
  0x00007f94e11104c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11104cf: jmpq   0x00007f94e11104cf  ;   {runtime_call}
  0x00007f94e11104d4: nop    
  0x00007f94e11104d5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11104df: jmpq   0x00007f94e11104df  ;   {runtime_call}
  0x00007f94e11104e4: nop    
  0x00007f94e11104e5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11104ef: jmpq   0x00007f94e11104ef  ;   {runtime_call}
[Exception Handler]
  0x00007f94e11104f4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e11104f9: mov    %rsp,-0x28(%rsp)
  0x00007f94e11104fe: sub    $0x80,%rsp
  0x00007f94e1110505: mov    %rax,0x78(%rsp)
  0x00007f94e111050a: mov    %rcx,0x70(%rsp)
  0x00007f94e111050f: mov    %rdx,0x68(%rsp)
  0x00007f94e1110514: mov    %rbx,0x60(%rsp)
  0x00007f94e1110519: mov    %rbp,0x50(%rsp)
  0x00007f94e111051e: mov    %rsi,0x48(%rsp)
  0x00007f94e1110523: mov    %rdi,0x40(%rsp)
  0x00007f94e1110528: mov    %r8,0x38(%rsp)
  0x00007f94e111052d: mov    %r9,0x30(%rsp)
  0x00007f94e1110532: mov    %r10,0x28(%rsp)
  0x00007f94e1110537: mov    %r11,0x20(%rsp)
  0x00007f94e111053c: mov    %r12,0x18(%rsp)
  0x00007f94e1110541: mov    %r13,0x10(%rsp)
  0x00007f94e1110546: mov    %r14,0x8(%rsp)
  0x00007f94e111054b: mov    %r15,(%rsp)
  0x00007f94e111054f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1110559: mov    $0x7f94e11104f9,%rsi  ;   {internal_word}
  0x00007f94e1110563: mov    %rsp,%rdx
  0x00007f94e1110566: and    $0xfffffffffffffff0,%rsp
  0x00007f94e111056a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e111056f: hlt    
[Deopt Handler Code]
  0x00007f94e1110570: mov    $0x7f94e1110570,%r10  ;   {section_word}
  0x00007f94e111057a: push   %r10
  0x00007f94e111057c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1110581: hlt    
  0x00007f94e1110582: hlt    
  0x00007f94e1110583: hlt    
  0x00007f94e1110584: hlt    
  0x00007f94e1110585: hlt    
  0x00007f94e1110586: hlt    
  0x00007f94e1110587: hlt    
Decoding compiled method 0x00007f94e1111950:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e00a31e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder'
  # this:     rsi:rsi   = 'java/lang/StringBuilder'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1111ac0: mov    0x8(%rsi),%r10d
  0x00007f94e1111ac4: shl    $0x3,%r10
  0x00007f94e1111ac8: cmp    %rax,%r10
  0x00007f94e1111acb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1111ad1: nopw   0x0(%rax,%rax,1)
  0x00007f94e1111adc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1111ae0: mov    %eax,-0x14000(%rsp)
  0x00007f94e1111ae7: push   %rbp
  0x00007f94e1111ae8: sub    $0x30,%rsp
  0x00007f94e1111aec: mov    $0x7f94e025bd90,%rdi  ;   {metadata(method data for {method} {0x00007f94e00a31e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e1111af6: mov    0xdc(%rdi),%ebx
  0x00007f94e1111afc: add    $0x8,%ebx
  0x00007f94e1111aff: mov    %ebx,0xdc(%rdi)
  0x00007f94e1111b05: mov    $0x7f94e00a31e0,%rdi  ;   {metadata({method} {0x00007f94e00a31e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e1111b0f: and    $0x1ff8,%ebx
  0x00007f94e1111b15: cmp    $0x0,%ebx
  0x00007f94e1111b18: je     0x00007f94e1111b55  ;*aload_0
                                                ; - java.lang.StringBuilder::append@0 (line 136)

  0x00007f94e1111b1e: mov    %rsi,%rdi
  0x00007f94e1111b21: mov    $0x7f94e025bd90,%rbx  ;   {metadata(method data for {method} {0x00007f94e00a31e0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f94e1111b2b: addq   $0x1,0x108(%rbx)
  0x00007f94e1111b33: mov    %rsi,%rdi
  0x00007f94e1111b36: mov    %rdi,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)

  0x00007f94e1111b39: mov    %rdi,0x20(%rsp)
  0x00007f94e1111b3e: nop    
  0x00007f94e1111b3f: callq  0x00007f94e1046020  ; OopMap{[32]=Oop off=132}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ;   {optimized virtual_call}
  0x00007f94e1111b44: mov    0x20(%rsp),%rax
  0x00007f94e1111b49: add    $0x30,%rsp
  0x00007f94e1111b4d: pop    %rbp
  0x00007f94e1111b4e: test   %eax,0x16edd5ac(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1111b54: retq   
  0x00007f94e1111b55: mov    %rdi,0x8(%rsp)
  0x00007f94e1111b5a: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1111b62: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop rdx=Oop off=167}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 136)
                                                ;   {runtime_call}
  0x00007f94e1111b67: jmp    0x00007f94e1111b1e
  0x00007f94e1111b69: nop    
  0x00007f94e1111b6a: nop    
  0x00007f94e1111b6b: mov    0x2a8(%r15),%rax
  0x00007f94e1111b72: mov    $0x0,%r10
  0x00007f94e1111b7c: mov    %r10,0x2a8(%r15)
  0x00007f94e1111b83: mov    $0x0,%r10
  0x00007f94e1111b8d: mov    %r10,0x2b0(%r15)
  0x00007f94e1111b94: add    $0x30,%rsp
  0x00007f94e1111b98: pop    %rbp
  0x00007f94e1111b99: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1111b9e: hlt    
  0x00007f94e1111b9f: hlt    
[Stub Code]
  0x00007f94e1111ba0: nop                       ;   {no_reloc}
  0x00007f94e1111ba1: nop    
  0x00007f94e1111ba2: nop    
  0x00007f94e1111ba3: nop    
  0x00007f94e1111ba4: nop    
  0x00007f94e1111ba5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e1111baf: jmpq   0x00007f94e1111baf  ;   {runtime_call}
[Exception Handler]
  0x00007f94e1111bb4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e1111bb9: mov    %rsp,-0x28(%rsp)
  0x00007f94e1111bbe: sub    $0x80,%rsp
  0x00007f94e1111bc5: mov    %rax,0x78(%rsp)
  0x00007f94e1111bca: mov    %rcx,0x70(%rsp)
  0x00007f94e1111bcf: mov    %rdx,0x68(%rsp)
  0x00007f94e1111bd4: mov    %rbx,0x60(%rsp)
  0x00007f94e1111bd9: mov    %rbp,0x50(%rsp)
  0x00007f94e1111bde: mov    %rsi,0x48(%rsp)
  0x00007f94e1111be3: mov    %rdi,0x40(%rsp)
  0x00007f94e1111be8: mov    %r8,0x38(%rsp)
  0x00007f94e1111bed: mov    %r9,0x30(%rsp)
  0x00007f94e1111bf2: mov    %r10,0x28(%rsp)
  0x00007f94e1111bf7: mov    %r11,0x20(%rsp)
  0x00007f94e1111bfc: mov    %r12,0x18(%rsp)
  0x00007f94e1111c01: mov    %r13,0x10(%rsp)
  0x00007f94e1111c06: mov    %r14,0x8(%rsp)
  0x00007f94e1111c0b: mov    %r15,(%rsp)
  0x00007f94e1111c0f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1111c19: mov    $0x7f94e1111bb9,%rsi  ;   {internal_word}
  0x00007f94e1111c23: mov    %rsp,%rdx
  0x00007f94e1111c26: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1111c2a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e1111c2f: hlt    
[Deopt Handler Code]
  0x00007f94e1111c30: mov    $0x7f94e1111c30,%r10  ;   {section_word}
  0x00007f94e1111c3a: push   %r10
  0x00007f94e1111c3c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1111c41: hlt    
  0x00007f94e1111c42: hlt    
  0x00007f94e1111c43: hlt    
  0x00007f94e1111c44: hlt    
  0x00007f94e1111c45: hlt    
  0x00007f94e1111c46: hlt    
  0x00007f94e1111c47: hlt    
Decoding compiled method 0x00007f94e1111d10:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = '[C'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x70]  (sp of caller)
  0x00007f94e1111ee0: mov    0x8(%rsi),%r10d
  0x00007f94e1111ee4: shl    $0x3,%r10
  0x00007f94e1111ee8: cmp    %rax,%r10
  0x00007f94e1111eeb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1111ef1: nopw   0x0(%rax,%rax,1)
  0x00007f94e1111efc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1111f00: mov    %eax,-0x14000(%rsp)
  0x00007f94e1111f07: push   %rbp
  0x00007f94e1111f08: sub    $0x60,%rsp
  0x00007f94e1111f0c: mov    $0x7f94e025bff8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e1111f16: mov    0xdc(%rdi),%ebx
  0x00007f94e1111f1c: add    $0x8,%ebx
  0x00007f94e1111f1f: mov    %ebx,0xdc(%rdi)
  0x00007f94e1111f25: mov    $0x7f94e002e1a0,%rdi  ;   {metadata({method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e1111f2f: and    $0x1ff8,%ebx
  0x00007f94e1111f35: cmp    $0x0,%ebx
  0x00007f94e1111f38: je     0x00007f94e1112206  ;*aload_0
                                                ; - java.lang.String::<init>@0 (line 190)

  0x00007f94e1111f3e: mov    %rsi,%rdi
  0x00007f94e1111f41: mov    $0x7f94e025bff8,%rbx  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e1111f4b: addq   $0x1,0x108(%rbx)
  0x00007f94e1111f53: mov    $0x7f94e019efd0,%rdi  ;   {metadata(method data for {method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e1111f5d: mov    0xdc(%rdi),%ebx
  0x00007f94e1111f63: add    $0x8,%ebx
  0x00007f94e1111f66: mov    %ebx,0xdc(%rdi)
  0x00007f94e1111f6c: mov    $0x7f94e002b480,%rdi  ;   {metadata({method} {0x00007f94e002b480} '<init>' '()V' in 'java/lang/Object')}
  0x00007f94e1111f76: and    $0x7ffff8,%ebx
  0x00007f94e1111f7c: cmp    $0x0,%ebx
  0x00007f94e1111f7f: je     0x00007f94e111221d
  0x00007f94e1111f85: cmp    $0x0,%ecx
  0x00007f94e1111f88: mov    $0x7f94e025bff8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e1111f92: mov    $0x118,%rbx
  0x00007f94e1111f9c: jge    0x00007f94e1111fac
  0x00007f94e1111fa2: mov    $0x128,%rbx
  0x00007f94e1111fac: mov    (%rdi,%rbx,1),%rax
  0x00007f94e1111fb0: lea    0x1(%rax),%rax
  0x00007f94e1111fb4: mov    %rax,(%rdi,%rbx,1)
  0x00007f94e1111fb8: jl     0x00007f94e11121c6  ;*ifge
                                                ; - java.lang.String::<init>@5 (line 191)

  0x00007f94e1111fbe: cmp    $0x0,%r8d
  0x00007f94e1111fc2: mov    $0x7f94e025bff8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e1111fcc: mov    $0x148,%rbx
  0x00007f94e1111fd6: jg     0x00007f94e1111fe6
  0x00007f94e1111fdc: mov    $0x158,%rbx
  0x00007f94e1111fe6: mov    (%rdi,%rbx,1),%rax
  0x00007f94e1111fea: lea    0x1(%rax),%rax
  0x00007f94e1111fee: mov    %rax,(%rdi,%rbx,1)
  0x00007f94e1111ff2: jg     0x00007f94e111206d  ;*ifgt
                                                ; - java.lang.String::<init>@18 (line 194)

  0x00007f94e1111ff8: cmp    $0x0,%r8d
  0x00007f94e1111ffc: mov    $0x7f94e025bff8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e1112006: mov    $0x168,%rbx
  0x00007f94e1112010: jge    0x00007f94e1112020
  0x00007f94e1112016: mov    $0x178,%rbx
  0x00007f94e1112020: mov    (%rdi,%rbx,1),%rax
  0x00007f94e1112024: lea    0x1(%rax),%rax
  0x00007f94e1112028: mov    %rax,(%rdi,%rbx,1)
  0x00007f94e111202c: jl     0x00007f94e1112186  ;*ifge
                                                ; - java.lang.String::<init>@22 (line 195)

  0x00007f94e1112032: mov    0xc(%rdx),%edi     ;*arraylength
                                                ; - java.lang.String::<init>@36 (line 198)
                                                ; implicit exception: dispatches to 0x00007f94e1112234
  0x00007f94e1112035: cmp    %edi,%ecx
  0x00007f94e1112037: mov    $0x7f94e025bff8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e1112041: mov    $0x198,%rbx
  0x00007f94e111204b: jg     0x00007f94e111205b
  0x00007f94e1112051: mov    $0x1a8,%rbx
  0x00007f94e111205b: mov    (%rdi,%rbx,1),%rax
  0x00007f94e111205f: lea    0x1(%rax),%rax
  0x00007f94e1112063: mov    %rax,(%rdi,%rbx,1)
  0x00007f94e1112067: jle    0x00007f94e1112102  ;*if_icmpgt
                                                ; - java.lang.String::<init>@37 (line 198)

  0x00007f94e111206d: mov    0xc(%rdx),%edi     ;*arraylength
                                                ; - java.lang.String::<init>@52 (line 204)
                                                ; implicit exception: dispatches to 0x00007f94e1112239
  0x00007f94e1112070: sub    %r8d,%edi
  0x00007f94e1112073: cmp    %edi,%ecx
  0x00007f94e1112075: mov    $0x7f94e025bff8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e111207f: mov    $0x1b8,%rbx
  0x00007f94e1112089: jle    0x00007f94e1112099
  0x00007f94e111208f: mov    $0x1c8,%rbx
  0x00007f94e1112099: mov    (%rdi,%rbx,1),%rax
  0x00007f94e111209d: lea    0x1(%rax),%rax
  0x00007f94e11120a1: mov    %rax,(%rdi,%rbx,1)
  0x00007f94e11120a5: jg     0x00007f94e111213c  ;*if_icmple
                                                ; - java.lang.String::<init>@55 (line 204)

  0x00007f94e11120ab: mov    %rsi,0x38(%rsp)
  0x00007f94e11120b0: mov    $0x7f94e025bff8,%rdi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e11120ba: addq   $0x1,0x1e8(%rdi)
  0x00007f94e11120c2: add    %ecx,%r8d
  0x00007f94e11120c5: mov    %rdx,%rsi
  0x00007f94e11120c8: mov    %rcx,%rdx
  0x00007f94e11120cb: mov    %r8,%rcx           ;*invokestatic copyOfRange
                                                ; - java.lang.String::<init>@75 (line 207)

  0x00007f94e11120ce: nop    
  0x00007f94e11120cf: callq  0x00007f94e1046420  ; OopMap{[56]=Oop off=500}
                                                ;*invokestatic copyOfRange
                                                ; - java.lang.String::<init>@75 (line 207)
                                                ;   {static_call}
  0x00007f94e11120d4: mov    0x38(%rsp),%rsi
  0x00007f94e11120d9: mov    %rax,%r10
  0x00007f94e11120dc: shr    $0x3,%r10
  0x00007f94e11120e0: mov    %r10d,0xc(%rsi)
  0x00007f94e11120e4: shr    $0x9,%rsi
  0x00007f94e11120e8: mov    $0x7f94f0e87000,%rdx
  0x00007f94e11120f2: movb   $0x0,(%rsi,%rdx,1)  ;*putfield value
                                                ; - java.lang.String::<init>@78 (line 207)

  0x00007f94e11120f6: add    $0x60,%rsp
  0x00007f94e11120fa: pop    %rbp
  0x00007f94e11120fb: test   %eax,0x16edcfff(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1112101: retq                      ;*return
                                                ; - java.lang.String::<init>@81 (line 208)

  0x00007f94e1112102: mov    $0x781e0a620,%rdx  ;   {oop("")}
  0x00007f94e111210c: mov    0xc(%rdx),%edx     ; implicit exception: dispatches to 0x00007f94e111223e
  0x00007f94e111210f: shl    $0x3,%rdx          ;*getfield value
                                                ; - java.lang.String::<init>@43 (line 199)

  0x00007f94e1112113: mov    %rdx,%r10
  0x00007f94e1112116: shr    $0x3,%r10
  0x00007f94e111211a: mov    %r10d,0xc(%rsi)
  0x00007f94e111211e: shr    $0x9,%rsi
  0x00007f94e1112122: mov    $0x7f94f0e87000,%rdx
  0x00007f94e111212c: movb   $0x0,(%rsi,%rdx,1)  ;*putfield value
                                                ; - java.lang.String::<init>@46 (line 199)

  0x00007f94e1112130: add    $0x60,%rsp
  0x00007f94e1112134: pop    %rbp
  0x00007f94e1112135: test   %eax,0x16edcfc5(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e111213b: retq                      ;*return
                                                ; - java.lang.String::<init>@49 (line 200)

  0x00007f94e111213c: nopl   0x0(%rax)
  0x00007f94e1112140: jmpq   0x00007f94e1112252  ;   {no_reloc}
  0x00007f94e1112145: add    %al,(%rax)
  0x00007f94e1112147: add    %al,(%rax)
  0x00007f94e1112149: add    %ch,%cl
  0x00007f94e111214b: or     $0x48000001,%eax   ;*new  ; - java.lang.String::<init>@58 (line 205)

  0x00007f94e1112150: mov    %eax,%edx
  0x00007f94e1112152: mov    $0x7f94e025bff8,%rsi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e111215c: addq   $0x1,0x1d8(%rsi)
  0x00007f94e1112164: add    %ecx,%r8d
  0x00007f94e1112167: mov    %r8,%rdx
  0x00007f94e111216a: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::<init>@65 (line 205)

  0x00007f94e111216d: mov    %rax,0x40(%rsp)
  0x00007f94e1112172: nop    
  0x00007f94e1112173: nop    
  0x00007f94e1112174: nop    
  0x00007f94e1112175: nop    
  0x00007f94e1112176: nop    
  0x00007f94e1112177: callq  0x00007f94e1046020  ; OopMap{[64]=Oop off=668}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::<init>@65 (line 205)
                                                ;   {optimized virtual_call}
  0x00007f94e111217c: mov    0x40(%rsp),%rax
  0x00007f94e1112181: jmpq   0x00007f94e11122e0  ;*athrow
                                                ; - java.lang.String::<init>@68 (line 205)

  0x00007f94e1112186: xchg   %ax,%ax
  0x00007f94e1112188: jmpq   0x00007f94e1112278  ;   {no_reloc}
  0x00007f94e111218d: add    %al,(%rax)
  0x00007f94e111218f: add    %al,(%rax)
  0x00007f94e1112191: add    %ch,%cl
  0x00007f94e1112193: jmp    0x00007f94e1112195
  0x00007f94e1112195: add    %al,(%rax)         ;*new  ; - java.lang.String::<init>@25 (line 196)

  0x00007f94e1112197: mov    %rax,%rdx
  0x00007f94e111219a: mov    $0x7f94e025bff8,%rsi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e11121a4: addq   $0x1,0x188(%rsi)
  0x00007f94e11121ac: mov    %r8,%rdx
  0x00007f94e11121af: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::<init>@30 (line 196)

  0x00007f94e11121b2: mov    %rax,0x48(%rsp)
  0x00007f94e11121b7: callq  0x00007f94e1046020  ; OopMap{[72]=Oop off=732}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::<init>@30 (line 196)
                                                ;   {optimized virtual_call}
  0x00007f94e11121bc: mov    0x48(%rsp),%rax
  0x00007f94e11121c1: jmpq   0x00007f94e11122e0  ;*athrow
                                                ; - java.lang.String::<init>@33 (line 196)

  0x00007f94e11121c6: xchg   %ax,%ax
  0x00007f94e11121c8: jmpq   0x00007f94e111229e  ;   {no_reloc}
  0x00007f94e11121cd: add    %al,(%rax)
  0x00007f94e11121cf: add    %al,(%rax)
  0x00007f94e11121d1: add    %ch,%cl
  0x00007f94e11121d3: roll   (%rax)
  0x00007f94e11121d5: add    %al,(%rax)         ;*new  ; - java.lang.String::<init>@8 (line 192)

  0x00007f94e11121d7: mov    %rax,%rdx
  0x00007f94e11121da: mov    $0x7f94e025bff8,%rsi  ;   {metadata(method data for {method} {0x00007f94e002e1a0} '<init>' '([CII)V' in 'java/lang/String')}
  0x00007f94e11121e4: addq   $0x1,0x138(%rsi)
  0x00007f94e11121ec: mov    %rcx,%rdx
  0x00007f94e11121ef: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::<init>@13 (line 192)

  0x00007f94e11121f2: mov    %rax,0x50(%rsp)
  0x00007f94e11121f7: callq  0x00007f94e1046020  ; OopMap{[80]=Oop off=796}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::<init>@13 (line 192)
                                                ;   {optimized virtual_call}
  0x00007f94e11121fc: mov    0x50(%rsp),%rax
  0x00007f94e1112201: jmpq   0x00007f94e11122e0
  0x00007f94e1112206: mov    %rdi,0x8(%rsp)
  0x00007f94e111220b: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1112213: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop rdx=Oop off=824}
                                                ;*synchronization entry
                                                ; - java.lang.String::<init>@-1 (line 190)
                                                ;   {runtime_call}
  0x00007f94e1112218: jmpq   0x00007f94e1111f3e
  0x00007f94e111221d: mov    %rdi,0x8(%rsp)
  0x00007f94e1112222: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e111222a: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop rdx=Oop off=847}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - java.lang.String::<init>@1 (line 190)
                                                ;   {runtime_call}
  0x00007f94e111222f: jmpq   0x00007f94e1111f85
  0x00007f94e1112234: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop rdx=Oop off=857}
                                                ;*arraylength
                                                ; - java.lang.String::<init>@36 (line 198)
                                                ;   {runtime_call}
  0x00007f94e1112239: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop rdx=Oop off=862}
                                                ;*arraylength
                                                ; - java.lang.String::<init>@52 (line 204)
                                                ;   {runtime_call}
  0x00007f94e111223e: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop off=867}
                                                ;*getfield value
                                                ; - java.lang.String::<init>@43 (line 199)
                                                ;   {runtime_call}
  0x00007f94e1112243: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e111224d: mov    $0xa050f00,%eax
  0x00007f94e1112252: callq  0x00007f94e10fd5a0  ; OopMap{off=887}
                                                ;*new  ; - java.lang.String::<init>@58 (line 205)
                                                ;   {runtime_call}
  0x00007f94e1112257: jmpq   0x00007f94e1112140
  0x00007f94e111225c: mov    %rdx,%rdx
  0x00007f94e111225f: callq  0x00007f94e10f9b20  ; OopMap{off=900}
                                                ;*new  ; - java.lang.String::<init>@58 (line 205)
                                                ;   {runtime_call}
  0x00007f94e1112264: jmpq   0x00007f94e111214f
  0x00007f94e1112269: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e1112273: mov    $0xa050f00,%eax
  0x00007f94e1112278: callq  0x00007f94e10fd5a0  ; OopMap{off=925}
                                                ;*new  ; - java.lang.String::<init>@25 (line 196)
                                                ;   {runtime_call}
  0x00007f94e111227d: jmpq   0x00007f94e1112188
  0x00007f94e1112282: mov    %rdx,%rdx
  0x00007f94e1112285: callq  0x00007f94e10f9b20  ; OopMap{off=938}
                                                ;*new  ; - java.lang.String::<init>@25 (line 196)
                                                ;   {runtime_call}
  0x00007f94e111228a: jmpq   0x00007f94e1112197
  0x00007f94e111228f: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e1112299: mov    $0xa050f00,%eax
  0x00007f94e111229e: callq  0x00007f94e10fd5a0  ; OopMap{off=963}
                                                ;*new  ; - java.lang.String::<init>@8 (line 192)
                                                ;   {runtime_call}
  0x00007f94e11122a3: jmpq   0x00007f94e11121c8
  0x00007f94e11122a8: mov    %rdx,%rdx
  0x00007f94e11122ab: callq  0x00007f94e10f9b20  ; OopMap{off=976}
                                                ;*new  ; - java.lang.String::<init>@8 (line 192)
                                                ;   {runtime_call}
  0x00007f94e11122b0: jmpq   0x00007f94e11121d7
  0x00007f94e11122b5: nop    
  0x00007f94e11122b6: nop    
  0x00007f94e11122b7: mov    0x2a8(%r15),%rax
  0x00007f94e11122be: mov    $0x0,%r10
  0x00007f94e11122c8: mov    %r10,0x2a8(%r15)
  0x00007f94e11122cf: mov    $0x0,%r10
  0x00007f94e11122d9: mov    %r10,0x2b0(%r15)
  0x00007f94e11122e0: add    $0x60,%rsp
  0x00007f94e11122e4: pop    %rbp
  0x00007f94e11122e5: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e11122ea: hlt    
  0x00007f94e11122eb: hlt    
  0x00007f94e11122ec: hlt    
  0x00007f94e11122ed: hlt    
  0x00007f94e11122ee: hlt    
  0x00007f94e11122ef: hlt    
  0x00007f94e11122f0: hlt    
  0x00007f94e11122f1: hlt    
  0x00007f94e11122f2: hlt    
  0x00007f94e11122f3: hlt    
  0x00007f94e11122f4: hlt    
  0x00007f94e11122f5: hlt    
  0x00007f94e11122f6: hlt    
  0x00007f94e11122f7: hlt    
  0x00007f94e11122f8: hlt    
  0x00007f94e11122f9: hlt    
  0x00007f94e11122fa: hlt    
  0x00007f94e11122fb: hlt    
  0x00007f94e11122fc: hlt    
  0x00007f94e11122fd: hlt    
  0x00007f94e11122fe: hlt    
  0x00007f94e11122ff: hlt    
[Stub Code]
  0x00007f94e1112300: nop                       ;   {no_reloc}
  0x00007f94e1112301: nop    
  0x00007f94e1112302: nop    
  0x00007f94e1112303: nop    
  0x00007f94e1112304: nop    
  0x00007f94e1112305: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111230f: jmpq   0x00007f94e111230f  ;   {runtime_call}
  0x00007f94e1112314: nop    
  0x00007f94e1112315: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111231f: jmpq   0x00007f94e111231f  ;   {runtime_call}
  0x00007f94e1112324: nop    
  0x00007f94e1112325: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111232f: jmpq   0x00007f94e111232f  ;   {runtime_call}
  0x00007f94e1112334: nop    
  0x00007f94e1112335: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111233f: jmpq   0x00007f94e111233f  ;   {runtime_call}
[Exception Handler]
  0x00007f94e1112344: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e1112349: mov    %rsp,-0x28(%rsp)
  0x00007f94e111234e: sub    $0x80,%rsp
  0x00007f94e1112355: mov    %rax,0x78(%rsp)
  0x00007f94e111235a: mov    %rcx,0x70(%rsp)
  0x00007f94e111235f: mov    %rdx,0x68(%rsp)
  0x00007f94e1112364: mov    %rbx,0x60(%rsp)
  0x00007f94e1112369: mov    %rbp,0x50(%rsp)
  0x00007f94e111236e: mov    %rsi,0x48(%rsp)
  0x00007f94e1112373: mov    %rdi,0x40(%rsp)
  0x00007f94e1112378: mov    %r8,0x38(%rsp)
  0x00007f94e111237d: mov    %r9,0x30(%rsp)
  0x00007f94e1112382: mov    %r10,0x28(%rsp)
  0x00007f94e1112387: mov    %r11,0x20(%rsp)
  0x00007f94e111238c: mov    %r12,0x18(%rsp)
  0x00007f94e1112391: mov    %r13,0x10(%rsp)
  0x00007f94e1112396: mov    %r14,0x8(%rsp)
  0x00007f94e111239b: mov    %r15,(%rsp)
  0x00007f94e111239f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e11123a9: mov    $0x7f94e1112349,%rsi  ;   {internal_word}
  0x00007f94e11123b3: mov    %rsp,%rdx
  0x00007f94e11123b6: and    $0xfffffffffffffff0,%rsp
  0x00007f94e11123ba: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e11123bf: hlt    
[Deopt Handler Code]
  0x00007f94e11123c0: mov    $0x7f94e11123c0,%r10  ;   {section_word}
  0x00007f94e11123ca: push   %r10
  0x00007f94e11123cc: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e11123d1: hlt    
  0x00007f94e11123d2: hlt    
  0x00007f94e11123d3: hlt    
  0x00007f94e11123d4: hlt    
  0x00007f94e11123d5: hlt    
  0x00007f94e11123d6: hlt    
  0x00007f94e11123d7: hlt    
Decoding compiled method 0x00007f94e11127d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e00afa38} 'getPath' '()Ljava/lang/String;' in 'java/io/File'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1112920: mov    0x8(%rsi),%r10d
  0x00007f94e1112924: shl    $0x3,%r10
  0x00007f94e1112928: cmp    %rax,%r10
  0x00007f94e111292b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1112931: nopw   0x0(%rax,%rax,1)
  0x00007f94e111293c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1112940: mov    %eax,-0x14000(%rsp)
  0x00007f94e1112947: push   %rbp
  0x00007f94e1112948: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.io.File::getPath@0 (line 512)

  0x00007f94e111294c: mov    0x10(%rsi),%eax
  0x00007f94e111294f: shl    $0x3,%rax          ;*getfield path
                                                ; - java.io.File::getPath@1 (line 512)

  0x00007f94e1112953: add    $0x30,%rsp
  0x00007f94e1112957: pop    %rbp
  0x00007f94e1112958: test   %eax,0x16edc7a2(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e111295e: retq   
  0x00007f94e111295f: nop    
  0x00007f94e1112960: nop    
  0x00007f94e1112961: mov    0x2a8(%r15),%rax
  0x00007f94e1112968: mov    $0x0,%r10
  0x00007f94e1112972: mov    %r10,0x2a8(%r15)
  0x00007f94e1112979: mov    $0x0,%r10
  0x00007f94e1112983: mov    %r10,0x2b0(%r15)
  0x00007f94e111298a: add    $0x30,%rsp
  0x00007f94e111298e: pop    %rbp
  0x00007f94e111298f: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1112994: hlt    
  0x00007f94e1112995: hlt    
  0x00007f94e1112996: hlt    
  0x00007f94e1112997: hlt    
  0x00007f94e1112998: hlt    
  0x00007f94e1112999: hlt    
  0x00007f94e111299a: hlt    
  0x00007f94e111299b: hlt    
  0x00007f94e111299c: hlt    
  0x00007f94e111299d: hlt    
  0x00007f94e111299e: hlt    
  0x00007f94e111299f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e11129a0: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e11129a5: mov    %rsp,-0x28(%rsp)
  0x00007f94e11129aa: sub    $0x80,%rsp
  0x00007f94e11129b1: mov    %rax,0x78(%rsp)
  0x00007f94e11129b6: mov    %rcx,0x70(%rsp)
  0x00007f94e11129bb: mov    %rdx,0x68(%rsp)
  0x00007f94e11129c0: mov    %rbx,0x60(%rsp)
  0x00007f94e11129c5: mov    %rbp,0x50(%rsp)
  0x00007f94e11129ca: mov    %rsi,0x48(%rsp)
  0x00007f94e11129cf: mov    %rdi,0x40(%rsp)
  0x00007f94e11129d4: mov    %r8,0x38(%rsp)
  0x00007f94e11129d9: mov    %r9,0x30(%rsp)
  0x00007f94e11129de: mov    %r10,0x28(%rsp)
  0x00007f94e11129e3: mov    %r11,0x20(%rsp)
  0x00007f94e11129e8: mov    %r12,0x18(%rsp)
  0x00007f94e11129ed: mov    %r13,0x10(%rsp)
  0x00007f94e11129f2: mov    %r14,0x8(%rsp)
  0x00007f94e11129f7: mov    %r15,(%rsp)
  0x00007f94e11129fb: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1112a05: mov    $0x7f94e11129a5,%rsi  ;   {internal_word}
  0x00007f94e1112a0f: mov    %rsp,%rdx
  0x00007f94e1112a12: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1112a16: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e1112a1b: hlt    
[Deopt Handler Code]
  0x00007f94e1112a1c: mov    $0x7f94e1112a1c,%r10  ;   {section_word}
  0x00007f94e1112a26: push   %r10
  0x00007f94e1112a28: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1112a2d: hlt    
  0x00007f94e1112a2e: hlt    
  0x00007f94e1112a2f: hlt    
Decoding compiled method 0x00007f94e1112ad0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/String'
  # parm1:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1112c40: mov    0x8(%rsi),%r10d
  0x00007f94e1112c44: shl    $0x3,%r10
  0x00007f94e1112c48: cmp    %rax,%r10
  0x00007f94e1112c4b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1112c51: nopw   0x0(%rax,%rax,1)
  0x00007f94e1112c5c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1112c60: mov    %eax,-0x14000(%rsp)
  0x00007f94e1112c67: push   %rbp
  0x00007f94e1112c68: sub    $0x30,%rsp
  0x00007f94e1112c6c: mov    $0x7f94e0272c38,%rax  ;   {metadata(method data for {method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112c76: mov    0xdc(%rax),%edi
  0x00007f94e1112c7c: add    $0x8,%edi
  0x00007f94e1112c7f: mov    %edi,0xdc(%rax)
  0x00007f94e1112c85: mov    $0x7f94e002fdf0,%rax  ;   {metadata({method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112c8f: and    $0x1ff8,%edi
  0x00007f94e1112c95: cmp    $0x0,%edi
  0x00007f94e1112c98: je     0x00007f94e1112e4d  ;*aload_0
                                                ; - java.lang.String::startsWith@0 (line 1403)

  0x00007f94e1112c9e: mov    0xc(%rsi),%eax
  0x00007f94e1112ca1: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::startsWith@1 (line 1403)

  0x00007f94e1112ca5: mov    0xc(%rdx),%esi     ; implicit exception: dispatches to 0x00007f94e1112e64
  0x00007f94e1112ca8: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::startsWith@9 (line 1405)

  0x00007f94e1112cac: mov    0xc(%rsi),%edi     ;*arraylength
                                                ; - java.lang.String::startsWith@21 (line 1407)
                                                ; implicit exception: dispatches to 0x00007f94e1112e69
  0x00007f94e1112caf: cmp    $0x0,%ecx
  0x00007f94e1112cb2: mov    $0x7f94e0272c38,%rbx  ;   {metadata(method data for {method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112cbc: mov    $0x108,%rdx
  0x00007f94e1112cc6: jl     0x00007f94e1112cd6
  0x00007f94e1112ccc: mov    $0x118,%rdx
  0x00007f94e1112cd6: mov    (%rbx,%rdx,1),%r8
  0x00007f94e1112cda: lea    0x1(%r8),%r8
  0x00007f94e1112cde: mov    %r8,(%rbx,%rdx,1)
  0x00007f94e1112ce2: jl     0x00007f94e1112e1a  ;*iflt
                                                ; - java.lang.String::startsWith@25 (line 1409)

  0x00007f94e1112ce8: mov    0xc(%rax),%ebx     ;*arraylength
                                                ; - java.lang.String::startsWith@33 (line 1409)
                                                ; implicit exception: dispatches to 0x00007f94e1112e6e
  0x00007f94e1112ceb: sub    %edi,%ebx
  0x00007f94e1112ced: cmp    %ebx,%ecx
  0x00007f94e1112cef: mov    $0x7f94e0272c38,%rbx  ;   {metadata(method data for {method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112cf9: mov    $0x128,%rdx
  0x00007f94e1112d03: jle    0x00007f94e1112d13
  0x00007f94e1112d09: mov    $0x138,%rdx
  0x00007f94e1112d13: mov    (%rbx,%rdx,1),%r8
  0x00007f94e1112d17: lea    0x1(%r8),%r8
  0x00007f94e1112d1b: mov    %r8,(%rbx,%rdx,1)
  0x00007f94e1112d1f: jg     0x00007f94e1112e1a  ;*if_icmple
                                                ; - java.lang.String::startsWith@37 (line 1409)

  0x00007f94e1112d25: mov    $0x0,%ebx
  0x00007f94e1112d2a: jmpq   0x00007f94e1112dda  ;*iinc
                                                ; - java.lang.String::startsWith@42 (line 1412)

  0x00007f94e1112d2f: nop    
  0x00007f94e1112d30: mov    %rcx,%rdx
  0x00007f94e1112d33: inc    %edx
  0x00007f94e1112d35: movslq %ecx,%r8
  0x00007f94e1112d38: cmp    0xc(%rax),%ecx
  0x00007f94e1112d3b: jae    0x00007f94e1112e73
  0x00007f94e1112d41: movzwl 0x10(%rax,%r8,2),%ecx  ;*caload
                                                ; - java.lang.String::startsWith@56 (line 1413)

  0x00007f94e1112d47: mov    %rbx,%r8
  0x00007f94e1112d4a: inc    %r8d
  0x00007f94e1112d4d: movslq %ebx,%r9
  0x00007f94e1112d50: cmp    0xc(%rsi),%ebx
  0x00007f94e1112d53: jae    0x00007f94e1112e7c
  0x00007f94e1112d59: movzwl 0x10(%rsi,%r9,2),%ebx  ;*caload
                                                ; - java.lang.String::startsWith@64 (line 1413)

  0x00007f94e1112d5f: mov    $0x7f94e0272c38,%r9  ;   {metadata(method data for {method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112d69: mov    0xe0(%r9),%r11d
  0x00007f94e1112d70: add    $0x8,%r11d
  0x00007f94e1112d74: mov    %r11d,0xe0(%r9)
  0x00007f94e1112d7b: mov    $0x7f94e002fdf0,%r9  ;   {metadata({method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112d85: and    $0xfff8,%r11d
  0x00007f94e1112d8c: cmp    $0x0,%r11d
  0x00007f94e1112d90: je     0x00007f94e1112e85  ; OopMap{rsi=Oop rax=Oop off=342}
                                                ;*if_icmpeq
                                                ; - java.lang.String::startsWith@65 (line 1413)

  0x00007f94e1112d96: test   %eax,0x16edc364(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e1112d9c: cmp    %ebx,%ecx
  0x00007f94e1112d9e: mov    $0x7f94e0272c38,%rbx  ;   {metadata(method data for {method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112da8: mov    $0x168,%rcx
  0x00007f94e1112db2: je     0x00007f94e1112dc2
  0x00007f94e1112db8: mov    $0x178,%rcx
  0x00007f94e1112dc2: mov    (%rbx,%rcx,1),%r9
  0x00007f94e1112dc6: lea    0x1(%r9),%r9
  0x00007f94e1112dca: mov    %r9,(%rbx,%rcx,1)
  0x00007f94e1112dce: jne    0x00007f94e1112e2b  ;*if_icmpeq
                                                ; - java.lang.String::startsWith@65 (line 1413)

  0x00007f94e1112dd4: mov    %r8,%rbx
  0x00007f94e1112dd7: mov    %rdx,%rcx          ;*iinc
                                                ; - java.lang.String::startsWith@42 (line 1412)

  0x00007f94e1112dda: dec    %edi
  0x00007f94e1112ddc: cmp    $0x0,%edi
  0x00007f94e1112ddf: mov    $0x7f94e0272c38,%rdx  ;   {metadata(method data for {method} {0x00007f94e002fdf0} 'startsWith' '(Ljava/lang/String;I)Z' in 'java/lang/String')}
  0x00007f94e1112de9: mov    $0x148,%r8
  0x00007f94e1112df3: jl     0x00007f94e1112e03
  0x00007f94e1112df9: mov    $0x158,%r8
  0x00007f94e1112e03: mov    (%rdx,%r8,1),%r9
  0x00007f94e1112e07: lea    0x1(%r9),%r9
  0x00007f94e1112e0b: mov    %r9,(%rdx,%r8,1)
  0x00007f94e1112e0f: jl     0x00007f94e1112e3c
  0x00007f94e1112e15: jmpq   0x00007f94e1112d30  ;*iflt
                                                ; - java.lang.String::startsWith@47 (line 1412)

  0x00007f94e1112e1a: mov    $0x0,%eax
  0x00007f94e1112e1f: add    $0x30,%rsp
  0x00007f94e1112e23: pop    %rbp
  0x00007f94e1112e24: test   %eax,0x16edc2d6(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1112e2a: retq                      ;*ireturn
                                                ; - java.lang.String::startsWith@41 (line 1410)

  0x00007f94e1112e2b: mov    $0x0,%eax
  0x00007f94e1112e30: add    $0x30,%rsp
  0x00007f94e1112e34: pop    %rbp
  0x00007f94e1112e35: test   %eax,0x16edc2c5(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1112e3b: retq                      ;*ireturn
                                                ; - java.lang.String::startsWith@69 (line 1414)

  0x00007f94e1112e3c: mov    $0x1,%eax
  0x00007f94e1112e41: add    $0x30,%rsp
  0x00007f94e1112e45: pop    %rbp
  0x00007f94e1112e46: test   %eax,0x16edc2b4(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1112e4c: retq   
  0x00007f94e1112e4d: mov    %rax,0x8(%rsp)
  0x00007f94e1112e52: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1112e5a: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop rdx=Oop off=543}
                                                ;*synchronization entry
                                                ; - java.lang.String::startsWith@-1 (line 1403)
                                                ;   {runtime_call}
  0x00007f94e1112e5f: jmpq   0x00007f94e1112c9e
  0x00007f94e1112e64: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=553}
                                                ;*getfield value
                                                ; - java.lang.String::startsWith@9 (line 1405)
                                                ;   {runtime_call}
  0x00007f94e1112e69: callq  0x00007f94e10f9680  ; OopMap{rax=Oop rsi=Oop off=558}
                                                ;*arraylength
                                                ; - java.lang.String::startsWith@21 (line 1407)
                                                ;   {runtime_call}
  0x00007f94e1112e6e: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop rax=Oop off=563}
                                                ;*arraylength
                                                ; - java.lang.String::startsWith@33 (line 1409)
                                                ;   {runtime_call}
  0x00007f94e1112e73: mov    %rcx,(%rsp)
  0x00007f94e1112e77: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop rax=Oop off=572}
                                                ;*caload
                                                ; - java.lang.String::startsWith@56 (line 1413)
                                                ;   {runtime_call}
  0x00007f94e1112e7c: mov    %rbx,(%rsp)
  0x00007f94e1112e80: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop rax=Oop off=581}
                                                ;*caload
                                                ; - java.lang.String::startsWith@64 (line 1413)
                                                ;   {runtime_call}
  0x00007f94e1112e85: mov    %r9,0x8(%rsp)
  0x00007f94e1112e8a: movq   $0x41,(%rsp)
  0x00007f94e1112e92: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop rax=Oop off=599}
                                                ;*if_icmpeq
                                                ; - java.lang.String::startsWith@65 (line 1413)
                                                ;   {runtime_call}
  0x00007f94e1112e97: jmpq   0x00007f94e1112d96
  0x00007f94e1112e9c: nop    
  0x00007f94e1112e9d: nop    
  0x00007f94e1112e9e: mov    0x2a8(%r15),%rax
  0x00007f94e1112ea5: mov    $0x0,%r10
  0x00007f94e1112eaf: mov    %r10,0x2a8(%r15)
  0x00007f94e1112eb6: mov    $0x0,%r10
  0x00007f94e1112ec0: mov    %r10,0x2b0(%r15)
  0x00007f94e1112ec7: add    $0x30,%rsp
  0x00007f94e1112ecb: pop    %rbp
  0x00007f94e1112ecc: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1112ed1: hlt    
  0x00007f94e1112ed2: hlt    
  0x00007f94e1112ed3: hlt    
  0x00007f94e1112ed4: hlt    
  0x00007f94e1112ed5: hlt    
  0x00007f94e1112ed6: hlt    
  0x00007f94e1112ed7: hlt    
  0x00007f94e1112ed8: hlt    
  0x00007f94e1112ed9: hlt    
  0x00007f94e1112eda: hlt    
  0x00007f94e1112edb: hlt    
  0x00007f94e1112edc: hlt    
  0x00007f94e1112edd: hlt    
  0x00007f94e1112ede: hlt    
  0x00007f94e1112edf: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e1112ee0: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e1112ee5: mov    %rsp,-0x28(%rsp)
  0x00007f94e1112eea: sub    $0x80,%rsp
  0x00007f94e1112ef1: mov    %rax,0x78(%rsp)
  0x00007f94e1112ef6: mov    %rcx,0x70(%rsp)
  0x00007f94e1112efb: mov    %rdx,0x68(%rsp)
  0x00007f94e1112f00: mov    %rbx,0x60(%rsp)
  0x00007f94e1112f05: mov    %rbp,0x50(%rsp)
  0x00007f94e1112f0a: mov    %rsi,0x48(%rsp)
  0x00007f94e1112f0f: mov    %rdi,0x40(%rsp)
  0x00007f94e1112f14: mov    %r8,0x38(%rsp)
  0x00007f94e1112f19: mov    %r9,0x30(%rsp)
  0x00007f94e1112f1e: mov    %r10,0x28(%rsp)
  0x00007f94e1112f23: mov    %r11,0x20(%rsp)
  0x00007f94e1112f28: mov    %r12,0x18(%rsp)
  0x00007f94e1112f2d: mov    %r13,0x10(%rsp)
  0x00007f94e1112f32: mov    %r14,0x8(%rsp)
  0x00007f94e1112f37: mov    %r15,(%rsp)
  0x00007f94e1112f3b: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1112f45: mov    $0x7f94e1112ee5,%rsi  ;   {internal_word}
  0x00007f94e1112f4f: mov    %rsp,%rdx
  0x00007f94e1112f52: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1112f56: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e1112f5b: hlt    
[Deopt Handler Code]
  0x00007f94e1112f5c: mov    $0x7f94e1112f5c,%r10  ;   {section_word}
  0x00007f94e1112f66: push   %r10
  0x00007f94e1112f68: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1112f6d: hlt    
  0x00007f94e1112f6e: hlt    
  0x00007f94e1112f6f: hlt    
Decoding compiled method 0x00007f94e1113210:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x50]  (sp of caller)
  0x00007f94e11133a0: mov    0x8(%rsi),%r10d
  0x00007f94e11133a4: shl    $0x3,%r10
  0x00007f94e11133a8: cmp    %rax,%r10
  0x00007f94e11133ab: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e11133b1: nopw   0x0(%rax,%rax,1)
  0x00007f94e11133bc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e11133c0: mov    %eax,-0x14000(%rsp)
  0x00007f94e11133c7: push   %rbp
  0x00007f94e11133c8: sub    $0x40,%rsp
  0x00007f94e11133cc: mov    $0x7f94e0275cf0,%rax  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e11133d6: mov    0xdc(%rax),%edi
  0x00007f94e11133dc: add    $0x8,%edi
  0x00007f94e11133df: mov    %edi,0xdc(%rax)
  0x00007f94e11133e5: mov    $0x7f94e00303c8,%rax  ;   {metadata({method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e11133ef: and    $0x1ff8,%edi
  0x00007f94e11133f5: cmp    $0x0,%edi
  0x00007f94e11133f8: je     0x00007f94e11135f8  ;*iload_1
                                                ; - java.lang.String::lastIndexOf@0 (line 1649)

  0x00007f94e11133fe: cmp    $0x10000,%edx
  0x00007f94e1113404: mov    $0x7f94e0275cf0,%rax  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e111340e: mov    $0x108,%rdi
  0x00007f94e1113418: jge    0x00007f94e1113428
  0x00007f94e111341e: mov    $0x118,%rdi
  0x00007f94e1113428: mov    (%rax,%rdi,1),%rbx
  0x00007f94e111342c: lea    0x1(%rbx),%rbx
  0x00007f94e1113430: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e1113434: jge    0x00007f94e11135d1  ;*if_icmpge
                                                ; - java.lang.String::lastIndexOf@3 (line 1649)

  0x00007f94e111343a: mov    0xc(%rsi),%eax
  0x00007f94e111343d: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::lastIndexOf@7 (line 1652)

  0x00007f94e1113441: mov    0xc(%rax),%esi     ;*arraylength
                                                ; - java.lang.String::lastIndexOf@13 (line 1653)
                                                ; implicit exception: dispatches to 0x00007f94e111360f
  0x00007f94e1113444: dec    %esi
  0x00007f94e1113446: mov    $0x7f94e0275cf0,%rdi  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e1113450: addq   $0x1,0x128(%rdi)
  0x00007f94e1113458: mov    $0x7f94e01f91c0,%rdi  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1113462: mov    0xdc(%rdi),%ebx
  0x00007f94e1113468: add    $0x8,%ebx
  0x00007f94e111346b: mov    %ebx,0xdc(%rdi)
  0x00007f94e1113471: mov    $0x7f94e011eb90,%rdi  ;   {metadata({method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e111347b: and    $0x7ffff8,%ebx
  0x00007f94e1113481: cmp    $0x0,%ebx
  0x00007f94e1113484: je     0x00007f94e1113614
  0x00007f94e111348a: cmp    %esi,%ecx
  0x00007f94e111348c: mov    $0x7f94e01f91c0,%rdi  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1113496: mov    $0x108,%rbx
  0x00007f94e11134a0: jg     0x00007f94e11134b0
  0x00007f94e11134a6: mov    $0x118,%rbx
  0x00007f94e11134b0: mov    (%rdi,%rbx,1),%r8
  0x00007f94e11134b4: lea    0x1(%r8),%r8
  0x00007f94e11134b8: mov    %r8,(%rdi,%rbx,1)
  0x00007f94e11134bc: jg     0x00007f94e11134d7  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)

  0x00007f94e11134c2: mov    $0x7f94e01f91c0,%rsi  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e11134cc: incl   0x128(%rsi)
  0x00007f94e11134d2: jmpq   0x00007f94e1113573  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)

  0x00007f94e11134d7: mov    %rsi,%rcx
  0x00007f94e11134da: jmpq   0x00007f94e1113573  ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)

  0x00007f94e11134df: nop    
  0x00007f94e11134e0: movslq %ecx,%rsi
  0x00007f94e11134e3: cmp    0xc(%rax),%ecx
  0x00007f94e11134e6: jae    0x00007f94e111362b
  0x00007f94e11134ec: movzwl 0x10(%rax,%rsi,2),%esi  ;*caload
                                                ; - java.lang.String::lastIndexOf@29 (line 1655)

  0x00007f94e11134f1: cmp    %edx,%esi
  0x00007f94e11134f3: mov    $0x7f94e0275cf0,%rsi  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e11134fd: mov    $0x158,%rdi
  0x00007f94e1113507: jne    0x00007f94e1113517
  0x00007f94e111350d: mov    $0x168,%rdi
  0x00007f94e1113517: mov    (%rsi,%rdi,1),%rbx
  0x00007f94e111351b: lea    0x1(%rbx),%rbx
  0x00007f94e111351f: mov    %rbx,(%rsi,%rdi,1)
  0x00007f94e1113523: je     0x00007f94e11135b1  ;*if_icmpne
                                                ; - java.lang.String::lastIndexOf@31 (line 1655)

  0x00007f94e1113529: dec    %ecx
  0x00007f94e111352b: mov    $0x7f94e0275cf0,%rsi  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e1113535: mov    0xe0(%rsi),%edi
  0x00007f94e111353b: add    $0x8,%edi
  0x00007f94e111353e: mov    %edi,0xe0(%rsi)
  0x00007f94e1113544: mov    $0x7f94e00303c8,%rsi  ;   {metadata({method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e111354e: and    $0xfff8,%edi
  0x00007f94e1113554: cmp    $0x0,%edi
  0x00007f94e1113557: je     0x00007f94e1113634  ; OopMap{rax=Oop off=445}
                                                ;*goto
                                                ; - java.lang.String::lastIndexOf@40 (line 1654)

  0x00007f94e111355d: test   %eax,0x16edbb9d(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e1113563: mov    $0x7f94e0275cf0,%rsi  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e111356d: incl   0x178(%rsi)        ;*goto
                                                ; - java.lang.String::lastIndexOf@40 (line 1654)

  0x00007f94e1113573: cmp    $0x0,%ecx
  0x00007f94e1113576: mov    $0x7f94e0275cf0,%rsi  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e1113580: mov    $0x138,%rdi
  0x00007f94e111358a: jl     0x00007f94e111359a
  0x00007f94e1113590: mov    $0x148,%rdi
  0x00007f94e111359a: mov    (%rsi,%rdi,1),%rbx
  0x00007f94e111359e: lea    0x1(%rbx),%rbx
  0x00007f94e11135a2: mov    %rbx,(%rsi,%rdi,1)
  0x00007f94e11135a6: jl     0x00007f94e11135c0
  0x00007f94e11135ac: jmpq   0x00007f94e11134e0  ;*iflt
                                                ; - java.lang.String::lastIndexOf@23 (line 1654)

  0x00007f94e11135b1: mov    %rcx,%rax
  0x00007f94e11135b4: add    $0x40,%rsp
  0x00007f94e11135b8: pop    %rbp
  0x00007f94e11135b9: test   %eax,0x16edbb41(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11135bf: retq                      ;*ireturn
                                                ; - java.lang.String::lastIndexOf@36 (line 1656)

  0x00007f94e11135c0: mov    $0xffffffff,%eax
  0x00007f94e11135c5: add    $0x40,%rsp
  0x00007f94e11135c9: pop    %rbp
  0x00007f94e11135ca: test   %eax,0x16edbb30(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11135d0: retq                      ;*ireturn
                                                ; - java.lang.String::lastIndexOf@44 (line 1659)

  0x00007f94e11135d1: mov    %rsi,%rdi
  0x00007f94e11135d4: mov    $0x7f94e0275cf0,%rbx  ;   {metadata(method data for {method} {0x00007f94e00303c8} 'lastIndexOf' '(II)I' in 'java/lang/String')}
  0x00007f94e11135de: addq   $0x1,0x190(%rbx)
  0x00007f94e11135e6: nop    
  0x00007f94e11135e7: callq  0x00007f94e1046020  ; OopMap{off=588}
                                                ;*invokespecial lastIndexOfSupplementary
                                                ; - java.lang.String::lastIndexOf@48 (line 1661)
                                                ;   {optimized virtual_call}
  0x00007f94e11135ec: add    $0x40,%rsp
  0x00007f94e11135f0: pop    %rbp
  0x00007f94e11135f1: test   %eax,0x16edbb09(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11135f7: retq   
  0x00007f94e11135f8: mov    %rax,0x8(%rsp)
  0x00007f94e11135fd: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1113605: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=618}
                                                ;*synchronization entry
                                                ; - java.lang.String::lastIndexOf@-1 (line 1649)
                                                ;   {runtime_call}
  0x00007f94e111360a: jmpq   0x00007f94e11133fe
  0x00007f94e111360f: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=628}
                                                ;*arraylength
                                                ; - java.lang.String::lastIndexOf@13 (line 1653)
                                                ;   {runtime_call}
  0x00007f94e1113614: mov    %rdi,0x8(%rsp)
  0x00007f94e1113619: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1113621: callq  0x00007f94e10fc760  ; OopMap{rax=Oop off=646}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.lang.String::lastIndexOf@16 (line 1653)
                                                ;   {runtime_call}
  0x00007f94e1113626: jmpq   0x00007f94e111348a
  0x00007f94e111362b: mov    %rcx,(%rsp)
  0x00007f94e111362f: callq  0x00007f94e106bc40  ; OopMap{rax=Oop off=660}
                                                ;*caload
                                                ; - java.lang.String::lastIndexOf@29 (line 1655)
                                                ;   {runtime_call}
  0x00007f94e1113634: mov    %rsi,0x8(%rsp)
  0x00007f94e1113639: movq   $0x28,(%rsp)
  0x00007f94e1113641: callq  0x00007f94e10fc760  ; OopMap{rax=Oop off=678}
                                                ;*goto
                                                ; - java.lang.String::lastIndexOf@40 (line 1654)
                                                ;   {runtime_call}
  0x00007f94e1113646: jmpq   0x00007f94e111355d
  0x00007f94e111364b: nop    
  0x00007f94e111364c: nop    
  0x00007f94e111364d: mov    0x2a8(%r15),%rax
  0x00007f94e1113654: mov    $0x0,%r10
  0x00007f94e111365e: mov    %r10,0x2a8(%r15)
  0x00007f94e1113665: mov    $0x0,%r10
  0x00007f94e111366f: mov    %r10,0x2b0(%r15)
  0x00007f94e1113676: add    $0x40,%rsp
  0x00007f94e111367a: pop    %rbp
  0x00007f94e111367b: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
[Stub Code]
  0x00007f94e1113680: nop                       ;   {no_reloc}
  0x00007f94e1113681: nop    
  0x00007f94e1113682: nop    
  0x00007f94e1113683: nop    
  0x00007f94e1113684: nop    
  0x00007f94e1113685: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111368f: jmpq   0x00007f94e111368f  ;   {runtime_call}
[Exception Handler]
  0x00007f94e1113694: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e1113699: mov    %rsp,-0x28(%rsp)
  0x00007f94e111369e: sub    $0x80,%rsp
  0x00007f94e11136a5: mov    %rax,0x78(%rsp)
  0x00007f94e11136aa: mov    %rcx,0x70(%rsp)
  0x00007f94e11136af: mov    %rdx,0x68(%rsp)
  0x00007f94e11136b4: mov    %rbx,0x60(%rsp)
  0x00007f94e11136b9: mov    %rbp,0x50(%rsp)
  0x00007f94e11136be: mov    %rsi,0x48(%rsp)
  0x00007f94e11136c3: mov    %rdi,0x40(%rsp)
  0x00007f94e11136c8: mov    %r8,0x38(%rsp)
  0x00007f94e11136cd: mov    %r9,0x30(%rsp)
  0x00007f94e11136d2: mov    %r10,0x28(%rsp)
  0x00007f94e11136d7: mov    %r11,0x20(%rsp)
  0x00007f94e11136dc: mov    %r12,0x18(%rsp)
  0x00007f94e11136e1: mov    %r13,0x10(%rsp)
  0x00007f94e11136e6: mov    %r14,0x8(%rsp)
  0x00007f94e11136eb: mov    %r15,(%rsp)
  0x00007f94e11136ef: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e11136f9: mov    $0x7f94e1113699,%rsi  ;   {internal_word}
  0x00007f94e1113703: mov    %rsp,%rdx
  0x00007f94e1113706: and    $0xfffffffffffffff0,%rsp
  0x00007f94e111370a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e111370f: hlt    
[Deopt Handler Code]
  0x00007f94e1113710: mov    $0x7f94e1113710,%r10  ;   {section_word}
  0x00007f94e111371a: push   %r10
  0x00007f94e111371c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1113721: hlt    
  0x00007f94e1113722: hlt    
  0x00007f94e1113723: hlt    
  0x00007f94e1113724: hlt    
  0x00007f94e1113725: hlt    
  0x00007f94e1113726: hlt    
  0x00007f94e1113727: hlt    
Decoding compiled method 0x00007f94e1113990:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays'
  # parm0:    rsi:rsi   = '[C'
  # parm1:    rdx       = int
  #           [sp+0x70]  (sp of caller)
  0x00007f94e1113b20: mov    %eax,-0x14000(%rsp)
  0x00007f94e1113b27: push   %rbp
  0x00007f94e1113b28: sub    $0x60,%rsp
  0x00007f94e1113b2c: mov    %rsi,%r8
  0x00007f94e1113b2f: mov    %rdx,%r9
  0x00007f94e1113b32: mov    $0x7f94e0278e08,%rbx  ;   {metadata(method data for {method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1113b3c: mov    0xdc(%rbx),%edx
  0x00007f94e1113b42: add    $0x8,%edx
  0x00007f94e1113b45: mov    %edx,0xdc(%rbx)
  0x00007f94e1113b4b: mov    $0x7f94e0143238,%rbx  ;   {metadata({method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1113b55: and    $0x1ff8,%edx
  0x00007f94e1113b5b: cmp    $0x0,%edx
  0x00007f94e1113b5e: je     0x00007f94e1113d0a  ;*iload_1
                                                ; - java.util.Arrays::copyOf@0 (line 3332)

  0x00007f94e1113b64: mov    %r9,%rbx
  0x00007f94e1113b67: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007f94e1113b71: movslq %ebx,%rbx
  0x00007f94e1113b74: mov    %rbx,%rdi
  0x00007f94e1113b77: cmp    $0xffffff,%rbx
  0x00007f94e1113b7e: ja     0x00007f94e1113d21
  0x00007f94e1113b84: mov    $0x17,%rsi
  0x00007f94e1113b8e: lea    (%rsi,%rbx,2),%rsi
  0x00007f94e1113b92: and    $0xfffffffffffffff8,%rsi
  0x00007f94e1113b96: mov    0x60(%r15),%rax
  0x00007f94e1113b9a: lea    (%rax,%rsi,1),%rsi
  0x00007f94e1113b9e: cmp    0x70(%r15),%rsi
  0x00007f94e1113ba2: ja     0x00007f94e1113d21
  0x00007f94e1113ba8: mov    %rsi,0x60(%r15)
  0x00007f94e1113bac: sub    %rax,%rsi
  0x00007f94e1113baf: movq   $0x1,(%rax)
  0x00007f94e1113bb6: mov    %rdx,%rcx
  0x00007f94e1113bb9: shr    $0x3,%rcx
  0x00007f94e1113bbd: mov    %ecx,0x8(%rax)
  0x00007f94e1113bc0: mov    %ebx,0xc(%rax)
  0x00007f94e1113bc3: sub    $0x10,%rsi
  0x00007f94e1113bc7: je     0x00007f94e1113bde
  0x00007f94e1113bcd: xor    %rbx,%rbx
  0x00007f94e1113bd0: shr    $0x3,%rsi
  0x00007f94e1113bd4: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f94e1113bd9: dec    %rsi
  0x00007f94e1113bdc: jne    0x00007f94e1113bd4  ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)

  0x00007f94e1113bde: mov    0xc(%r8),%esi      ;*arraylength
                                                ; - java.util.Arrays::copyOf@9 (line 3333)
                                                ; implicit exception: dispatches to 0x00007f94e1113d2b
  0x00007f94e1113be2: mov    $0x7f94e0278e08,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1113bec: addq   $0x1,0x108(%rdx)
  0x00007f94e1113bf4: mov    $0x7f94e01f91c0,%rdx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1113bfe: mov    0xdc(%rdx),%ecx
  0x00007f94e1113c04: add    $0x8,%ecx
  0x00007f94e1113c07: mov    %ecx,0xdc(%rdx)
  0x00007f94e1113c0d: mov    $0x7f94e011eb90,%rdx  ;   {metadata({method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1113c17: and    $0x7ffff8,%ecx
  0x00007f94e1113c1d: cmp    $0x0,%ecx
  0x00007f94e1113c20: je     0x00007f94e1113d30
  0x00007f94e1113c26: cmp    %r9d,%esi
  0x00007f94e1113c29: mov    $0x7f94e01f91c0,%rdx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1113c33: mov    $0x108,%rcx
  0x00007f94e1113c3d: jg     0x00007f94e1113c4d
  0x00007f94e1113c43: mov    $0x118,%rcx
  0x00007f94e1113c4d: mov    (%rdx,%rcx,1),%rdi
  0x00007f94e1113c51: lea    0x1(%rdi),%rdi
  0x00007f94e1113c55: mov    %rdi,(%rdx,%rcx,1)
  0x00007f94e1113c59: jg     0x00007f94e1113c72  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)

  0x00007f94e1113c5f: mov    $0x7f94e01f91c0,%rdx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1113c69: incl   0x128(%rdx)
  0x00007f94e1113c6f: mov    %rsi,%r9           ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)

  0x00007f94e1113c72: mov    $0x7f94e0278e08,%rsi  ;   {metadata(method data for {method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1113c7c: addq   $0x1,0x118(%rsi)
  0x00007f94e1113c84: mov    %r8,%rsi
  0x00007f94e1113c87: mov    $0x0,%edx
  0x00007f94e1113c8c: mov    %rax,%rcx
  0x00007f94e1113c8f: mov    $0x0,%r8d
  0x00007f94e1113c95: mov    %rax,0x50(%rsp)
  0x00007f94e1113c9a: lea    (%rdx,%r9,1),%rdi
  0x00007f94e1113c9e: cmp    0xc(%rsi),%edi
  0x00007f94e1113ca1: ja     0x00007f94e1113d47
  0x00007f94e1113ca7: lea    (%r8,%r9,1),%rdi
  0x00007f94e1113cab: cmp    0xc(%rcx),%edi
  0x00007f94e1113cae: ja     0x00007f94e1113d47
  0x00007f94e1113cb4: test   %r9d,%r9d
  0x00007f94e1113cb7: jl     0x00007f94e1113d47
  0x00007f94e1113cbd: je     0x00007f94e1113cf9
  0x00007f94e1113cc3: movslq %edx,%rdx
  0x00007f94e1113cc6: movslq %r8d,%r8
  0x00007f94e1113cc9: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007f94e1113cce: lea    0x10(%rcx,%r8,2),%rsi
  0x00007f94e1113cd3: mov    %r9,%rdx
  0x00007f94e1113cd6: test   $0xf,%esp
  0x00007f94e1113cdc: je     0x00007f94e1113cf4
  0x00007f94e1113ce2: sub    $0x8,%rsp
  0x00007f94e1113ce6: callq  Stub::jshort_disjoint_arraycopy
                                                ;   {runtime_call}
  0x00007f94e1113ceb: add    $0x8,%rsp
  0x00007f94e1113cef: jmpq   0x00007f94e1113cf9
  0x00007f94e1113cf4: callq  Stub::jshort_disjoint_arraycopy
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ;   {runtime_call}
  0x00007f94e1113cf9: mov    0x50(%rsp),%rax
  0x00007f94e1113cfe: add    $0x60,%rsp
  0x00007f94e1113d02: pop    %rbp
  0x00007f94e1113d03: test   %eax,0x16edb3f7(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1113d09: retq   
  0x00007f94e1113d0a: mov    %rbx,0x8(%rsp)
  0x00007f94e1113d0f: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1113d17: callq  0x00007f94e10fc760  ; OopMap{r8=Oop off=508}
                                                ;*synchronization entry
                                                ; - java.util.Arrays::copyOf@-1 (line 3332)
                                                ;   {runtime_call}
  0x00007f94e1113d1c: jmpq   0x00007f94e1113b64
  0x00007f94e1113d21: callq  0x00007f94e10fa6a0  ; OopMap{r8=Oop off=518}
                                                ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)
                                                ;   {runtime_call}
  0x00007f94e1113d26: jmpq   0x00007f94e1113bde
  0x00007f94e1113d2b: callq  0x00007f94e10f9680  ; OopMap{r8=Oop rax=Oop off=528}
                                                ;*arraylength
                                                ; - java.util.Arrays::copyOf@9 (line 3333)
                                                ;   {runtime_call}
  0x00007f94e1113d30: mov    %rdx,0x8(%rsp)
  0x00007f94e1113d35: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1113d3d: callq  0x00007f94e10fc760  ; OopMap{r8=Oop rax=Oop off=546}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ;   {runtime_call}
  0x00007f94e1113d42: jmpq   0x00007f94e1113c26
  0x00007f94e1113d47: callq  0x00007f94e1046420  ; OopMap{[80]=Oop off=556}
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ;   {static_call}
  0x00007f94e1113d4c: jmp    0x00007f94e1113cf9
  0x00007f94e1113d4e: nop    
  0x00007f94e1113d4f: nop    
  0x00007f94e1113d50: mov    0x2a8(%r15),%rax
  0x00007f94e1113d57: mov    $0x0,%r10
  0x00007f94e1113d61: mov    %r10,0x2a8(%r15)
  0x00007f94e1113d68: mov    $0x0,%r10
  0x00007f94e1113d72: mov    %r10,0x2b0(%r15)
  0x00007f94e1113d79: add    $0x60,%rsp
  0x00007f94e1113d7d: pop    %rbp
  0x00007f94e1113d7e: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1113d83: hlt    
  0x00007f94e1113d84: hlt    
  0x00007f94e1113d85: hlt    
  0x00007f94e1113d86: hlt    
  0x00007f94e1113d87: hlt    
  0x00007f94e1113d88: hlt    
  0x00007f94e1113d89: hlt    
  0x00007f94e1113d8a: hlt    
  0x00007f94e1113d8b: hlt    
  0x00007f94e1113d8c: hlt    
  0x00007f94e1113d8d: hlt    
  0x00007f94e1113d8e: hlt    
  0x00007f94e1113d8f: hlt    
  0x00007f94e1113d90: hlt    
  0x00007f94e1113d91: hlt    
  0x00007f94e1113d92: hlt    
  0x00007f94e1113d93: hlt    
  0x00007f94e1113d94: hlt    
  0x00007f94e1113d95: hlt    
  0x00007f94e1113d96: hlt    
  0x00007f94e1113d97: hlt    
  0x00007f94e1113d98: hlt    
  0x00007f94e1113d99: hlt    
  0x00007f94e1113d9a: hlt    
  0x00007f94e1113d9b: hlt    
  0x00007f94e1113d9c: hlt    
  0x00007f94e1113d9d: hlt    
  0x00007f94e1113d9e: hlt    
  0x00007f94e1113d9f: hlt    
[Stub Code]
  0x00007f94e1113da0: nop                       ;   {no_reloc}
  0x00007f94e1113da1: nop    
  0x00007f94e1113da2: nop    
  0x00007f94e1113da3: nop    
  0x00007f94e1113da4: nop    
  0x00007f94e1113da5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e1113daf: jmpq   0x00007f94e1113daf  ;   {runtime_call}
[Exception Handler]
  0x00007f94e1113db4: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e1113db9: mov    %rsp,-0x28(%rsp)
  0x00007f94e1113dbe: sub    $0x80,%rsp
  0x00007f94e1113dc5: mov    %rax,0x78(%rsp)
  0x00007f94e1113dca: mov    %rcx,0x70(%rsp)
  0x00007f94e1113dcf: mov    %rdx,0x68(%rsp)
  0x00007f94e1113dd4: mov    %rbx,0x60(%rsp)
  0x00007f94e1113dd9: mov    %rbp,0x50(%rsp)
  0x00007f94e1113dde: mov    %rsi,0x48(%rsp)
  0x00007f94e1113de3: mov    %rdi,0x40(%rsp)
  0x00007f94e1113de8: mov    %r8,0x38(%rsp)
  0x00007f94e1113ded: mov    %r9,0x30(%rsp)
  0x00007f94e1113df2: mov    %r10,0x28(%rsp)
  0x00007f94e1113df7: mov    %r11,0x20(%rsp)
  0x00007f94e1113dfc: mov    %r12,0x18(%rsp)
  0x00007f94e1113e01: mov    %r13,0x10(%rsp)
  0x00007f94e1113e06: mov    %r14,0x8(%rsp)
  0x00007f94e1113e0b: mov    %r15,(%rsp)
  0x00007f94e1113e0f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1113e19: mov    $0x7f94e1113db9,%rsi  ;   {internal_word}
  0x00007f94e1113e23: mov    %rsp,%rdx
  0x00007f94e1113e26: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1113e2a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e1113e2f: hlt    
[Deopt Handler Code]
  0x00007f94e1113e30: mov    $0x7f94e1113e30,%r10  ;   {section_word}
  0x00007f94e1113e3a: push   %r10
  0x00007f94e1113e3c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1113e41: hlt    
  0x00007f94e1113e42: hlt    
  0x00007f94e1113e43: hlt    
  0x00007f94e1113e44: hlt    
  0x00007f94e1113e45: hlt    
  0x00007f94e1113e46: hlt    
  0x00007f94e1113e47: hlt    
Decoding compiled method 0x00007f94e11143d0:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f94e01ec950} 'of' '(I)Ljava/lang/CharacterData;' in 'java/lang/CharacterData'
  # parm0:    rsi       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1114580: mov    %eax,-0x14000(%rsp)
  0x00007f94e1114587: push   %rbp
  0x00007f94e1114588: sub    $0x30,%rsp
  0x00007f94e111458c: mov    $0x7f94e028cac8,%rax  ;   {metadata(method data for {method} {0x00007f94e01ec950} 'of' '(I)Ljava/lang/CharacterData;' in 'java/lang/CharacterData')}
  0x00007f94e1114596: mov    0xdc(%rax),%edi
  0x00007f94e111459c: add    $0x8,%edi
  0x00007f94e111459f: mov    %edi,0xdc(%rax)
  0x00007f94e11145a5: mov    $0x7f94e01ec950,%rax  ;   {metadata({method} {0x00007f94e01ec950} 'of' '(I)Ljava/lang/CharacterData;' in 'java/lang/CharacterData')}
  0x00007f94e11145af: and    $0x1ff8,%edi
  0x00007f94e11145b5: cmp    $0x0,%edi
  0x00007f94e11145b8: je     0x00007f94e111473c  ;*iload_0
                                                ; - java.lang.CharacterData::of@0 (line 77)

  0x00007f94e11145be: mov    %rsi,%rax
  0x00007f94e11145c1: shr    $0x8,%eax
  0x00007f94e11145c4: cmp    $0x0,%eax
  0x00007f94e11145c7: mov    $0x7f94e028cac8,%rax  ;   {metadata(method data for {method} {0x00007f94e01ec950} 'of' '(I)Ljava/lang/CharacterData;' in 'java/lang/CharacterData')}
  0x00007f94e11145d1: mov    $0x108,%rdi
  0x00007f94e11145db: jne    0x00007f94e11145eb
  0x00007f94e11145e1: mov    $0x118,%rdi
  0x00007f94e11145eb: mov    (%rax,%rdi,1),%rbx
  0x00007f94e11145ef: lea    0x1(%rbx),%rbx
  0x00007f94e11145f3: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e11145f7: je     0x00007f94e1114726  ;*ifne
                                                ; - java.lang.CharacterData::of@4 (line 77)

  0x00007f94e11145fd: shr    $0x10,%esi
  0x00007f94e1114600: cmp    $0x0,%esi
  0x00007f94e1114603: je     0x00007f94e11146fe
  0x00007f94e1114609: cmp    $0x1,%esi
  0x00007f94e111460c: je     0x00007f94e11146d6
  0x00007f94e1114612: cmp    $0x2,%esi
  0x00007f94e1114615: je     0x00007f94e11146ae
  0x00007f94e111461b: cmp    $0xe,%esi
  0x00007f94e111461e: je     0x00007f94e1114686
  0x00007f94e1114624: cmp    $0xf,%esi
  0x00007f94e1114627: je     0x00007f94e1114636
  0x00007f94e111462d: cmp    $0x10,%esi
  0x00007f94e1114630: jne    0x00007f94e111465e  ;*tableswitch
                                                ; - java.lang.CharacterData::of@15 (line 80)

  0x00007f94e1114636: xchg   %ax,%ax
  0x00007f94e1114638: jmpq   0x00007f94e11147a8  ;   {no_reloc}
  0x00007f94e111463d: add    %al,(%rax)
  0x00007f94e111463f: add    %al,(%rax)
  0x00007f94e1114641: add    %ah,0xf(%rsi)
  0x00007f94e1114644: (bad)  
  0x00007f94e1114645: add    %r8b,(%rax)
  0x00007f94e1114648: jmpq   0x00007f94e11147c2  ; implicit exception: dispatches to 0x00007f94e11147b2
  0x00007f94e111464d: nop    
  0x00007f94e111464e: shl    $0x3,%rax          ;*getstatic instance
                                                ; - java.lang.CharacterData::of@112 (line 91)

  0x00007f94e1114652: add    $0x30,%rsp
  0x00007f94e1114656: pop    %rbp
  0x00007f94e1114657: test   %eax,0x16edaaa3(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e111465d: retq                      ;*areturn
                                                ; - java.lang.CharacterData::of@115 (line 91)

  0x00007f94e111465e: xchg   %ax,%ax
  0x00007f94e1114660: jmpq   0x00007f94e1114821  ;   {no_reloc}
  0x00007f94e1114665: add    %al,(%rax)
  0x00007f94e1114667: add    %al,(%rax)
  0x00007f94e1114669: add    %ah,0xf(%rsi)
  0x00007f94e111466c: (bad)  
  0x00007f94e111466d: add    %r8b,(%rax)
  0x00007f94e1114670: jmpq   0x00007f94e111483b  ; implicit exception: dispatches to 0x00007f94e111482b
  0x00007f94e1114675: nop    
  0x00007f94e1114676: shl    $0x3,%rax          ;*getstatic instance
                                                ; - java.lang.CharacterData::of@116 (line 93)

  0x00007f94e111467a: add    $0x30,%rsp
  0x00007f94e111467e: pop    %rbp
  0x00007f94e111467f: test   %eax,0x16edaa7b(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1114685: retq                      ;*areturn
                                                ; - java.lang.CharacterData::of@119 (line 93)

  0x00007f94e1114686: xchg   %ax,%ax
  0x00007f94e1114688: jmpq   0x00007f94e111489a  ;   {no_reloc}
  0x00007f94e111468d: add    %al,(%rax)
  0x00007f94e111468f: add    %al,(%rax)
  0x00007f94e1114691: add    %ah,0xf(%rsi)
  0x00007f94e1114694: (bad)  
  0x00007f94e1114695: add    %r8b,(%rax)
  0x00007f94e1114698: jmpq   0x00007f94e11148b4  ; implicit exception: dispatches to 0x00007f94e11148a4
  0x00007f94e111469d: nop    
  0x00007f94e111469e: shl    $0x3,%rax          ;*getstatic instance
                                                ; - java.lang.CharacterData::of@108 (line 88)

  0x00007f94e11146a2: add    $0x30,%rsp
  0x00007f94e11146a6: pop    %rbp
  0x00007f94e11146a7: test   %eax,0x16edaa53(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11146ad: retq                      ;*areturn
                                                ; - java.lang.CharacterData::of@111 (line 88)

  0x00007f94e11146ae: xchg   %ax,%ax
  0x00007f94e11146b0: jmpq   0x00007f94e1114913  ;   {no_reloc}
  0x00007f94e11146b5: add    %al,(%rax)
  0x00007f94e11146b7: add    %al,(%rax)
  0x00007f94e11146b9: add    %ah,0xf(%rsi)
  0x00007f94e11146bc: (bad)  
  0x00007f94e11146bd: add    %r8b,(%rax)
  0x00007f94e11146c0: jmpq   0x00007f94e111492d  ; implicit exception: dispatches to 0x00007f94e111491d
  0x00007f94e11146c5: nop    
  0x00007f94e11146c6: shl    $0x3,%rax          ;*getstatic instance
                                                ; - java.lang.CharacterData::of@104 (line 86)

  0x00007f94e11146ca: add    $0x30,%rsp
  0x00007f94e11146ce: pop    %rbp
  0x00007f94e11146cf: test   %eax,0x16edaa2b(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11146d5: retq                      ;*areturn
                                                ; - java.lang.CharacterData::of@107 (line 86)

  0x00007f94e11146d6: xchg   %ax,%ax
  0x00007f94e11146d8: jmpq   0x00007f94e111498c  ;   {no_reloc}
  0x00007f94e11146dd: add    %al,(%rax)
  0x00007f94e11146df: add    %al,(%rax)
  0x00007f94e11146e1: add    %ah,0xf(%rsi)
  0x00007f94e11146e4: (bad)  
  0x00007f94e11146e5: add    %r8b,(%rax)
  0x00007f94e11146e8: jmpq   0x00007f94e11149a6  ; implicit exception: dispatches to 0x00007f94e1114996
  0x00007f94e11146ed: nop    
  0x00007f94e11146ee: shl    $0x3,%rax          ;*getstatic instance
                                                ; - java.lang.CharacterData::of@100 (line 84)

  0x00007f94e11146f2: add    $0x30,%rsp
  0x00007f94e11146f6: pop    %rbp
  0x00007f94e11146f7: test   %eax,0x16edaa03(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11146fd: retq                      ;*areturn
                                                ; - java.lang.CharacterData::of@103 (line 84)

  0x00007f94e11146fe: xchg   %ax,%ax
  0x00007f94e1114700: jmpq   0x00007f94e1114a05  ;   {no_reloc}
  0x00007f94e1114705: add    %al,(%rax)
  0x00007f94e1114707: add    %al,(%rax)
  0x00007f94e1114709: add    %ah,0xf(%rsi)
  0x00007f94e111470c: (bad)  
  0x00007f94e111470d: add    %r8b,(%rax)
  0x00007f94e1114710: jmpq   0x00007f94e1114a1f  ; implicit exception: dispatches to 0x00007f94e1114a0f
  0x00007f94e1114715: nop    
  0x00007f94e1114716: shl    $0x3,%rax          ;*getstatic instance
                                                ; - java.lang.CharacterData::of@96 (line 82)

  0x00007f94e111471a: add    $0x30,%rsp
  0x00007f94e111471e: pop    %rbp
  0x00007f94e111471f: test   %eax,0x16eda9db(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1114725: retq                      ;*areturn
                                                ; - java.lang.CharacterData::of@99 (line 82)

  0x00007f94e1114726: mov    $0x781e43dd0,%rax  ;   {oop(a 'java/lang/CharacterDataLatin1')}
  0x00007f94e1114730: add    $0x30,%rsp
  0x00007f94e1114734: pop    %rbp
  0x00007f94e1114735: test   %eax,0x16eda9c5(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e111473b: retq   
  0x00007f94e111473c: mov    %rax,0x8(%rsp)
  0x00007f94e1114741: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1114749: callq  0x00007f94e10fc760  ; OopMap{off=462}
                                                ;*synchronization entry
                                                ; - java.lang.CharacterData::of@-1 (line 77)
                                                ;   {runtime_call}
  0x00007f94e111474e: jmpq   0x00007f94e11145be
  0x00007f94e1114753: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007f94e111475d: push   %rax
  0x00007f94e111475e: push   %rbx
  0x00007f94e111475f: mov    0x48(%rax),%rbx
  0x00007f94e1114763: push   %rdi
  0x00007f94e1114764: push   %rsi
  0x00007f94e1114765: push   %rdx
  0x00007f94e1114766: push   %rcx
  0x00007f94e1114767: push   %r8
  0x00007f94e1114769: push   %r9
  0x00007f94e111476b: push   %r10
  0x00007f94e111476d: mov    %rsp,%r10
  0x00007f94e1114770: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1114774: push   %r10
  0x00007f94e1114776: push   %r11
  0x00007f94e1114778: mov    $0x1,%edi
  0x00007f94e111477d: callq  0x00007f94f7bbe470  ;   {runtime_call}
  0x00007f94e1114782: pop    %r11
  0x00007f94e1114784: pop    %rsp
  0x00007f94e1114785: pop    %r10
  0x00007f94e1114787: pop    %r9
  0x00007f94e1114789: pop    %r8
  0x00007f94e111478b: pop    %rcx
  0x00007f94e111478c: pop    %rdx
  0x00007f94e111478d: pop    %rsi
  0x00007f94e111478e: pop    %rdi
  0x00007f94e111478f: cmp    0x118(%rbx),%rax
  0x00007f94e1114796: pop    %rbx
  0x00007f94e1114797: pop    %rax
  0x00007f94e1114798: jne    0x00007f94e11147a8
  0x00007f94e111479e: jmpq   0x00007f94e1114642
  0x00007f94e11147a3: mov    $0xa4b5500,%eax
  0x00007f94e11147a8: callq  0x00007f94e10fd1a0  ; OopMap{off=557}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@112 (line 91)
                                                ;   {runtime_call}
  0x00007f94e11147ad: jmpq   0x00007f94e1114638
  0x00007f94e11147b2: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=567}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@112 (line 91)
                                                ;   {runtime_call}
  0x00007f94e11147b7: mov    0x0(%rax),%eax
  0x00007f94e11147bd: mov    $0x6050b00,%eax
  0x00007f94e11147c2: callq  0x00007f94e10ff360  ; OopMap{rax=Oop off=583}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@112 (line 91)
                                                ;   {runtime_call}
  0x00007f94e11147c7: jmpq   0x00007f94e1114648
  0x00007f94e11147cc: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007f94e11147d6: push   %rax
  0x00007f94e11147d7: push   %rbx
  0x00007f94e11147d8: mov    0x48(%rax),%rbx
  0x00007f94e11147dc: push   %rdi
  0x00007f94e11147dd: push   %rsi
  0x00007f94e11147de: push   %rdx
  0x00007f94e11147df: push   %rcx
  0x00007f94e11147e0: push   %r8
  0x00007f94e11147e2: push   %r9
  0x00007f94e11147e4: push   %r10
  0x00007f94e11147e6: mov    %rsp,%r10
  0x00007f94e11147e9: and    $0xfffffffffffffff0,%rsp
  0x00007f94e11147ed: push   %r10
  0x00007f94e11147ef: push   %r11
  0x00007f94e11147f1: mov    $0x1,%edi
  0x00007f94e11147f6: callq  0x00007f94f7bbe470  ;   {runtime_call}
  0x00007f94e11147fb: pop    %r11
  0x00007f94e11147fd: pop    %rsp
  0x00007f94e11147fe: pop    %r10
  0x00007f94e1114800: pop    %r9
  0x00007f94e1114802: pop    %r8
  0x00007f94e1114804: pop    %rcx
  0x00007f94e1114805: pop    %rdx
  0x00007f94e1114806: pop    %rsi
  0x00007f94e1114807: pop    %rdi
  0x00007f94e1114808: cmp    0x118(%rbx),%rax
  0x00007f94e111480f: pop    %rbx
  0x00007f94e1114810: pop    %rax
  0x00007f94e1114811: jne    0x00007f94e1114821
  0x00007f94e1114817: jmpq   0x00007f94e111466a
  0x00007f94e111481c: mov    $0xa4b5500,%eax
  0x00007f94e1114821: callq  0x00007f94e10fd1a0  ; OopMap{off=678}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@116 (line 93)
                                                ;   {runtime_call}
  0x00007f94e1114826: jmpq   0x00007f94e1114660
  0x00007f94e111482b: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=688}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@116 (line 93)
                                                ;   {runtime_call}
  0x00007f94e1114830: mov    0x0(%rax),%eax
  0x00007f94e1114836: mov    $0x6050b00,%eax
  0x00007f94e111483b: callq  0x00007f94e10ff360  ; OopMap{rax=Oop off=704}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@116 (line 93)
                                                ;   {runtime_call}
  0x00007f94e1114840: jmpq   0x00007f94e1114670
  0x00007f94e1114845: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007f94e111484f: push   %rax
  0x00007f94e1114850: push   %rbx
  0x00007f94e1114851: mov    0x48(%rax),%rbx
  0x00007f94e1114855: push   %rdi
  0x00007f94e1114856: push   %rsi
  0x00007f94e1114857: push   %rdx
  0x00007f94e1114858: push   %rcx
  0x00007f94e1114859: push   %r8
  0x00007f94e111485b: push   %r9
  0x00007f94e111485d: push   %r10
  0x00007f94e111485f: mov    %rsp,%r10
  0x00007f94e1114862: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1114866: push   %r10
  0x00007f94e1114868: push   %r11
  0x00007f94e111486a: mov    $0x1,%edi
  0x00007f94e111486f: callq  0x00007f94f7bbe470  ;   {runtime_call}
  0x00007f94e1114874: pop    %r11
  0x00007f94e1114876: pop    %rsp
  0x00007f94e1114877: pop    %r10
  0x00007f94e1114879: pop    %r9
  0x00007f94e111487b: pop    %r8
  0x00007f94e111487d: pop    %rcx
  0x00007f94e111487e: pop    %rdx
  0x00007f94e111487f: pop    %rsi
  0x00007f94e1114880: pop    %rdi
  0x00007f94e1114881: cmp    0x118(%rbx),%rax
  0x00007f94e1114888: pop    %rbx
  0x00007f94e1114889: pop    %rax
  0x00007f94e111488a: jne    0x00007f94e111489a
  0x00007f94e1114890: jmpq   0x00007f94e1114692
  0x00007f94e1114895: mov    $0xa4b5500,%eax
  0x00007f94e111489a: callq  0x00007f94e10fd1a0  ; OopMap{off=799}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@108 (line 88)
                                                ;   {runtime_call}
  0x00007f94e111489f: jmpq   0x00007f94e1114688
  0x00007f94e11148a4: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=809}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@108 (line 88)
                                                ;   {runtime_call}
  0x00007f94e11148a9: mov    0x0(%rax),%eax
  0x00007f94e11148af: mov    $0x6050b00,%eax
  0x00007f94e11148b4: callq  0x00007f94e10ff360  ; OopMap{rax=Oop off=825}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@108 (line 88)
                                                ;   {runtime_call}
  0x00007f94e11148b9: jmpq   0x00007f94e1114698
  0x00007f94e11148be: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007f94e11148c8: push   %rax
  0x00007f94e11148c9: push   %rbx
  0x00007f94e11148ca: mov    0x48(%rax),%rbx
  0x00007f94e11148ce: push   %rdi
  0x00007f94e11148cf: push   %rsi
  0x00007f94e11148d0: push   %rdx
  0x00007f94e11148d1: push   %rcx
  0x00007f94e11148d2: push   %r8
  0x00007f94e11148d4: push   %r9
  0x00007f94e11148d6: push   %r10
  0x00007f94e11148d8: mov    %rsp,%r10
  0x00007f94e11148db: and    $0xfffffffffffffff0,%rsp
  0x00007f94e11148df: push   %r10
  0x00007f94e11148e1: push   %r11
  0x00007f94e11148e3: mov    $0x1,%edi
  0x00007f94e11148e8: callq  0x00007f94f7bbe470  ;   {runtime_call}
  0x00007f94e11148ed: pop    %r11
  0x00007f94e11148ef: pop    %rsp
  0x00007f94e11148f0: pop    %r10
  0x00007f94e11148f2: pop    %r9
  0x00007f94e11148f4: pop    %r8
  0x00007f94e11148f6: pop    %rcx
  0x00007f94e11148f7: pop    %rdx
  0x00007f94e11148f8: pop    %rsi
  0x00007f94e11148f9: pop    %rdi
  0x00007f94e11148fa: cmp    0x118(%rbx),%rax
  0x00007f94e1114901: pop    %rbx
  0x00007f94e1114902: pop    %rax
  0x00007f94e1114903: jne    0x00007f94e1114913
  0x00007f94e1114909: jmpq   0x00007f94e11146ba
  0x00007f94e111490e: mov    $0xa4b5500,%eax
  0x00007f94e1114913: callq  0x00007f94e10fd1a0  ; OopMap{off=920}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@104 (line 86)
                                                ;   {runtime_call}
  0x00007f94e1114918: jmpq   0x00007f94e11146b0
  0x00007f94e111491d: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=930}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@104 (line 86)
                                                ;   {runtime_call}
  0x00007f94e1114922: mov    0x0(%rax),%eax
  0x00007f94e1114928: mov    $0x6050b00,%eax
  0x00007f94e111492d: callq  0x00007f94e10ff360  ; OopMap{rax=Oop off=946}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@104 (line 86)
                                                ;   {runtime_call}
  0x00007f94e1114932: jmpq   0x00007f94e11146c0
  0x00007f94e1114937: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007f94e1114941: push   %rax
  0x00007f94e1114942: push   %rbx
  0x00007f94e1114943: mov    0x48(%rax),%rbx
  0x00007f94e1114947: push   %rdi
  0x00007f94e1114948: push   %rsi
  0x00007f94e1114949: push   %rdx
  0x00007f94e111494a: push   %rcx
  0x00007f94e111494b: push   %r8
  0x00007f94e111494d: push   %r9
  0x00007f94e111494f: push   %r10
  0x00007f94e1114951: mov    %rsp,%r10
  0x00007f94e1114954: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1114958: push   %r10
  0x00007f94e111495a: push   %r11
  0x00007f94e111495c: mov    $0x1,%edi
  0x00007f94e1114961: callq  0x00007f94f7bbe470  ;   {runtime_call}
  0x00007f94e1114966: pop    %r11
  0x00007f94e1114968: pop    %rsp
  0x00007f94e1114969: pop    %r10
  0x00007f94e111496b: pop    %r9
  0x00007f94e111496d: pop    %r8
  0x00007f94e111496f: pop    %rcx
  0x00007f94e1114970: pop    %rdx
  0x00007f94e1114971: pop    %rsi
  0x00007f94e1114972: pop    %rdi
  0x00007f94e1114973: cmp    0x118(%rbx),%rax
  0x00007f94e111497a: pop    %rbx
  0x00007f94e111497b: pop    %rax
  0x00007f94e111497c: jne    0x00007f94e111498c
  0x00007f94e1114982: jmpq   0x00007f94e11146e2
  0x00007f94e1114987: mov    $0xa4b5500,%eax
  0x00007f94e111498c: callq  0x00007f94e10fd1a0  ; OopMap{off=1041}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@100 (line 84)
                                                ;   {runtime_call}
  0x00007f94e1114991: jmpq   0x00007f94e11146d8
  0x00007f94e1114996: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=1051}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@100 (line 84)
                                                ;   {runtime_call}
  0x00007f94e111499b: mov    0x0(%rax),%eax
  0x00007f94e11149a1: mov    $0x6050b00,%eax
  0x00007f94e11149a6: callq  0x00007f94e10ff360  ; OopMap{rax=Oop off=1067}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@100 (line 84)
                                                ;   {runtime_call}
  0x00007f94e11149ab: jmpq   0x00007f94e11146e8
  0x00007f94e11149b0: mov    $0x0,%rax          ;   {oop(NULL)}
  0x00007f94e11149ba: push   %rax
  0x00007f94e11149bb: push   %rbx
  0x00007f94e11149bc: mov    0x48(%rax),%rbx
  0x00007f94e11149c0: push   %rdi
  0x00007f94e11149c1: push   %rsi
  0x00007f94e11149c2: push   %rdx
  0x00007f94e11149c3: push   %rcx
  0x00007f94e11149c4: push   %r8
  0x00007f94e11149c6: push   %r9
  0x00007f94e11149c8: push   %r10
  0x00007f94e11149ca: mov    %rsp,%r10
  0x00007f94e11149cd: and    $0xfffffffffffffff0,%rsp
  0x00007f94e11149d1: push   %r10
  0x00007f94e11149d3: push   %r11
  0x00007f94e11149d5: mov    $0x1,%edi
  0x00007f94e11149da: callq  0x00007f94f7bbe470  ;   {runtime_call}
  0x00007f94e11149df: pop    %r11
  0x00007f94e11149e1: pop    %rsp
  0x00007f94e11149e2: pop    %r10
  0x00007f94e11149e4: pop    %r9
  0x00007f94e11149e6: pop    %r8
  0x00007f94e11149e8: pop    %rcx
  0x00007f94e11149e9: pop    %rdx
  0x00007f94e11149ea: pop    %rsi
  0x00007f94e11149eb: pop    %rdi
  0x00007f94e11149ec: cmp    0x118(%rbx),%rax
  0x00007f94e11149f3: pop    %rbx
  0x00007f94e11149f4: pop    %rax
  0x00007f94e11149f5: jne    0x00007f94e1114a05
  0x00007f94e11149fb: jmpq   0x00007f94e111470a
  0x00007f94e1114a00: mov    $0xa4b5500,%eax
  0x00007f94e1114a05: callq  0x00007f94e10fd1a0  ; OopMap{off=1162}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@96 (line 82)
                                                ;   {runtime_call}
  0x00007f94e1114a0a: jmpq   0x00007f94e1114700
  0x00007f94e1114a0f: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=1172}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@96 (line 82)
                                                ;   {runtime_call}
  0x00007f94e1114a14: mov    0x0(%rax),%eax
  0x00007f94e1114a1a: mov    $0x6050b00,%eax
  0x00007f94e1114a1f: callq  0x00007f94e10ff360  ; OopMap{rax=Oop off=1188}
                                                ;*getstatic instance
                                                ; - java.lang.CharacterData::of@96 (line 82)
                                                ;   {runtime_call}
  0x00007f94e1114a24: jmpq   0x00007f94e1114710
  0x00007f94e1114a29: nop    
  0x00007f94e1114a2a: nop    
  0x00007f94e1114a2b: mov    0x2a8(%r15),%rax
  0x00007f94e1114a32: mov    $0x0,%r10
  0x00007f94e1114a3c: mov    %r10,0x2a8(%r15)
  0x00007f94e1114a43: mov    $0x0,%r10
  0x00007f94e1114a4d: mov    %r10,0x2b0(%r15)
  0x00007f94e1114a54: add    $0x30,%rsp
  0x00007f94e1114a58: pop    %rbp
  0x00007f94e1114a59: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1114a5e: hlt    
  0x00007f94e1114a5f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e1114a60: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e1114a65: mov    %rsp,-0x28(%rsp)
  0x00007f94e1114a6a: sub    $0x80,%rsp
  0x00007f94e1114a71: mov    %rax,0x78(%rsp)
  0x00007f94e1114a76: mov    %rcx,0x70(%rsp)
  0x00007f94e1114a7b: mov    %rdx,0x68(%rsp)
  0x00007f94e1114a80: mov    %rbx,0x60(%rsp)
  0x00007f94e1114a85: mov    %rbp,0x50(%rsp)
  0x00007f94e1114a8a: mov    %rsi,0x48(%rsp)
  0x00007f94e1114a8f: mov    %rdi,0x40(%rsp)
  0x00007f94e1114a94: mov    %r8,0x38(%rsp)
  0x00007f94e1114a99: mov    %r9,0x30(%rsp)
  0x00007f94e1114a9e: mov    %r10,0x28(%rsp)
  0x00007f94e1114aa3: mov    %r11,0x20(%rsp)
  0x00007f94e1114aa8: mov    %r12,0x18(%rsp)
  0x00007f94e1114aad: mov    %r13,0x10(%rsp)
  0x00007f94e1114ab2: mov    %r14,0x8(%rsp)
  0x00007f94e1114ab7: mov    %r15,(%rsp)
  0x00007f94e1114abb: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1114ac5: mov    $0x7f94e1114a65,%rsi  ;   {internal_word}
  0x00007f94e1114acf: mov    %rsp,%rdx
  0x00007f94e1114ad2: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1114ad6: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e1114adb: hlt    
[Deopt Handler Code]
  0x00007f94e1114adc: mov    $0x7f94e1114adc,%r10  ;   {section_word}
  0x00007f94e1114ae6: push   %r10
  0x00007f94e1114ae8: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1114aed: hlt    
  0x00007f94e1114aee: hlt    
  0x00007f94e1114aef: hlt    
Decoding compiled method 0x00007f94e1115050:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e01ed028} 'getProperties' '(I)I' in 'java/lang/CharacterDataLatin1'
  # this:     rsi:rsi   = 'java/lang/CharacterDataLatin1'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f94e11151c0: mov    0x8(%rsi),%r10d
  0x00007f94e11151c4: shl    $0x3,%r10
  0x00007f94e11151c8: cmp    %rax,%r10
  0x00007f94e11151cb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e11151d1: nopw   0x0(%rax,%rax,1)
  0x00007f94e11151dc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e11151e0: mov    %eax,-0x14000(%rsp)
  0x00007f94e11151e7: push   %rbp
  0x00007f94e11151e8: sub    $0x30,%rsp
  0x00007f94e11151ec: mov    $0x7f94e028d530,%rax  ;   {metadata(method data for {method} {0x00007f94e01ed028} 'getProperties' '(I)I' in 'java/lang/CharacterDataLatin1')}
  0x00007f94e11151f6: mov    0xdc(%rax),%edi
  0x00007f94e11151fc: add    $0x8,%edi
  0x00007f94e11151ff: mov    %edi,0xdc(%rax)
  0x00007f94e1115205: mov    $0x7f94e01ed028,%rax  ;   {metadata({method} {0x00007f94e01ed028} 'getProperties' '(I)I' in 'java/lang/CharacterDataLatin1')}
  0x00007f94e111520f: and    $0x1ff8,%edi
  0x00007f94e1115215: cmp    $0x0,%edi
  0x00007f94e1115218: je     0x00007f94e111524a  ;*iload_1
                                                ; - java.lang.CharacterDataLatin1::getProperties@0 (line 71)

  0x00007f94e111521e: and    $0xffff,%edx
  0x00007f94e1115224: mov    $0x781e43de0,%rax  ;   {oop([I)}
  0x00007f94e111522e: movslq %edx,%rsi
  0x00007f94e1115231: cmp    0xc(%rax),%edx     ; implicit exception: dispatches to 0x00007f94e111525e
  0x00007f94e1115234: jae    0x00007f94e1115268
  0x00007f94e111523a: mov    0x10(%rax,%rsi,4),%eax  ;*iaload
                                                ; - java.lang.CharacterDataLatin1::getProperties@7 (line 72)

  0x00007f94e111523e: add    $0x30,%rsp
  0x00007f94e1115242: pop    %rbp
  0x00007f94e1115243: test   %eax,0x16ed9eb7(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1115249: retq   
  0x00007f94e111524a: mov    %rax,0x8(%rsp)
  0x00007f94e111524f: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1115257: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=156}
                                                ;*synchronization entry
                                                ; - java.lang.CharacterDataLatin1::getProperties@-1 (line 71)
                                                ;   {runtime_call}
  0x00007f94e111525c: jmp    0x00007f94e111521e
  0x00007f94e111525e: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=163}
                                                ;*iaload
                                                ; - java.lang.CharacterDataLatin1::getProperties@7 (line 72)
                                                ;   {runtime_call}
  0x00007f94e1115263: callq  0x00007f94e10f9680  ; OopMap{rax=Oop off=168}
                                                ;*iaload
                                                ; - java.lang.CharacterDataLatin1::getProperties@7 (line 72)
                                                ;   {runtime_call}
  0x00007f94e1115268: mov    %rdx,(%rsp)
  0x00007f94e111526c: callq  0x00007f94e106bc40  ; OopMap{rax=Oop off=177}
                                                ;*iaload
                                                ; - java.lang.CharacterDataLatin1::getProperties@7 (line 72)
                                                ;   {runtime_call}
  0x00007f94e1115271: nop    
  0x00007f94e1115272: nop    
  0x00007f94e1115273: mov    0x2a8(%r15),%rax
  0x00007f94e111527a: mov    $0x0,%r10
  0x00007f94e1115284: mov    %r10,0x2a8(%r15)
  0x00007f94e111528b: mov    $0x0,%r10
  0x00007f94e1115295: mov    %r10,0x2b0(%r15)
  0x00007f94e111529c: add    $0x30,%rsp
  0x00007f94e11152a0: pop    %rbp
  0x00007f94e11152a1: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e11152a6: hlt    
  0x00007f94e11152a7: hlt    
  0x00007f94e11152a8: hlt    
  0x00007f94e11152a9: hlt    
  0x00007f94e11152aa: hlt    
  0x00007f94e11152ab: hlt    
  0x00007f94e11152ac: hlt    
  0x00007f94e11152ad: hlt    
  0x00007f94e11152ae: hlt    
  0x00007f94e11152af: hlt    
  0x00007f94e11152b0: hlt    
  0x00007f94e11152b1: hlt    
  0x00007f94e11152b2: hlt    
  0x00007f94e11152b3: hlt    
  0x00007f94e11152b4: hlt    
  0x00007f94e11152b5: hlt    
  0x00007f94e11152b6: hlt    
  0x00007f94e11152b7: hlt    
  0x00007f94e11152b8: hlt    
  0x00007f94e11152b9: hlt    
  0x00007f94e11152ba: hlt    
  0x00007f94e11152bb: hlt    
  0x00007f94e11152bc: hlt    
  0x00007f94e11152bd: hlt    
  0x00007f94e11152be: hlt    
  0x00007f94e11152bf: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e11152c0: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e11152c5: mov    %rsp,-0x28(%rsp)
  0x00007f94e11152ca: sub    $0x80,%rsp
  0x00007f94e11152d1: mov    %rax,0x78(%rsp)
  0x00007f94e11152d6: mov    %rcx,0x70(%rsp)
  0x00007f94e11152db: mov    %rdx,0x68(%rsp)
  0x00007f94e11152e0: mov    %rbx,0x60(%rsp)
  0x00007f94e11152e5: mov    %rbp,0x50(%rsp)
  0x00007f94e11152ea: mov    %rsi,0x48(%rsp)
  0x00007f94e11152ef: mov    %rdi,0x40(%rsp)
  0x00007f94e11152f4: mov    %r8,0x38(%rsp)
  0x00007f94e11152f9: mov    %r9,0x30(%rsp)
  0x00007f94e11152fe: mov    %r10,0x28(%rsp)
  0x00007f94e1115303: mov    %r11,0x20(%rsp)
  0x00007f94e1115308: mov    %r12,0x18(%rsp)
  0x00007f94e111530d: mov    %r13,0x10(%rsp)
  0x00007f94e1115312: mov    %r14,0x8(%rsp)
  0x00007f94e1115317: mov    %r15,(%rsp)
  0x00007f94e111531b: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1115325: mov    $0x7f94e11152c5,%rsi  ;   {internal_word}
  0x00007f94e111532f: mov    %rsp,%rdx
  0x00007f94e1115332: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1115336: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e111533b: hlt    
[Deopt Handler Code]
  0x00007f94e111533c: mov    $0x7f94e111533c,%r10  ;   {section_word}
  0x00007f94e1115346: push   %r10
  0x00007f94e1115348: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e111534d: hlt    
  0x00007f94e111534e: hlt    
  0x00007f94e111534f: hlt    
Decoding compiled method 0x00007f94e1115450:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002fe88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e11155c0: mov    0x8(%rsi),%r10d
  0x00007f94e11155c4: shl    $0x3,%r10
  0x00007f94e11155c8: cmp    %rax,%r10
  0x00007f94e11155cb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e11155d1: nopw   0x0(%rax,%rax,1)
  0x00007f94e11155dc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e11155e0: mov    %eax,-0x14000(%rsp)
  0x00007f94e11155e7: push   %rbp
  0x00007f94e11155e8: sub    $0x30,%rsp
  0x00007f94e11155ec: mov    $0x7f94e028dc90,%rcx  ;   {metadata(method data for {method} {0x00007f94e002fe88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String')}
  0x00007f94e11155f6: mov    0xdc(%rcx),%edi
  0x00007f94e11155fc: add    $0x8,%edi
  0x00007f94e11155ff: mov    %edi,0xdc(%rcx)
  0x00007f94e1115605: mov    $0x7f94e002fe88,%rcx  ;   {metadata({method} {0x00007f94e002fe88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String')}
  0x00007f94e111560f: and    $0x1ff8,%edi
  0x00007f94e1115615: cmp    $0x0,%edi
  0x00007f94e1115618: je     0x00007f94e11156c8  ;*aload_0
                                                ; - java.lang.String::startsWith@0 (line 1434)

  0x00007f94e111561e: mov    %rsi,%rcx
  0x00007f94e1115621: mov    $0x7f94e028dc90,%rdi  ;   {metadata(method data for {method} {0x00007f94e002fe88} 'startsWith' '(Ljava/lang/String;)Z' in 'java/lang/String')}
  0x00007f94e111562b: mov    0x8(%rcx),%ecx
  0x00007f94e111562e: shl    $0x3,%rcx
  0x00007f94e1115632: cmp    0x110(%rdi),%rcx
  0x00007f94e1115639: jne    0x00007f94e1115648
  0x00007f94e111563b: addq   $0x1,0x118(%rdi)
  0x00007f94e1115643: jmpq   0x00007f94e11156ae
  0x00007f94e1115648: cmp    0x120(%rdi),%rcx
  0x00007f94e111564f: jne    0x00007f94e111565e
  0x00007f94e1115651: addq   $0x1,0x128(%rdi)
  0x00007f94e1115659: jmpq   0x00007f94e11156ae
  0x00007f94e111565e: cmpq   $0x0,0x110(%rdi)
  0x00007f94e1115669: jne    0x00007f94e1115682
  0x00007f94e111566b: mov    %rcx,0x110(%rdi)
  0x00007f94e1115672: movq   $0x1,0x118(%rdi)
  0x00007f94e111567d: jmpq   0x00007f94e11156ae
  0x00007f94e1115682: cmpq   $0x0,0x120(%rdi)
  0x00007f94e111568d: jne    0x00007f94e11156a6
  0x00007f94e111568f: mov    %rcx,0x120(%rdi)
  0x00007f94e1115696: movq   $0x1,0x128(%rdi)
  0x00007f94e11156a1: jmpq   0x00007f94e11156ae
  0x00007f94e11156a6: addq   $0x1,0x108(%rdi)
  0x00007f94e11156ae: mov    $0x0,%ecx          ;*invokevirtual startsWith
                                                ; - java.lang.String::startsWith@3 (line 1434)

  0x00007f94e11156b3: nop    
  0x00007f94e11156b4: nop    
  0x00007f94e11156b5: nop    
  0x00007f94e11156b6: nop    
  0x00007f94e11156b7: callq  0x00007f94e1046020  ; OopMap{off=252}
                                                ;*invokevirtual startsWith
                                                ; - java.lang.String::startsWith@3 (line 1434)
                                                ;   {optimized virtual_call}
  0x00007f94e11156bc: add    $0x30,%rsp
  0x00007f94e11156c0: pop    %rbp
  0x00007f94e11156c1: test   %eax,0x16ed9a39(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11156c7: retq   
  0x00007f94e11156c8: mov    %rcx,0x8(%rsp)
  0x00007f94e11156cd: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e11156d5: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop rdx=Oop off=282}
                                                ;*synchronization entry
                                                ; - java.lang.String::startsWith@-1 (line 1434)
                                                ;   {runtime_call}
  0x00007f94e11156da: jmpq   0x00007f94e111561e
  0x00007f94e11156df: nop    
  0x00007f94e11156e0: nop    
  0x00007f94e11156e1: mov    0x2a8(%r15),%rax
  0x00007f94e11156e8: mov    $0x0,%r10
  0x00007f94e11156f2: mov    %r10,0x2a8(%r15)
  0x00007f94e11156f9: mov    $0x0,%r10
  0x00007f94e1115703: mov    %r10,0x2b0(%r15)
  0x00007f94e111570a: add    $0x30,%rsp
  0x00007f94e111570e: pop    %rbp
  0x00007f94e111570f: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1115714: hlt    
  0x00007f94e1115715: hlt    
  0x00007f94e1115716: hlt    
  0x00007f94e1115717: hlt    
  0x00007f94e1115718: hlt    
  0x00007f94e1115719: hlt    
  0x00007f94e111571a: hlt    
  0x00007f94e111571b: hlt    
  0x00007f94e111571c: hlt    
  0x00007f94e111571d: hlt    
  0x00007f94e111571e: hlt    
  0x00007f94e111571f: hlt    
[Stub Code]
  0x00007f94e1115720: nop                       ;   {no_reloc}
  0x00007f94e1115721: nop    
  0x00007f94e1115722: nop    
  0x00007f94e1115723: nop    
  0x00007f94e1115724: nop    
  0x00007f94e1115725: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111572f: jmpq   0x00007f94e111572f  ;   {runtime_call}
[Exception Handler]
  0x00007f94e1115734: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e1115739: mov    %rsp,-0x28(%rsp)
  0x00007f94e111573e: sub    $0x80,%rsp
  0x00007f94e1115745: mov    %rax,0x78(%rsp)
  0x00007f94e111574a: mov    %rcx,0x70(%rsp)
  0x00007f94e111574f: mov    %rdx,0x68(%rsp)
  0x00007f94e1115754: mov    %rbx,0x60(%rsp)
  0x00007f94e1115759: mov    %rbp,0x50(%rsp)
  0x00007f94e111575e: mov    %rsi,0x48(%rsp)
  0x00007f94e1115763: mov    %rdi,0x40(%rsp)
  0x00007f94e1115768: mov    %r8,0x38(%rsp)
  0x00007f94e111576d: mov    %r9,0x30(%rsp)
  0x00007f94e1115772: mov    %r10,0x28(%rsp)
  0x00007f94e1115777: mov    %r11,0x20(%rsp)
  0x00007f94e111577c: mov    %r12,0x18(%rsp)
  0x00007f94e1115781: mov    %r13,0x10(%rsp)
  0x00007f94e1115786: mov    %r14,0x8(%rsp)
  0x00007f94e111578b: mov    %r15,(%rsp)
  0x00007f94e111578f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1115799: mov    $0x7f94e1115739,%rsi  ;   {internal_word}
  0x00007f94e11157a3: mov    %rsp,%rdx
  0x00007f94e11157a6: and    $0xfffffffffffffff0,%rsp
  0x00007f94e11157aa: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e11157af: hlt    
[Deopt Handler Code]
  0x00007f94e11157b0: mov    $0x7f94e11157b0,%r10  ;   {section_word}
  0x00007f94e11157ba: push   %r10
  0x00007f94e11157bc: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e11157c1: hlt    
  0x00007f94e11157c2: hlt    
  0x00007f94e11157c3: hlt    
  0x00007f94e11157c4: hlt    
  0x00007f94e11157c5: hlt    
  0x00007f94e11157c6: hlt    
  0x00007f94e11157c7: hlt    
Decoding compiled method 0x00007f94e1115890:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e00f9448} 'size' '()I' in 'java/util/ArrayList'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e11159e0: mov    0x8(%rsi),%r10d
  0x00007f94e11159e4: shl    $0x3,%r10
  0x00007f94e11159e8: cmp    %rax,%r10
  0x00007f94e11159eb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e11159f1: nopw   0x0(%rax,%rax,1)
  0x00007f94e11159fc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1115a00: mov    %eax,-0x14000(%rsp)
  0x00007f94e1115a07: push   %rbp
  0x00007f94e1115a08: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.util.ArrayList::size@0 (line 278)

  0x00007f94e1115a0c: mov    0x10(%rsi),%eax    ;*getfield size
                                                ; - java.util.ArrayList::size@1 (line 278)

  0x00007f94e1115a0f: add    $0x30,%rsp
  0x00007f94e1115a13: pop    %rbp
  0x00007f94e1115a14: test   %eax,0x16ed96e6(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1115a1a: retq   
  0x00007f94e1115a1b: nop    
  0x00007f94e1115a1c: nop    
  0x00007f94e1115a1d: mov    0x2a8(%r15),%rax
  0x00007f94e1115a24: mov    $0x0,%r10
  0x00007f94e1115a2e: mov    %r10,0x2a8(%r15)
  0x00007f94e1115a35: mov    $0x0,%r10
  0x00007f94e1115a3f: mov    %r10,0x2b0(%r15)
  0x00007f94e1115a46: add    $0x30,%rsp
  0x00007f94e1115a4a: pop    %rbp
  0x00007f94e1115a4b: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1115a50: hlt    
  0x00007f94e1115a51: hlt    
  0x00007f94e1115a52: hlt    
  0x00007f94e1115a53: hlt    
  0x00007f94e1115a54: hlt    
  0x00007f94e1115a55: hlt    
  0x00007f94e1115a56: hlt    
  0x00007f94e1115a57: hlt    
  0x00007f94e1115a58: hlt    
  0x00007f94e1115a59: hlt    
  0x00007f94e1115a5a: hlt    
  0x00007f94e1115a5b: hlt    
  0x00007f94e1115a5c: hlt    
  0x00007f94e1115a5d: hlt    
  0x00007f94e1115a5e: hlt    
  0x00007f94e1115a5f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e1115a60: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e1115a65: mov    %rsp,-0x28(%rsp)
  0x00007f94e1115a6a: sub    $0x80,%rsp
  0x00007f94e1115a71: mov    %rax,0x78(%rsp)
  0x00007f94e1115a76: mov    %rcx,0x70(%rsp)
  0x00007f94e1115a7b: mov    %rdx,0x68(%rsp)
  0x00007f94e1115a80: mov    %rbx,0x60(%rsp)
  0x00007f94e1115a85: mov    %rbp,0x50(%rsp)
  0x00007f94e1115a8a: mov    %rsi,0x48(%rsp)
  0x00007f94e1115a8f: mov    %rdi,0x40(%rsp)
  0x00007f94e1115a94: mov    %r8,0x38(%rsp)
  0x00007f94e1115a99: mov    %r9,0x30(%rsp)
  0x00007f94e1115a9e: mov    %r10,0x28(%rsp)
  0x00007f94e1115aa3: mov    %r11,0x20(%rsp)
  0x00007f94e1115aa8: mov    %r12,0x18(%rsp)
  0x00007f94e1115aad: mov    %r13,0x10(%rsp)
  0x00007f94e1115ab2: mov    %r14,0x8(%rsp)
  0x00007f94e1115ab7: mov    %r15,(%rsp)
  0x00007f94e1115abb: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1115ac5: mov    $0x7f94e1115a65,%rsi  ;   {internal_word}
  0x00007f94e1115acf: mov    %rsp,%rdx
  0x00007f94e1115ad2: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1115ad6: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e1115adb: hlt    
[Deopt Handler Code]
  0x00007f94e1115adc: mov    $0x7f94e1115adc,%r10  ;   {section_word}
  0x00007f94e1115ae6: push   %r10
  0x00007f94e1115ae8: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1115aed: hlt    
  0x00007f94e1115aee: hlt    
  0x00007f94e1115aef: hlt    
Decoding compiled method 0x00007f94e1115b90:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx       = int
  #           [sp+0xa0]  (sp of caller)
  0x00007f94e1115d40: mov    0x8(%rsi),%r10d
  0x00007f94e1115d44: shl    $0x3,%r10
  0x00007f94e1115d48: cmp    %rax,%r10
  0x00007f94e1115d4b: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1115d51: nopw   0x0(%rax,%rax,1)
  0x00007f94e1115d5c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1115d60: mov    %eax,-0x14000(%rsp)
  0x00007f94e1115d67: push   %rbp
  0x00007f94e1115d68: sub    $0x90,%rsp
  0x00007f94e1115d6f: mov    $0x7f94e022bd10,%rbx  ;   {metadata(method data for {method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e1115d79: mov    0xdc(%rbx),%edi
  0x00007f94e1115d7f: add    $0x8,%edi
  0x00007f94e1115d82: mov    %edi,0xdc(%rbx)
  0x00007f94e1115d88: mov    $0x7f94e009f5e8,%rbx  ;   {metadata({method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e1115d92: and    $0x1ff8,%edi
  0x00007f94e1115d98: cmp    $0x0,%edi
  0x00007f94e1115d9b: je     0x00007f94e1116109  ;*aload_0
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@0 (line 129)

  0x00007f94e1115da1: mov    0x10(%rsi),%r8d
  0x00007f94e1115da5: shl    $0x3,%r8           ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@1 (line 129)

  0x00007f94e1115da9: mov    0xc(%r8),%r9d      ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@4 (line 129)
                                                ; implicit exception: dispatches to 0x00007f94e1116120
  0x00007f94e1115dad: mov    %r9,%rbx
  0x00007f94e1115db0: shl    %ebx
  0x00007f94e1115db2: add    $0x2,%ebx
  0x00007f94e1115db5: mov    %rbx,%rdi
  0x00007f94e1115db8: sub    %edx,%edi
  0x00007f94e1115dba: cmp    $0x0,%edi
  0x00007f94e1115dbd: mov    $0x7f94e022bd10,%rdi  ;   {metadata(method data for {method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e1115dc7: mov    $0x108,%rax
  0x00007f94e1115dd1: jge    0x00007f94e1115de1
  0x00007f94e1115dd7: mov    $0x118,%rax
  0x00007f94e1115de1: mov    (%rdi,%rax,1),%rcx
  0x00007f94e1115de5: lea    0x1(%rcx),%rcx
  0x00007f94e1115de9: mov    %rcx,(%rdi,%rax,1)
  0x00007f94e1115ded: jge    0x00007f94e1115df6  ;*ifge
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@13 (line 130)

  0x00007f94e1115df3: mov    %rdx,%rbx          ;*iload_2
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@18 (line 132)

  0x00007f94e1115df6: cmp    $0x0,%ebx
  0x00007f94e1115df9: mov    $0x7f94e022bd10,%rdi  ;   {metadata(method data for {method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e1115e03: mov    $0x128,%rax
  0x00007f94e1115e0d: jge    0x00007f94e1115e1d
  0x00007f94e1115e13: mov    $0x138,%rax
  0x00007f94e1115e1d: mov    (%rdi,%rax,1),%rcx
  0x00007f94e1115e21: lea    0x1(%rcx),%rcx
  0x00007f94e1115e25: mov    %rcx,(%rdi,%rax,1)
  0x00007f94e1115e29: jl     0x00007f94e1115e37  ;*ifge
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@19 (line 132)

  0x00007f94e1115e2f: mov    %rbx,%r11
  0x00007f94e1115e32: jmpq   0x00007f94e1115e76  ;*aload_0
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@37 (line 137)

  0x00007f94e1115e37: cmp    $0x0,%edx
  0x00007f94e1115e3a: mov    $0x7f94e022bd10,%rbx  ;   {metadata(method data for {method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e1115e44: mov    $0x148,%rdx
  0x00007f94e1115e4e: jge    0x00007f94e1115e5e
  0x00007f94e1115e54: mov    $0x158,%rdx
  0x00007f94e1115e5e: mov    (%rbx,%rdx,1),%rdi
  0x00007f94e1115e62: lea    0x1(%rdi),%rdi
  0x00007f94e1115e66: mov    %rdi,(%rbx,%rdx,1)
  0x00007f94e1115e6a: jl     0x00007f94e111608b  ;*ifge
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@23 (line 133)

  0x00007f94e1115e70: mov    $0x7fffffff,%r11d  ;*aload_0
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@37 (line 137)

  0x00007f94e1115e76: mov    %rsi,0x70(%rsp)
  0x00007f94e1115e7b: mov    $0x7f94e022bd10,%rbx  ;   {metadata(method data for {method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e1115e85: addq   $0x1,0x178(%rbx)
  0x00007f94e1115e8d: mov    $0x7f94e0278e08,%rbx  ;   {metadata(method data for {method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1115e97: mov    0xdc(%rbx),%edx
  0x00007f94e1115e9d: add    $0x8,%edx
  0x00007f94e1115ea0: mov    %edx,0xdc(%rbx)
  0x00007f94e1115ea6: mov    $0x7f94e0143238,%rbx  ;   {metadata({method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1115eb0: and    $0x7ffff8,%edx
  0x00007f94e1115eb6: cmp    $0x0,%edx
  0x00007f94e1115eb9: je     0x00007f94e1116125
  0x00007f94e1115ebf: mov    %r11,%rbx
  0x00007f94e1115ec2: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007f94e1115ecc: movslq %ebx,%rbx
  0x00007f94e1115ecf: mov    %rbx,%rdi
  0x00007f94e1115ed2: cmp    $0xffffff,%rbx
  0x00007f94e1115ed9: ja     0x00007f94e111613c
  0x00007f94e1115edf: mov    $0x17,%rsi
  0x00007f94e1115ee9: lea    (%rsi,%rbx,2),%rsi
  0x00007f94e1115eed: and    $0xfffffffffffffff8,%rsi
  0x00007f94e1115ef1: mov    0x60(%r15),%rax
  0x00007f94e1115ef5: lea    (%rax,%rsi,1),%rsi
  0x00007f94e1115ef9: cmp    0x70(%r15),%rsi
  0x00007f94e1115efd: ja     0x00007f94e111613c
  0x00007f94e1115f03: mov    %rsi,0x60(%r15)
  0x00007f94e1115f07: sub    %rax,%rsi
  0x00007f94e1115f0a: movq   $0x1,(%rax)
  0x00007f94e1115f11: mov    %rdx,%rcx
  0x00007f94e1115f14: shr    $0x3,%rcx
  0x00007f94e1115f18: mov    %ecx,0x8(%rax)
  0x00007f94e1115f1b: mov    %ebx,0xc(%rax)
  0x00007f94e1115f1e: sub    $0x10,%rsi
  0x00007f94e1115f22: je     0x00007f94e1115f39
  0x00007f94e1115f28: xor    %rbx,%rbx
  0x00007f94e1115f2b: shr    $0x3,%rsi
  0x00007f94e1115f2f: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f94e1115f34: dec    %rsi
  0x00007f94e1115f37: jne    0x00007f94e1115f2f  ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007f94e1115f39: mov    $0x7f94e0278e08,%rsi  ;   {metadata(method data for {method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1115f43: addq   $0x1,0x108(%rsi)
  0x00007f94e1115f4b: mov    $0x7f94e01f91c0,%rsi  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1115f55: mov    0xdc(%rsi),%edx
  0x00007f94e1115f5b: add    $0x8,%edx
  0x00007f94e1115f5e: mov    %edx,0xdc(%rsi)
  0x00007f94e1115f64: mov    $0x7f94e011eb90,%rsi  ;   {metadata({method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1115f6e: and    $0x7ffff8,%edx
  0x00007f94e1115f74: cmp    $0x0,%edx
  0x00007f94e1115f77: je     0x00007f94e1116146
  0x00007f94e1115f7d: cmp    %r11d,%r9d
  0x00007f94e1115f80: mov    $0x7f94e01f91c0,%rsi  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1115f8a: mov    $0x108,%rdx
  0x00007f94e1115f94: jg     0x00007f94e1115fa4
  0x00007f94e1115f9a: mov    $0x118,%rdx
  0x00007f94e1115fa4: mov    (%rsi,%rdx,1),%rcx
  0x00007f94e1115fa8: lea    0x1(%rcx),%rcx
  0x00007f94e1115fac: mov    %rcx,(%rsi,%rdx,1)
  0x00007f94e1115fb0: jg     0x00007f94e1115fcb  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007f94e1115fb6: mov    $0x7f94e01f91c0,%rsi  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1115fc0: incl   0x128(%rsi)
  0x00007f94e1115fc6: jmpq   0x00007f94e1115fce  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007f94e1115fcb: mov    %r11,%r9           ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)

  0x00007f94e1115fce: mov    $0x7f94e0278e08,%rdx  ;   {metadata(method data for {method} {0x00007f94e0143238} 'copyOf' '([CI)[C' in 'java/util/Arrays')}
  0x00007f94e1115fd8: addq   $0x1,0x118(%rdx)
  0x00007f94e1115fe0: mov    %r8,%rsi
  0x00007f94e1115fe3: mov    $0x0,%edx
  0x00007f94e1115fe8: mov    %rax,%rcx
  0x00007f94e1115feb: mov    $0x0,%r8d
  0x00007f94e1115ff1: mov    %rax,0x78(%rsp)
  0x00007f94e1115ff6: lea    (%rdx,%r9,1),%rdi
  0x00007f94e1115ffa: cmp    0xc(%rsi),%edi
  0x00007f94e1115ffd: ja     0x00007f94e111615d
  0x00007f94e1116003: lea    (%r8,%r9,1),%rdi
  0x00007f94e1116007: cmp    0xc(%rcx),%edi
  0x00007f94e111600a: ja     0x00007f94e111615d
  0x00007f94e1116010: test   %r9d,%r9d
  0x00007f94e1116013: jl     0x00007f94e111615d
  0x00007f94e1116019: je     0x00007f94e1116055
  0x00007f94e111601f: movslq %edx,%rdx
  0x00007f94e1116022: movslq %r8d,%r8
  0x00007f94e1116025: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007f94e111602a: lea    0x10(%rcx,%r8,2),%rsi
  0x00007f94e111602f: mov    %r9,%rdx
  0x00007f94e1116032: test   $0xf,%esp
  0x00007f94e1116038: je     0x00007f94e1116050
  0x00007f94e111603e: sub    $0x8,%rsp
  0x00007f94e1116042: callq  Stub::jshort_disjoint_arraycopy
                                                ;   {runtime_call}
  0x00007f94e1116047: add    $0x8,%rsp
  0x00007f94e111604b: jmpq   0x00007f94e1116055
  0x00007f94e1116050: callq  Stub::jshort_disjoint_arraycopy
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007f94e1116055: mov    0x78(%rsp),%rax
  0x00007f94e111605a: mov    0x70(%rsp),%rsi
  0x00007f94e111605f: mov    %rax,%r10
  0x00007f94e1116062: shr    $0x3,%r10
  0x00007f94e1116066: mov    %r10d,0x10(%rsi)
  0x00007f94e111606a: shr    $0x9,%rsi
  0x00007f94e111606e: mov    $0x7f94f0e87000,%rdx
  0x00007f94e1116078: movb   $0x0,(%rsi,%rdx,1)  ;*putfield value
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@46 (line 137)

  0x00007f94e111607c: add    $0x90,%rsp
  0x00007f94e1116083: pop    %rbp
  0x00007f94e1116084: test   %eax,0x16ed9076(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e111608a: retq                      ;*return
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@49 (line 138)

  0x00007f94e111608b: nopl   0x0(%rax,%rax,1)
  0x00007f94e1116090: jmpq   0x00007f94e1116178  ;   {no_reloc}
  0x00007f94e1116095: add    %al,(%rax)
  0x00007f94e1116097: add    %al,(%rax)
  0x00007f94e1116099: add    %cl,-0x75(%rcx)
  0x00007f94e111609c: rex.RXB (bad)  
  0x00007f94e111609e: lea    0x20(%rax),%rdi
  0x00007f94e11160a2: cmp    0x70(%r15),%rdi
  0x00007f94e11160a6: ja     0x00007f94e1116182
  0x00007f94e11160ac: mov    %rdi,0x60(%r15)
  0x00007f94e11160b0: mov    0xa8(%rdx),%rcx
  0x00007f94e11160b7: mov    %rcx,(%rax)
  0x00007f94e11160ba: mov    %rdx,%rcx
  0x00007f94e11160bd: shr    $0x3,%rcx
  0x00007f94e11160c1: mov    %ecx,0x8(%rax)
  0x00007f94e11160c4: xor    %rcx,%rcx
  0x00007f94e11160c7: mov    %ecx,0xc(%rax)
  0x00007f94e11160ca: xor    %rcx,%rcx
  0x00007f94e11160cd: mov    %rcx,0x10(%rax)
  0x00007f94e11160d1: mov    %rcx,0x18(%rax)    ;*new  ; - java.lang.AbstractStringBuilder::expandCapacity@26 (line 134)

  0x00007f94e11160d5: mov    %rax,%rsi
  0x00007f94e11160d8: mov    $0x7f94e022bd10,%rdi  ;   {metadata(method data for {method} {0x00007f94e009f5e8} 'expandCapacity' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f94e11160e2: addq   $0x1,0x168(%rdi)
  0x00007f94e11160ea: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@30 (line 134)

  0x00007f94e11160ed: mov    %rax,0x80(%rsp)
  0x00007f94e11160f5: nop    
  0x00007f94e11160f6: nop    
  0x00007f94e11160f7: callq  0x00007f94e1046020  ; OopMap{[128]=Oop off=956}
                                                ;*invokespecial <init>
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@30 (line 134)
                                                ;   {optimized virtual_call}
  0x00007f94e11160fc: mov    0x80(%rsp),%rax
  0x00007f94e1116104: jmpq   0x00007f94e11161ba
  0x00007f94e1116109: mov    %rbx,0x8(%rsp)
  0x00007f94e111610e: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1116116: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop off=987}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@-1 (line 129)
                                                ;   {runtime_call}
  0x00007f94e111611b: jmpq   0x00007f94e1115da1
  0x00007f94e1116120: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop r8=Oop off=997}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@4 (line 129)
                                                ;   {runtime_call}
  0x00007f94e1116125: mov    %rbx,0x8(%rsp)
  0x00007f94e111612a: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1116132: callq  0x00007f94e10fc760  ; OopMap{r8=Oop [112]=Oop off=1015}
                                                ;*synchronization entry
                                                ; - java.util.Arrays::copyOf@-1 (line 3332)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007f94e1116137: jmpq   0x00007f94e1115ebf
  0x00007f94e111613c: callq  0x00007f94e10fa6a0  ; OopMap{r8=Oop [112]=Oop off=1025}
                                                ;*newarray
                                                ; - java.util.Arrays::copyOf@1 (line 3332)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007f94e1116141: jmpq   0x00007f94e1115f39
  0x00007f94e1116146: mov    %rsi,0x8(%rsp)
  0x00007f94e111614b: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1116153: callq  0x00007f94e10fc760  ; OopMap{r8=Oop [112]=Oop rax=Oop off=1048}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.util.Arrays::copyOf@11 (line 3334)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {runtime_call}
  0x00007f94e1116158: jmpq   0x00007f94e1115f7d
  0x00007f94e111615d: nop    
  0x00007f94e111615e: nop    
  0x00007f94e111615f: callq  0x00007f94e1046420  ; OopMap{[112]=Oop [120]=Oop off=1060}
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOf@14 (line 3333)
                                                ; - java.lang.AbstractStringBuilder::expandCapacity@43 (line 137)
                                                ;   {static_call}
  0x00007f94e1116164: jmpq   0x00007f94e1116055
  0x00007f94e1116169: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e1116173: mov    $0xa050f00,%eax
  0x00007f94e1116178: callq  0x00007f94e10fd5a0  ; OopMap{off=1085}
                                                ;*new  ; - java.lang.AbstractStringBuilder::expandCapacity@26 (line 134)
                                                ;   {runtime_call}
  0x00007f94e111617d: jmpq   0x00007f94e1116090
  0x00007f94e1116182: mov    %rdx,%rdx
  0x00007f94e1116185: callq  0x00007f94e10f9de0  ; OopMap{off=1098}
                                                ;*new  ; - java.lang.AbstractStringBuilder::expandCapacity@26 (line 134)
                                                ;   {runtime_call}
  0x00007f94e111618a: jmpq   0x00007f94e11160d5
  0x00007f94e111618f: nop    
  0x00007f94e1116190: nop    
  0x00007f94e1116191: mov    0x2a8(%r15),%rax
  0x00007f94e1116198: mov    $0x0,%r10
  0x00007f94e11161a2: mov    %r10,0x2a8(%r15)
  0x00007f94e11161a9: mov    $0x0,%r10
  0x00007f94e11161b3: mov    %r10,0x2b0(%r15)
  0x00007f94e11161ba: add    $0x90,%rsp
  0x00007f94e11161c1: pop    %rbp
  0x00007f94e11161c2: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e11161c7: hlt    
  0x00007f94e11161c8: hlt    
  0x00007f94e11161c9: hlt    
  0x00007f94e11161ca: hlt    
  0x00007f94e11161cb: hlt    
  0x00007f94e11161cc: hlt    
  0x00007f94e11161cd: hlt    
  0x00007f94e11161ce: hlt    
  0x00007f94e11161cf: hlt    
  0x00007f94e11161d0: hlt    
  0x00007f94e11161d1: hlt    
  0x00007f94e11161d2: hlt    
  0x00007f94e11161d3: hlt    
  0x00007f94e11161d4: hlt    
  0x00007f94e11161d5: hlt    
  0x00007f94e11161d6: hlt    
  0x00007f94e11161d7: hlt    
  0x00007f94e11161d8: hlt    
  0x00007f94e11161d9: hlt    
  0x00007f94e11161da: hlt    
  0x00007f94e11161db: hlt    
  0x00007f94e11161dc: hlt    
  0x00007f94e11161dd: hlt    
  0x00007f94e11161de: hlt    
  0x00007f94e11161df: hlt    
[Stub Code]
  0x00007f94e11161e0: nop                       ;   {no_reloc}
  0x00007f94e11161e1: nop    
  0x00007f94e11161e2: nop    
  0x00007f94e11161e3: nop    
  0x00007f94e11161e4: nop    
  0x00007f94e11161e5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11161ef: jmpq   0x00007f94e11161ef  ;   {runtime_call}
  0x00007f94e11161f4: nop    
  0x00007f94e11161f5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e11161ff: jmpq   0x00007f94e11161ff  ;   {runtime_call}
[Exception Handler]
  0x00007f94e1116204: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e1116209: mov    %rsp,-0x28(%rsp)
  0x00007f94e111620e: sub    $0x80,%rsp
  0x00007f94e1116215: mov    %rax,0x78(%rsp)
  0x00007f94e111621a: mov    %rcx,0x70(%rsp)
  0x00007f94e111621f: mov    %rdx,0x68(%rsp)
  0x00007f94e1116224: mov    %rbx,0x60(%rsp)
  0x00007f94e1116229: mov    %rbp,0x50(%rsp)
  0x00007f94e111622e: mov    %rsi,0x48(%rsp)
  0x00007f94e1116233: mov    %rdi,0x40(%rsp)
  0x00007f94e1116238: mov    %r8,0x38(%rsp)
  0x00007f94e111623d: mov    %r9,0x30(%rsp)
  0x00007f94e1116242: mov    %r10,0x28(%rsp)
  0x00007f94e1116247: mov    %r11,0x20(%rsp)
  0x00007f94e111624c: mov    %r12,0x18(%rsp)
  0x00007f94e1116251: mov    %r13,0x10(%rsp)
  0x00007f94e1116256: mov    %r14,0x8(%rsp)
  0x00007f94e111625b: mov    %r15,(%rsp)
  0x00007f94e111625f: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1116269: mov    $0x7f94e1116209,%rsi  ;   {internal_word}
  0x00007f94e1116273: mov    %rsp,%rdx
  0x00007f94e1116276: and    $0xfffffffffffffff0,%rsp
  0x00007f94e111627a: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e111627f: hlt    
[Deopt Handler Code]
  0x00007f94e1116280: mov    $0x7f94e1116280,%r10  ;   {section_word}
  0x00007f94e111628a: push   %r10
  0x00007f94e111628c: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1116291: hlt    
  0x00007f94e1116292: hlt    
  0x00007f94e1116293: hlt    
  0x00007f94e1116294: hlt    
  0x00007f94e1116295: hlt    
  0x00007f94e1116296: hlt    
  0x00007f94e1116297: hlt    
Decoding compiled method 0x00007f94e11167d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder'
  # this:     rsi:rsi   = 'sun/nio/cs/UTF_8$Encoder'
  # parm0:    rdx:rdx   = '[C'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  # parm3:    r9:r9     = '[B'
  #           [sp+0x90]  (sp of caller)
  0x00007f94e11169c0: mov    0x8(%rsi),%r10d
  0x00007f94e11169c4: shl    $0x3,%r10
  0x00007f94e11169c8: cmp    %rax,%r10
  0x00007f94e11169cb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e11169d1: nopw   0x0(%rax,%rax,1)
  0x00007f94e11169dc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e11169e0: mov    %eax,-0x14000(%rsp)
  0x00007f94e11169e7: push   %rbp
  0x00007f94e11169e8: sub    $0x80,%rsp
  0x00007f94e11169ef: mov    %rsi,0x48(%rsp)
  0x00007f94e11169f4: mov    %rdx,0x60(%rsp)
  0x00007f94e11169f9: mov    %r9,0x70(%rsp)
  0x00007f94e11169fe: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116a08: mov    0xdc(%rax),%edi
  0x00007f94e1116a0e: add    $0x8,%edi
  0x00007f94e1116a11: mov    %edi,0xdc(%rax)
  0x00007f94e1116a17: mov    $0x7f94e01778f8,%rax  ;   {metadata({method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116a21: and    $0x1ff8,%edi
  0x00007f94e1116a27: cmp    $0x0,%edi
  0x00007f94e1116a2a: je     0x00007f94e11172b5  ;*iload_2
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@0 (line 704)

  0x00007f94e1116a30: mov    %rcx,%rdi
  0x00007f94e1116a33: add    %r8d,%edi
  0x00007f94e1116a36: mov    %edi,0x68(%rsp)
  0x00007f94e1116a3a: mov    0xc(%r9),%eax      ;*arraylength
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@13 (line 706)
                                                ; implicit exception: dispatches to 0x00007f94e11172cc
  0x00007f94e1116a3e: mov    $0x7f94e0292a88,%rbx  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116a48: addq   $0x1,0x108(%rbx)
  0x00007f94e1116a50: mov    $0x7f94e01f91c0,%rbx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1116a5a: mov    0xdc(%rbx),%r11d
  0x00007f94e1116a61: add    $0x8,%r11d
  0x00007f94e1116a65: mov    %r11d,0xdc(%rbx)
  0x00007f94e1116a6c: mov    $0x7f94e011eb90,%rbx  ;   {metadata({method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1116a76: and    $0x7ffff8,%r11d
  0x00007f94e1116a7d: cmp    $0x0,%r11d
  0x00007f94e1116a81: je     0x00007f94e11172d1
  0x00007f94e1116a87: cmp    %eax,%r8d
  0x00007f94e1116a8a: mov    $0x7f94e01f91c0,%rbx  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1116a94: mov    $0x108,%r11
  0x00007f94e1116a9e: jg     0x00007f94e1116aae
  0x00007f94e1116aa4: mov    $0x118,%r11
  0x00007f94e1116aae: mov    (%rbx,%r11,1),%r13
  0x00007f94e1116ab2: lea    0x1(%r13),%r13
  0x00007f94e1116ab6: mov    %r13,(%rbx,%r11,1)
  0x00007f94e1116aba: jg     0x00007f94e1116ad5  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@14 (line 706)

  0x00007f94e1116ac0: mov    $0x7f94e01f91c0,%rax  ;   {metadata(method data for {method} {0x00007f94e011eb90} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f94e1116aca: incl   0x128(%rax)
  0x00007f94e1116ad0: jmpq   0x00007f94e1116ad8  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@14 (line 706)

  0x00007f94e1116ad5: mov    %rax,%r8           ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@14 (line 706)

  0x00007f94e1116ad8: mov    $0x0,%eax
  0x00007f94e1116add: jmpq   0x00007f94e1116b9a  ;*iload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@20 (line 709)

  0x00007f94e1116ae2: nopw   0x0(%rax,%rax,1)
  0x00007f94e1116ae8: movslq %ecx,%rbx
  0x00007f94e1116aeb: cmp    0xc(%rdx),%ecx     ; implicit exception: dispatches to 0x00007f94e11172e8
  0x00007f94e1116aee: jae    0x00007f94e11172f2
  0x00007f94e1116af4: movzwl 0x10(%rdx,%rbx,2),%ebx  ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@29 (line 709)

  0x00007f94e1116af9: cmp    $0x80,%ebx
  0x00007f94e1116aff: mov    $0x7f94e0292a88,%r11  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116b09: mov    $0x138,%r13
  0x00007f94e1116b13: jge    0x00007f94e1116b23
  0x00007f94e1116b19: mov    $0x148,%r13
  0x00007f94e1116b23: mov    (%r11,%r13,1),%r14
  0x00007f94e1116b27: lea    0x1(%r14),%r14
  0x00007f94e1116b2b: mov    %r14,(%r11,%r13,1)
  0x00007f94e1116b2f: jge    0x00007f94e1116bd8  ;*if_icmpge
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@33 (line 709)

  0x00007f94e1116b35: mov    %rax,%r11
  0x00007f94e1116b38: inc    %r11d
  0x00007f94e1116b3b: inc    %ecx
  0x00007f94e1116b3d: movslq %eax,%r13
  0x00007f94e1116b40: cmp    0xc(%r9),%eax
  0x00007f94e1116b44: jae    0x00007f94e11172fb
  0x00007f94e1116b4a: mov    %bl,0x10(%r9,%r13,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@50 (line 710)

  0x00007f94e1116b4f: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116b59: mov    0xe0(%rax),%ebx
  0x00007f94e1116b5f: add    $0x8,%ebx
  0x00007f94e1116b62: mov    %ebx,0xe0(%rax)
  0x00007f94e1116b68: mov    $0x7f94e01778f8,%rax  ;   {metadata({method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116b72: and    $0xfff8,%ebx
  0x00007f94e1116b78: cmp    $0x0,%ebx
  0x00007f94e1116b7b: je     0x00007f94e1117304  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=449}
                                                ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@51 (line 710)

  0x00007f94e1116b81: test   %eax,0x16ed8579(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e1116b87: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116b91: incl   0x158(%rax)
  0x00007f94e1116b97: mov    %r11,%rax          ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@51 (line 710)

  0x00007f94e1116b9a: cmp    %r8d,%eax
  0x00007f94e1116b9d: mov    $0x7f94e0292a88,%rbx  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116ba7: mov    $0x118,%r11
  0x00007f94e1116bb1: jge    0x00007f94e1116bc1
  0x00007f94e1116bb7: mov    $0x128,%r11
  0x00007f94e1116bc1: mov    (%rbx,%r11,1),%r13
  0x00007f94e1116bc5: lea    0x1(%r13),%r13
  0x00007f94e1116bc9: mov    %r13,(%rbx,%r11,1)
  0x00007f94e1116bcd: jl     0x00007f94e1116ae8  ;*if_icmpge
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@24 (line 709)

  0x00007f94e1116bd3: nopl   0x0(%rax,%rax,1)
  0x00007f94e1116bd8: cmp    %edi,%ecx
  0x00007f94e1116bda: mov    $0x7f94e0292a88,%rbx  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116be4: mov    $0x170,%r8
  0x00007f94e1116bee: jge    0x00007f94e1116bfe
  0x00007f94e1116bf4: mov    $0x180,%r8
  0x00007f94e1116bfe: mov    (%rbx,%r8,1),%r11
  0x00007f94e1116c02: lea    0x1(%r11),%r11
  0x00007f94e1116c06: mov    %r11,(%rbx,%r8,1)
  0x00007f94e1116c0a: jge    0x00007f94e11172a0  ;*if_icmpge
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@57 (line 712)

  0x00007f94e1116c10: mov    %rcx,%rbx
  0x00007f94e1116c13: inc    %ebx
  0x00007f94e1116c15: movslq %ecx,%r8
  0x00007f94e1116c18: cmp    0xc(%rdx),%ecx     ; implicit exception: dispatches to 0x00007f94e111731b
  0x00007f94e1116c1b: jae    0x00007f94e1117325
  0x00007f94e1116c21: movzwl 0x10(%rdx,%r8,2),%ecx  ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@65 (line 713)

  0x00007f94e1116c27: cmp    $0x80,%ecx
  0x00007f94e1116c2d: mov    $0x7f94e0292a88,%r8  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116c37: mov    $0x190,%r11
  0x00007f94e1116c41: jge    0x00007f94e1116c51
  0x00007f94e1116c47: mov    $0x1a0,%r11
  0x00007f94e1116c51: mov    (%r8,%r11,1),%r13
  0x00007f94e1116c55: lea    0x1(%r13),%r13
  0x00007f94e1116c59: mov    %r13,(%r8,%r11,1)
  0x00007f94e1116c5d: jge    0x00007f94e1116c90  ;*if_icmpge
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@73 (line 714)

  0x00007f94e1116c63: mov    %rax,%r8
  0x00007f94e1116c66: inc    %r8d
  0x00007f94e1116c69: movslq %eax,%r11
  0x00007f94e1116c6c: cmp    0xc(%r9),%eax
  0x00007f94e1116c70: jae    0x00007f94e111732e
  0x00007f94e1116c76: mov    %cl,0x10(%r9,%r11,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@86 (line 716)

  0x00007f94e1116c7b: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116c85: incl   0x1b0(%rax)
  0x00007f94e1116c8b: jmpq   0x00007f94e111722d  ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@87 (line 716)

  0x00007f94e1116c90: cmp    $0x800,%ecx
  0x00007f94e1116c96: mov    $0x7f94e0292a88,%r8  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116ca0: mov    $0x1c8,%r11
  0x00007f94e1116caa: jge    0x00007f94e1116cba
  0x00007f94e1116cb0: mov    $0x1d8,%r11
  0x00007f94e1116cba: mov    (%r8,%r11,1),%r13
  0x00007f94e1116cbe: lea    0x1(%r13),%r13
  0x00007f94e1116cc2: mov    %r13,(%r8,%r11,1)
  0x00007f94e1116cc6: jge    0x00007f94e1116d24  ;*if_icmpge
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@95 (line 717)

  0x00007f94e1116ccc: mov    %rcx,%r8
  0x00007f94e1116ccf: sar    $0x6,%r8d
  0x00007f94e1116cd3: or     $0xc0,%r8d
  0x00007f94e1116cda: movslq %eax,%r11
  0x00007f94e1116cdd: cmp    0xc(%r9),%eax
  0x00007f94e1116ce1: jae    0x00007f94e1117337
  0x00007f94e1116ce7: mov    %r8b,0x10(%r9,%r11,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@115 (line 719)

  0x00007f94e1116cec: inc    %eax
  0x00007f94e1116cee: mov    %rax,%r8
  0x00007f94e1116cf1: inc    %r8d
  0x00007f94e1116cf4: and    $0x3f,%ecx
  0x00007f94e1116cf7: or     $0x80,%ecx
  0x00007f94e1116cfd: movslq %eax,%r11
  0x00007f94e1116d00: cmp    0xc(%r9),%eax
  0x00007f94e1116d04: jae    0x00007f94e1117340
  0x00007f94e1116d0a: mov    %cl,0x10(%r9,%r11,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@133 (line 720)

  0x00007f94e1116d0f: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116d19: incl   0x1e8(%rax)
  0x00007f94e1116d1f: jmpq   0x00007f94e111722d  ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@134 (line 720)

  0x00007f94e1116d24: mov    $0x7f94e0292a88,%r8  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116d2e: addq   $0x1,0x200(%r8)
  0x00007f94e1116d36: mov    $0x7f94e0293e38,%r8  ;   {metadata(method data for {method} {0x00007f94e00c3cd8} 'isSurrogate' '(C)Z' in 'java/lang/Character')}
  0x00007f94e1116d40: mov    0xdc(%r8),%r11d
  0x00007f94e1116d47: add    $0x8,%r11d
  0x00007f94e1116d4b: mov    %r11d,0xdc(%r8)
  0x00007f94e1116d52: mov    $0x7f94e00c3cd8,%r8  ;   {metadata({method} {0x00007f94e00c3cd8} 'isSurrogate' '(C)Z' in 'java/lang/Character')}
  0x00007f94e1116d5c: and    $0x7ffff8,%r11d
  0x00007f94e1116d63: cmp    $0x0,%r11d
  0x00007f94e1116d67: je     0x00007f94e1117349
  0x00007f94e1116d6d: cmp    $0xd800,%ecx
  0x00007f94e1116d73: mov    $0x7f94e0293e38,%r8  ;   {metadata(method data for {method} {0x00007f94e00c3cd8} 'isSurrogate' '(C)Z' in 'java/lang/Character')}
  0x00007f94e1116d7d: mov    $0x108,%r11
  0x00007f94e1116d87: jl     0x00007f94e1116d97
  0x00007f94e1116d8d: mov    $0x118,%r11
  0x00007f94e1116d97: mov    (%r8,%r11,1),%r13
  0x00007f94e1116d9b: lea    0x1(%r13),%r13
  0x00007f94e1116d9f: mov    %r13,(%r8,%r11,1)
  0x00007f94e1116da3: jl     0x00007f94e1116de5  ;*if_icmplt
                                                ; - java.lang.Character::isSurrogate@3 (line 4776)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@139 (line 721)

  0x00007f94e1116da9: cmp    $0xe000,%ecx
  0x00007f94e1116daf: mov    $0x7f94e0293e38,%r8  ;   {metadata(method data for {method} {0x00007f94e00c3cd8} 'isSurrogate' '(C)Z' in 'java/lang/Character')}
  0x00007f94e1116db9: mov    $0x128,%r11
  0x00007f94e1116dc3: jge    0x00007f94e1116dd3
  0x00007f94e1116dc9: mov    $0x138,%r11
  0x00007f94e1116dd3: mov    (%r8,%r11,1),%r13
  0x00007f94e1116dd7: lea    0x1(%r13),%r13
  0x00007f94e1116ddb: mov    %r13,(%r8,%r11,1)
  0x00007f94e1116ddf: jl     0x00007f94e1116df0  ;*if_icmpge
                                                ; - java.lang.Character::isSurrogate@9 (line 4776)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@139 (line 721)

  0x00007f94e1116de5: mov    $0x0,%r8d
  0x00007f94e1116deb: jmpq   0x00007f94e1116e07  ;*ireturn
                                                ; - java.lang.Character::isSurrogate@17 (line 4776)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@139 (line 721)

  0x00007f94e1116df0: mov    $0x7f94e0293e38,%r8  ;   {metadata(method data for {method} {0x00007f94e00c3cd8} 'isSurrogate' '(C)Z' in 'java/lang/Character')}
  0x00007f94e1116dfa: incl   0x148(%r8)
  0x00007f94e1116e01: mov    $0x1,%r8d          ;*goto
                                                ; - java.lang.Character::isSurrogate@13 (line 4776)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@139 (line 721)

  0x00007f94e1116e07: cmp    $0x0,%r8d
  0x00007f94e1116e0b: mov    $0x7f94e0292a88,%r8  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116e15: mov    $0x210,%r11
  0x00007f94e1116e1f: je     0x00007f94e1116e2f
  0x00007f94e1116e25: mov    $0x220,%r11
  0x00007f94e1116e2f: mov    (%r8,%r11,1),%r13
  0x00007f94e1116e33: lea    0x1(%r13),%r13
  0x00007f94e1116e37: mov    %r13,(%r8,%r11,1)
  0x00007f94e1116e3b: je     0x00007f94e11171c1  ;*ifeq
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@142 (line 721)

  0x00007f94e1116e41: mov    0x30(%rsi),%r8d
  0x00007f94e1116e45: shl    $0x3,%r8           ;*getfield sgp
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@146 (line 722)

  0x00007f94e1116e49: cmp    $0x0,%r8
  0x00007f94e1116e4d: mov    $0x7f94e0292a88,%r8  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116e57: mov    $0x230,%r11
  0x00007f94e1116e61: jne    0x00007f94e1116e71
  0x00007f94e1116e67: mov    $0x240,%r11
  0x00007f94e1116e71: mov    (%r8,%r11,1),%r13
  0x00007f94e1116e75: lea    0x1(%r13),%r13
  0x00007f94e1116e79: mov    %r13,(%r8,%r11,1)
  0x00007f94e1116e7d: mov    %ecx,0x5c(%rsp)
  0x00007f94e1116e81: mov    %ebx,0x58(%rsp)
  0x00007f94e1116e85: mov    %eax,0x6c(%rsp)
  0x00007f94e1116e89: jne    0x00007f94e1116eee  ;*ifnonnull
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@149 (line 722)

  0x00007f94e1116e8f: nop    
  0x00007f94e1116e90: jmpq   0x00007f94e111736f  ;   {no_reloc}
  0x00007f94e1116e95: add    %al,(%rax)
  0x00007f94e1116e97: add    %al,(%rax)
  0x00007f94e1116e99: add    %ch,%cl
  0x00007f94e1116e9b: fiaddl (%rax,%rax,1)
  0x00007f94e1116e9e: add    %cl,-0x75(%rax)    ;*new  ; - sun.nio.cs.UTF_8$Encoder::encode@153 (line 723)

  0x00007f94e1116ea1: rorb   -0x43(%rcx)        ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116ea4: mov    %ch,(%rdx)
  0x00007f94e1116ea6: sub    %esp,%eax
  0x00007f94e1116ea8: xchg   %eax,%esp
  0x00007f94e1116ea9: jg     0x00007f94e1116eab
  0x00007f94e1116eab: add    %cl,-0x7d(%rcx)
  0x00007f94e1116eae: test   %edx,0x2(%rax)
  0x00007f94e1116eb1: add    %al,(%rax)
  0x00007f94e1116eb3: add    %ecx,-0x75(%rax)
  0x00007f94e1116eb6: lock mov %rax,0x50(%rsp)  ;*invokespecial <init>
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@157 (line 723)

  0x00007f94e1116ebc: nop    
  0x00007f94e1116ebd: nop    
  0x00007f94e1116ebe: nop    
  0x00007f94e1116ebf: callq  0x00007f94e1046020  ; OopMap{[72]=Oop [80]=Oop [96]=Oop [112]=Oop off=1284}
                                                ;*invokespecial <init>
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@157 (line 723)
                                                ;   {optimized virtual_call}
  0x00007f94e1116ec4: mov    0x48(%rsp),%rsi
  0x00007f94e1116ec9: mov    0x50(%rsp),%rax
  0x00007f94e1116ece: mov    %rax,%r10
  0x00007f94e1116ed1: shr    $0x3,%r10
  0x00007f94e1116ed5: mov    %r10d,0x30(%rsi)
  0x00007f94e1116ed9: mov    %rsi,%rdx
  0x00007f94e1116edc: shr    $0x9,%rdx
  0x00007f94e1116ee0: mov    $0x7f94f0e87000,%rcx
  0x00007f94e1116eea: movb   $0x0,(%rdx,%rcx,1)  ;*putfield sgp
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@160 (line 723)

  0x00007f94e1116eee: mov    0x30(%rsi),%edi
  0x00007f94e1116ef1: shl    $0x3,%rdi          ;*getfield sgp
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@164 (line 724)

  0x00007f94e1116ef5: cmp    (%rdi),%rax        ; implicit exception: dispatches to 0x00007f94e1117386
  0x00007f94e1116ef8: mov    %rdi,%rdx
  0x00007f94e1116efb: mov    $0x7f94e0292a88,%rcx  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116f05: mov    0x8(%rdx),%edx
  0x00007f94e1116f08: shl    $0x3,%rdx
  0x00007f94e1116f0c: cmp    0x268(%rcx),%rdx
  0x00007f94e1116f13: jne    0x00007f94e1116f22
  0x00007f94e1116f15: addq   $0x1,0x270(%rcx)
  0x00007f94e1116f1d: jmpq   0x00007f94e1116f88
  0x00007f94e1116f22: cmp    0x278(%rcx),%rdx
  0x00007f94e1116f29: jne    0x00007f94e1116f38
  0x00007f94e1116f2b: addq   $0x1,0x280(%rcx)
  0x00007f94e1116f33: jmpq   0x00007f94e1116f88
  0x00007f94e1116f38: cmpq   $0x0,0x268(%rcx)
  0x00007f94e1116f43: jne    0x00007f94e1116f5c
  0x00007f94e1116f45: mov    %rdx,0x268(%rcx)
  0x00007f94e1116f4c: movq   $0x1,0x270(%rcx)
  0x00007f94e1116f57: jmpq   0x00007f94e1116f88
  0x00007f94e1116f5c: cmpq   $0x0,0x278(%rcx)
  0x00007f94e1116f67: jne    0x00007f94e1116f80
  0x00007f94e1116f69: mov    %rdx,0x278(%rcx)
  0x00007f94e1116f70: movq   $0x1,0x280(%rcx)
  0x00007f94e1116f7b: jmpq   0x00007f94e1116f88
  0x00007f94e1116f80: addq   $0x1,0x260(%rcx)
  0x00007f94e1116f88: mov    0x58(%rsp),%ebx
  0x00007f94e1116f8c: dec    %ebx
  0x00007f94e1116f8e: mov    0x5c(%rsp),%edx
  0x00007f94e1116f92: mov    0x60(%rsp),%rcx
  0x00007f94e1116f97: mov    %rbx,%r8
  0x00007f94e1116f9a: mov    0x68(%rsp),%r9d
  0x00007f94e1116f9f: mov    %rdi,%rsi          ;*invokevirtual parse
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@175 (line 724)

  0x00007f94e1116fa2: nop    
  0x00007f94e1116fa3: nop    
  0x00007f94e1116fa4: nop    
  0x00007f94e1116fa5: mov    $0xffffffffffffffff,%rax
  0x00007f94e1116faf: callq  0x00007f94e1046220  ; OopMap{[96]=Oop [112]=Oop [72]=Oop off=1524}
                                                ;*invokevirtual parse
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@175 (line 724)
                                                ;   {virtual_call}
  0x00007f94e1116fb4: cmp    $0x0,%eax
  0x00007f94e1116fb7: mov    $0x7f94e0292a88,%rsi  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116fc1: mov    $0x290,%rdi
  0x00007f94e1116fcb: jge    0x00007f94e1116fdb
  0x00007f94e1116fd1: mov    $0x2a0,%rdi
  0x00007f94e1116fdb: mov    (%rsi,%rdi,1),%rbx
  0x00007f94e1116fdf: lea    0x1(%rbx),%rbx
  0x00007f94e1116fe3: mov    %rbx,(%rsi,%rdi,1)
  0x00007f94e1116fe7: jge    0x00007f94e1117109  ;*ifge
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@182 (line 725)

  0x00007f94e1116fed: mov    0x48(%rsp),%rsi
  0x00007f94e1116ff2: mov    %rsi,%rax
  0x00007f94e1116ff5: mov    $0x7f94e0292a88,%rdi  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1116fff: mov    0x8(%rax),%eax
  0x00007f94e1117002: shl    $0x3,%rax
  0x00007f94e1117006: cmp    0x2b8(%rdi),%rax
  0x00007f94e111700d: jne    0x00007f94e111701c
  0x00007f94e111700f: addq   $0x1,0x2c0(%rdi)
  0x00007f94e1117017: jmpq   0x00007f94e1117082
  0x00007f94e111701c: cmp    0x2c8(%rdi),%rax
  0x00007f94e1117023: jne    0x00007f94e1117032
  0x00007f94e1117025: addq   $0x1,0x2d0(%rdi)
  0x00007f94e111702d: jmpq   0x00007f94e1117082
  0x00007f94e1117032: cmpq   $0x0,0x2b8(%rdi)
  0x00007f94e111703d: jne    0x00007f94e1117056
  0x00007f94e111703f: mov    %rax,0x2b8(%rdi)
  0x00007f94e1117046: movq   $0x1,0x2c0(%rdi)
  0x00007f94e1117051: jmpq   0x00007f94e1117082
  0x00007f94e1117056: cmpq   $0x0,0x2c8(%rdi)
  0x00007f94e1117061: jne    0x00007f94e111707a
  0x00007f94e1117063: mov    %rax,0x2c8(%rdi)
  0x00007f94e111706a: movq   $0x1,0x2d0(%rdi)
  0x00007f94e1117075: jmpq   0x00007f94e1117082
  0x00007f94e111707a: addq   $0x1,0x2b0(%rdi)
  0x00007f94e1117082: mov    0x20(%rsi),%eax
  0x00007f94e1117085: shl    $0x3,%rax          ;*getfield malformedInputAction
                                                ; - java.nio.charset.CharsetEncoder::malformedInputAction@1 (line 365)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@186 (line 726)

  0x00007f94e1117089: mov    $0x781e168f8,%r10  ;   {oop(a 'java/nio/charset/CodingErrorAction')}
  0x00007f94e1117093: cmp    %r10,%rax
  0x00007f94e1117096: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e11170a0: mov    $0x2e0,%rdi
  0x00007f94e11170aa: je     0x00007f94e11170ba
  0x00007f94e11170b0: mov    $0x2f0,%rdi
  0x00007f94e11170ba: mov    (%rax,%rdi,1),%rbx
  0x00007f94e11170be: lea    0x1(%rbx),%rbx
  0x00007f94e11170c2: mov    %rbx,(%rax,%rdi,1)
  0x00007f94e11170c6: jne    0x00007f94e111728c  ;*if_acmpeq
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@192 (line 726)

  0x00007f94e11170cc: mov    0x6c(%rsp),%edi
  0x00007f94e11170d0: mov    0x70(%rsp),%r9
  0x00007f94e11170d5: mov    %rdi,%rax
  0x00007f94e11170d8: inc    %eax
  0x00007f94e11170da: movsbl 0x2c(%rsi),%ebx    ;*getfield repl
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@205 (line 728)

  0x00007f94e11170de: movslq %edi,%rdx
  0x00007f94e11170e1: cmp    0xc(%r9),%edi
  0x00007f94e11170e5: jae    0x00007f94e111738b
  0x00007f94e11170eb: mov    %bl,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@208 (line 728)

  0x00007f94e11170f0: mov    $0x7f94e0292a88,%rdi  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e11170fa: incl   0x300(%rdi)
  0x00007f94e1117100: mov    0x58(%rsp),%ebx
  0x00007f94e1117104: jmpq   0x00007f94e11171a9  ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@209 (line 728)

  0x00007f94e1117109: mov    0x6c(%rsp),%edi
  0x00007f94e111710d: mov    0x70(%rsp),%r9
  0x00007f94e1117112: mov    0x48(%rsp),%rsi
  0x00007f94e1117117: mov    %rax,%rbx
  0x00007f94e111711a: sar    $0x12,%ebx
  0x00007f94e111711d: or     $0xf0,%ebx
  0x00007f94e1117123: movslq %edi,%rdx
  0x00007f94e1117126: cmp    0xc(%r9),%edi
  0x00007f94e111712a: jae    0x00007f94e1117394
  0x00007f94e1117130: mov    %bl,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@229 (line 730)

  0x00007f94e1117135: inc    %edi
  0x00007f94e1117137: mov    %rax,%rbx
  0x00007f94e111713a: sar    $0xc,%ebx
  0x00007f94e111713d: and    $0x3f,%ebx
  0x00007f94e1117140: or     $0x80,%ebx
  0x00007f94e1117146: movslq %edi,%rdx
  0x00007f94e1117149: cmp    0xc(%r9),%edi
  0x00007f94e111714d: jae    0x00007f94e111739d
  0x00007f94e1117153: mov    %bl,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@250 (line 731)

  0x00007f94e1117158: inc    %edi
  0x00007f94e111715a: mov    %rax,%rbx
  0x00007f94e111715d: sar    $0x6,%ebx
  0x00007f94e1117160: and    $0x3f,%ebx
  0x00007f94e1117163: or     $0x80,%ebx
  0x00007f94e1117169: movslq %edi,%rdx
  0x00007f94e111716c: cmp    0xc(%r9),%edi
  0x00007f94e1117170: jae    0x00007f94e11173a6
  0x00007f94e1117176: mov    %bl,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@271 (line 732)

  0x00007f94e111717b: inc    %edi
  0x00007f94e111717d: mov    %rdi,%rbx
  0x00007f94e1117180: inc    %ebx
  0x00007f94e1117182: and    $0x3f,%eax
  0x00007f94e1117185: or     $0x80,%eax
  0x00007f94e111718b: movslq %edi,%rdx
  0x00007f94e111718e: cmp    0xc(%r9),%edi
  0x00007f94e1117192: jae    0x00007f94e11173af
  0x00007f94e1117198: mov    %al,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@289 (line 733)

  0x00007f94e111719d: mov    0x58(%rsp),%edi
  0x00007f94e11171a1: inc    %edi
  0x00007f94e11171a3: mov    %rbx,%rax
  0x00007f94e11171a6: mov    %rdi,%rbx
  0x00007f94e11171a9: mov    $0x7f94e0292a88,%rdi  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e11171b3: incl   0x318(%rdi)
  0x00007f94e11171b9: mov    %rax,%r8
  0x00007f94e11171bc: jmpq   0x00007f94e111722d  ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@293 (line 736)

  0x00007f94e11171c1: mov    %rax,%rdi
  0x00007f94e11171c4: mov    %rcx,%rax
  0x00007f94e11171c7: sar    $0xc,%eax
  0x00007f94e11171ca: or     $0xe0,%eax
  0x00007f94e11171d0: movslq %edi,%rdx
  0x00007f94e11171d3: cmp    0xc(%r9),%edi
  0x00007f94e11171d7: jae    0x00007f94e11173b8
  0x00007f94e11171dd: mov    %al,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@313 (line 738)

  0x00007f94e11171e2: mov    %rdi,%rax
  0x00007f94e11171e5: inc    %eax
  0x00007f94e11171e7: mov    %rcx,%rdi
  0x00007f94e11171ea: sar    $0x6,%edi
  0x00007f94e11171ed: and    $0x3f,%edi
  0x00007f94e11171f0: or     $0x80,%edi
  0x00007f94e11171f6: movslq %eax,%rdx
  0x00007f94e11171f9: cmp    0xc(%r9),%eax
  0x00007f94e11171fd: jae    0x00007f94e11173c1
  0x00007f94e1117203: mov    %dil,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@334 (line 739)

  0x00007f94e1117208: inc    %eax
  0x00007f94e111720a: mov    %rax,%rdi
  0x00007f94e111720d: inc    %edi
  0x00007f94e111720f: and    $0x3f,%ecx
  0x00007f94e1117212: or     $0x80,%ecx
  0x00007f94e1117218: movslq %eax,%rdx
  0x00007f94e111721b: cmp    0xc(%r9),%eax
  0x00007f94e111721f: jae    0x00007f94e11173ca
  0x00007f94e1117225: mov    %cl,0x10(%r9,%rdx,1)  ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@352 (line 740)

  0x00007f94e111722a: mov    %rdi,%r8           ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@353 (line 742)

  0x00007f94e111722d: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1117237: mov    0xe0(%rax),%edi
  0x00007f94e111723d: add    $0x8,%edi
  0x00007f94e1117240: mov    %edi,0xe0(%rax)
  0x00007f94e1117246: mov    $0x7f94e01778f8,%rax  ;   {metadata({method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e1117250: and    $0xfff8,%edi
  0x00007f94e1117256: cmp    $0x0,%edi
  0x00007f94e1117259: je     0x00007f94e11173d3  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2207}
                                                ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@353 (line 742)

  0x00007f94e111725f: test   %eax,0x16ed7e9b(%rip)        # 0x00007f94f7fef100
                                                ;   {poll}
  0x00007f94e1117265: mov    $0x7f94e0292a88,%rax  ;   {metadata(method data for {method} {0x00007f94e01778f8} 'encode' '([CII[B)I' in 'sun/nio/cs/UTF_8$Encoder')}
  0x00007f94e111726f: incl   0x330(%rax)
  0x00007f94e1117275: mov    %r8,%rdi
  0x00007f94e1117278: mov    %rbx,%rcx
  0x00007f94e111727b: mov    %rdi,%rax
  0x00007f94e111727e: mov    0x68(%rsp),%edi
  0x00007f94e1117282: mov    0x60(%rsp),%rdx
  0x00007f94e1117287: jmpq   0x00007f94e1116bd8  ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@353 (line 742)

  0x00007f94e111728c: mov    $0xffffffff,%eax
  0x00007f94e1117291: add    $0x80,%rsp
  0x00007f94e1117298: pop    %rbp
  0x00007f94e1117299: test   %eax,0x16ed7e61(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e111729f: retq                      ;*ireturn
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@196 (line 727)

  0x00007f94e11172a0: mov    %rax,%rdi
  0x00007f94e11172a3: mov    %rdi,%rax
  0x00007f94e11172a6: add    $0x80,%rsp
  0x00007f94e11172ad: pop    %rbp
  0x00007f94e11172ae: test   %eax,0x16ed7e4c(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e11172b4: retq   
  0x00007f94e11172b5: mov    %rax,0x8(%rsp)
  0x00007f94e11172ba: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e11172c2: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2311}
                                                ;*synchronization entry
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@-1 (line 704)
                                                ;   {runtime_call}
  0x00007f94e11172c7: jmpq   0x00007f94e1116a30
  0x00007f94e11172cc: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2321}
                                                ;*arraylength
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@13 (line 706)
                                                ;   {runtime_call}
  0x00007f94e11172d1: mov    %rbx,0x8(%rsp)
  0x00007f94e11172d6: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e11172de: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2339}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@14 (line 706)
                                                ;   {runtime_call}
  0x00007f94e11172e3: jmpq   0x00007f94e1116a87
  0x00007f94e11172e8: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2349}
                                                ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@29 (line 709)
                                                ;   {runtime_call}
  0x00007f94e11172ed: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2354}
                                                ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@29 (line 709)
                                                ;   {runtime_call}
  0x00007f94e11172f2: mov    %rcx,(%rsp)
  0x00007f94e11172f6: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2363}
                                                ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@29 (line 709)
                                                ;   {runtime_call}
  0x00007f94e11172fb: mov    %rax,(%rsp)
  0x00007f94e11172ff: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2372}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@50 (line 710)
                                                ;   {runtime_call}
  0x00007f94e1117304: mov    %rax,0x8(%rsp)
  0x00007f94e1117309: movq   $0x33,(%rsp)
  0x00007f94e1117311: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2390}
                                                ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@51 (line 710)
                                                ;   {runtime_call}
  0x00007f94e1117316: jmpq   0x00007f94e1116b81
  0x00007f94e111731b: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2400}
                                                ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@65 (line 713)
                                                ;   {runtime_call}
  0x00007f94e1117320: callq  0x00007f94e10f9680  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2405}
                                                ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@65 (line 713)
                                                ;   {runtime_call}
  0x00007f94e1117325: mov    %rcx,(%rsp)
  0x00007f94e1117329: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2414}
                                                ;*caload
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@65 (line 713)
                                                ;   {runtime_call}
  0x00007f94e111732e: mov    %rax,(%rsp)
  0x00007f94e1117332: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2423}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@86 (line 716)
                                                ;   {runtime_call}
  0x00007f94e1117337: mov    %rax,(%rsp)
  0x00007f94e111733b: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2432}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@115 (line 719)
                                                ;   {runtime_call}
  0x00007f94e1117340: mov    %rax,(%rsp)
  0x00007f94e1117344: callq  0x00007f94e106bc40  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2441}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@133 (line 720)
                                                ;   {runtime_call}
  0x00007f94e1117349: mov    %r8,0x8(%rsp)
  0x00007f94e111734e: movq   $0xffffffffffffffff,(%rsp)
  0x00007f94e1117356: callq  0x00007f94e10fc760  ; OopMap{rsi=Oop [72]=Oop rdx=Oop [96]=Oop r9=Oop [112]=Oop off=2459}
                                                ;*synchronization entry
                                                ; - java.lang.Character::isSurrogate@-1 (line 4776)
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@139 (line 721)
                                                ;   {runtime_call}
  0x00007f94e111735b: jmpq   0x00007f94e1116d6d
  0x00007f94e1117360: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f94e111736a: mov    $0xa050f00,%eax
  0x00007f94e111736f: callq  0x00007f94e10fd5a0  ; OopMap{[112]=Oop [72]=Oop [96]=Oop off=2484}
                                                ;*new  ; - sun.nio.cs.UTF_8$Encoder::encode@153 (line 723)
                                                ;   {runtime_call}
  0x00007f94e1117374: jmpq   0x00007f94e1116e90
  0x00007f94e1117379: mov    %rdx,%rdx
  0x00007f94e111737c: callq  0x00007f94e10f9b20  ; OopMap{[112]=Oop [72]=Oop [96]=Oop off=2497}
                                                ;*new  ; - sun.nio.cs.UTF_8$Encoder::encode@153 (line 723)
                                                ;   {runtime_call}
  0x00007f94e1117381: jmpq   0x00007f94e1116e9f
  0x00007f94e1117386: callq  0x00007f94e10f9680  ; OopMap{[96]=Oop [112]=Oop rsi=Oop [72]=Oop rdi=Oop off=2507}
                                                ;*invokevirtual parse
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@175 (line 724)
                                                ;   {runtime_call}
  0x00007f94e111738b: mov    %rdi,(%rsp)
  0x00007f94e111738f: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2516}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@208 (line 728)
                                                ;   {runtime_call}
  0x00007f94e1117394: mov    %rdi,(%rsp)
  0x00007f94e1117398: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2525}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@229 (line 730)
                                                ;   {runtime_call}
  0x00007f94e111739d: mov    %rdi,(%rsp)
  0x00007f94e11173a1: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2534}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@250 (line 731)
                                                ;   {runtime_call}
  0x00007f94e11173a6: mov    %rdi,(%rsp)
  0x00007f94e11173aa: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2543}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@271 (line 732)
                                                ;   {runtime_call}
  0x00007f94e11173af: mov    %rdi,(%rsp)
  0x00007f94e11173b3: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2552}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@289 (line 733)
                                                ;   {runtime_call}
  0x00007f94e11173b8: mov    %rdi,(%rsp)
  0x00007f94e11173bc: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2561}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@313 (line 738)
                                                ;   {runtime_call}
  0x00007f94e11173c1: mov    %rax,(%rsp)
  0x00007f94e11173c5: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2570}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@334 (line 739)
                                                ;   {runtime_call}
  0x00007f94e11173ca: mov    %rax,(%rsp)
  0x00007f94e11173ce: callq  0x00007f94e106bc40  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2579}
                                                ;*bastore
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@352 (line 740)
                                                ;   {runtime_call}
  0x00007f94e11173d3: mov    %rax,0x8(%rsp)
  0x00007f94e11173d8: movq   $0x161,(%rsp)
  0x00007f94e11173e0: callq  0x00007f94e10fc760  ; OopMap{[96]=Oop rsi=Oop [72]=Oop r9=Oop [112]=Oop off=2597}
                                                ;*goto
                                                ; - sun.nio.cs.UTF_8$Encoder::encode@353 (line 742)
                                                ;   {runtime_call}
  0x00007f94e11173e5: jmpq   0x00007f94e111725f
  0x00007f94e11173ea: nop    
  0x00007f94e11173eb: nop    
  0x00007f94e11173ec: mov    0x2a8(%r15),%rax
  0x00007f94e11173f3: mov    $0x0,%r10
  0x00007f94e11173fd: mov    %r10,0x2a8(%r15)
  0x00007f94e1117404: mov    $0x0,%r10
  0x00007f94e111740e: mov    %r10,0x2b0(%r15)
  0x00007f94e1117415: add    $0x80,%rsp
  0x00007f94e111741c: pop    %rbp
  0x00007f94e111741d: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1117422: hlt    
  0x00007f94e1117423: hlt    
  0x00007f94e1117424: hlt    
  0x00007f94e1117425: hlt    
  0x00007f94e1117426: hlt    
  0x00007f94e1117427: hlt    
  0x00007f94e1117428: hlt    
  0x00007f94e1117429: hlt    
  0x00007f94e111742a: hlt    
  0x00007f94e111742b: hlt    
  0x00007f94e111742c: hlt    
  0x00007f94e111742d: hlt    
  0x00007f94e111742e: hlt    
  0x00007f94e111742f: hlt    
  0x00007f94e1117430: hlt    
  0x00007f94e1117431: hlt    
  0x00007f94e1117432: hlt    
  0x00007f94e1117433: hlt    
  0x00007f94e1117434: hlt    
  0x00007f94e1117435: hlt    
  0x00007f94e1117436: hlt    
  0x00007f94e1117437: hlt    
  0x00007f94e1117438: hlt    
  0x00007f94e1117439: hlt    
  0x00007f94e111743a: hlt    
  0x00007f94e111743b: hlt    
  0x00007f94e111743c: hlt    
  0x00007f94e111743d: hlt    
  0x00007f94e111743e: hlt    
  0x00007f94e111743f: hlt    
[Stub Code]
  0x00007f94e1117440: nop                       ;   {no_reloc}
  0x00007f94e1117441: nop    
  0x00007f94e1117442: nop    
  0x00007f94e1117443: nop    
  0x00007f94e1117444: nop    
  0x00007f94e1117445: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111744f: jmpq   0x00007f94e111744f  ;   {runtime_call}
  0x00007f94e1117454: nop    
  0x00007f94e1117455: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f94e111745f: jmpq   0x00007f94e111745f  ;   {runtime_call}
[Exception Handler]
  0x00007f94e1117464: callq  0x00007f94e10fb460  ;   {runtime_call}
  0x00007f94e1117469: mov    %rsp,-0x28(%rsp)
  0x00007f94e111746e: sub    $0x80,%rsp
  0x00007f94e1117475: mov    %rax,0x78(%rsp)
  0x00007f94e111747a: mov    %rcx,0x70(%rsp)
  0x00007f94e111747f: mov    %rdx,0x68(%rsp)
  0x00007f94e1117484: mov    %rbx,0x60(%rsp)
  0x00007f94e1117489: mov    %rbp,0x50(%rsp)
  0x00007f94e111748e: mov    %rsi,0x48(%rsp)
  0x00007f94e1117493: mov    %rdi,0x40(%rsp)
  0x00007f94e1117498: mov    %r8,0x38(%rsp)
  0x00007f94e111749d: mov    %r9,0x30(%rsp)
  0x00007f94e11174a2: mov    %r10,0x28(%rsp)
  0x00007f94e11174a7: mov    %r11,0x20(%rsp)
  0x00007f94e11174ac: mov    %r12,0x18(%rsp)
  0x00007f94e11174b1: mov    %r13,0x10(%rsp)
  0x00007f94e11174b6: mov    %r14,0x8(%rsp)
  0x00007f94e11174bb: mov    %r15,(%rsp)
  0x00007f94e11174bf: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e11174c9: mov    $0x7f94e1117469,%rsi  ;   {internal_word}
  0x00007f94e11174d3: mov    %rsp,%rdx
  0x00007f94e11174d6: and    $0xfffffffffffffff0,%rsp
  0x00007f94e11174da: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e11174df: hlt    
[Deopt Handler Code]
  0x00007f94e11174e0: mov    $0x7f94e11174e0,%r10  ;   {section_word}
  0x00007f94e11174ea: push   %r10
  0x00007f94e11174ec: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e11174f1: hlt    
  0x00007f94e11174f2: hlt    
  0x00007f94e11174f3: hlt    
  0x00007f94e11174f4: hlt    
  0x00007f94e11174f5: hlt    
  0x00007f94e11174f6: hlt    
  0x00007f94e11174f7: hlt    
Decoding compiled method 0x00007f94e1117d90:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f94e002ec60} 'length' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f94e1117ee0: mov    0x8(%rsi),%r10d
  0x00007f94e1117ee4: shl    $0x3,%r10
  0x00007f94e1117ee8: cmp    %rax,%r10
  0x00007f94e1117eeb: jne    0x00007f94e1045e20  ;   {runtime_call}
  0x00007f94e1117ef1: nopw   0x0(%rax,%rax,1)
  0x00007f94e1117efc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f94e1117f00: mov    %eax,-0x14000(%rsp)
  0x00007f94e1117f07: push   %rbp
  0x00007f94e1117f08: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.lang.String::length@0 (line 623)

  0x00007f94e1117f0c: mov    0xc(%rsi),%eax
  0x00007f94e1117f0f: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::length@1 (line 623)

  0x00007f94e1117f13: mov    0xc(%rax),%eax     ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; implicit exception: dispatches to 0x00007f94e1117f22
  0x00007f94e1117f16: add    $0x30,%rsp
  0x00007f94e1117f1a: pop    %rbp
  0x00007f94e1117f1b: test   %eax,0x16ed71df(%rip)        # 0x00007f94f7fef100
                                                ;   {poll_return}
  0x00007f94e1117f21: retq   
  0x00007f94e1117f22: callq  0x00007f94e10f9680  ; OopMap{off=71}
                                                ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ;   {runtime_call}
  0x00007f94e1117f27: nop    
  0x00007f94e1117f28: nop    
  0x00007f94e1117f29: mov    0x2a8(%r15),%rax
  0x00007f94e1117f30: mov    $0x0,%r10
  0x00007f94e1117f3a: mov    %r10,0x2a8(%r15)
  0x00007f94e1117f41: mov    $0x0,%r10
  0x00007f94e1117f4b: mov    %r10,0x2b0(%r15)
  0x00007f94e1117f52: add    $0x30,%rsp
  0x00007f94e1117f56: pop    %rbp
  0x00007f94e1117f57: jmpq   0x00007f94e106c0e0  ;   {runtime_call}
  0x00007f94e1117f5c: hlt    
  0x00007f94e1117f5d: hlt    
  0x00007f94e1117f5e: hlt    
  0x00007f94e1117f5f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f94e1117f60: callq  0x00007f94e10fb460  ;   {no_reloc}
  0x00007f94e1117f65: mov    %rsp,-0x28(%rsp)
  0x00007f94e1117f6a: sub    $0x80,%rsp
  0x00007f94e1117f71: mov    %rax,0x78(%rsp)
  0x00007f94e1117f76: mov    %rcx,0x70(%rsp)
  0x00007f94e1117f7b: mov    %rdx,0x68(%rsp)
  0x00007f94e1117f80: mov    %rbx,0x60(%rsp)
  0x00007f94e1117f85: mov    %rbp,0x50(%rsp)
  0x00007f94e1117f8a: mov    %rsi,0x48(%rsp)
  0x00007f94e1117f8f: mov    %rdi,0x40(%rsp)
  0x00007f94e1117f94: mov    %r8,0x38(%rsp)
  0x00007f94e1117f99: mov    %r9,0x30(%rsp)
  0x00007f94e1117f9e: mov    %r10,0x28(%rsp)
  0x00007f94e1117fa3: mov    %r11,0x20(%rsp)
  0x00007f94e1117fa8: mov    %r12,0x18(%rsp)
  0x00007f94e1117fad: mov    %r13,0x10(%rsp)
  0x00007f94e1117fb2: mov    %r14,0x8(%rsp)
  0x00007f94e1117fb7: mov    %r15,(%rsp)
  0x00007f94e1117fbb: mov    $0x7f94f6eecc9e,%rdi  ;   {external_word}
  0x00007f94e1117fc5: mov    $0x7f94e1117f65,%rsi  ;   {internal_word}
  0x00007f94e1117fcf: mov    %rsp,%rdx
  0x00007f94e1117fd2: and    $0xfffffffffffffff0,%rsp
  0x00007f94e1117fd6: callq  0x00007f94f6c206a0  ;   {runtime_call}
  0x00007f94e1117fdb: hlt    
[Deopt Handler Code]
  0x00007f94e1117fdc: mov    $0x7f94e1117fdc,%r10  ;   {section_word}
  0x00007f94e1117fe6: push   %r10
  0x00007f94e1117fe8: jmpq   0x00007f94e10473c0  ;   {runtime_call}
  0x00007f94e1117fed: hlt    
  0x00007f94e1117fee: hlt    
  0x00007f94e1117fef: hlt    
