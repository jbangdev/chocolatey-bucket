# Generated with JReleaser 1.19.0 at 2025-07-27T12:10:57.123427Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.128.2'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.128.2/jbang-0.128.2.zip' `
    -Checksum '47e4001aaea8f7f4a6281d0864fa707c7b67d0bfbb042a142770cdd7449c7f41' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
