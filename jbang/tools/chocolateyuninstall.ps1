# Generated with JReleaser 1.9.0 at 2024-04-01T07:48:51.248947Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.116.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Uninstall-BinFile -Name 'jbang' -Path $app_exe
