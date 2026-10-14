namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
public sealed class DataBindingHandlerAttribute : Attribute
{
	private string _typeName;

	public static readonly DataBindingHandlerAttribute Default = new DataBindingHandlerAttribute();

	public string HandlerTypeName
	{
		get
		{
			if (_typeName == null)
			{
				return string.Empty;
			}
			return _typeName;
		}
	}

	public DataBindingHandlerAttribute()
	{
		_typeName = string.Empty;
	}

	public DataBindingHandlerAttribute(Type type)
	{
		_typeName = type.AssemblyQualifiedName;
	}

	public DataBindingHandlerAttribute(string typeName)
	{
		_typeName = typeName;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is DataBindingHandlerAttribute dataBindingHandlerAttribute)
		{
			return string.Compare(HandlerTypeName, dataBindingHandlerAttribute.HandlerTypeName, StringComparison.Ordinal) == 0;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return HandlerTypeName.GetHashCode();
	}
}
