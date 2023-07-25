@echo off

pushd %~dp0\..
vendor\bin\premake\Windows\premake5.exe --file=Build-Walnut-ExampleProject.lua vs2022
popd
pause