namespace System.Web.Management;

public class WebEventFormatter
{
	private int indentation_level;

	private int tab_size;

	public int IndentationLevel
	{
		get
		{
			return indentation_level;
		}
		set
		{
			indentation_level = value;
		}
	}

	public int TabSize
	{
		get
		{
			return tab_size;
		}
		set
		{
			tab_size = value;
		}
	}

	internal WebEventFormatter()
	{
	}

	public void AppendLine(string s)
	{
		throw new NotImplementedException();
	}

	public new string ToString()
	{
		throw new NotImplementedException();
	}
}
