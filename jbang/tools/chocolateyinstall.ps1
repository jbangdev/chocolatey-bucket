# Generated with JReleaser 1.19.0 at 2025-07-11T13:44:36.248402Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.127.18'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.127.18/jbang-0.127.18.zip' `
    -Checksum 'f039086153094e5cf6f404d45aee0c35f03568c8a13675e3ab7959084725fb55' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
