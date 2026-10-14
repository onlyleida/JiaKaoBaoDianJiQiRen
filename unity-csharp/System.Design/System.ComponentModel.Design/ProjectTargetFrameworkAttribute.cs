using Unity;

namespace System.ComponentModel.Design;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Interface)]
public sealed class ProjectTargetFrameworkAttribute : Attribute
{
	public string TargetFrameworkMoniker
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ProjectTargetFrameworkAttribute(string targetFrameworkMoniker)
	{
	}
}
