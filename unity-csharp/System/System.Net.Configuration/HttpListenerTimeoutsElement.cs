using System.Configuration;
using Unity;

namespace System.Net.Configuration;

public sealed class HttpListenerTimeoutsElement : ConfigurationElement
{
	public TimeSpan DrainEntityBody
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public TimeSpan EntityBody
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public TimeSpan HeaderWait
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public TimeSpan IdleConnection
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public long MinSendBytesPerSecond
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public TimeSpan RequestQueue
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public HttpListenerTimeoutsElement()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
