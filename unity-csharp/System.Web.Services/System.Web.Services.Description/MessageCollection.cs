using Unity;

namespace System.Web.Services.Description;

public sealed class MessageCollection : ServiceDescriptionBaseCollection
{
	public Message this[int index]
	{
		get
		{
			return (Message)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public Message this[string name] => (Message)Table[name];

	internal MessageCollection(ServiceDescription serviceDescription)
		: base(serviceDescription)
	{
	}

	public int Add(Message message)
	{
		return List.Add(message);
	}

	public void Insert(int index, Message message)
	{
		List.Insert(index, message);
	}

	public int IndexOf(Message message)
	{
		return List.IndexOf(message);
	}

	public bool Contains(Message message)
	{
		return List.Contains(message);
	}

	public void Remove(Message message)
	{
		List.Remove(message);
	}

	public void CopyTo(Message[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((Message)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((Message)value).SetParent((ServiceDescription)parent);
	}

	internal MessageCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
