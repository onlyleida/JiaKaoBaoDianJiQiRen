namespace UnityEngine.UIElements;

public class UxmlStringAttributeDescription : TypedUxmlAttributeDescription<string>
{
	public override string defaultValueAsString => defaultValue;

	public UxmlStringAttributeDescription()
	{
		type = "string";
		typeNamespace = "http://www.w3.org/2001/XMLSchema";
		defaultValue = "";
	}

	public override string GetValueFromBag(IUxmlAttributes bag, CreationContext cc)
	{
		return GetValueFromBag(bag, cc, (string s, string t) => s, defaultValue);
	}

	public bool TryGetValueFromBag(IUxmlAttributes bag, CreationContext cc, ref string value)
	{
		return TryGetValueFromBag(bag, cc, (string s, string t) => s, defaultValue, ref value);
	}
}
