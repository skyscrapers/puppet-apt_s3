##### LICENSE

# Copyright (c) Skyscrapers (iLibris bvba) 2014 - http://skyscrape.rs
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# == Class apt_s3::config
#
# This class is called from apt_S3
#
class apt_s3::config {
  file {
    '/etc/apt/s3auth.conf':
      ensure  => file,
      content => template ('apt_s3/etc/apt/s3auth.conf.erb'),
      owner   => root,
      group   => root,
      mode    => '0640',
  }
}
