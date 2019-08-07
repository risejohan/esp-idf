deps_config := \
	/home/terminal/esp/esp-idf/components/app_trace/Kconfig \
	/home/terminal/esp/esp-idf/components/aws_iot/Kconfig \
	/home/terminal/esp/esp-idf/components/bt/Kconfig \
	/home/terminal/esp/esp-idf/components/driver/Kconfig \
	/home/terminal/esp/esp-idf/components/esp32/Kconfig \
	/home/terminal/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/terminal/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/terminal/esp/esp-idf/components/ethernet/Kconfig \
	/home/terminal/esp/esp-idf/components/fatfs/Kconfig \
	/home/terminal/esp/esp-idf/components/freertos/Kconfig \
	/home/terminal/esp/esp-idf/components/heap/Kconfig \
	/home/terminal/esp/esp-idf/components/libsodium/Kconfig \
	/home/terminal/esp/esp-idf/components/log/Kconfig \
	/home/terminal/esp/esp-idf/components/lwip/Kconfig \
	/home/terminal/esp/esp-idf/components/mbedtls/Kconfig \
	/home/terminal/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/terminal/esp/esp-idf/components/openssl/Kconfig \
	/home/terminal/esp/esp-idf/components/pthread/Kconfig \
	/home/terminal/esp/esp-idf/components/spi_flash/Kconfig \
	/home/terminal/esp/esp-idf/components/spiffs/Kconfig \
	/home/terminal/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/terminal/esp/esp-idf/components/vfs/Kconfig \
	/home/terminal/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/terminal/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/terminal/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/terminal/esp/esp-idf/examples/wifi/simple_wifi/main/Kconfig.projbuild \
	/home/terminal/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/terminal/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
