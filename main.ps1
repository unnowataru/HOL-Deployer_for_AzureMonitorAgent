# PowerShell PS1ファイルのパス 'カタログ名' 'CSVの宛先メールアドレス' 'HOL番号' '展開数'
# PowerShell C:\vCDScript\HOL-Deploy.ps1 'CITRIX-7.15-v1.0 'unnow@networld.co.jp' '3' '2'
# このスクリプトでは $HOL という変数に 3～6 のHOL番号を入力してループさせています。展開数はそれぞれのキットで共通です。
# 参考URL : <https://learn.microsoft.com/ja-jp/powershell/module/psworkflow/about/about_foreach-parallel?view=powershell-5.1>

Workflow GARAGE-DEPLOY{
	foreach -parallel ($HOL in 3..6) {
		PowerShell C:\NGRScript\NGR-Deploy.ps1 'Arcserve-UDP-20230330' 'arcserve-tech@networld.co.jp' $HOL '3'
	}
}

GARAGE-DEPLOY
