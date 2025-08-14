VERILATOR_FLAGS = -Wall --cc --exe --build -O3
TOP = tt_um_hackclub_orpheus_urisc

.PHONY: sim waves lint
sim:
	./sim/run_verilator.sh $(TOP)

waves:
	gtkwave sim/out/trace.vcd &

lint:
	verilator --lint-only -Wall rtl/top/$(TOP).v rtl/soc/*.v rtl/periph/*.v rtl/util/*.v
