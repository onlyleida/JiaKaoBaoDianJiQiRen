using System.Globalization;

namespace System.ComponentModel.DataAnnotations.Schema;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
public class ColumnAttribute : Attribute
{
	private readonly string _name;

	private string _typeName;

	private int _order = -1;

	public string Name => _name;

	public int Order
	{
		get
		{
			return _order;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			_order = value;
		}
	}

	public string TypeName
	{
		get
		{
			return _typeName;
		}
		set
		{
			if (string.IsNullOrWhiteSpace(value))
			{
				throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The argument '{0}' cannot be null, empty or contain only white space.", "value"));
			}
			_typeName = value;
		}
	}

	public ColumnAttribute()
	{
	}

	public ColumnAttribute(string name)
	{
		if (string.IsNullOrWhiteSpace(name))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The argument '{0}' cannot be null, empty or contain only white space.", "name"));
		}
		_name = name;
	}
}
