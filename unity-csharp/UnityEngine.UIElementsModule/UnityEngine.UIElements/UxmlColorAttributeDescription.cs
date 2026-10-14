namespace UnityEngine.UIElements;

public class UxmlColorAttributeDescription : TypedUxmlAttributeDescription<Color>
{
	public override string defaultValueAsString => defaultValue.ToString();

	public UxmlColorAttributeDescription()
	{
		type = "string";
		typeNamespace = "http://www.w3.org/2001/XMLSchema";
		defaultValue = new Color(0f, 0f, 0f, 1f);
	}

	public override Color GetValueFromBag(IUxmlAttributes bag, CreationContext cc)
	{
		return GetValueFromBag(bag, cc, (string s, Color color) => ConvertValueToColor(s, color), defaultValue);
	}

	public bool TryGetValueFromBag(IUxmlAttributes bag, CreationContext cc, ref Color value)
	{
		return TryGetValueFromBag(bag, cc, (string s, Color color) => ConvertValueToColor(s, color), defaultValue, ref value);
	}

	private static Color ConvertValueToColor(string v, Color defaultValue)
	{
		if (v == null || !ColorUtility.TryParseHtmlString(v, out var color))
		{
			return defaultValue;
		}
		return color;
	}
}
