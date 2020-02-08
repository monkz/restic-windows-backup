# backup configuration
$InstallPath = "C:\restic"
$ResticExe = Join-Path $InstallPath "restic.exe"
$StateFile = Join-Path $InstallPath "state.xml"
$WindowsExcludeFile = Join-Path $InstallPath "windows.exclude"
$LocalExcludeFile = Join-Path $InstallPath "local.exclude"
$LogPath = Join-Path $InstallPath "logs"
$LogRetentionDays = 30
$SnapshotRetentionPolicy = @("--keep-daily", "30", "--keep-weekly", "52", "--keep-monthly", "24", "--keep-yearly", "10")
$SnapshotMaintenanceInterval = 7
$SnapshotMaintenanceDays = 30
$SnapshotDeepMaintenanceDays = 90;
$InternetTestAttempts = 10
$GlobalRetryAttempts = 4

# Paths to backup
$BackupSources = @{}
$BackupSources["C:\"] = @(
#    'Users'
)
#$BackupSources["D:\"] = @(
#    'Software'
#)
