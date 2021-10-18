MEMORY
{
	ram : ORIGIN = 0x0000000000000000, LENGTH = 0x000000000000ffff
}

SECTIONS
{
	.text : { *(.text*) } > ram
}
