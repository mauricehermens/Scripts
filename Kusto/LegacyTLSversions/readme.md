# Overview of new telemetry in the sign-in logs
To help you identify any clients or apps that still use legacy TLS in your environment, view the Azure AD sign-in logs. For clients or apps that sign in over legacy TLS, Azure AD marks the Legacy TLS field in Additional Details with True. The Legacy TLS field only appears if the sign-in occurred over legacy TLS. If you don’t see any legacy TLS in your logs, you're ready to switch to TLS 1.2.

## To query for legacy TLS entries using Azure Monitor:
In Integrate Azure AD logs with Azure Monitor logs, follow the instructions to let you access the Azure AD sign-in logs in Azure Monitor.

1. In the query definition area, paste the content of `LegacyTLSVersions.kql` in the Kusto Query editor:
2. Select Run to execute the query. The log entries that match the query appear in the Results tab below the query definition.


Source: [Microsoft Docs](https://docs.microsoft.com/en-us/troubleshoot/azure/active-directory/enable-support-tls-environment?tabs=azure-monitor)
