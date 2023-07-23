# Generated with JReleaser 1.5.1 at 2023-07-23T07:36:03.356382Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.110.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Uninstall-BinFile -Name 'jbang' -Path $app_exe
