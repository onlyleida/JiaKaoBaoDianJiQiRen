using System.Collections;

namespace System.DirectoryServices;

public class SearchResultCollection : MarshalByRefObject, ICollection, IEnumerable, IDisposable
{
	private ArrayList sValues = new ArrayList();

	public int Count => sValues.Count;

	bool ICollection.IsSynchronized => sValues.IsSynchronized;

	object ICollection.SyncRoot => sValues.SyncRoot;

	public SearchResult this[int index] => (SearchResult)sValues[index];

	public string[] PropertiesLoaded
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	public IntPtr Handle
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	internal SearchResultCollection()
	{
	}

	void ICollection.CopyTo(Array oArray, int iArrayIndex)
	{
		sValues.CopyTo(oArray, iArrayIndex);
	}

	public void CopyTo(SearchResult[] results, int index)
	{
		((ICollection)this).CopyTo((Array)results, index);
	}

	internal void Add(object oValue)
	{
		sValues.Add(oValue);
	}

	private bool Contains(object oValues)
	{
		return sValues.Contains(oValues);
	}

	public bool Contains(SearchResult result)
	{
		return sValues.Contains(result);
	}

	public int IndexOf(SearchResult result)
	{
		return sValues.IndexOf(result);
	}

	public IEnumerator GetEnumerator()
	{
		return sValues.GetEnumerator();
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	[MonoTODO]
	protected virtual void Dispose(bool disposing)
	{
	}

	~SearchResultCollection()
	{
		Dispose(disposing: false);
	}
}
