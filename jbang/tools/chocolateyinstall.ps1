# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-09-22T17:25:42.996872228Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.142.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.142.0/jbang-0.142.0.zip' `
    -Checksum '8bee0bd035344cc46322aff7117ec475d48cefe37f2a79ff2c6ee3db577bb070' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
