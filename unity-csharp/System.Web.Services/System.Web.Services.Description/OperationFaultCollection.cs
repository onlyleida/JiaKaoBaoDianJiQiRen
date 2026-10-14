using Unity;

namespace System.Web.Services.Description;

public sealed class OperationFaultCollection : ServiceDescriptionBaseCollection
{
	public OperationFault this[int index]
	{
		get
		{
			return (OperationFault)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public OperationFault this[string name] => (OperationFault)Table[name];

	internal OperationFaultCollection(Operation operation)
		: base(operation)
	{
	}

	public int Add(OperationFault operationFaultMessage)
	{
		return List.Add(operationFaultMessage);
	}

	public void Insert(int index, OperationFault operationFaultMessage)
	{
		List.Insert(index, operationFaultMessage);
	}

	public int IndexOf(OperationFault operationFaultMessage)
	{
		return List.IndexOf(operationFaultMessage);
	}

	public bool Contains(OperationFault operationFaultMessage)
	{
		return List.Contains(operationFaultMessage);
	}

	public void Remove(OperationFault operationFaultMessage)
	{
		List.Remove(operationFaultMessage);
	}

	public void CopyTo(OperationFault[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		return ((OperationFault)value).Name;
	}

	protected override void SetParent(object value, object parent)
	{
		((OperationFault)value).SetParent((Operation)parent);
	}

	internal OperationFaultCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
