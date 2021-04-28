$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.9.1'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = '7302DDF4A50DC7A9407F992DD7BDD0BD856FC7D1C85A51032EEE7945D7FD95BD'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = '9E8AB73A549C14C417AC3F182D180DB2C3C2E6F4D963DF5CCD0A048E11F4C300'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url            = $url
  checksum       = $checksum
  checksumType   = 'SHA256'
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'SHA256'
}

Install-ChocolateyZipPackage @packageArgs