using System.Globalization;

namespace System.ComponentModel.DataAnnotations.Schema;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
public class ForeignKeyAttribute : Attribute
{
	private readonly string _name;

	public string Name => _name;

	public ForeignKeyAttribute(string name)
	{
		if (string.IsNullOrWhiteSpace(name))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The argument '{0}' cannot be null, empty or contain only white space.", "name"));
		}
		_name = name;
	}
}
