namespace System.EnterpriseServices;

public sealed class ResourcePool
{
	public delegate void TransactionEndDelegate(object resource);

	[MonoTODO]
	public ResourcePool(TransactionEndDelegate cb)
	{
	}

	[MonoTODO]
	public object GetResource()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public bool PutResource(object resource)
	{
		throw new NotImplementedException();
	}
}
