using System.ComponentModel;
using System.Globalization;
using System.Threading;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[Serializable]
[TypeConverter(typeof(FontUnitConverter))]
public struct FontUnit
{
	private FontSize type;

	private Unit unit;

	public static readonly FontUnit Empty;

	public static readonly FontUnit Smaller = new FontUnit(FontSize.Smaller);

	public static readonly FontUnit Larger = new FontUnit(FontSize.Larger);

	public static readonly FontUnit XXSmall = new FontUnit(FontSize.XXSmall);

	public static readonly FontUnit XSmall = new FontUnit(FontSize.XSmall);

	public static readonly FontUnit Small = new FontUnit(FontSize.Small);

	public static readonly FontUnit Medium = new FontUnit(FontSize.Medium);

	public static readonly FontUnit Large = new FontUnit(FontSize.Large);

	public static readonly FontUnit XLarge = new FontUnit(FontSize.XLarge);

	public static readonly FontUnit XXLarge = new FontUnit(FontSize.XXLarge);

	private static string[] font_size_names = new string[11]
	{
		null, null, "Smaller", "Larger", "XX-Small", "X-Small", "Small", "Medium", "Large", "X-Large",
		"XX-Large"
	};

	public bool IsEmpty => type == FontSize.NotSet;

	public FontSize Type => type;

	public Unit Unit => unit;

	public FontUnit(FontSize type)
	{
		if (type < FontSize.NotSet || type > FontSize.XXLarge)
		{
			throw new ArgumentOutOfRangeException("type");
		}
		this.type = type;
		if (type == FontSize.AsUnit)
		{
			unit = new Unit(10.0, UnitType.Point);
		}
		else
		{
			unit = Unit.Empty;
		}
	}

	public FontUnit(int value)
		: this(new Unit(value, UnitType.Point))
	{
	}

	public FontUnit(double value)
		: this(new Unit(value, UnitType.Point))
	{
	}

	public FontUnit(double value, UnitType type)
		: this(new Unit(value, type))
	{
	}

	public FontUnit(Unit value)
	{
		type = FontSize.AsUnit;
		unit = value;
	}

	public FontUnit(string value)
		: this(value, Thread.CurrentThread.CurrentCulture)
	{
	}

	public FontUnit(string value, CultureInfo culture)
	{
		if (string.IsNullOrEmpty(value))
		{
			type = FontSize.NotSet;
			unit = Unit.Empty;
			return;
		}
		switch (value.ToLower(Helpers.InvariantCulture))
		{
		case "smaller":
			type = FontSize.Smaller;
			break;
		case "larger":
			type = FontSize.Larger;
			break;
		case "xxsmall":
			type = FontSize.XXSmall;
			break;
		case "xx-small":
			type = FontSize.XXSmall;
			break;
		case "xsmall":
			type = FontSize.XSmall;
			break;
		case "x-small":
			type = FontSize.XSmall;
			break;
		case "small":
			type = FontSize.Small;
			break;
		case "medium":
			type = FontSize.Medium;
			break;
		case "large":
			type = FontSize.Large;
			break;
		case "xlarge":
			type = FontSize.XLarge;
			break;
		case "x-large":
			type = FontSize.XLarge;
			break;
		case "xxlarge":
			type = FontSize.XXLarge;
			break;
		case "xx-large":
			type = FontSize.XXLarge;
			break;
		default:
			type = FontSize.AsUnit;
			unit = new Unit(value, culture);
			return;
		}
		unit = Unit.Empty;
	}

	public static FontUnit Parse(string s)
	{
		return new FontUnit(s);
	}

	public static FontUnit Parse(string s, CultureInfo culture)
	{
		return new FontUnit(s, culture);
	}

	public static FontUnit Point(int n)
	{
		return new FontUnit(n);
	}

	public override bool Equals(object obj)
	{
		if (obj is FontUnit fontUnit)
		{
			if (fontUnit.type == type)
			{
				return fontUnit.unit == unit;
			}
			return false;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return type.GetHashCode() ^ unit.GetHashCode();
	}

	public static bool operator ==(FontUnit left, FontUnit right)
	{
		if (left.type == right.type)
		{
			return left.unit == right.unit;
		}
		return false;
	}

	public static bool operator !=(FontUnit left, FontUnit right)
	{
		if (left.type == right.type)
		{
			return left.unit != right.unit;
		}
		return true;
	}

	public static implicit operator FontUnit(int n)
	{
		return new FontUnit(n);
	}

	public string ToString(IFormatProvider formatProvider)
	{
		if (type == FontSize.NotSet)
		{
			return string.Empty;
		}
		if (type == FontSize.AsUnit)
		{
			return unit.ToString(formatProvider);
		}
		return font_size_names[(int)type];
	}

	public string ToString(CultureInfo culture)
	{
		if (type == FontSize.NotSet)
		{
			return string.Empty;
		}
		if (type == FontSize.AsUnit)
		{
			return unit.ToString(culture);
		}
		return font_size_names[(int)type];
	}

	public override string ToString()
	{
		return ToString(CultureInfo.CurrentCulture);
	}
}
