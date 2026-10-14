namespace System.Web.UI;

[Serializable]
public sealed class IndexedString
{
	private string _value;

	public string Value => _value;

	public IndexedString(string s)
	{
		if (string.IsNullOrEmpty(s))
		{
			throw new ArgumentNullException("s");
		}
		_value = s;
	}
}
