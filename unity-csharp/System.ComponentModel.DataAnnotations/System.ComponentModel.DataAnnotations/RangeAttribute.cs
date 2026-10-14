using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class RangeAttribute : ValidationAttribute
{
	public object Minimum { get; private set; }

	public object Maximum { get; private set; }

	public Type OperandType { get; private set; }

	private Func<object, object> Conversion { get; set; }

	public RangeAttribute(int minimum, int maximum)
		: this()
	{
		Minimum = minimum;
		Maximum = maximum;
		OperandType = typeof(int);
	}

	public RangeAttribute(double minimum, double maximum)
		: this()
	{
		Minimum = minimum;
		Maximum = maximum;
		OperandType = typeof(double);
	}

	public RangeAttribute(Type type, string minimum, string maximum)
		: this()
	{
		OperandType = type;
		Minimum = minimum;
		Maximum = maximum;
	}

	private RangeAttribute()
		: base(() => "The field {0} must be between {1} and {2}.")
	{
	}

	private void Initialize(IComparable minimum, IComparable maximum, Func<object, object> conversion)
	{
		if (minimum.CompareTo(maximum) > 0)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The maximum value '{0}' must be greater than or equal to the minimum value '{1}'.", maximum, minimum));
		}
		Minimum = minimum;
		Maximum = maximum;
		Conversion = conversion;
	}

	public override bool IsValid(object value)
	{
		SetupConversion();
		if (value == null)
		{
			return true;
		}
		if (value is string value2 && string.IsNullOrEmpty(value2))
		{
			return true;
		}
		object obj = null;
		try
		{
			obj = Conversion(value);
		}
		catch (FormatException)
		{
			return false;
		}
		catch (InvalidCastException)
		{
			return false;
		}
		catch (NotSupportedException)
		{
			return false;
		}
		IComparable comparable = (IComparable)Minimum;
		IComparable comparable2 = (IComparable)Maximum;
		if (comparable.CompareTo(obj) <= 0)
		{
			return comparable2.CompareTo(obj) >= 0;
		}
		return false;
	}

	public override string FormatErrorMessage(string name)
	{
		SetupConversion();
		return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, Minimum, Maximum);
	}

	private void SetupConversion()
	{
		if (Conversion != null)
		{
			return;
		}
		object minimum = Minimum;
		object maximum = Maximum;
		if (minimum == null || maximum == null)
		{
			throw new InvalidOperationException("The minimum and maximum values must be set.");
		}
		Type type = minimum.GetType();
		if (type == typeof(int))
		{
			Initialize((int)minimum, (int)maximum, (object v) => Convert.ToInt32(v, CultureInfo.InvariantCulture));
			return;
		}
		if (type == typeof(double))
		{
			Initialize((double)minimum, (double)maximum, (object v) => Convert.ToDouble(v, CultureInfo.InvariantCulture));
			return;
		}
		Type type2 = OperandType;
		if (type2 == null)
		{
			throw new InvalidOperationException("The OperandType must be set when strings are used for minimum and maximum values.");
		}
		Type typeFromHandle = typeof(IComparable);
		if (!typeFromHandle.IsAssignableFrom(type2))
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The type {0} must implement {1}.", type2.FullName, typeFromHandle.FullName));
		}
		TypeConverter converter = TypeDescriptor.GetConverter(type2);
		IComparable minimum2 = (IComparable)converter.ConvertFromString((string)minimum);
		IComparable maximum2 = (IComparable)converter.ConvertFromString((string)maximum);
		Func<object, object> conversion = (object value) => (value == null || !(value.GetType() == type2)) ? converter.ConvertFrom(value) : value;
		Initialize(minimum2, maximum2, conversion);
	}
}
