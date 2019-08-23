Function hook {
  [cmdletbinding()]
  Param (
    [string]$W
  )
  Process {
    $i = -1
    $fldrHook = "E:\code\hook"
    $dest = "$($fldrHook)\pkg"
    $dest2 = "E:\code\aard\worlds\plugins"
    $fileName = "Hook_MiniEpics", "Hook_Shanty", "Hook_Spellup"
    $fldrFrm = "$($fldrHook)\$($fileName[0])", "$($fldrHook)\$($fileName[1])", "$($fldrHook)\$($fileName[2])"
    switch ($W) {
      miniepics { $i = 0 }
      shanty { $i = 1 }
      spellup { $i = 2 }
      default { $i = -1 }
    }
    if ($i -gt -1) {
      Write-Host "$($fileName[$i].Remove(0,5)): copying files to aard folder..." -NoNewline
      $destFile = "$($dest2)\$($fileName[$i]).xml"
      $srcFile = "$($fldrFrm[$i])\$($fileName[$i]).xml"
      if (Test-Path $destFile) { Remove-Item $destFile }
      Copy-Item $srcFile -Destination $destFile
      Write-Host " done."

      $what = "$($fldrHook)\$($fileName[$i])\$($fileName[$i])*"
      $zipfile = "$($dest)\$($fileName[$i].Remove(0,5).ToLower()).zip"
      Write-Host "$($fileName[$i].Remove(0,5)): packing $($fileName[$i].Remove(0,5).ToLower()).zip for distribution..." -NoNewline
      if (Test-Path $zipfile) { Remove-Item $zipfile }
      Compress-Archive -Path $what -CompressionLevel Optimal -DestinationPath $zipfile
      Write-Host " done."

    } else {
      Write-Host "Options are: miniepics, shanty, spellup."
    }
  }
}

Function touch {
  $file = $args[0]
  if ($null -eq $file) {
    throw "No filename supplied"
  }
  if (Test-Path $file) {
    (Get-ChildItem $file).LastWriteTime = Get-Date
  }
  else {
    New-Item -ItemType File -Path $file
  }
}

Function sync {
  if($null -eq $args[0] -Or $null -eq $args[1]) {
    throw "Usage: sync source destination."
  }
  # Remove trailing backslash
  $src = $args[0] -replace '\\$'
  $src = '"' + $src + '"'
  $dest = $args[1] -replace '\\$'
  $dest = '"' + $dest + '"'
  Robocopy $src $dest /MIR /FFT /Z /XA:H /W:5
}