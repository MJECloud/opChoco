$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v0.10.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = '8910A39E93A3CC63180F63216E046432EEF3E31A0F9A003721DE2BDB4DE0995E'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = "7978B73905F7779F4C39FE08F8796FFD0C7D77AA29E639362950307BB3E90DBA"

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