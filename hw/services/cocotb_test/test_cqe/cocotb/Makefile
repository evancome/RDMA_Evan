SIM   ?= icarus
WAVES ?= 1
TOPLEVEL_LANG ?= verilog

COCOTB_HDL_TIMEUNIT = 1ns
COCOTB_HDL_TIMEPRECISION = 1ps

DUT      = rocev2_top
TOPLEVEL = $(DUT)_top
MODULE   = test_$(DUT)



# VERILOG_SOURCES += /home/morning/Code/coyote/hw/build/iprepo/rocev2/hdl/verilog/*.v
# VERILOG_INCLUDE_DIRS += /home/morning/Code/coyote/hw/build/iprepo/rocev2/hdl/verilog

VERILOG_SOURCES += /home/morning/Code/Y5W-HLS/hw/build/iprepo/rocev2/hdl/verilog/*.v
VERILOG_INCLUDE_DIRS += /home/morning/Code/Y5W-HLS/hw/build/iprepo/rocev2/hdl/verilog
VERILOG_SOURCES += rocev2_top_top.v

ifeq ($(SIM), icarus)
	PLUSARGS += -fst

	COMPILE_ARGS += $(foreach v,$(filter PARAM_%,$(.VARIABLES)),-P $(TOPLEVEL).$(subst PARAM_,,$(v))=$($(v)))

	ifeq ($(WAVES), 1)
		VERILOG_SOURCES += iverilog_dump.v
		COMPILE_ARGS += -s iverilog_dump
	endif
else ifeq ($(SIM), verilator)
	COMPILE_ARGS += -Wno-SELRANGE -Wno-WIDTH

	COMPILE_ARGS += $(foreach v,$(filter PARAM_%,$(.VARIABLES)),-G$(subst PARAM_,,$(v))=$($(v)))

	ifeq ($(WAVES), 1)
		COMPILE_ARGS += --trace-fst
	endif
endif

include $(shell cocotb-config --makefiles)/Makefile.sim

iverilog_dump.v:
	echo 'module iverilog_dump();' > $@
	echo 'initial begin' >> $@
	echo '    $$dumpfile("$(TOPLEVEL).fst");' >> $@
	echo '    $$dumpvars(0, $(TOPLEVEL));' >> $@
	echo 'end' >> $@
	echo 'endmodule' >> $@

clean::
	rm -rf iverilog_dump.v
	rm -rf dump.fst $(TOPLEVEL).fst
	rm results.xml
	rm -r __pycache__
