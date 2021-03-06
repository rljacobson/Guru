UIC=pyside-uic
RCC=pyside-rcc

all: GuruUI

GuruUI: guru/Ui_MainWindow.py guru/Ui_Consoles.py guru/Ui_ServerListDlg.py guru/Ui_EditSageServerDlg.py

guru/Ui_MainWindow.py: guru/resources.qrc guru/Ui_MainWindow.ui guru/resources.py
	$(UIC) -o guru/Ui_MainWindow.py guru/Ui_MainWindow.ui

guru/resources.py: guru/resources.qrc
	$(RCC) -o guru/resources_rc.py guru/resources.qrc
	
guru/Ui_Consoles.py: guru/Ui_Consoles.ui
	$(UIC) -o guru/Ui_Consoles.py guru/Ui_Consoles.ui

guru/Ui_ServerListDlg.py: guru/Ui_ServerListDlg.ui
	$(UIC) -o guru/Ui_ServerListDlg.py guru/Ui_ServerListDlg.ui

guru/Ui_EditSageServerDlg.py: guru/Ui_EditSageServerDlg.ui
	$(UIC) -o guru/Ui_EditSageServerDlg.py guru/Ui_EditSageServerDlg.ui

