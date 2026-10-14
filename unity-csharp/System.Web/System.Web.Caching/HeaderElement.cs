namespace System.Web.Caching;

[Serializable]
public sealed class HeaderElement
{
	public string Name { get; private set; }

	public string Value { get; private set; }

	public HeaderElement(string name, string value)
	{
		if (name == null)
		{
			throw new ArgumentNullException("name");
		}
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		Name = name;
		Value = value;
	}
}
