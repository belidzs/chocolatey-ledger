$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderAA/ledger_binaries_windows/raw/master/ledger_3.1.2_win_bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'ledger*'
  checksum      = '79881b7048e13c7d6f208eab17baf75b0120e3908872cc576a6ad00c587509b2'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs