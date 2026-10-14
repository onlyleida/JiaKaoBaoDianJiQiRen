namespace System.Web;

[Serializable]
public sealed class ParserError
{
	private string _errorText;

	private string _virtualPath;

	private int _line;

	public string ErrorText
	{
		get
		{
			return _errorText;
		}
		set
		{
			_errorText = value;
		}
	}

	public string VirtualPath
	{
		get
		{
			return _virtualPath;
		}
		set
		{
			_virtualPath = value;
		}
	}

	public int Line
	{
		get
		{
			return _line;
		}
		set
		{
			_line = value;
		}
	}

	public ParserError()
	{
	}

	public ParserError(string errorText, string virtualPath, int line)
	{
		_errorText = errorText;
		_virtualPath = virtualPath;
		_line = line;
	}
}
