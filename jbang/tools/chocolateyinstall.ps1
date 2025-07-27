# Generated with JReleaser 1.19.0 at 2025-07-27T13:49:26.465518Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.128.5'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.128.5/jbang-0.128.5.zip' `
    -Checksum 'dd89397a453b3bdbeab18178a8893fe747ad9b21f753651390c9092d35552665' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
