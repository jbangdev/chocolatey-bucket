# Generated with JReleaser 1.9.0 at 2024-09-12T11:07:45.40983Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.118.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.118.0/jbang-0.118.0.zip' `
    -Checksum '689f7d974e6b6bfd7b29480ce5c87bcf6a3124fab33c15248566d6360835bee3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
