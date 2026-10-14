namespace System.Web.Services.Protocols;

[AttributeUsage(AttributeTargets.All)]
public sealed class MatchAttribute : Attribute
{
	private string pattern;

	private int group = 1;

	private int capture;

	private bool ignoreCase;

	private int repeats = -1;

	public string Pattern
	{
		get
		{
			if (pattern != null)
			{
				return pattern;
			}
			return string.Empty;
		}
		set
		{
			pattern = value;
		}
	}

	public int Group
	{
		get
		{
			return group;
		}
		set
		{
			group = value;
		}
	}

	public int Capture
	{
		get
		{
			return capture;
		}
		set
		{
			capture = value;
		}
	}

	public bool IgnoreCase
	{
		get
		{
			return ignoreCase;
		}
		set
		{
			ignoreCase = value;
		}
	}

	public int MaxRepeats
	{
		get
		{
			return repeats;
		}
		set
		{
			repeats = value;
		}
	}

	public MatchAttribute(string pattern)
	{
		this.pattern = pattern;
	}
}
