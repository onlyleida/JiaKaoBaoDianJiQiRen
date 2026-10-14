using System.Globalization;

namespace UnityEngine.UIElements;

public class UxmlDoubleAttributeDescription : TypedUxmlAttributeDescription<double>
{
	public override string defaultValueAsString => defaultValue.ToString(CultureInfo.InvariantCulture.NumberFormat);

	public UxmlDoubleAttributeDescription()
	{
		type = "double";
		typeNamespace = "http://www.w3.org/2001/XMLSchema";
		defaultValue = 0.0;
	}

	public override double GetValueFromBag(IUxmlAttributes bag, CreationContext cc)
	{
		return GetValueFromBag(bag, cc, (string s, double d) => ConvertValueToDouble(s, d), defaultValue);
	}

	public bool TryGetValueFromBag(IUxmlAttributes bag, CreationContext cc, ref double value)
	{
		return TryGetValueFromBag(bag, cc, (string s, double d) => ConvertValueToDouble(s, d), defaultValue, ref value);
	}

	private static double ConvertValueToDouble(string v, double defaultValue)
	{
		if (v == null || !double.TryParse(v, out var result))
		{
			return defaultValue;
		}
		return result;
	}
}
