# Generated with JReleaser 1.15.0 at 2025-02-27T11:09:53.467867Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.124.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.124.0/jbang-0.124.0.zip' `
    -Checksum '0b9957ad86ef59d33f248044e1b4bdc6a878426beb2819bcc0850fa4807453ac' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
