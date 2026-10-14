using System.Globalization;

namespace System.ComponentModel.DataAnnotations.Schema;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public class TableAttribute : Attribute
{
	private readonly string _name;

	private string _schema;

	public string Name => _name;

	public string Schema
	{
		get
		{
			return _schema;
		}
		set
		{
			if (string.IsNullOrWhiteSpace(value))
			{
				throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The argument '{0}' cannot be null, empty or contain only white space.", "value"));
			}
			_schema = value;
		}
	}

	public TableAttribute(string name)
	{
		if (string.IsNullOrWhiteSpace(name))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The argument '{0}' cannot be null, empty or contain only white space.", "name"));
		}
		_name = name;
	}
}
