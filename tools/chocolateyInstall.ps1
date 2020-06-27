$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.1.1'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = 'E0F8C5A74526DDFF58FC828305878303B277271DFF303F383E339D359AFFD008'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = "CB8F8A3EF7DAC895998D34E2341149B431F1F18AC3E2F9A8B5ECCDD4E7CA428F"

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