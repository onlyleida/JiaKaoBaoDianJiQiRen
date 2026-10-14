using Unity;

namespace System.Web.Services.Description;

public sealed class OperationBindingCollection : ServiceDescriptionBaseCollection
{
	public OperationBinding this[int index]
	{
		get
		{
			return (OperationBinding)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	internal OperationBindingCollection(Binding binding)
		: base(binding)
	{
	}

	public int Add(OperationBinding bindingOperation)
	{
		return List.Add(bindingOperation);
	}

	public void Insert(int index, OperationBinding bindingOperation)
	{
		List.Insert(index, bindingOperation);
	}

	public int IndexOf(OperationBinding bindingOperation)
	{
		return List.IndexOf(bindingOperation);
	}

	public bool Contains(OperationBinding bindingOperation)
	{
		return List.Contains(bindingOperation);
	}

	public void Remove(OperationBinding bindingOperation)
	{
		List.Remove(bindingOperation);
	}

	public void CopyTo(OperationBinding[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override void SetParent(object value, object parent)
	{
		((OperationBinding)value).SetParent((Binding)parent);
	}

	internal OperationBindingCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
