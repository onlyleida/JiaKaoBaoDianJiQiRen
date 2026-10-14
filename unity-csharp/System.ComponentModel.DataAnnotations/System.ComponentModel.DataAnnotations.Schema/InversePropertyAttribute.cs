using System.Globalization;

namespace System.ComponentModel.DataAnnotations.Schema;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
public class InversePropertyAttribute : Attribute
{
	private readonly string _property;

	public string Property => _property;

	public InversePropertyAttribute(string property)
	{
		if (string.IsNullOrWhiteSpace(property))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The argument '{0}' cannot be null, empty or contain only white space.", "property"));
		}
		_property = property;
	}
}
