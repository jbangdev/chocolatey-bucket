# Generated with JReleaser 1.9.0 at 2024-07-07T20:08:38.686154Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.117.1'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.117.1/jbang-0.117.1.zip' `
    -Checksum '28b66273d5ff4057ed37a2dfda5b49b549768e8bed6e0ea335015eea8d28c67c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
