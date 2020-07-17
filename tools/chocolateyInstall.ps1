$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.3.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = '6E2BC433D3B1A249D4B3F284C5CB363268465D0788E8D3E7B14726AF40AA0DE7'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = '18243AEFAF2FDA56CFDF8900C7C4E9DBE0BF8BE235715DF3F8F4CE5AF79ECC6E'

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