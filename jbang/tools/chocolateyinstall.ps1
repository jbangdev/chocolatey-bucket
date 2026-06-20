# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-06-20T17:19:51.359547368Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.139.3'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.139.3/jbang-0.139.3.zip' `
    -Checksum '6ff8d2f387583a8b1b1eb7839826a5e0a227c7cf1550e3bd85e0beb4838ca3ef' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
