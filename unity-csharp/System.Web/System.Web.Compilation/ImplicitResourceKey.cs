namespace System.Web.Compilation;

public sealed class ImplicitResourceKey
{
	private string _filter;

	private string _keyPrefix;

	private string _property;

	public string Filter
	{
		get
		{
			return _filter;
		}
		set
		{
			_filter = value;
		}
	}

	public string KeyPrefix
	{
		get
		{
			return _keyPrefix;
		}
		set
		{
			_keyPrefix = value;
		}
	}

	public string Property
	{
		get
		{
			return _property;
		}
		set
		{
			_property = value;
		}
	}

	public ImplicitResourceKey()
	{
	}

	public ImplicitResourceKey(string filter, string keyPrefix, string property)
	{
		_filter = filter;
		_keyPrefix = keyPrefix;
		_property = property;
	}
}
