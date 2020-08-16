$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://install.bankid.com/Repository/BankID_installation_7_9_1.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'exe'
  url            = $url
  softwareName   = 'bankid*'
  checksum       = '441B2A2F31E92A7255BAA694F97DA22788A54BC6550EA774F5E4BF2B7C491A5A'
  checksumType   = 'sha256'
  silentArgs     = '/s /v"/qn"'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs