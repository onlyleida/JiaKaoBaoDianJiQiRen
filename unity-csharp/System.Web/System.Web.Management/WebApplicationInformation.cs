namespace System.Web.Management;

public sealed class WebApplicationInformation
{
	private string application_domain;

	private string application_path;

	private string application_virtual_path;

	private string machine_name;

	private string trust_level;

	public string ApplicationDomain => application_domain;

	public string ApplicationPath => application_path;

	public string ApplicationVirtualPath => application_virtual_path;

	public string MachineName => machine_name;

	public string TrustLevel => trust_level;

	internal WebApplicationInformation()
	{
	}

	public void FormatToString(WebEventFormatter formatter)
	{
		throw new NotImplementedException();
	}

	public override string ToString()
	{
		throw new NotImplementedException();
	}
}
