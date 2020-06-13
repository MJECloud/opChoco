$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.1.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = 'DFEFDF712B3B141254BB34B604B98150F264F56BC0A72E5ACDDD98C49ABF8044'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = "3D76324EA99B33CC3D981984EE2CE7B5CACE96ECEBE618FF40F8A95670DF884F"

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