namespace System.Web.Compilation;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public sealed class ExpressionEditorAttribute : Attribute
{
	private string _editorTypeName;

	public string EditorTypeName => _editorTypeName;

	public ExpressionEditorAttribute(Type type)
		: this((type != null) ? type.AssemblyQualifiedName : null)
	{
	}

	public ExpressionEditorAttribute(string typeName)
	{
		if (string.IsNullOrEmpty(typeName))
		{
			throw new ArgumentNullException("typeName");
		}
		_editorTypeName = typeName;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is ExpressionEditorAttribute expressionEditorAttribute)
		{
			return expressionEditorAttribute.EditorTypeName == EditorTypeName;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return EditorTypeName.GetHashCode();
	}
}
