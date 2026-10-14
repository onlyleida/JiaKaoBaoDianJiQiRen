using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class IgnoreDeviceFilterElement : ConfigurationElement
{
	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IgnoreDeviceFilterElement(string name)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
