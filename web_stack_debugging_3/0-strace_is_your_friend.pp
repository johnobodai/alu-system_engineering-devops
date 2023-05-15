# Testing how well the web server setup featuring Nginx is doing under pressure
exec { 'replace_limit':
  path    => '/usr/bin:/usr/sbin:/bin',
  command => 'sed -i "/ULIMIT=/c\ULIMIT=\'-n 4096\'" /etc/default/nginx; service nginx restart',
}
