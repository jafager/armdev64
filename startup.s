.text


.global startup
startup:

    ldr x8, =0x0000000009000000

    ldr w9, ='H'
    strb w9, [x8]
    ldr w9, ='e'
    strb w9, [x8]
    ldr w9, ='l'
    strb w9, [x8]
    ldr w9, ='l'
    strb w9, [x8]
    ldr w9, ='o'
    strb w9, [x8]
    ldr w9, ='.'
    strb w9, [x8]
    ldr w9, ='\r'
    strb w9, [x8]
    ldr w9, ='\n'
    strb w9, [x8]

    b .
