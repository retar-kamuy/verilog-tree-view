build:
	docker build . --tag verilog_tree_view

run:
	docker run -it --name verilog_tree_view verilog_tree_view:latest

clean:
	wsl --shutdown
	powershell -Command Optimize-VHD -Path $env:LOCALAPPDATA\Docker\wsl\data\ext4.vhdx -Mode full
	