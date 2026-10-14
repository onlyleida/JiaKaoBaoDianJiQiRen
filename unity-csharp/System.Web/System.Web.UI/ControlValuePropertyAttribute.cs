namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false, Inherited = true)]
public sealed class ControlValuePropertyAttribute : Attribute
{
	private string propertyName;

	private object propertyValue;

	private Type propertyType;

	public string Name => propertyName;

	public object DefaultValue => propertyValue;

	public ControlValuePropertyAttribute(string name)
	{
		propertyName = name;
	}

	public ControlValuePropertyAttribute(string name, object defaultValue)
	{
		propertyName = name;
		propertyValue = defaultValue;
	}

	public ControlValuePropertyAttribute(string name, Type type, string defaultValue)
	{
		propertyName = name;
		propertyValue = defaultValue;
		propertyType = type;
	}

	public override bool Equals(object obj)
	{
		if (obj != null && obj is ControlValuePropertyAttribute)
		{
			ControlValuePropertyAttribute controlValuePropertyAttribute = (ControlValuePropertyAttribute)obj;
			if (propertyName == controlValuePropertyAttribute.propertyName && propertyValue == controlValuePropertyAttribute.propertyValue)
			{
				return propertyType == controlValuePropertyAttribute.propertyType;
			}
			return false;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}
}
