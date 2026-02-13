# Generated with JReleaser 1.19.0 at 2026-02-13T23:32:57.701708Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.137.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.137.0/jbang-0.137.0.zip' `
    -Checksum '9f55c94a467d22546482a33016f13ee872f894d13c4fce4c01a49e992ce08922' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
