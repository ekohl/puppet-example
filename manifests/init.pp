# @summary An example class
# @param file
#   The file to manage
# @param content
#   The content in the file
class example (
  Stdlib::Absolutepath $file = '/tmp/puppet-example',
  String[1] $content = 'Hello World!',
) {
  file { $file:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $content,
  }
}
