namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
public sealed class ConstructorNeedsTagAttribute : Attribute
{
	private bool needsTag;

	public bool NeedsTag => needsTag;

	public ConstructorNeedsTagAttribute()
	{
	}

	public ConstructorNeedsTagAttribute(bool needsTag)
	{
		this.needsTag = needsTag;
	}
}
