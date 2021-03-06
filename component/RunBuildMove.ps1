$executingDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$reactIndexPath = "$executingDir/src/index.react.js"
$buildIndexPath = "$executingDir/src/index.nwb.js"
$indexPath =      "$executingDir/src/index.js"

Write-Host "Running the RunBuildMove script in $executingDir"

if(test-path $buildIndexPath){
  try {
    mv $indexPath $reactIndexPath -ea Stop
  }
  catch {
    write-error "failed to move index to index.react"
    exit 1
  }
  
  mv $buildIndexPath $indexPath
}
