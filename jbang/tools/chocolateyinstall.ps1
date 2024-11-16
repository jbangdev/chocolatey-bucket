# Generated with JReleaser 1.15.0 at 2024-11-16T15:00:57.953392Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.121.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.121.0/jbang-0.121.0.zip' `
    -Checksum '4ffa57f26c713cde084b728a64b1c79b74465e6b8e043175e3b6c364377613c8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
