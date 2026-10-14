using System.Collections;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Property)]
public sealed class ThemeableAttribute : Attribute
{
	public static readonly ThemeableAttribute Yes;

	public static readonly ThemeableAttribute No;

	public static readonly ThemeableAttribute Default;

	private bool _themeable;

	private static Hashtable _themeableTypes;

	public bool Themeable => _themeable;

	static ThemeableAttribute()
	{
		Yes = new ThemeableAttribute(themeable: true);
		No = new ThemeableAttribute(themeable: false);
		Default = Yes;
		_themeableTypes = Hashtable.Synchronized(new Hashtable());
	}

	public ThemeableAttribute(bool themeable)
	{
		_themeable = themeable;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is ThemeableAttribute themeableAttribute)
		{
			return themeableAttribute.Themeable == _themeable;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return _themeable.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}

	public static bool IsObjectThemeable(object instance)
	{
		if (instance == null)
		{
			throw new ArgumentNullException("instance");
		}
		return IsTypeThemeable(instance.GetType());
	}

	public static bool IsTypeThemeable(Type type)
	{
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		object obj = _themeableTypes[type];
		if (obj != null)
		{
			return (bool)obj;
		}
		obj = Attribute.GetCustomAttribute(type, typeof(ThemeableAttribute)) is ThemeableAttribute themeableAttribute && themeableAttribute.Themeable;
		_themeableTypes[type] = obj;
		return (bool)obj;
	}
}
