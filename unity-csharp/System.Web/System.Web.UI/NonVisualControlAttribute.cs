namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
public sealed class NonVisualControlAttribute : Attribute
{
	public static readonly NonVisualControlAttribute NonVisual = new NonVisualControlAttribute(nonVisual: true);

	public static readonly NonVisualControlAttribute Visual = new NonVisualControlAttribute(nonVisual: false);

	public static readonly NonVisualControlAttribute Default = Visual;

	private bool _nonVisual;

	public bool IsNonVisual => _nonVisual;

	public NonVisualControlAttribute()
		: this(nonVisual: true)
	{
	}

	public NonVisualControlAttribute(bool nonVisual)
	{
		_nonVisual = nonVisual;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is NonVisualControlAttribute nonVisualControlAttribute)
		{
			return nonVisualControlAttribute.IsNonVisual == IsNonVisual;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return _nonVisual.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
