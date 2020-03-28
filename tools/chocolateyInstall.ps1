$ErrorActionPreference = 'Stop';

$packageName = 'op'
$version     = 'v0.9.4'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = '28F10AEF38540650E477F5F064AB8CC9507C8F68CE6849DA04EB854CDB86BF89'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = "7CA5D66D58F882BEAFA33F92C5A90E9DB7FAD63ADE3DBC6DE4B99437F34FFEC8"

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