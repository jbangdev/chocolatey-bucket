# Generated with JReleaser 1.9.0 at 2023-11-24T00:24:40.719887Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.113.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.113.0/jbang-0.113.0.zip' `
    -Checksum 'f176f5c3521affbde8b11c12f1f36ae827d17b7717e416b4fdcf0fe70fa8c235' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
