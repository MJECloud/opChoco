$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.0.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = 'BEE7F1909297B102DD0111B75FF38EC1F0773BA8E747F05338A35A58F7669528'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = "486CA9AAC17DB5E9A090B48B02CA448C6EC17B07C47FF3CA242570B09910BE40"

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