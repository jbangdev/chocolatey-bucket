# Generated with JReleaser 1.5.1 at 2023-09-30T11:21:56.430215Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.111.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.111.0/jbang-0.111.0.zip' `
    -Checksum '651cd36b02a704745eaf1bb6c04dab1596fa13a178dae6c2db427bbbeb9e3d86' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
