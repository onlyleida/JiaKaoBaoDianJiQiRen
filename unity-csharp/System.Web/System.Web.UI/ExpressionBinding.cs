using Unity;

namespace System.Web.UI;

public sealed class ExpressionBinding
{
	private string propertyName;

	private Type propertyType;

	private string expression;

	private string prefix;

	private bool generated;

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

	public string ExpressionPrefix
	{
		get
		{
			return prefix;
		}
		set
		{
			prefix = value;
		}
	}

	public bool Generated => generated;

	public string PropertyName => propertyName;

	public Type PropertyType => propertyType;

	public object ParsedExpressionData
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ExpressionBinding(string propertyName, Type propertyType, string expressionPrefix, string expression)
	{
		this.propertyName = propertyName;
		this.propertyType = propertyType;
		prefix = expressionPrefix;
		this.expression = expression;
		generated = false;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is ExpressionBinding))
		{
			return false;
		}
		ExpressionBinding expressionBinding = (ExpressionBinding)obj;
		if (expressionBinding.Expression == expression && expressionBinding.ExpressionPrefix == prefix && expressionBinding.PropertyName == propertyName)
		{
			return expressionBinding.PropertyType == propertyType;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return propertyName.GetHashCode() + (propertyType.GetHashCode() << 1) + (prefix.GetHashCode() << 2) + (expression.GetHashCode() << 3);
	}
}
