case platform
when "smartos"
  if `modinfo | grep sngl 2>&1 > /dev/null`
    default['paths']['lib_path'] = "/system/lib:/system/usr/lib:/usr/local/lib"
    default['paths']['bin_path'] = "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin"
  else
    default['paths']['lib_path'] = "/lib:/usr/lib:/opt/local/lib:/opt/gcc/lib"
    default['paths']['bin_path'] = "/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin"
    default['paths']['etc_path'] = "/opt/local/etc"
  end
when "ubuntu", "debian"
  default['paths']['lib_path'] = "/usr/local/lib:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu"
  default['paths']['bin_path'] = "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
else
  default['paths']['etc_path'] = "/etc"
end