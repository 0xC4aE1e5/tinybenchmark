all:
	powershell -noprofile import-module ps2exe; ps2exe main.ps1 tinybenchmark.exe -noConsole

clean:
	del tinybenchmark.exe