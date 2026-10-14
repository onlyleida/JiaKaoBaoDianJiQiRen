using System.CodeDom;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using Unity;

namespace System.Web.UI;

public abstract class ParseRecorder
{
	public static IList<Func<ParseRecorder>> RecorderFactories
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<Func<ParseRecorder>>)0;
		}
	}

	protected ParseRecorder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void Initialize(TemplateParser parser)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void ParseComplete(ControlBuilder root)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void ProcessGeneratedCode(ControlBuilder builder, CodeCompileUnit codeCompileUnit, CodeTypeDeclaration baseType, CodeTypeDeclaration derivedType, CodeMemberMethod buildMethod, CodeMemberMethod dataBindingMethod)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void RecordBeginTag(ControlBuilder builder, Match tag)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void RecordCodeBlock(ControlBuilder builder, Match codeBlock)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void RecordEmptyTag(ControlBuilder builder, Match tag)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void RecordEndTag(ControlBuilder builder, Match tag)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
