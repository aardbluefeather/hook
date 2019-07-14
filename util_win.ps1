Function hook {
  [cmdletbinding()]
  Param (
    [string]$W
  )
  Process {
    $dest = "E:\code\hook\pkg"
    switch ($W) {
      miniepics {
        "MiniEpics: starting the packing procedure..."
        $what = "E:\code\hook\Hook_MiniEpics\Hook_MiniEpics*"
        $zipfile = "$dest\miniepics.zip"
        if (Test-Path $zipfile) {rm $zipfile}
        Compress-Archive -Path $what -CompressionLevel Optimal -DestinationPath $zipfile
        "MiniEpics: package complete."
      }
      shanty {
        "Shanty: starting the packing procedure..."
        $what = "E:\code\hook\Hook_Shanty\Hook_Shanty*"
        $zipfile = "$dest\shanty.zip"
        if (Test-Path $zipfile) {rm $zipfile}
        Compress-Archive -Path $what -CompressionLevel Optimal -DestinationPath $zipfile
        "Shanty: package complete."
      }
      spellup {
        "Spellup: starting the packing procedure..."
        $what = "E:\code\hook\Hook_Spellup\Hook_Spellup*"
        $zipfile = "$dest\spellup.zip"
        if (Test-Path $zipfile) {rm $zipfile}
        Compress-Archive -Path $what -CompressionLevel Optimal -DestinationPath $zipfile
        "Spellup: package complete."
      }
      default {
        "Options are: miniepics, shanty, spellup."
      }
    }
  }
}

Function touch {
  $file = $args[0]
  if($file -eq $null) {
    throw "No filename supplied"
  }
  if(Test-Path $file) {
    (Get-ChildItem $file).LastWriteTime = Get-Date
  } else {
    New-Item -ItemType File -Path $file
  }
}