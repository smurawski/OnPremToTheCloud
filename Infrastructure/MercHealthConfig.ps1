

Configuration MercuryHealthBase {
    Node localhost {
        WindowsFeature FileAndStorage-Services {
            Name = 'FileAndStorage-Services'
            Ensure = 'Present'
        }
        WindowsFeature WAS {
            Name = 'WAS'
            Ensure = 'Present'
        }
        WindowsFeature PowerShellRoot {
            Name = 'PowerShellRoot'
            Ensure = 'Present'
        }
        WindowsFeature Windows-Defender-Features {
            Name = 'Windows-Defender-Features'
            Ensure = 'Present'
        }
        WindowsFeature MSMQ {
            Name = 'MSMQ'
            Ensure = 'Present'
        }
        WindowsFeature EnhancedStorage {
            Name = 'EnhancedStorage'
            Ensure = 'Present'
        }
        WindowsFeature BitLocker {
            Name = 'BitLocker'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]EnhancedStorage'
        }
        WindowsFeature NET-Framework-45-Features {
            Name = 'NET-Framework-45-Features'
            Ensure = 'Present'
        }
        WindowsFeature NET-Framework-Features {
            Name = 'NET-Framework-Features'
            Ensure = 'Present'
        }
        WindowsFeature WoW64-Support {
            Name = 'WoW64-Support'
            Ensure = 'Present'
        }
        WindowsFeature Web-Server {
            Name = 'Web-Server'
            Ensure = 'Present'
        }
        WindowsFeature NET-HTTP-Activation {
            Name = 'NET-HTTP-Activation'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-Core','[WindowsFeature]Web-Net-Ext','[WindowsFeature]WAS-Process-Model','[WindowsFeature]WAS-NET-Environment','[WindowsFeature]WAS-Config-APIs'
        }
        WindowsFeature NET-Framework-Core {
            Name = 'NET-Framework-Core'
            Ensure = 'Present'
        }
        WindowsFeature NET-WCF-Services45 {
            Name = 'NET-WCF-Services45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core'
        }
        WindowsFeature WAS-Config-APIs {
            Name = 'WAS-Config-APIs'
            Ensure = 'Present'
        }
        WindowsFeature Web-Mgmt-Tools {
            Name = 'Web-Mgmt-Tools'
            Ensure = 'Present'
        }
        WindowsFeature Web-WebServer {
            Name = 'Web-WebServer'
            Ensure = 'Present'
        }
        WindowsFeature NET-Framework-45-ASPNET {
            Name = 'NET-Framework-45-ASPNET'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core'
        }
        WindowsFeature MSMQ-Services {
            Name = 'MSMQ-Services'
            Ensure = 'Present'
        }
        WindowsFeature Storage-Services {
            Name = 'Storage-Services'
            Ensure = 'Present'
        }
        WindowsFeature NET-Non-HTTP-Activ {
            Name = 'NET-Non-HTTP-Activ'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-Core','[WindowsFeature]WAS-Process-Model','[WindowsFeature]WAS-NET-Environment','[WindowsFeature]WAS-Config-APIs'
        }
        WindowsFeature PowerShell-V2 {
            Name = 'PowerShell-V2'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]PowerShell','[WindowsFeature]NET-Framework-Core'
        }
        WindowsFeature WAS-NET-Environment {
            Name = 'WAS-NET-Environment'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-Core','[WindowsFeature]NET-Framework-45-ASPNET'
        }
        WindowsFeature WAS-Process-Model {
            Name = 'WAS-Process-Model'
            Ensure = 'Present'
        }
        WindowsFeature File-Services {
            Name = 'File-Services'
            Ensure = 'Present'
        }
        WindowsFeature PowerShell-ISE {
            Name = 'PowerShell-ISE'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]PowerShell','[WindowsFeature]NET-Framework-45-Core'
        }
        WindowsFeature Windows-Defender {
            Name = 'Windows-Defender'
            Ensure = 'Present'
        }
        WindowsFeature NET-Framework-45-Core {
            Name = 'NET-Framework-45-Core'
            Ensure = 'Present'
        }
        WindowsFeature PowerShell {
            Name = 'PowerShell'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core'
        }
        WindowsFeature Windows-Defender-Gui {
            Name = 'Windows-Defender-Gui'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]Windows-Defender'
        }
        WindowsFeature NET-WCF-Pipe-Activation45 {
            Name = 'NET-WCF-Pipe-Activation45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core','[WindowsFeature]NET-Framework-45-ASPNET','[WindowsFeature]WAS-Process-Model','[WindowsFeature]WAS-Config-APIs'
        }
        WindowsFeature NET-WCF-TCP-PortSharing45 {
            Name = 'NET-WCF-TCP-PortSharing45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core'
        }
        WindowsFeature NET-WCF-MSMQ-Activation45 {
            Name = 'NET-WCF-MSMQ-Activation45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core','[WindowsFeature]NET-Framework-45-ASPNET','[WindowsFeature]WAS-Process-Model','[WindowsFeature]WAS-Config-APIs','[WindowsFeature]MSMQ-Server'
        }
        WindowsFeature Web-Common-Http {
            Name = 'Web-Common-Http'
            Ensure = 'Present'
        }
        WindowsFeature NET-WCF-HTTP-Activation45 {
            Name = 'NET-WCF-HTTP-Activation45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core','[WindowsFeature]NET-Framework-45-ASPNET','[WindowsFeature]Web-Asp-Net45','[WindowsFeature]WAS-Process-Model','[WindowsFeature]WAS-Config-APIs'
        }
        WindowsFeature FS-FileServer {
            Name = 'FS-FileServer'
            Ensure = 'Present'
        }
        WindowsFeature NET-WCF-TCP-Activation45 {
            Name = 'NET-WCF-TCP-Activation45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-Core','[WindowsFeature]NET-WCF-TCP-PortSharing45','[WindowsFeature]NET-Framework-45-ASPNET','[WindowsFeature]WAS-Process-Model','[WindowsFeature]WAS-Config-APIs'
        }
        WindowsFeature MSMQ-Server {
            Name = 'MSMQ-Server'
            Ensure = 'Present'
        }
        WindowsFeature Web-Scripting-Tools {
            Name = 'Web-Scripting-Tools'
            Ensure = 'Present'
        }
        WindowsFeature Web-Mgmt-Service {
            Name = 'Web-Mgmt-Service'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]NET-Framework-45-ASPNET'
        }
        WindowsFeature Web-Mgmt-Console {
            Name = 'Web-Mgmt-Console'
            Ensure = 'Present'
        }
        WindowsFeature Web-Health {
            Name = 'Web-Health'
            Ensure = 'Present'
        }
        WindowsFeature Web-Performance {
            Name = 'Web-Performance'
            Ensure = 'Present'
        }
        WindowsFeature Web-App-Dev {
            Name = 'Web-App-Dev'
            Ensure = 'Present'
        }
        WindowsFeature Web-Security {
            Name = 'Web-Security'
            Ensure = 'Present'
        }
        WindowsFeature Web-Http-Errors {
            Name = 'Web-Http-Errors'
            Ensure = 'Present'
        }
        WindowsFeature Web-Http-Redirect {
            Name = 'Web-Http-Redirect'
            Ensure = 'Present'
        }
        WindowsFeature Web-Http-Logging {
            Name = 'Web-Http-Logging'
            Ensure = 'Present'
        }
        WindowsFeature Web-Log-Libraries {
            Name = 'Web-Log-Libraries'
            Ensure = 'Present'
        }
        WindowsFeature Web-Request-Monitor {
            Name = 'Web-Request-Monitor'
            Ensure = 'Present'
        }
        WindowsFeature Web-Stat-Compression {
            Name = 'Web-Stat-Compression'
            Ensure = 'Present'
        }
        WindowsFeature Web-Filtering {
            Name = 'Web-Filtering'
            Ensure = 'Present'
        }
        WindowsFeature Web-Windows-Auth {
            Name = 'Web-Windows-Auth'
            Ensure = 'Present'
        }
        WindowsFeature Web-Default-Doc {
            Name = 'Web-Default-Doc'
            Ensure = 'Present'
        }
        WindowsFeature Web-Net-Ext {
            Name = 'Web-Net-Ext'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]Web-Filtering','[WindowsFeature]NET-Framework-Core','[WindowsFeature]NET-Framework-45-ASPNET'
        }
        WindowsFeature Web-Net-Ext45 {
            Name = 'Web-Net-Ext45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]Web-Filtering','[WindowsFeature]NET-Framework-45-ASPNET'
        }
        WindowsFeature Web-Asp-Net45 {
            Name = 'Web-Asp-Net45'
            Ensure = 'Present'
            DependsOn = '[WindowsFeature]Web-Filtering','[WindowsFeature]Web-Default-Doc','[WindowsFeature]Web-ISAPI-Filter','[WindowsFeature]Web-ISAPI-Ext','[WindowsFeature]Web-Net-Ext45'
        }
        WindowsFeature Web-CGI {
            Name = 'Web-CGI'
            Ensure = 'Present'
        }
        WindowsFeature Web-ISAPI-Ext {
            Name = 'Web-ISAPI-Ext'
            Ensure = 'Present'
        }
        WindowsFeature Web-ISAPI-Filter {
            Name = 'Web-ISAPI-Filter'
            Ensure = 'Present'
        }
        WindowsFeature Web-Dir-Browsing {
            Name = 'Web-Dir-Browsing'
            Ensure = 'Present'
        }
        WindowsFeature Web-Url-Auth {
            Name = 'Web-Url-Auth'
            Ensure = 'Present'
        }
        WindowsFeature Web-Static-Content {
            Name = 'Web-Static-Content'
            Ensure = 'Present'
        }        
    }
}

