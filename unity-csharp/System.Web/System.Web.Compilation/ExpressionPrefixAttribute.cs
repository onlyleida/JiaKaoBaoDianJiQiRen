namespace System.Web.Compilation;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public sealed class ExpressionPrefixAttribute : Attribute
{
	private string _expressionPrefix;

	public string ExpressionPrefix => _expressionPrefix;

	public ExpressionPrefixAttribute(string expressionPrefix)
	{
		if (string.IsNullOrEmpty(expressionPrefix))
		{
			throw new ArgumentNullException("expressionPrefix");
		}
		_expressionPrefix = expressionPrefix;
	}
}
