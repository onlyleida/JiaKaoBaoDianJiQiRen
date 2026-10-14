using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.Hosting;

[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = false, Inherited = false)]
public sealed class CustomLoaderAttribute : Attribute
{
	public Type CustomLoaderType
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public CustomLoaderAttribute(Type customLoaderType)
	{
	}
}
