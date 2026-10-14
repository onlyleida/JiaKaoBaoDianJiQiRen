namespace System.CodeDom;

[Serializable]
public class CodeTypeConstructor : CodeMemberMethod
{
	public CodeTypeConstructor()
	{
		Name = ".cctor";
	}
}
