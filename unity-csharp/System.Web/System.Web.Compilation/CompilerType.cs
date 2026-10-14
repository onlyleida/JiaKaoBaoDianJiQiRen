using System.CodeDom.Compiler;
using Unity;

namespace System.Web.Compilation;

public sealed class CompilerType
{
	private Type type;

	private CompilerParameters parameters;

	public Type CodeDomProviderType => type;

	public CompilerParameters CompilerParameters => parameters;

	internal CompilerType(Type type, CompilerParameters parameters)
	{
		this.type = type;
		this.parameters = parameters;
	}

	public override bool Equals(object o)
	{
		if (!(o is CompilerType))
		{
			return false;
		}
		CompilerType compilerType = (CompilerType)o;
		if (compilerType.type == type)
		{
			return compilerType.parameters == parameters;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return (type.GetHashCode() << 6) ^ parameters.GetHashCode();
	}

	internal CompilerType()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
