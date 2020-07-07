$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.2.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = 'BB548B52A14184B7E11257775958F1D8DCC53DC5C81D93B13A9552326BEA8CE3'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = "1157AEADB8132E548EECBC56C7033868F03903423CAE2FF763DF011E85B1390C"

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