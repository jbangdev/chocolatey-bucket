# Generated with JReleaser 1.19.0 at 2025-10-04T11:20:10.517145Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.132.1'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.132.1/jbang-0.132.1.zip' `
    -Checksum '93baab61cd5805f4fc9496527b2842af9ae45a5281e67b50d185ca76ec4fe85c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
