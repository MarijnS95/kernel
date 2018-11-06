snd-soc-analog-cdc-objs := sdm660-cdc-irq.o msm-analog-cdc.o
snd-soc-digital-cdc-objs := msm-digital-cdc.o msm-digital-cdc-regmap.o
obj-$(CONFIG_SND_SOC_ANALOG_CDC) +=  snd-soc-analog-cdc.o
obj-$(CONFIG_SND_SOC_DIGITAL_CDC) += snd-soc-digital-cdc.o

CFLAGS_sdm660-cdc-irq.o := -DDEBUG
CFLAGS_msm-analog-cdc.o := -DDEBUG
CFLAGS_msm-digital-cdc.o := -DDEBUG
CFLAGS_msm-digital-cdc-regmap.o := -DDEBUG
CFLAGS_snd-soc-analog-cdc.o := -DDEBUG
CFLAGS_snd-soc-digital-cdc.o := -DDEBUG
