# == Class: biit360
#
# Manage biit360 cron job
#
class biit360(
  $ensure  = 'present',
  $command = undef,
  $user    = 'biit360usr',
  $target  = 'biit360usr',
  $hour    = undef,
  $minute  = '21',
) {

  if $command == undef {
    fail( "Command can not be undef, please specify the command" )
  }

  cron { 'biit360':
    ensure  => $ensure,
    command => $command,
    user    => $user,
    target  => $target,
    hour    => $hour,
    minute  => $minute,
  }

}
