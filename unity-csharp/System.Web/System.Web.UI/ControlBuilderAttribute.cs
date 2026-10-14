namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
public sealed class ControlBuilderAttribute : Attribute
{
	public static readonly ControlBuilderAttribute Default = new ControlBuilderAttribute(null);

	private Type builderType;

	public Type BuilderType => builderType;

	public ControlBuilderAttribute(Type builderType)
	{
		this.builderType = builderType;
	}

	public override int GetHashCode()
	{
		if (!(BuilderType != null))
		{
			return 0;
		}
		return BuilderType.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj != null && obj is ControlBuilderAttribute)
		{
			return ((ControlBuilderAttribute)obj).BuilderType == builderType;
		}
		return false;
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
