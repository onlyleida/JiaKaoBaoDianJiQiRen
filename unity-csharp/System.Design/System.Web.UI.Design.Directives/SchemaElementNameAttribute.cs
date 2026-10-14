using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.Design.Directives;

[AttributeUsage(AttributeTargets.Class)]
public sealed class SchemaElementNameAttribute : Attribute
{
	public string Value
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public SchemaElementNameAttribute(string value)
	{
	}
}
