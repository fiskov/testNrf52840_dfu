set SOFT_DEVICE=c:\Work\nRF5_SDK_17.1.0_ddde560\components\softdevice\s140\hex\s140_nrf52_7.2.0_softdevice.hex 

nrfutil settings generate --family NRF52840 --application ..\application\_build\app.hex --application-version 0 --bootloader-version 0 --bl-settings-version 2 bootloader_setting.hex --app-boot-validation NO_VALIDATION --softdevice %SOFT_DEVICE% --key-file private.key

"c:\Program Files\Nordic Semiconductor\nrf-command-line-tools\bin\mergehex.exe" -m ..\bootloader\_build\bootloader.hex bootloader_setting.hex %SOFT_DEVICE% ..\application\_build\app.hex -o firmware_full.hex
