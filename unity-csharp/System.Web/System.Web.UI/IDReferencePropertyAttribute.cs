namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Property)]
public sealed class IDReferencePropertyAttribute : Attribute
{
	private Type _referencedControlType;

	public Type ReferencedControlType => _referencedControlType;

	public IDReferencePropertyAttribute()
		: this(typeof(Control))
	{
	}

	public IDReferencePropertyAttribute(Type referencedControlType)
	{
		_referencedControlType = referencedControlType;
	}

	public override int GetHashCode()
	{
		if (!(ReferencedControlType != null))
		{
			return 0;
		}
		return ReferencedControlType.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is IDReferencePropertyAttribute iDReferencePropertyAttribute)
		{
			return ReferencedControlType == iDReferencePropertyAttribute.ReferencedControlType;
		}
		return false;
	}
}
