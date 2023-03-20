$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.105.1'
$app_bat = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.105.1/jbang-0.105.1.zip' `
    -Checksum 'ea16b8470242ba6f4f2bfe1b3758fa1b1793ce7bdae722ee191cc4d9143f8b4e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_bat
