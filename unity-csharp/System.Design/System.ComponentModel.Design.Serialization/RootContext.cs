using System.CodeDom;

namespace System.ComponentModel.Design.Serialization;

public sealed class RootContext
{
	private CodeExpression _expression;

	private object _value;

	public CodeExpression Expression => _expression;

	public object Value => _value;

	public RootContext(CodeExpression expression, object value)
	{
		if (expression == null)
		{
			throw new ArgumentNullException("expression");
		}
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		_expression = expression;
		_value = value;
	}
}
