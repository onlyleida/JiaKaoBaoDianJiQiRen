using Unity;

namespace System.Web.Services.Description;

public sealed class FaultBindingCollection : ServiceDescriptionBaseCollection
{
	public FaultBinding this[int index]
	{
		get
		{
			return (FaultBinding)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public FaultBinding this[string name] => (FaultBinding)Table[name];

	internal FaultBindingCollection(OperationBinding operationBinding)
		: base(operationBinding)
	{
	}

	public int Add(FaultBinding bindingOperationFault)
	{
		return List.Add(bindingOperationFault);
	}

	public void Insert(int index, FaultBinding bindingOperationFault)
	{
		List.Insert(index, bindingOperationFault);
	}

	public int IndexOf(FaultBinding bindingOperationFault)
	{
		return List.IndexOf(bindingOperationFault);
	}

	public bool Contains(FaultBinding bindingOperationFault)
	{
		return List.Contains(bindingOperationFault);
	}

	public void Remove(FaultBinding bindingOperationFault)
	{
		List.Remove(bindingOperationFault);
	}

	public void CopyTo(FaultBinding[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((FaultBinding)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((FaultBinding)value).SetParent((OperationBinding)parent);
	}

	internal FaultBindingCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
