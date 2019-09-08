all: TopLevelSimulation.v
	iverilog TopLevelSimulation.v -o Processor

run: Processor
	./Processor

gtk: MIPS.vcd
	gtkwave MIPS.vcd