Configuration MercuryHealthWeb {
    param ([PSCredential] $AppPoolCredential)
    Import-DscResource -ModuleName xWebAdministration -ModuleVersion 3.2.0
    Node localhost {
        MercuryHealthBase BaseConfig {}

        File RemoveDownloadedZip {
            DestinationPath = 'C:\MercuryHealth.zip'
            Ensure = 'Absent'
            Force = $true
            Type = 'File'
            DependsOn = '[MercuryHealthBase]BaseConfig'
        }

        ### TODO: Parameterize the url from the template.
        Script DownloadWebContent {
            GetScript = {
                return @{
                    Result = (Test-Path 'c:\MercuryHealth.zip')
                }
            }
            TestScript = {
                Test-Path -Path 'C:\MercuryHealth.zip'
            }
            SetScript = {
                Invoke-WebRequest 'https://optcdsc.blob.core.windows.net/configurations/MercuryHealth.zip' -outfile 'c:\MercuryHealth.zip' -UseBasicParsing
            }
            DependsOn = '[File]RemoveDownloadedZip'
        }

        Archive UnpackWebSite {
            Destination = 'C:\MercuryHealth'
            Path = 'C:\MercuryHealth.zip'
            Force = $true
            DependsOn = '[Script]DownloadWebContent'
        }

        xWebAppPool MercHealthPool {
            Name = 'MercuryHealth'
            State = 'Started'
            autoStart = $true
            startMode = "AlwaysRunning"
            managedRuntimeVersion = 'v4.0'
            managedPipelineMode = 'Integrated'
            identityType = 'SpecificUser'
            Credential = $AppPoolCredential            
        }

        xWebSite RemoveDefaultWebsite {
            Ensure          = 'Present'
            Name            = 'Default Web Site'
            State           = 'Stopped'
            ServerAutoStart = $false
            PhysicalPath    = 'C:\inetpub\wwwroot'
        }

        xWebSite MercuryHealthSite {
            Name = "Mercury Health"
            Ensure = "Present"
            State = 'Started'
            ServerAutoStart = $true
            ApplicationPool = 'MercuryHealth'
            PhysicalPath = 'C:\MercuryHealth'
            DependsOn = "[xWebsite]RemoveDefaultWebsite", "[xWebAppPool]MercHealthPool", "[Archive]UnpackWebSite"
        }
    }
}
