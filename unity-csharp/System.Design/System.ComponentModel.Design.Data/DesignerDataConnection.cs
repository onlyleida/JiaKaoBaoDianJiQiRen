namespace System.ComponentModel.Design.Data;

public sealed class DesignerDataConnection
{
	private string name;

	private string provider_name;

	private string connection_string;

	private bool is_configured;

	[System.MonoTODO]
	public string Name => name;

	[System.MonoTODO]
	public string ProviderName => provider_name;

	[System.MonoTODO]
	public string ConnectionString => connection_string;

	[System.MonoTODO]
	public bool IsConfigured => is_configured;

	[System.MonoTODO]
	public DesignerDataConnection(string name, string providerName, string connectionString)
		: this(name, providerName, connectionString, isConfigured: false)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public DesignerDataConnection(string name, string providerName, string connectionString, bool isConfigured)
	{
		throw new NotImplementedException();
	}
}
