using System.ComponentModel;
using System.Globalization;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

public sealed class MimeTextMatch
{
	private string name;

	private string type;

	private int repeats = 1;

	private string pattern;

	private int group = 1;

	private int capture;

	private bool ignoreCase;

	private MimeTextMatchCollection matches = new MimeTextMatchCollection();

	[XmlAttribute("name")]
	public string Name
	{
		get
		{
			if (name != null)
			{
				return name;
			}
			return string.Empty;
		}
		set
		{
			name = value;
		}
	}

	[XmlAttribute("type")]
	public string Type
	{
		get
		{
			if (type != null)
			{
				return type;
			}
			return string.Empty;
		}
		set
		{
			type = value;
		}
	}

	[DefaultValue(1)]
	[XmlAttribute("group")]
	public int Group
	{
		get
		{
			return group;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentException(Res.GetString("WebNegativeValue", "group"));
			}
			group = value;
		}
	}

	[DefaultValue(0)]
	[XmlAttribute("capture")]
	public int Capture
	{
		get
		{
			return capture;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentException(Res.GetString("WebNegativeValue", "capture"));
			}
			capture = value;
		}
	}

	[XmlIgnore]
	public int Repeats
	{
		get
		{
			return repeats;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentException(Res.GetString("WebNegativeValue", "repeats"));
			}
			repeats = value;
		}
	}

	[DefaultValue("1")]
	[XmlAttribute("repeats")]
	public string RepeatsString
	{
		get
		{
			if (repeats != int.MaxValue)
			{
				return repeats.ToString(CultureInfo.InvariantCulture);
			}
			return "*";
		}
		set
		{
			if (value == "*")
			{
				repeats = int.MaxValue;
			}
			else
			{
				Repeats = int.Parse(value, CultureInfo.InvariantCulture);
			}
		}
	}

	[XmlAttribute("pattern")]
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

	[XmlAttribute("ignoreCase")]
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

	[XmlElement("match")]
	public MimeTextMatchCollection Matches => matches;
}
