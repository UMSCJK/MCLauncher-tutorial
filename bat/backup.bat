@echo off
title ����
if exist materials_original.zip (
	title �Ѵ�����Ⱦ���ļ��б��ݣ�
	echo �Ѵ�����Ⱦ���ļ��б��ݣ��밴������˳�...
	pause>nul
	exit
) else (
tar -cvzf materials_original.zip materials
)