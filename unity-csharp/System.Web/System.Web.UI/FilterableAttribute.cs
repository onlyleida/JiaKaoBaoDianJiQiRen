using System.Collections;
using System.ComponentModel;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Property)]
public sealed class FilterableAttribute : Attribute
{
	public static readonly FilterableAttribute Yes;

	public static readonly FilterableAttribute No;

	public static readonly FilterableAttribute Default;

	private bool _filterable;

	private static Hashtable _filterableTypes;

	public bool Filterable => _filterable;

	static FilterableAttribute()
	{
		Yes = new FilterableAttribute(filterable: true);
		No = new FilterableAttribute(filterable: false);
		Default = Yes;
		_filterableTypes = Hashtable.Synchronized(new Hashtable());
	}

	public FilterableAttribute(bool filterable)
	{
		_filterable = filterable;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is FilterableAttribute filterableAttribute)
		{
			return filterableAttribute.Filterable == _filterable;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return _filterable.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}

	public static bool IsObjectFilterable(object instance)
	{
		if (instance == null)
		{
			throw new ArgumentNullException("instance");
		}
		return IsTypeFilterable(instance.GetType());
	}

	public static bool IsPropertyFilterable(PropertyDescriptor propertyDescriptor)
	{
		return ((FilterableAttribute)propertyDescriptor.Attributes[typeof(FilterableAttribute)])?.Filterable ?? true;
	}

	public static bool IsTypeFilterable(Type type)
	{
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		object obj = _filterableTypes[type];
		if (obj != null)
		{
			return (bool)obj;
		}
		obj = ((FilterableAttribute)TypeDescriptor.GetAttributes(type)[typeof(FilterableAttribute)])?.Filterable ?? false;
		_filterableTypes[type] = obj;
		return (bool)obj;
	}
}
