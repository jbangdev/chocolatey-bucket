# Generated with JReleaser 1.19.0 at 2025-11-24T13:43:37.472003Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.134.2'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.134.2/jbang-0.134.2.zip' `
    -Checksum 'befee0b59a0e4087dc0c08402e97e35ace2e8b8409b96dd8348cc4cd5ead94f8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
