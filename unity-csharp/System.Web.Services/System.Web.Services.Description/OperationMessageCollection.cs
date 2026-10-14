using Unity;

namespace System.Web.Services.Description;

public sealed class OperationMessageCollection : ServiceDescriptionBaseCollection
{
	public OperationMessage this[int index]
	{
		get
		{
			return (OperationMessage)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public OperationInput Input
	{
		get
		{
			for (int i = 0; i < List.Count; i++)
			{
				if (List[i] is OperationInput result)
				{
					return result;
				}
			}
			return null;
		}
	}

	public OperationOutput Output
	{
		get
		{
			for (int i = 0; i < List.Count; i++)
			{
				if (List[i] is OperationOutput result)
				{
					return result;
				}
			}
			return null;
		}
	}

	public OperationFlow Flow
	{
		get
		{
			if (List.Count == 0)
			{
				return OperationFlow.None;
			}
			if (List.Count == 1)
			{
				if (List[0] is OperationInput)
				{
					return OperationFlow.OneWay;
				}
				return OperationFlow.Notification;
			}
			if (List[0] is OperationInput)
			{
				return OperationFlow.RequestResponse;
			}
			return OperationFlow.SolicitResponse;
		}
	}

	internal OperationMessageCollection(Operation operation)
		: base(operation)
	{
	}

	public int Add(OperationMessage operationMessage)
	{
		return List.Add(operationMessage);
	}

	public void Insert(int index, OperationMessage operationMessage)
	{
		List.Insert(index, operationMessage);
	}

	public int IndexOf(OperationMessage operationMessage)
	{
		return List.IndexOf(operationMessage);
	}

	public bool Contains(OperationMessage operationMessage)
	{
		return List.Contains(operationMessage);
	}

	public void Remove(OperationMessage operationMessage)
	{
		List.Remove(operationMessage);
	}

	public void CopyTo(OperationMessage[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override void SetParent(object value, object parent)
	{
		((OperationMessage)value).SetParent((Operation)parent);
	}

	protected override void OnInsert(int index, object value)
	{
		if (Count > 1 || (Count == 1 && value.GetType() == List[0].GetType()))
		{
			throw new InvalidOperationException(Res.GetString("WebDescriptionTooManyMessages"));
		}
		base.OnInsert(index, value);
	}

	protected override void OnSet(int index, object oldValue, object newValue)
	{
		if (oldValue.GetType() != newValue.GetType())
		{
			throw new InvalidOperationException(Res.GetString("WebDescriptionTooManyMessages"));
		}
		base.OnSet(index, oldValue, newValue);
	}

	protected override void OnValidate(object value)
	{
		if (!(value is OperationInput) && !(value is OperationOutput))
		{
			throw new ArgumentException(Res.GetString("OnlyOperationInputOrOperationOutputTypes"), "value");
		}
		base.OnValidate(value);
	}

	internal OperationMessageCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
