using System.ComponentModel;
using System.Globalization;
using System.Security.Permissions;
using System.Text;
using System.Threading;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class BaseCompareValidator : BaseValidator
{
	[Themeable(false)]
	[DefaultValue(false)]
	public bool CultureInvariantValues
	{
		get
		{
			return ViewState.GetBool("CultureInvariantValues", def: false);
		}
		set
		{
			ViewState["CultureInvariantValues"] = value;
		}
	}

	protected static int CutoffYear => CultureInfo.CurrentCulture.Calendar.TwoDigitYearMax;

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[Themeable(false)]
	[DefaultValue(ValidationDataType.String)]
	public ValidationDataType Type
	{
		get
		{
			if (ViewState["Type"] != null)
			{
				return (ValidationDataType)ViewState["Type"];
			}
			return ValidationDataType.String;
		}
		set
		{
			ViewState["Type"] = value;
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		if (RenderUplevel && Page != null)
		{
			RegisterExpandoAttribute(ClientID, "type", Type.ToString());
			switch (Type)
			{
			case ValidationDataType.Date:
			{
				DateTimeFormatInfo dateTimeFormat = CultureInfo.CurrentCulture.DateTimeFormat;
				string shortDatePattern = dateTimeFormat.ShortDatePattern;
				string attributeValue;
				if (shortDatePattern.StartsWith("y", ignoreCase: true, Helpers.InvariantCulture))
				{
					attributeValue = "ymd";
				}
				else
				{
					attributeValue = (shortDatePattern.StartsWith("m", ignoreCase: true, Helpers.InvariantCulture) ? "mdy" : "dmy");
				}
				RegisterExpandoAttribute(ClientID, "dateorder", attributeValue);
				RegisterExpandoAttribute(ClientID, "cutoffyear", dateTimeFormat.Calendar.TwoDigitYearMax.ToString());
				break;
			}
			case ValidationDataType.Currency:
			{
				NumberFormatInfo numberFormat = CultureInfo.CurrentCulture.NumberFormat;
				RegisterExpandoAttribute(ClientID, "decimalchar", numberFormat.CurrencyDecimalSeparator, encode: true);
				RegisterExpandoAttribute(ClientID, "groupchar", numberFormat.CurrencyGroupSeparator, encode: true);
				RegisterExpandoAttribute(ClientID, "digits", numberFormat.CurrencyDecimalDigits.ToString());
				RegisterExpandoAttribute(ClientID, "groupsize", numberFormat.CurrencyGroupSizes[0].ToString());
				break;
			}
			}
		}
		base.AddAttributesToRender(writer);
	}

	public static bool CanConvert(string text, ValidationDataType type)
	{
		object value;
		return Convert(text, type, out value);
	}

	protected static bool Convert(string text, ValidationDataType type, out object value)
	{
		return Convert(text, type, cultureInvariant: false, out value);
	}

	protected static bool Compare(string leftText, string rightText, ValidationCompareOperator op, ValidationDataType type)
	{
		return Compare(leftText, cultureInvariantLeftText: false, rightText, cultureInvariantRightText: false, op, type);
	}

	protected override bool DetermineRenderUplevel()
	{
		return base.DetermineRenderUplevel();
	}

	protected static string GetDateElementOrder()
	{
		string shortDatePattern = Thread.CurrentThread.CurrentCulture.DateTimeFormat.ShortDatePattern;
		StringBuilder stringBuilder = new StringBuilder();
		bool flag = false;
		bool flag2 = false;
		bool flag3 = false;
		shortDatePattern = shortDatePattern.ToLower(Helpers.InvariantCulture);
		foreach (char c in shortDatePattern)
		{
			if (c != 'm' && c != 'd' && c != 'y')
			{
				continue;
			}
			switch (c)
			{
			case 'm':
				if (!flag3)
				{
					stringBuilder.Append("m");
				}
				flag3 = true;
				break;
			case 'y':
				if (!flag2)
				{
					stringBuilder.Append("y");
				}
				flag2 = true;
				break;
			default:
				if (!flag)
				{
					stringBuilder.Append("d");
				}
				flag = true;
				break;
			}
		}
		return stringBuilder.ToString();
	}

	protected static int GetFullYear(int shortYear)
	{
		int cutoffYear = CutoffYear;
		int num = cutoffYear % 100;
		if (shortYear <= num)
		{
			return cutoffYear - num + shortYear;
		}
		return cutoffYear - num - 100 + shortYear;
	}

	public static bool CanConvert(string text, ValidationDataType type, bool cultureInvariant)
	{
		object value;
		return Convert(text, type, cultureInvariant, out value);
	}

	protected static bool Compare(string leftText, bool cultureInvariantLeftText, string rightText, bool cultureInvariantRightText, ValidationCompareOperator op, ValidationDataType type)
	{
		if (!Convert(leftText, type, cultureInvariantLeftText, out var value))
		{
			return false;
		}
		if (op == ValidationCompareOperator.DataTypeCheck)
		{
			return true;
		}
		if (!Convert(rightText, type, cultureInvariantRightText, out var value2))
		{
			return true;
		}
		int num = ((IComparable)value).CompareTo((IComparable)value2);
		return op switch
		{
			ValidationCompareOperator.Equal => num == 0, 
			ValidationCompareOperator.NotEqual => num != 0, 
			ValidationCompareOperator.LessThan => num < 0, 
			ValidationCompareOperator.LessThanEqual => num <= 0, 
			ValidationCompareOperator.GreaterThan => num > 0, 
			ValidationCompareOperator.GreaterThanEqual => num >= 0, 
			_ => false, 
		};
	}

	protected static bool Convert(string text, ValidationDataType type, bool cultureInvariant, out object value)
	{
		try
		{
			switch (type)
			{
			case ValidationDataType.String:
				value = text;
				return value != null;
			case ValidationDataType.Integer:
			{
				IFormatProvider provider3 = (cultureInvariant ? NumberFormatInfo.InvariantInfo : NumberFormatInfo.CurrentInfo);
				value = int.Parse(text, provider3);
				return true;
			}
			case ValidationDataType.Double:
			{
				IFormatProvider provider2 = (cultureInvariant ? NumberFormatInfo.InvariantInfo : NumberFormatInfo.CurrentInfo);
				value = double.Parse(text, provider2);
				return true;
			}
			case ValidationDataType.Date:
			{
				IFormatProvider provider4 = (cultureInvariant ? DateTimeFormatInfo.InvariantInfo : DateTimeFormatInfo.CurrentInfo);
				value = DateTime.Parse(text, provider4);
				return true;
			}
			case ValidationDataType.Currency:
			{
				IFormatProvider provider = (cultureInvariant ? NumberFormatInfo.InvariantInfo : NumberFormatInfo.CurrentInfo);
				value = decimal.Parse(text, NumberStyles.Currency, provider);
				return true;
			}
			default:
				value = null;
				return false;
			}
		}
		catch
		{
			value = null;
			return false;
		}
	}
}
