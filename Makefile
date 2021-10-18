startup.bin: startup.elf
	aarch64-elf-objcopy $^ -O binary $@

startup.elf: linker.ld startup.o
	aarch64-elf-ld -o $@ -T $^

%.o: %.s
	aarch64-elf-as -o $@ $^

clean:
	rm -f *.bin *.elf *.o

run: startup.bin
	qemu-system-aarch64 -machine virt -cpu cortex-a53 -m 4 -nographic -kernel startup.bin -monitor stdio -serial null
