@echo off
title 备份
if exist materials_original.zip (
	title 已存在渲染器文件夹备份！
	echo 已存在渲染器文件夹备份！请按任意键退出...
	pause>nul
	exit
) else (
tar -cvzf materials_original.zip materials
)