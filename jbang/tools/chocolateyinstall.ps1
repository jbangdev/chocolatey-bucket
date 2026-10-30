# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-10-30T22:08:58.327658404Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.143.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.143.0/jbang-0.143.0.zip' `
    -Checksum '301c5ef16a7b2a4725515477b03f11f491501eb6db57adfa59393433d4d8f3b2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
