$repoRoot = "$env:USERPROFILE\dev\source\repos"
$vs22WorkDir = "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE"
$vs22 = "$vs22WorkDir\devenv.exe"

Function Open-RepoProject {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, HelpMessage = "Project Repository Name")] 
        [string]$name,

        [Parameter(Mandatory = $false, HelpMessage = "Folder location within repo directory of solution")]
        [string]$slnFolder = "src",

        [Parameter(Mandatory = $false, HelpMessage = "Folder location within repo directory of frontend")]
        [string]$frontendFolder = "src\Web.API\client-app"
    )

    BEGIN {
        $repoDir = "$repoRoot\$name"

        if (!(Test-Path -Path $repoDir -PathType Container)) {
            Write-Error "Requested repo does not exist at: $repoDir" -ErrorAction Stop
        }


        $slnDir = "$repoDir\$slnFolder"

        if (!(Test-Path -Path $slnDir)) {
            Write-Error "Solution directory cannot be found: $slnDir" -ErrorAction Stop
        }

        $slnPath = "$slnDir\*.sln"
        if ($slnPaths = @(Resolve-Path $slnPath)) {
            $slnFile = $slnPaths[0]
        }
        else {
            Write-Error "Solution cannot be found: $slnPath" -ErrorAction Stop
        }
        

        $frontendDir = "$repoDir\$frontendFolder"
        
        if (!(Test-Path -Path $frontendDir -PathType Container)) {
            Write-Error "Frontend directory cannot be found: $frontendDir" -ErrorAction Stop
        }
    }
    PROCESS {
        Write-Host "Opening repo project at: $repoDir"

        Start-Process $vs22 -WorkingDirectory $vs22WorkDir -ArgumentList $slnFile
        Start-Process code $frontendDir -WindowStyle Hidden

        Set-Location $repoDir
        wt -w 0 sp -V -d $frontendFolder
    }
    END {

    }
}

Set-Alias orp Open-RepoProject -Scope Global
