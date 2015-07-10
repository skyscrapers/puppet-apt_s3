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

# == Class: apt_s3
#
# This class is able to install apt_s3
#
#
# === Parameters
#
#
# === Examples
#
# * Installation of apt_s3
#     include apt_s3
#
class apt_s3(
  $aws_accesskey = undef,
  $aws_secretaccesskey = undef,
) {
  contain apt_s3::install
  contain apt_s3::config
}
