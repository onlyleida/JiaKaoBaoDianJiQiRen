using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ActiveDirectorySchemaPropertyCollection : CollectionBase
{
	public ActiveDirectorySchemaProperty this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public int Add(ActiveDirectorySchemaProperty schemaProperty)
	{
		throw new NotImplementedException();
	}

	public void AddRange(ActiveDirectorySchemaProperty[] properties)
	{
		throw new NotImplementedException();
	}

	public void AddRange(ActiveDirectorySchemaPropertyCollection properties)
	{
		throw new NotImplementedException();
	}

	public void AddRange(ReadOnlyActiveDirectorySchemaPropertyCollection properties)
	{
		throw new NotImplementedException();
	}

	public void Remove(ActiveDirectorySchemaProperty schemaProperty)
	{
		throw new NotImplementedException();
	}

	public void Insert(int index, ActiveDirectorySchemaProperty schemaProperty)
	{
		throw new NotImplementedException();
	}

	public bool Contains(ActiveDirectorySchemaProperty schemaProperty)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ActiveDirectorySchemaProperty[] properties, int index)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ActiveDirectorySchemaProperty schemaProperty)
	{
		throw new NotImplementedException();
	}

	protected override void OnClearComplete()
	{
		throw new NotImplementedException();
	}

	protected override void OnInsertComplete(int index, object value)
	{
		throw new NotImplementedException();
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		throw new NotImplementedException();
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		throw new NotImplementedException();
	}

	protected override void OnValidate(object value)
	{
		throw new NotImplementedException();
	}
}
