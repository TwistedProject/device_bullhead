#!/system/bin/sh

SUPOLICY=`which supolicy`

$SUPOLICY --live \
	"allow ssr device dir read" \
	"allow shell dalvikcache_data_file file write" \
	"allow shell dalvikcache_data_file dir write" \
	"allow mediaserver mediaserver_tmpfs file { read write execute }" \
	"allow untrusted_app kernel file { ioctl read write getattr append open }" \
	"allow untrusted_app kernel dir search" \
	"allow isolated_app app_data_file dir search" \
	"allow untrusted_app sysfs_thermal dir search" \
	"allow init kernel security load_policy" \
	"allow platform_app { untrusted_app init system_app shell kernel ueventd logd vold healthd lmkd servicemanager surfaceflinger rmt per_mgr tee msm_irqbalanced adbd netd debuggerd rild drmserver mediaserver installd keystore qmux perfd qti netmgrd thermal-engine ims imscm zygote gatekeeperd location wcnss_service time_daemon camera atfwd cnd fingerprintd system_server sdcardd wpa nfc radio isolated_app } dir search" \
        "allow platform_app { untrusted_app init system_app shell kernel ueventd logd vold healthd lmkd servicemanager surfaceflinger rmt per_mgr tee msm_irqbalanced adbd netd debuggerd rild drmserver mediaserver installd keystore qmux perfd qti netmgrd thermal-engine ims imscm zygote gatekeeperd location wcnss_service time_daemon camera atfwd cnd fingerprintd system_server sdcardd wpa nfc radio isolated_app } file { open read getattr }" \
	"allow sysfs perfd file write"
