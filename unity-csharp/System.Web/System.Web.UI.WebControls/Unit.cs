using System.ComponentModel;
using System.Globalization;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[Serializable]
[TypeConverter(typeof(UnitConverter))]
public struct Unit
{
	private enum ParsingStage
	{
		Trim,
		SignOrSep,
		DigitOrSep,
		DigitOrUnit,
		Unit
	}

	private UnitType type;

	private double value;

	private bool valueSet;

	public static readonly Unit Empty;

	public bool IsEmpty => type == 0;

	public UnitType Type
	{
		get
		{
			if (type == 0)
			{
				return UnitType.Pixel;
			}
			return type;
		}
	}

	public double Value => value;

	public Unit(double value, UnitType type)
	{
		if (value < -32768.0 || value > 32767.0)
		{
			throw new ArgumentOutOfRangeException("value");
		}
		this.type = type;
		if (type == UnitType.Pixel)
		{
			this.value = (int)value;
		}
		else
		{
			this.value = value;
		}
		valueSet = true;
	}

	public Unit(double value)
		: this(value, UnitType.Pixel)
	{
	}

	public Unit(int value)
		: this(value, UnitType.Pixel)
	{
	}

	internal Unit(string input, char sep)
	{
		if (input == null || input == string.Empty)
		{
			type = (UnitType)0;
			value = 0.0;
			valueSet = false;
			return;
		}
		value = 0.0;
		double num = 0.0;
		double num2 = 0.1;
		int num3 = 0;
		int length = input.Length;
		int num4 = 1;
		int num5 = -1;
		int num6 = 0;
		int num7 = 0;
		ParsingStage parsingStage = ParsingStage.Trim;
		bool flag = false;
		bool flag2 = false;
		bool flag3 = false;
		while (!flag && num3 < length)
		{
			char c = input[num3];
			switch (parsingStage)
			{
			case ParsingStage.Trim:
				if (char.IsWhiteSpace(c))
				{
					num3++;
				}
				else
				{
					parsingStage = ParsingStage.SignOrSep;
				}
				break;
			case ParsingStage.SignOrSep:
				num7 = 0;
				if (c == '-')
				{
					num4 = -1;
					num3++;
					parsingStage = ParsingStage.DigitOrSep;
				}
				else if (c == sep)
				{
					num3++;
					flag2 = true;
					parsingStage = ParsingStage.DigitOrUnit;
					num = 0.0;
				}
				else
				{
					if (!char.IsDigit(c))
					{
						throw new FormatException();
					}
					parsingStage = ParsingStage.DigitOrSep;
				}
				break;
			case ParsingStage.DigitOrSep:
			{
				if (char.IsDigit(c))
				{
					num = num * 10.0 + (double)(int)c - 48.0;
					num3++;
					flag3 = true;
					break;
				}
				if (c == sep)
				{
					if (num7 > 0)
					{
						throw new ArgumentOutOfRangeException("input");
					}
					num3++;
					flag2 = true;
					value = num * (double)num4;
					num = 0.0;
					parsingStage = ParsingStage.DigitOrUnit;
					break;
				}
				bool flag4 = char.IsWhiteSpace(c);
				if (flag4 || c == '%' || char.IsLetter(c))
				{
					if (flag4)
					{
						if (!flag3)
						{
							throw new ArgumentOutOfRangeException("input");
						}
						num7++;
						num3++;
						break;
					}
					value = num * (double)num4;
					num = 0.0;
					num5 = num3;
					if (flag2)
					{
						flag3 = false;
						parsingStage = ParsingStage.DigitOrUnit;
					}
					else
					{
						parsingStage = ParsingStage.Unit;
					}
					num7 = 0;
					break;
				}
				throw new FormatException();
			}
			case ParsingStage.DigitOrUnit:
			{
				if (c == '%')
				{
					num5 = num3;
					num6 = 1;
					flag = true;
					break;
				}
				bool flag4 = char.IsWhiteSpace(c);
				if (flag4 || char.IsLetter(c))
				{
					if (flag4)
					{
						num7++;
						num3++;
					}
					else
					{
						parsingStage = ParsingStage.Unit;
						num5 = num3;
					}
					break;
				}
				if (char.IsDigit(c))
				{
					if (num7 > 0)
					{
						throw new ArgumentOutOfRangeException();
					}
					num += (double)(c - 48) * num2;
					num2 *= 0.1;
					num3++;
					break;
				}
				throw new FormatException();
			}
			case ParsingStage.Unit:
				if (c == '%' || char.IsLetter(c))
				{
					num3++;
					num6++;
				}
				else if (num6 == 0 && char.IsWhiteSpace(c))
				{
					num3++;
					num5++;
				}
				else
				{
					flag = true;
				}
				break;
			}
		}
		value += num * (double)num4;
		if (num5 >= 0)
		{
			int num8 = num5 + num6;
			if (num8 < length)
			{
				for (int i = num8; i < length; i++)
				{
					if (!char.IsWhiteSpace(input[i]))
					{
						throw new ArgumentOutOfRangeException("input");
					}
				}
			}
			if (num6 == 1 && input[num5] == '%')
			{
				type = UnitType.Percentage;
			}
			else
			{
				switch (input.Substring(num5, num6).ToLower(Helpers.InvariantCulture))
				{
				case "in":
					type = UnitType.Inch;
					break;
				case "cm":
					type = UnitType.Cm;
					break;
				case "mm":
					type = UnitType.Mm;
					break;
				case "pt":
					type = UnitType.Point;
					break;
				case "pc":
					type = UnitType.Pica;
					break;
				case "em":
					type = UnitType.Em;
					break;
				case "ex":
					type = UnitType.Ex;
					break;
				case "px":
					type = UnitType.Pixel;
					break;
				default:
					throw new ArgumentOutOfRangeException("value");
				}
			}
		}
		else
		{
			type = UnitType.Pixel;
		}
		if (flag2 && type == UnitType.Pixel)
		{
			throw new FormatException("Pixel units do not allow floating point values");
		}
		valueSet = true;
	}

