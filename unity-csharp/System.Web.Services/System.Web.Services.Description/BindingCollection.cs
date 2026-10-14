using Unity;

namespace System.Web.Services.Description;

public sealed class BindingCollection : ServiceDescriptionBaseCollection
{
	public Binding this[int index]
	{
		get
		{
			return (Binding)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public Binding this[string name] => (Binding)Table[name];

	internal BindingCollection(ServiceDescription serviceDescription)
		: base(serviceDescription)
	{
	}

	public int Add(Binding binding)
	{
		return List.Add(binding);
	}

	public void Insert(int index, Binding binding)
	{
		List.Insert(index, binding);
	}

	public int IndexOf(Binding binding)
	{
		return List.IndexOf(binding);
	}

	public bool Contains(Binding binding)
	{
		return List.Contains(binding);
	}

	public void Remove(Binding binding)
	{
		List.Remove(binding);
	}

	public void CopyTo(Binding[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((Binding)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((Binding)value).SetParent((ServiceDescription)parent);
	}

	internal BindingCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
