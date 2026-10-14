using System.Configuration;
using Unity;

namespace System.Net.Configuration;

public sealed class HttpListenerElement : ConfigurationElement
{
	public HttpListenerTimeoutsElement Timeouts
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool UnescapeRequestUrl
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public HttpListenerElement()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
