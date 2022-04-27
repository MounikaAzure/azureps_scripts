$teamconfigdata = Get-Content -Path .\TeamConfig.json
$pscustomobject = $teamconfigdata|ConvertFrom-Json
$pscustomobject.Storagearray