
setup:
	git clone --recursive git@github.com:qmk/qmk_firmware.git vendor/qmk/qmk_firmware
	cd vendor/qmk/qmk_firmware &&  make git-submodule

deploy:
	@curl -X POST https://content.dropboxapi.com/2/files/upload \
	  --header "Authorization: Bearer ${TOKEN}" \
	  --header "Dropbox-API-Arg: {\"path\": \"${PATH}\",\"mode\": \"add\",\"autorename\": false,\"mute\": false}" \
	  --header "Content-Type: application/octet-stream" \
	  --data-binary @${FILE}
