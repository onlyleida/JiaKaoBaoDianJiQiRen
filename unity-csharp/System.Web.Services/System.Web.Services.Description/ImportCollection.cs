using Unity;

namespace System.Web.Services.Description;

public sealed class ImportCollection : ServiceDescriptionBaseCollection
{
	public Import this[int index]
	{
		get
		{
			return (Import)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	internal ImportCollection(ServiceDescription serviceDescription)
		: base(serviceDescription)
	{
	}

	public int Add(Import import)
	{
		return List.Add(import);
	}

	public void Insert(int index, Import import)
	{
		List.Insert(index, import);
	}

	public int IndexOf(Import import)
	{
		return List.IndexOf(import);
	}

	public bool Contains(Import import)
	{
		return List.Contains(import);
	}

	public void Remove(Import import)
	{
		List.Remove(import);
	}

	public void CopyTo(Import[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override void SetParent(object value, object parent)
	{
		((Import)value).SetParent((ServiceDescription)parent);
	}

	internal ImportCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
