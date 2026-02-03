# Generated with JReleaser 1.19.0 at 2026-02-03T18:23:53.933137Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.136.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.136.0/jbang-0.136.0.zip' `
    -Checksum '545db931d079f5e758760286ec561dabfb4bfc5901b2e4615660d8b8552d1c5a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
