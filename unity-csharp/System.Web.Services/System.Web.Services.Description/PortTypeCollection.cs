using Unity;

namespace System.Web.Services.Description;

public sealed class PortTypeCollection : ServiceDescriptionBaseCollection
{
	public PortType this[int index]
	{
		get
		{
			return (PortType)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public PortType this[string name] => (PortType)Table[name];

	internal PortTypeCollection(ServiceDescription serviceDescription)
		: base(serviceDescription)
	{
	}

	public int Add(PortType portType)
	{
		return List.Add(portType);
	}

	public void Insert(int index, PortType portType)
	{
		List.Insert(index, portType);
	}

	public int IndexOf(PortType portType)
	{
		return List.IndexOf(portType);
	}

	public bool Contains(PortType portType)
	{
		return List.Contains(portType);
	}

	public void Remove(PortType portType)
	{
		List.Remove(portType);
	}

	public void CopyTo(PortType[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((PortType)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((PortType)value).SetParent((ServiceDescription)parent);
	}

	internal PortTypeCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
