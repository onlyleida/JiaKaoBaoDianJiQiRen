using Unity;

namespace System.Web.Services.Description;

public sealed class MessagePartCollection : ServiceDescriptionBaseCollection
{
	public MessagePart this[int index]
	{
		get
		{
			return (MessagePart)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public MessagePart this[string name] => (MessagePart)Table[name];

	internal MessagePartCollection(Message message)
		: base(message)
	{
	}

	public int Add(MessagePart messagePart)
	{
		return List.Add(messagePart);
	}

	public void Insert(int index, MessagePart messagePart)
	{
		List.Insert(index, messagePart);
	}

	public int IndexOf(MessagePart messagePart)
	{
		return List.IndexOf(messagePart);
	}

	public bool Contains(MessagePart messagePart)
	{
		return List.Contains(messagePart);
	}

	public void Remove(MessagePart messagePart)
	{
		List.Remove(messagePart);
	}

	public void CopyTo(MessagePart[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((MessagePart)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((MessagePart)value).SetParent((Message)parent);
	}

	internal MessagePartCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
