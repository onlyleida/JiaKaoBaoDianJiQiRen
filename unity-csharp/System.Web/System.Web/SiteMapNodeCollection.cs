using System.Collections;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System.Web;

public class SiteMapNodeCollection : IList, ICollection, IEnumerable, IHierarchicalEnumerable
{
	private ArrayList list;

	internal static SiteMapNodeCollection EmptyList;

	internal static SiteMapNodeCollection EmptyCollection => EmptyList;

	private ArrayList List
	{
		get
		{
			if (list == null)
			{
				list = new ArrayList();
			}
			return list;
		}
	}

	public virtual int Count
	{
		get
		{
			if (list != null)
			{
				return list.Count;
			}
			return 0;
		}
	}

	public virtual bool IsSynchronized => false;

	public virtual object SyncRoot => this;

	public virtual SiteMapNode this[int index]
	{
		get
		{
			return (SiteMapNode)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public virtual bool IsFixedSize => List.IsFixedSize;

	public virtual bool IsReadOnly
	{
		get
		{
			if (list != null)
			{
				return list.IsReadOnly;
			}
			return false;
		}
	}

	object IList.this[int index]
	{
		get
		{
			return List[index];
		}
		set
		{
			OnValidate(value);
			List[index] = value;
		}
	}

	bool IList.IsFixedSize => IsFixedSize;

	bool IList.IsReadOnly => IsReadOnly;

	int ICollection.Count => Count;

	bool ICollection.IsSynchronized => IsSynchronized;

	object ICollection.SyncRoot => SyncRoot;

	static SiteMapNodeCollection()
	{
		EmptyList = new SiteMapNodeCollection();
		EmptyList.list = ArrayList.ReadOnly(new ArrayList());
	}

	public SiteMapNodeCollection()
	{
	}

	public SiteMapNodeCollection(int capacity)
	{
		list = new ArrayList(capacity);
	}

	public SiteMapNodeCollection(SiteMapNode value)
	{
		Add(value);
	}

	public SiteMapNodeCollection(SiteMapNode[] value)
	{
		AddRangeInternal(value);
	}

	public SiteMapNodeCollection(SiteMapNodeCollection value)
	{
		AddRangeInternal(value);
	}

	public virtual IEnumerator GetEnumerator()
	{
		if (list == null)
		{
			return Type.EmptyTypes.GetEnumerator();
		}
		return list.GetEnumerator();
	}

	public virtual void Clear()
	{
		if (list != null)
		{
			list.Clear();
		}
	}

	public virtual void RemoveAt(int index)
	{
		List.RemoveAt(index);
	}

	public virtual int Add(SiteMapNode value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		return List.Add(value);
	}

	public virtual void AddRange(SiteMapNode[] value)
	{
		AddRangeInternal(value);
	}

	public virtual void AddRange(SiteMapNodeCollection value)
	{
		AddRangeInternal(value);
	}

	internal virtual void AddRangeInternal(IList value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		List.AddRange(value);
	}

	public virtual bool Contains(SiteMapNode value)
	{
		return List.Contains(value);
	}

	public virtual void CopyTo(SiteMapNode[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public virtual int IndexOf(SiteMapNode value)
	{
		return List.IndexOf(value);
	}

	public virtual void Insert(int index, SiteMapNode value)
	{
		List.Insert(index, value);
	}

	protected virtual void OnValidate(object value)
	{
		if (!(value is SiteMapNode))
		{
			throw new ArgumentException("Invalid type");
		}
	}

	public static SiteMapNodeCollection ReadOnly(SiteMapNodeCollection collection)
	{
		SiteMapNodeCollection siteMapNodeCollection = new SiteMapNodeCollection();
		if (collection.list != null)
		{
			siteMapNodeCollection.list = ArrayList.ReadOnly(collection.list);
		}
		else
		{
			siteMapNodeCollection.list = ArrayList.ReadOnly(new ArrayList());
		}
		return siteMapNodeCollection;
	}

	public virtual void Remove(SiteMapNode value)
	{
		List.Remove(value);
	}

	public virtual IHierarchyData GetHierarchyData(object enumeratedItem)
	{
		return enumeratedItem as IHierarchyData;
	}

	public SiteMapDataSourceView GetDataSourceView(SiteMapDataSource owner, string viewName)
	{
		return new SiteMapDataSourceView(owner, viewName, this);
	}

	public SiteMapHierarchicalDataSourceView GetHierarchicalDataSourceView()
	{
		return new SiteMapHierarchicalDataSourceView(this);
	}

	int IList.Add(object value)
	{
		OnValidate(value);
		return List.Add(value);
	}

	bool IList.Contains(object value)
	{
		return List.Contains(value);
	}

	int IList.IndexOf(object value)
	{
		return List.IndexOf(value);
	}

	void IList.Insert(int index, object value)
	{
		OnValidate(value);
		List.Insert(index, value);
	}

	void IList.Remove(object value)
	{
		OnValidate(value);
		List.Remove(value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		List.CopyTo(array, index);
	}

	void IList.Clear()
	{
		Clear();
	}

	void IList.RemoveAt(int index)
	{
		RemoveAt(index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	IHierarchyData IHierarchicalEnumerable.GetHierarchyData(object enumeratedItem)
	{
		return GetHierarchyData(enumeratedItem);
	}
}
