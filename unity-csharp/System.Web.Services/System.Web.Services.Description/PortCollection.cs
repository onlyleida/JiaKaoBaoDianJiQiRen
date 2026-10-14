using Unity;

namespace System.Web.Services.Description;

public sealed class PortCollection : ServiceDescriptionBaseCollection
{
	public Port this[int index]
	{
		get
		{
			return (Port)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public Port this[string name] => (Port)Table[name];

	internal PortCollection(Service service)
		: base(service)
	{
	}

	public int Add(Port port)
	{
		return List.Add(port);
	}

	public void Insert(int index, Port port)
	{
		List.Insert(index, port);
	}

	public int IndexOf(Port port)
	{
		return List.IndexOf(port);
	}

	public bool Contains(Port port)
	{
		return List.Contains(port);
	}

	public void Remove(Port port)
	{
		List.Remove(port);
	}

	public void CopyTo(Port[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((Port)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((Port)value).SetParent((Service)parent);
	}

	internal PortCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
