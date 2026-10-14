using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class ProtocolElement : ConfigurationElement
{
	public string AppDomainHandlerType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string ProcessHandlerType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool Validate
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ProtocolElement()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ProtocolElement(string name)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
