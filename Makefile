#
# Compile and install the firmware files to /lib/firmware tree
# Requires the alsatplg tool (alsa-utils)
#

SRCPATH ?= .
FWPATH ?= /lib/firmware

targets = $(FWPATH)/skl_hda_dsp_generic-tplg.bin

all: firmware

$(FWPATH)/skl_hda_dsp_generic-tplg.bin: $(SRCPATH)/topology/hda-dsp/skl_hda_dsp_generic-tplg.conf
	alsatplg -c $< -o $@

.DUMMY: firmware
firmware: $(targets)
