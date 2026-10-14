using System.Collections;
using System.Collections.Specialized;
using System.Security.Permissions;
using System.Text;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class CssStyleCollection
{
	private StateBag bag;

	private ListDictionary style;

	private StringBuilder _value = new StringBuilder();

	public int Count => style.Count;

	public string this[string key]
	{
		get
		{
			return style[key] as string;
		}
		set
		{
			Add(key, value);
		}
	}

	public ICollection Keys => style.Keys;

	public string this[HtmlTextWriterStyle key]
	{
		get
		{
			return style[HtmlTextWriter.StaticGetStyleName(key)] as string;
		}
		set
		{
			Add(HtmlTextWriter.StaticGetStyleName(key), value);
		}
	}

	public string Value
	{
		get
		{
			return _value.ToString();
		}
		set
		{
			SetValueInternal(value);
			InitFromStyle();
		}
	}

	internal CssStyleCollection()
	{
		style = new ListDictionary(StringComparer.OrdinalIgnoreCase);
	}

	internal CssStyleCollection(StateBag bag)
		: this()
	{
		this.bag = bag;
		if (bag != null && bag["style"] != null)
		{
			_value.Append(bag["style"]);
		}
		InitFromStyle();
	}

	private void InitFromStyle()
	{
		style.Clear();
		if (_value.Length > 0)
		{
			for (int num = 0; num >= 0; num = ParseStyle(num))
			{
			}
		}
	}

	private int ParseStyle(int startIndex)
	{
		int num = -1;
		for (int i = startIndex; i < _value.Length; i++)
		{
			if (_value[i] == ':')
			{
				num = i;
				break;
			}
		}
		if (num == -1 || num + 1 == _value.Length)
		{
			return -1;
		}
		string key = _value.ToString(startIndex, num - startIndex).Trim();
		int num2 = -1;
		for (int j = num + 1; j < _value.Length; j++)
		{
			if (_value[j] == ';')
			{
				num2 = j;
				break;
			}
		}
		string value = ((num2 != -1) ? _value.ToString(num + 1, num2 - num - 1).Trim() : _value.ToString(num + 1, _value.Length - num - 1).Trim());
		style.Add(key, value);
		if (num2 == -1 || num2 + 1 == _value.Length)
		{
			return -1;
		}
		return num2 + 1;
	}

	private void BagToValue()
	{
		_value.Length = 0;
		foreach (string key in style.Keys)
		{
			AppendStyle(_value, key, (string)style[key]);
		}
	}

	private static void AppendStyle(StringBuilder sb, string key, string value)
	{
		if (string.Compare(key, "background-image", StringComparison.OrdinalIgnoreCase) == 0 && value.Length >= 3 && string.Compare("url", 0, value, 0, 3, StringComparison.OrdinalIgnoreCase) != 0)
		{
			sb.AppendFormat("{0}:url({1});", key, HttpUtility.UrlPathEncode(value));
		}
		else
		{
			sb.AppendFormat("{0}:{1};", key, value);
		}
	}

	public void Add(string key, string value)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		if (value == null)
		{
			Remove(key);
			return;
		}
		string text = (string)style[key];
		if (text == null)
		{
			style[key] = value;
			AppendStyle(_value, key, value);
		}
		else
		{
			if (string.CompareOrdinal(text, value) == 0)
			{
				return;
			}
			style[key] = value;
			BagToValue();
		}
		if (bag != null)
		{
			bag["style"] = _value.ToString();
		}
	}

	public void Add(HtmlTextWriterStyle key, string value)
	{
		Add(HtmlTextWriter.StaticGetStyleName(key), value);
	}

	public void Clear()
	{
		style.Clear();
		SetValueInternal(null);
	}

	public void Remove(string key)
	{
		if (style[key] != null)
		{
			style.Remove(key);
			if (style.Count == 0)
			{
				SetValueInternal(null);
			}
			else
			{
				BagToValue();
			}
		}
	}

	public void Remove(HtmlTextWriterStyle key)
	{
		Remove(HtmlTextWriter.StaticGetStyleName(key));
	}

	private void SetValueInternal(string value)
	{
		_value.Length = 0;
		if (value != null)
		{
			_value.Append(value);
		}
		if (bag != null)
		{
			if (value == null)
			{
				bag.Remove("style");
			}
			else
			{
				bag["style"] = value;
			}
		}
	}
}
