all:
	powershell -noprofile ps2exe main.ps1 tinybenchmark.exe -noConsole

clean:
	del tinybenchmark.exe