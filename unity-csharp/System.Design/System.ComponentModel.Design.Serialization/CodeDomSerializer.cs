using System.CodeDom;

namespace System.ComponentModel.Design.Serialization;

public class CodeDomSerializer : CodeDomSerializerBase
{
	public virtual object SerializeAbsolute(IDesignerSerializationManager manager, object value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		SerializeAbsoluteContext context = new SerializeAbsoluteContext();
		manager.Context.Push(context);
		object result = Serialize(manager, value);
		manager.Context.Pop();
		return result;
	}

	public virtual object Serialize(IDesignerSerializationManager manager, object value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		object result = null;
		bool isComplete = false;
		CodeExpression codeExpression = SerializeCreationExpression(manager, value, out isComplete);
		if (codeExpression != null)
		{
			if (isComplete)
			{
				result = codeExpression;
			}
			else
			{
				CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
				SerializeProperties(manager, codeStatementCollection, value, new Attribute[0]);
				SerializeEvents(manager, codeStatementCollection, value);
				result = codeStatementCollection;
			}
			SetExpression(manager, value, codeExpression);
		}
		return result;
	}

	[Obsolete("This method has been deprecated. Use SerializeToExpression or GetExpression instead.")]
	protected CodeExpression SerializeToReferenceExpression(IDesignerSerializationManager manager, object value)
	{
		return SerializeToExpression(manager, value);
	}

	public virtual string GetTargetComponentName(CodeStatement statement, CodeExpression expression, Type targetType)
	{
		if (expression is CodeFieldReferenceExpression)
		{
			return ((CodeFieldReferenceExpression)expression).FieldName;
		}
		if (expression is CodeVariableReferenceExpression)
		{
			return ((CodeVariableReferenceExpression)expression).VariableName;
		}
		return null;
	}

	public virtual CodeStatementCollection SerializeMember(IDesignerSerializationManager manager, object owningObject, MemberDescriptor member)
	{
		if (member == null)
		{
			throw new ArgumentNullException("member");
		}
		if (owningObject == null)
		{
			throw new ArgumentNullException("owningObject");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
		CodeExpression expression = GetExpression(manager, owningObject);
		if (expression == null)
		{
			string text = manager.GetName(owningObject);
			if (text == null)
			{
				text = GetUniqueName(manager, owningObject);
			}
			expression = new CodeVariableReferenceExpression(text);
			SetExpression(manager, owningObject, expression);
		}
		if (member is PropertyDescriptor)
		{
			SerializeProperty(manager, codeStatementCollection, owningObject, (PropertyDescriptor)member);
		}
		if (member is EventDescriptor)
		{
			SerializeEvent(manager, codeStatementCollection, owningObject, (EventDescriptor)member);
		}
		return codeStatementCollection;
	}

	public virtual CodeStatementCollection SerializeMemberAbsolute(IDesignerSerializationManager manager, object owningObject, MemberDescriptor member)
	{
		if (member == null)
		{
			throw new ArgumentNullException("member");
		}
		if (owningObject == null)
		{
			throw new ArgumentNullException("owningObject");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		SerializeAbsoluteContext context = new SerializeAbsoluteContext(member);
		manager.Context.Push(context);
		CodeStatementCollection result = SerializeMember(manager, owningObject, member);
		manager.Context.Pop();
		return result;
	}

	public virtual object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		object obj = null;
		if (codeObject is CodeExpression expression)
		{
			obj = DeserializeExpression(manager, null, expression);
		}
		if (codeObject is CodeStatement statement)
		{
			obj = DeserializeStatementToInstance(manager, statement);
		}
		if (codeObject is CodeStatementCollection codeStatementCollection)
		{
			foreach (CodeStatement item in codeStatementCollection)
			{
				if (obj == null)
				{
					obj = DeserializeStatementToInstance(manager, item);
				}
				else
				{
					DeserializeStatement(manager, item);
				}
			}
		}
		return obj;
	}

	protected object DeserializeStatementToInstance(IDesignerSerializationManager manager, CodeStatement statement)
	{
		if (statement is CodeAssignStatement { Left: CodeFieldReferenceExpression left } codeAssignStatement)
		{
			return DeserializeExpression(manager, left.FieldName, codeAssignStatement.Right);
		}
		DeserializeStatement(manager, statement);
		return null;
	}
}