	public Unit(string value)
		: this(value, '.')
	{
	}

	public Unit(string value, CultureInfo culture)
		: this(value, culture.NumberFormat.NumberDecimalSeparator[0])
	{
	}

	internal Unit(string value, CultureInfo culture, UnitType t)
		: this(value, '.')
	{
	}

	public static Unit Parse(string s)
	{
		return new Unit(s);
	}

	public static Unit Parse(string s, CultureInfo culture)
	{
		return new Unit(s, culture);
	}

	public static Unit Percentage(double n)
	{
		return new Unit(n, UnitType.Percentage);
	}

	public static Unit Pixel(int n)
	{
		return new Unit(n);
	}

	public static Unit Point(int n)
	{
		return new Unit(n, UnitType.Point);
	}

	public override bool Equals(object obj)
	{
		if (obj is Unit unit)
		{
			if (unit.type == type && unit.value == value)
			{
				return valueSet == unit.valueSet;
			}
			return false;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return Type.GetHashCode() ^ Value.GetHashCode();
	}

	public static bool operator ==(Unit left, Unit right)
	{
		if (left.Type == right.Type && left.Value == right.Value)
		{
			return left.valueSet == right.valueSet;
		}
		return false;
	}

	public static bool operator !=(Unit left, Unit right)
	{
		if (left.Type == right.Type && left.Value == right.Value)
		{
			return left.valueSet != right.valueSet;
		}
		return true;
	}

	public static implicit operator Unit(int n)
	{
		return new Unit(n);
	}

	internal static string GetExtension(UnitType type)
	{
		return type switch
		{
			UnitType.Pixel => "px", 
			UnitType.Point => "pt", 
			UnitType.Pica => "pc", 
			UnitType.Inch => "in", 
			UnitType.Mm => "mm", 
			UnitType.Cm => "cm", 
			UnitType.Percentage => "%", 
			UnitType.Em => "em", 
			UnitType.Ex => "ex", 
			_ => string.Empty, 
		};
	}

	public string ToString(CultureInfo culture)
	{
		if (type == 0)
		{
			return string.Empty;
		}
		string extension = GetExtension(type);
		return value.ToString(culture) + extension;
	}

	public override string ToString()
	{
		return ToString(Helpers.InvariantCulture);
	}

	public string ToString(IFormatProvider formatProvider)
	{
		if (type == 0)
		{
			return string.Empty;
		}
		string extension = GetExtension(type);
		return value.ToString(formatProvider) + extension;
	}
}
