using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class FolderLevelBuildProvider : ConfigurationElement
{
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

	public string Type
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

	public FolderLevelBuildProvider(string name, string type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
