@echo off
:: http://stackoverflow.com/questions/39917027/winrm-cannot-complete-the-operation-verify-that-the-specified-computer-name-is
WinRM quickconfig


:: winrm set winrm/config/client @{TrustedHosts="<local>"}
:: winrm/config/service/EnableCompatibilityHttpListener = 'True'
:: winrm/config/service/EnableCompatibilityHttpsListener = True
