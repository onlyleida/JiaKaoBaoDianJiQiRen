using System.Collections;
using System.Threading;
using Unity;

namespace System.Web.Services.Description;

public abstract class ServiceDescriptionBaseCollection : CollectionBase
{
	private Hashtable table;

	private object parent;

	protected virtual IDictionary Table
	{
		get
		{
			if (table == null)
			{
				table = new Hashtable();
			}
			return table;
		}
	}

	internal ServiceDescriptionBaseCollection(object parent)
	{
		this.parent = parent;
	}

	protected virtual string GetKey(object value)
	{
		return null;
	}

	protected virtual void SetParent(object value, object parent)
	{
	}

	protected override void OnInsertComplete(int index, object value)
	{
		AddValue(value);
	}

	protected override void OnRemove(int index, object value)
	{
		RemoveValue(value);
	}

	protected override void OnClear()
	{
		for (int i = 0; i < List.Count; i++)
		{
			RemoveValue(List[i]);
		}
	}

	protected override void OnSet(int index, object oldValue, object newValue)
	{
		RemoveValue(oldValue);
		AddValue(newValue);
	}

	private void AddValue(object value)
	{
		string key = GetKey(value);
		if (key != null)
		{
			try
			{
				Table.Add(key, value);
			}
			catch (Exception ex)
			{
				if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
				{
					throw;
				}
				if (Table[key] != null)
				{
					throw new ArgumentException(GetDuplicateMessage(value.GetType(), key), ex.InnerException);
				}
				throw ex;
			}
		}
		SetParent(value, parent);
	}

	private void RemoveValue(object value)
	{
		string key = GetKey(value);
		if (key != null)
		{
			Table.Remove(key);
		}
		SetParent(value, null);
	}

	private static string GetDuplicateMessage(Type type, string elemName)
	{
		string text = null;
		if (type == typeof(ServiceDescriptionFormatExtension))
		{
			return Res.GetString("WebDuplicateFormatExtension", elemName);
		}
		if (type == typeof(OperationMessage))
		{
			return Res.GetString("WebDuplicateOperationMessage", elemName);
		}
		if (type == typeof(Import))
		{
			return Res.GetString("WebDuplicateImport", elemName);
		}
		if (type == typeof(Message))
		{
			return Res.GetString("WebDuplicateMessage", elemName);
		}
		if (type == typeof(Port))
		{
			return Res.GetString("WebDuplicatePort", elemName);
		}
		if (type == typeof(PortType))
		{
			return Res.GetString("WebDuplicatePortType", elemName);
		}
		if (type == typeof(Binding))
		{
			return Res.GetString("WebDuplicateBinding", elemName);
		}
		if (type == typeof(Service))
		{
			return Res.GetString("WebDuplicateService", elemName);
		}
		if (type == typeof(MessagePart))
		{
			return Res.GetString("WebDuplicateMessagePart", elemName);
		}
		if (type == typeof(OperationBinding))
		{
			return Res.GetString("WebDuplicateOperationBinding", elemName);
		}
		if (type == typeof(FaultBinding))
		{
			return Res.GetString("WebDuplicateFaultBinding", elemName);
		}
		if (type == typeof(Operation))
		{
			return Res.GetString("WebDuplicateOperation", elemName);
		}
		if (type == typeof(OperationFault))
		{
			return Res.GetString("WebDuplicateOperationFault", elemName);
		}
		return Res.GetString("WebDuplicateUnknownElement", type, elemName);
	}

	internal ServiceDescriptionBaseCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
