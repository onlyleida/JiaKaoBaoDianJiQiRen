namespace UnityEngine.UIElements;

public class UxmlBoolAttributeDescription : TypedUxmlAttributeDescription<bool>
{
	public override string defaultValueAsString => defaultValue.ToString().ToLower();

	public UxmlBoolAttributeDescription()
	{
		type = "boolean";
		typeNamespace = "http://www.w3.org/2001/XMLSchema";
		defaultValue = false;
	}

	public override bool GetValueFromBag(IUxmlAttributes bag, CreationContext cc)
	{
		return GetValueFromBag(bag, cc, (string s, bool b) => ConvertValueToBool(s, b), defaultValue);
	}

	public bool TryGetValueFromBag(IUxmlAttributes bag, CreationContext cc, ref bool value)
	{
		return TryGetValueFromBag(bag, cc, (string s, bool b) => ConvertValueToBool(s, b), defaultValue, ref value);
	}

	private static bool ConvertValueToBool(string v, bool defaultValue)
	{
		if (v == null || !bool.TryParse(v, out var result))
		{
			return defaultValue;
		}
		return result;
	}
}
