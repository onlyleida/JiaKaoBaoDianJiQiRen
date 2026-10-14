using Unity;

namespace System.Web.Services.Description;

public sealed class ServiceCollection : ServiceDescriptionBaseCollection
{
	public Service this[int index]
	{
		get
		{
			return (Service)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public Service this[string name] => (Service)Table[name];

	internal ServiceCollection(ServiceDescription serviceDescription)
		: base(serviceDescription)
	{
	}

	public int Add(Service service)
	{
		return List.Add(service);
	}

	public void Insert(int index, Service service)
	{
		List.Insert(index, service);
	}

	public int IndexOf(Service service)
	{
		return List.IndexOf(service);
	}

	public bool Contains(Service service)
	{
		return List.Contains(service);
	}

	public void Remove(Service service)
	{
		List.Remove(service);
	}

	public void CopyTo(Service[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((Service)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((Service)value).SetParent((ServiceDescription)parent);
	}

	internal ServiceCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
