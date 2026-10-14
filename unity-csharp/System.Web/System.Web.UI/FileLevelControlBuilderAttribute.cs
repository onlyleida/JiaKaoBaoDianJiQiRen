namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
public sealed class FileLevelControlBuilderAttribute : Attribute
{
	public static readonly FileLevelControlBuilderAttribute Default = new FileLevelControlBuilderAttribute(null);

	private Type builderType;

	public Type BuilderType => builderType;

	public FileLevelControlBuilderAttribute(Type builderType)
	{
		this.builderType = builderType;
	}

	public override int GetHashCode()
	{
		return builderType.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj != null && obj is FileLevelControlBuilderAttribute)
		{
			return ((FileLevelControlBuilderAttribute)obj).BuilderType == builderType;
		}
		return false;
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
