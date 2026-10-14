using System.Reflection;

namespace System.CodeDom;

[Serializable]
public class CodeTypeDelegate : CodeTypeDeclaration
{
	private CodeTypeReference _returnType;

	public CodeTypeReference ReturnType
	{
		get
		{
			return _returnType ?? (_returnType = new CodeTypeReference(""));
		}
		set
		{
			_returnType = value;
		}
	}

	public CodeParameterDeclarationExpressionCollection Parameters { get; } = new CodeParameterDeclarationExpressionCollection();

	public CodeTypeDelegate()
	{
		TypeAttributes &= ~TypeAttributes.ClassSemanticsMask;
		TypeAttributes |= TypeAttributes.NotPublic;
		BaseTypes.Clear();
		BaseTypes.Add(new CodeTypeReference("System.Delegate"));
	}

	public CodeTypeDelegate(string name)
		: this()
	{
		Name = name;
	}
}
