namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
public sealed class DataKeyPropertyAttribute : Attribute
{
	private readonly string _name;

	public string Name => _name;

	public DataKeyPropertyAttribute(string name)
	{
		_name = name;
	}

	public override bool Equals(object obj)
	{
		if (obj is DataKeyPropertyAttribute dataKeyPropertyAttribute)
		{
			return string.Equals(_name, dataKeyPropertyAttribute.Name, StringComparison.Ordinal);
		}
		return false;
	}

	public override int GetHashCode()
	{
		if (Name == null)
		{
			return 0;
		}
		return Name.GetHashCode();
	}
}
