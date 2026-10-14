using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Web.UI;

[Serializable]
public sealed class ViewStateException : Exception, ISerializable
{
	public bool IsConnected
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override string Message
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string Path
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string PersistedState
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string Referer
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string RemoteAddress
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string RemotePort
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string UserAgent
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ViewStateException()
	{
		throw new NotImplementedException();
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}
}
