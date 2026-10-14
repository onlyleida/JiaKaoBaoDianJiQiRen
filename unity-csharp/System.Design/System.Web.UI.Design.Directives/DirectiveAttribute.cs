using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.Design.Directives;

[AttributeUsage(AttributeTargets.All, AllowMultiple = false, Inherited = true)]
public sealed class DirectiveAttribute : Attribute
{
	public bool AllowedOnMobilePages
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string BuilderType
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool Culture
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string RenameType
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool ServerLanguageExtensions
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool ServerLanguageNames
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}
}
