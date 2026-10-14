using Unity;

namespace System.Web.Services.Description;

public sealed class OperationCollection : ServiceDescriptionBaseCollection
{
	public Operation this[int index]
	{
		get
		{
			return (Operation)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	internal OperationCollection(PortType portType)
		: base(portType)
	{
	}

	public int Add(Operation operation)
	{
		return List.Add(operation);
	}

	public void Insert(int index, Operation operation)
	{
		List.Insert(index, operation);
	}

	public int IndexOf(Operation operation)
	{
		return List.IndexOf(operation);
	}

	public bool Contains(Operation operation)
	{
		return List.Contains(operation);
	}

	public void Remove(Operation operation)
	{
		List.Remove(operation);
	}

	public void CopyTo(Operation[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override void SetParent(object value, object parent)
	{
		((Operation)value).SetParent((PortType)parent);
	}

	internal OperationCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
