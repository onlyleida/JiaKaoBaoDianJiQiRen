using System.CodeDom;
using System.Collections;
using System.Web.UI;
using Unity;

namespace System.Web.Compilation;

public abstract class ControlBuilderInterceptor
{
	protected ControlBuilderInterceptor()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void OnProcessGeneratedCode(ControlBuilder controlBuilder, CodeCompileUnit codeCompileUnit, CodeTypeDeclaration baseType, CodeTypeDeclaration derivedType, CodeMemberMethod buildMethod, CodeMemberMethod dataBindingMethod, IDictionary additionalState)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void PreControlBuilderInit(ControlBuilder controlBuilder, TemplateParser parser, ControlBuilder parentBuilder, Type type, string tagName, string id, IDictionary attributes, IDictionary additionalState)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
