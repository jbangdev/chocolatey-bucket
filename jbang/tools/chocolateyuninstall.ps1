# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-07-14T05:08:56.758974619Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.141.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Uninstall-BinFile -Name 'jbang' -Path $app_exe
