$executingDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

powershell -file "$executingDir/RunBuildMove.ps1"

write-host "running 'npm run-script build'"
npm run-script build