using System.Globalization;

namespace UnityEngine.UIElements;

public class UxmlFloatAttributeDescription : TypedUxmlAttributeDescription<float>
{
	public override string defaultValueAsString => defaultValue.ToString(CultureInfo.InvariantCulture.NumberFormat);

	public UxmlFloatAttributeDescription()
	{
		type = "float";
		typeNamespace = "http://www.w3.org/2001/XMLSchema";
		defaultValue = 0f;
	}

	public override float GetValueFromBag(IUxmlAttributes bag, CreationContext cc)
	{
		return GetValueFromBag(bag, cc, (string s, float f) => ConvertValueToFloat(s, f), defaultValue);
	}

	public bool TryGetValueFromBag(IUxmlAttributes bag, CreationContext cc, ref float value)
	{
		return TryGetValueFromBag(bag, cc, (string s, float f) => ConvertValueToFloat(s, f), defaultValue, ref value);
	}

	private static float ConvertValueToFloat(string v, float defaultValue)
	{
		if (v == null || !float.TryParse(v, out var result))
		{
			return defaultValue;
		}
		return result;
	}
}
