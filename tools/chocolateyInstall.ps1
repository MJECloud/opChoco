$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.8.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = '8C597C73E1ACEC4EFD53F66B9583B6126A147CFA4BF3CF23924A946680207DD9'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = '40FE0991B041624A771F3992EA262D99B83809E9382D4130370ECC2033A506B5'

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