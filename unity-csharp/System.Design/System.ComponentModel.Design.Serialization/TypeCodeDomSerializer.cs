using System.CodeDom;
using System.Collections;

namespace System.ComponentModel.Design.Serialization;

public class TypeCodeDomSerializer : CodeDomSerializerBase
{
	public virtual CodeTypeDeclaration Serialize(IDesignerSerializationManager manager, object root, ICollection members)
	{
		if (root == null)
		{
			throw new ArgumentNullException("root");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		RootContext context = new RootContext(new CodeThisReferenceExpression(), root);
		StatementContext statementContext = new StatementContext();
		if (members != null)
		{
			statementContext.StatementCollection.Populate(members);
		}
		statementContext.StatementCollection.Populate(root);
		CodeTypeDeclaration codeTypeDeclaration = new CodeTypeDeclaration(manager.GetName(root));
		manager.Context.Push(context);
		manager.Context.Push(statementContext);
		manager.Context.Push(codeTypeDeclaration);
		if (members != null)
		{
			foreach (object member in members)
			{
				SerializeToExpression(manager, member);
			}
		}
		SerializeToExpression(manager, root);
		manager.Context.Pop();
		manager.Context.Pop();
		manager.Context.Pop();
		return codeTypeDeclaration;
	}

	public virtual object Deserialize(IDesignerSerializationManager manager, CodeTypeDeclaration declaration)
	{
		throw new NotImplementedException();
	}

	protected virtual CodeMemberMethod GetInitializeMethod(IDesignerSerializationManager manager, CodeTypeDeclaration declaration, object value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		if (declaration == null)
		{
			throw new ArgumentNullException("declaration");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		return new CodeConstructor();
	}

	protected virtual CodeMemberMethod[] GetInitializeMethods(IDesignerSerializationManager manager, CodeTypeDeclaration declaration)
	{
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		if (declaration == null)
		{
			throw new ArgumentNullException("declaration");
		}
		return new CodeMemberMethod[1]
		{
			new CodeConstructor()
		};
	}
}
