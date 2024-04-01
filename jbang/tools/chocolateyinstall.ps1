# Generated with JReleaser 1.9.0 at 2024-04-01T07:48:51.248947Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.116.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.116.0/jbang-0.116.0.zip' `
    -Checksum '66ecce7021c371d1fe1b01e4bd6ee01aaaa48b10925f7c36bed635b3d1150d2d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
