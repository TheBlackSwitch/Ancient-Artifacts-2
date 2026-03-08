$proc = Start-Process ".\.vscode\build.bat" -NoNewWindow -PassThru -Wait
$proc.PriorityClass = "High"