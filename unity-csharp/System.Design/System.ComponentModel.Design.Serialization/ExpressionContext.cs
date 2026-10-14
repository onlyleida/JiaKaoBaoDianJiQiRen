using System.CodeDom;

namespace System.ComponentModel.Design.Serialization;

public sealed class ExpressionContext
{
	private object _owner;

	private Type _expressionType;

	private CodeExpression _expression;

	private object _presetValue;

	public object PresetValue => _presetValue;

	public CodeExpression Expression => _expression;

	public Type ExpressionType => _expressionType;

	public object Owner => _owner;

	public ExpressionContext(CodeExpression expression, Type expressionType, object owner)
	{
		_expression = expression;
		_expressionType = expressionType;
		_owner = owner;
		_presetValue = null;
	}

	public ExpressionContext(CodeExpression expression, Type expressionType, object owner, object presetValue)
	{
		_expression = expression;
		_expressionType = expressionType;
		_owner = owner;
		_presetValue = presetValue;
	}
}
