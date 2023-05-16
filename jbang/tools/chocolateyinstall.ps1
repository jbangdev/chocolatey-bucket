# Generated with JReleaser 1.5.1 at 2023-05-16T22:29:26.811932Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.107.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.107.0/jbang-0.107.0.zip' `
    -Checksum 'd295864c2ec0810e72dc3894ca6bc4559d2184e210d3659a4e59ce1513d504c6' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
