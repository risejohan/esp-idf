deps_config := \
	/home/johan/esp/esp-idf/components/app_trace/Kconfig \
	/home/johan/esp/esp-idf/components/aws_iot/Kconfig \
	/home/johan/esp/esp-idf/components/bt/Kconfig \
	/home/johan/esp/esp-idf/components/driver/Kconfig \
	/home/johan/esp/esp-idf/components/esp32/Kconfig \
	/home/johan/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/johan/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/johan/esp/esp-idf/components/ethernet/Kconfig \
	/home/johan/esp/esp-idf/components/fatfs/Kconfig \
	/home/johan/esp/esp-idf/components/freertos/Kconfig \
	/home/johan/esp/esp-idf/components/heap/Kconfig \
	/home/johan/esp/esp-idf/components/libsodium/Kconfig \
	/home/johan/esp/esp-idf/components/log/Kconfig \
	/home/johan/esp/esp-idf/components/lwip/Kconfig \
	/home/johan/esp/esp-idf/components/mbedtls/Kconfig \
	/home/johan/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/johan/esp/esp-idf/components/openssl/Kconfig \
	/home/johan/esp/esp-idf/components/pthread/Kconfig \
	/home/johan/esp/esp-idf/components/spi_flash/Kconfig \
	/home/johan/esp/esp-idf/components/spiffs/Kconfig \
	/home/johan/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/johan/esp/esp-idf/components/vfs/Kconfig \
	/home/johan/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/johan/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/johan/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/johan/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/johan/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
