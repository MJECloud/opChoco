$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.4.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = '7DD637A94B76F9636713C490E41DA0A077885AE6DE4C5229D7494C499ACAF529'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = '3C4FC1DB0C1900BFB325DE44D0B8BC86BE10E8BC485FDDF3ABC0457AE085FAF3'

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