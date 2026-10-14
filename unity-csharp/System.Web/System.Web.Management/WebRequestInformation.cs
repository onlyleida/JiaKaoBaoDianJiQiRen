using System.Security.Principal;
using Unity;

namespace System.Web.Management;

public sealed class WebRequestInformation
{
	public IPrincipal Principal
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string RequestPath
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string RequestUrl
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string ThreadAccountName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string UserHostAddress
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal WebRequestInformation()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void FormatToString(WebEventFormatter formatter)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
