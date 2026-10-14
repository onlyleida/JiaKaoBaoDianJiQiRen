using System.Globalization;

namespace UnityEngine.UIElements;

public class UxmlLongAttributeDescription : TypedUxmlAttributeDescription<long>
{
	public override string defaultValueAsString => defaultValue.ToString(CultureInfo.InvariantCulture.NumberFormat);

	public UxmlLongAttributeDescription()
	{
		type = "long";
		typeNamespace = "http://www.w3.org/2001/XMLSchema";
		defaultValue = 0L;
	}

	public override long GetValueFromBag(IUxmlAttributes bag, CreationContext cc)
	{
		return GetValueFromBag(bag, cc, (string s, long l) => ConvertValueToLong(s, l), defaultValue);
	}

	public bool TryGetValueFromBag(IUxmlAttributes bag, CreationContext cc, ref long value)
	{
		return TryGetValueFromBag(bag, cc, (string s, long l) => ConvertValueToLong(s, l), defaultValue, ref value);
	}

	private static long ConvertValueToLong(string v, long defaultValue)
	{
		if (v == null || !long.TryParse(v, out var result))
		{
			return defaultValue;
		}
		return result;
	}
}
