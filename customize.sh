set_perm $MODPATH/system/vendor/bin/mosey_server 0 1000 0755 u:object_r:mosey_server_exec:s0
mkdir -p $MODPATH/system/vendor/etc/selinux
cp /vendor/etc/selinux/vendor_service_contexts $MODPATH/system/vendor/etc/selinux/
[ "$(grep "mosey_service" $MODPATH/system/vendor/etc/selinux/vendor_service_contexts)" ] || echo "com.google.pixel.moseyservice.IMoseyService/default u:object_r:mosey_service:s0" >> $MODPATH/system/vendor/etc/selinux/vendor_service_contexts
set_perm $MODPATH/system/vendor/etc/selinux/vendor_service_contexts 0 0 0644 u:object_r:vendor_configs_file:s0
set_perm $MODPATH/system/vendor/etc/init/mosey.rc 0 0 0644 u:object_r:vendor_configs_file:s0

