$ErrorActionPreference = 'Stop';

$packageName = '1password-cli'
$version     = 'v1.6.0'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_386_$version.zip"
$checksum    = '5190ADFA34E8BA71FAD929B68A541CAFCBD9E961A23AE46371D8401CEADCFC6C'
$url64       = "https://cache.agilebits.com/dist/1P/op/pkg/$version/op_windows_amd64_$version.zip"
$checksum64  = '7FBADD9691217264F4A72DEBFAA7F83D2943602DCFA361A69A156AC934375568'

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