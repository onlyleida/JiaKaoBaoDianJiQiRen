using System.Collections;
using System.Collections.Generic;
using System.Reflection;

namespace System.Web.UI.WebControls.WebParts;

[AttributeUsage(AttributeTargets.Property)]
public sealed class PersonalizableAttribute : Attribute
{
	public static readonly PersonalizableAttribute Default;

	public static readonly PersonalizableAttribute NotPersonalizable;

	public static readonly PersonalizableAttribute Personalizable;

	public static readonly PersonalizableAttribute SharedPersonalizable;

	public static readonly PersonalizableAttribute UserPersonalizable;

	private bool isPersonalizable;

	private bool isSensitive;

	private PersonalizationScope scope;

	public bool IsPersonalizable => isPersonalizable;

	public bool IsSensitive => isSensitive;

	public PersonalizationScope Scope => scope;

	static PersonalizableAttribute()
	{
		Default = new PersonalizableAttribute(isPersonalizable: false);
		NotPersonalizable = Default;
		Personalizable = new PersonalizableAttribute(PersonalizationScope.User, isSensitive: false);
		SharedPersonalizable = new PersonalizableAttribute(PersonalizationScope.Shared, isSensitive: false);
		UserPersonalizable = new PersonalizableAttribute(PersonalizationScope.User, isSensitive: false);
	}

	public PersonalizableAttribute()
		: this(isPersonalizable: true)
	{
	}

	public PersonalizableAttribute(bool isPersonalizable)
	{
		this.isPersonalizable = isPersonalizable;
		scope = PersonalizationScope.User;
		isSensitive = false;
	}

	public PersonalizableAttribute(PersonalizationScope scope)
		: this(scope, isSensitive: false)
	{
	}

	public PersonalizableAttribute(PersonalizationScope scope, bool isSensitive)
	{
		isPersonalizable = true;
		this.scope = scope;
		this.isSensitive = isSensitive;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is PersonalizableAttribute personalizableAttribute))
		{
			return false;
		}
		if (isPersonalizable == personalizableAttribute.IsPersonalizable && isSensitive == personalizableAttribute.IsSensitive)
		{
			return scope == personalizableAttribute.Scope;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return isPersonalizable.GetHashCode() ^ isSensitive.GetHashCode() ^ scope.GetHashCode();
	}

	public static ICollection GetPersonalizableProperties(Type type)
	{
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		PropertyInfo[] properties = type.GetProperties();
		if (properties == null || properties.Length == 0)
		{
			return new PropertyInfo[0];
		}
		List<PropertyInfo> list = null;
		PropertyInfo[] array = properties;
		foreach (PropertyInfo propertyInfo in array)
		{
			if (PropertyQualifies(propertyInfo))
			{
				if (list == null)
				{
					list = new List<PropertyInfo>();
				}
				list.Add(propertyInfo);
			}
		}
		return list;
	}

	private static bool PropertyQualifies(PropertyInfo pi)
	{
		object[] customAttributes = pi.GetCustomAttributes(inherit: false);
		if (customAttributes == null || customAttributes.Length == 0)
		{
			return false;
		}
		object[] array = customAttributes;
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is PersonalizableAttribute { IsPersonalizable: not false })
			{
				if (pi.GetSetMethod(nonPublic: false) == null)
				{
					throw new HttpException("A public property on the type is marked as personalizable but is read-only.");
				}
				return true;
			}
		}
		return false;
	}

	public override bool IsDefaultAttribute()
	{
		return object.Equals(this, Default);
	}

	public override bool Match(object obj)
	{
		PersonalizableAttribute personalizableAttribute = obj as PersonalizableAttribute;
		if (obj == null)
		{
			return false;
		}
		return isPersonalizable == personalizableAttribute.IsPersonalizable;
	}
}
