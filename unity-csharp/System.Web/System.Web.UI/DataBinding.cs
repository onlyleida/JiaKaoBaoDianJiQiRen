using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DataBinding
{
	private string propertyName;

	private Type propertyType;

	private string expression;

	public string Expression
	{
		get
		{
			return expression;
		}
		set
		{
			expression = value;
		}
	}

	public string PropertyName => propertyName;

	public Type PropertyType => propertyType;

	public DataBinding(string propertyName, Type propertyType, string expression)
	{
		this.propertyName = propertyName;
		this.propertyType = propertyType;
		this.expression = expression;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is DataBinding dataBinding))
		{
			return false;
		}
		if (dataBinding.Expression == expression && dataBinding.PropertyName == propertyName)
		{
			return dataBinding.PropertyType == propertyType;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return propertyName.GetHashCode() + (propertyType.GetHashCode() << 1) + (expression.GetHashCode() << 2);
	}
}
