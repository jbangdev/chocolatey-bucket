# Generated with JReleaser 1.5.1 at 2023-06-10T11:17:01.870091Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.108.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.108.0/jbang-0.108.0.zip' `
    -Checksum 'c950046fa7d8b17e440197768f96cab1752a2e549f5ec96389fbf4d1f95dba5b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
