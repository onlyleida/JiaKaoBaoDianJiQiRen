using System.Security.Permissions;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ParseChildrenAttribute : Attribute
{
	private bool childrenAsProperties;

	private string defaultProperty;

	public static readonly ParseChildrenAttribute Default = new ParseChildrenAttribute();

	public static readonly ParseChildrenAttribute ParseAsChildren = new ParseChildrenAttribute(childrenAsProperties: false);

	public static readonly ParseChildrenAttribute ParseAsProperties = new ParseChildrenAttribute(childrenAsProperties: true);

	private Type childType = typeof(Control);

	public bool ChildrenAsProperties
	{
		get
		{
			return childrenAsProperties;
		}
		set
		{
			childrenAsProperties = value;
		}
	}

	public string DefaultProperty
	{
		get
		{
			return defaultProperty;
		}
		set
		{
			defaultProperty = value;
		}
	}

	public Type ChildControlType => childType;

	public ParseChildrenAttribute()
	{
		childrenAsProperties = false;
		defaultProperty = "";
	}

	public ParseChildrenAttribute(bool childrenAsProperties)
	{
		this.childrenAsProperties = childrenAsProperties;
		defaultProperty = "";
	}

	public ParseChildrenAttribute(bool childrenAsProperties, string defaultProperty)
	{
		this.childrenAsProperties = childrenAsProperties;
		if (childrenAsProperties)
		{
			this.defaultProperty = defaultProperty;
		}
	}

	public ParseChildrenAttribute(Type childControlType)
	{
		childType = childControlType;
		defaultProperty = "";
	}

	public override bool Equals(object obj)
	{
		if (!(obj is ParseChildrenAttribute parseChildrenAttribute))
		{
			return false;
		}
		if (childrenAsProperties == parseChildrenAttribute.childrenAsProperties)
		{
			if (!childrenAsProperties)
			{
				return true;
			}
			return defaultProperty == parseChildrenAttribute.DefaultProperty;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
