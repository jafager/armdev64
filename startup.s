.text

.global startup
startup:

    ldr x8, =0x00000000deadbeef

    b .
