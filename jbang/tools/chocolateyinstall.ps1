# Generated with JReleaser 1.19.0 at 2025-12-13T19:48:32.339123Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.135.1'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.135.1/jbang-0.135.1.zip' `
    -Checksum 'ca08772133ef712c1c115d228662fa69a3c693a2a8d521d6f5205f2b3a3f9616' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
