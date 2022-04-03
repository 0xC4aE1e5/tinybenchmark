Add-Type -AssemblyName PresentationCore, PresentationFramework

$WantsBenchmark = [Windows.MessageBox]::Show("Do you want to start the benchmark? The higher the score, the better.", "Do you want to start the benchmark?", 4, 32) -eq 6

if ($WantsBenchmark) {
    $Score = 0
    $Stopwatch = [Diagnostics.Stopwatch]::StartNew()
    do {
        $Score += 1
    } while ($Stopwatch.ElapsedMilliseconds -lt 5000)
    $FriendlyScore = "Your score is: "
    $FriendlyScore += '{0:N0}' -f $Score
    [Windows.MessageBox]::Show($FriendlyScore, "Score", 0, 64) | Out-Null
}