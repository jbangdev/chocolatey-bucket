# Generated with JReleaser 1.5.1 at 2023-04-16T19:56:00.676411Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.106.3'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.106.3/jbang-0.106.3.zip' `
    -Checksum 'aca772bb159bf913be97e0970ba8106ec8a20594270144ffb8b5c52ec7906fc3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
