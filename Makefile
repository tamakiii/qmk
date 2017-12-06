
setup:
	git clone --recursive git@github.com:qmk/qmk_firmware.git vendor/qmk/qmk_firmware
	cd vendor/qmk/qmk_firmware &&  make git-submodule

deploy:
	echo ${PATH}
	echo ${FILE}
	echo ${TOKEN}
