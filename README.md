puppet-apt_s3
=============

Install and configure apt_s3 with Puppet

## Setup

### Setup Requirements

The following puppet modules are required:

- apt

## Limitations

Tested on Ubuntu 10.04, 12.04 and 14.04


# Usage

```
class { 'apt_s3':
  aws_accesskey       => '<aws accesskey>',
  aws_secretaccesskey => '<aws secret access key>',
}
if !defined(Class['apt']) {
  class { 'apt': }
}
apt::source { 'name-of-your-repo':
  location    => 's3://<bucketname>/<folder</',
  release     => '<release_name>',
  repos       => '<repos>'
}
```
