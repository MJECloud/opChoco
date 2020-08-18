$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.5.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = 'EDBC02EDDC0006D680F83F1DB7641A6D2412C634EE3A7B75A3A1F19557DDC713'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = 'B4CB8274F2119DEA539CE98AD3C25B28C00D865C334C0456D961A01BCC644981'

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