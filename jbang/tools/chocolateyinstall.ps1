# Generated with JReleaser 1.19.0 at 2025-09-16T20:34:55.787692Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.131.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.131.0/jbang-0.131.0.zip' `
    -Checksum 'b4ea18e8aea0ae62b80932b650d6c87b276412a84a04ff9d25a70da5dedd76a3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
