using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class PagedDataSource : ICollection, IEnumerable, ITypedList
{
	private int page_size;

	private int current_page_index;

	private int virtual_count;

	private bool allow_paging;

	private bool allow_custom_paging;

	private IEnumerable source;

	private bool allow_server_paging;

	public bool AllowCustomPaging
	{
		get
		{
			return allow_custom_paging;
		}
		set
		{
			allow_custom_paging = value;
			if (allow_custom_paging)
			{
				allow_server_paging = false;
			}
		}
	}

	public bool AllowPaging
	{
		get
		{
			return allow_paging;
		}
		set
		{
			allow_paging = value;
		}
	}

	public int Count
	{
		get
		{
			if (source == null)
			{
				return 0;
			}
			if (IsPagingEnabled)
			{
				if (IsCustomPagingEnabled || !IsLastPage)
				{
					return page_size;
				}
				return DataSourceCount - FirstIndexInPage;
			}
			return DataSourceCount;
		}
	}

	public int CurrentPageIndex
	{
		get
		{
			return current_page_index;
		}
		set
		{
			current_page_index = value;
		}
	}

	public IEnumerable DataSource
	{
		get
		{
			return source;
		}
		set
		{
			source = value;
		}
	}

	public int DataSourceCount
	{
		get
		{
			if (source == null)
			{
				return 0;
			}
			if (IsCustomPagingEnabled || IsServerPagingEnabled)
			{
				return virtual_count;
			}
			if (source is ICollection)
			{
				return ((ICollection)source).Count;
			}
			throw new HttpException("The data source must implement ICollection");
		}
	}

	public int FirstIndexInPage
	{
		get
		{
			if (!IsPagingEnabled || IsCustomPagingEnabled || IsServerPagingEnabled || source == null)
			{
				return 0;
			}
			return current_page_index * page_size;
		}
	}

	public bool IsCustomPagingEnabled
	{
		get
		{
			if (IsPagingEnabled)
			{
				return allow_custom_paging;
			}
			return false;
		}
	}

	public bool IsServerPagingEnabled
	{
		get
		{
			if (IsPagingEnabled)
			{
				return allow_server_paging;
			}
			return false;
		}
	}

	public bool IsFirstPage
	{
		get
		{
			if (!allow_paging)
			{
				return true;
			}
			return current_page_index == 0;
		}
	}

	public bool IsLastPage
	{
		get
		{
			if (!allow_paging || page_size == 0)
			{
				return true;
			}
			return current_page_index == PageCount - 1;
		}
	}

	public bool IsPagingEnabled
	{
		get
		{
			if (allow_paging)
			{
				return page_size != 0;
			}
			return false;
		}
	}

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public int PageCount
	{
		get
		{
			if (source == null)
			{
				return 0;
			}
			if (!IsPagingEnabled || DataSourceCount == 0 || page_size == 0)
			{
				return 1;
			}
			return (DataSourceCount + page_size - 1) / page_size;
		}
	}

	public int PageSize
	{
		get
		{
			return page_size;
		}
		set
		{
			page_size = value;
		}
	}

	public object SyncRoot => this;

	public int VirtualCount
	{
		get
		{
			return virtual_count;
		}
		set
		{
			virtual_count = value;
		}
	}

	public bool AllowServerPaging
	{
		get
		{
			return allow_server_paging;
		}
		set
		{
			allow_server_paging = value;
			if (allow_server_paging)
			{
				allow_custom_paging = false;
			}
		}
	}

	public PagedDataSource()
	{
		page_size = 10;
	}

	public void CopyTo(Array array, int index)
	{
		foreach (object item in source)
		{
			array.SetValue(item, index++);
		}
	}

	public IEnumerator GetEnumerator()
	{
		IList list = source as IList;
		int num = 0;
		if (list != null)
		{
			num = FirstIndexInPage;
			int count = ((ICollection)source).Count;
			int num2 = ((num + page_size > count) ? (count - num) : page_size);
			return GetListEnum(list, num, num + num2);
		}
		if (source is ICollection collection)
		{
			num = FirstIndexInPage;
			int count = collection.Count;
			int num2 = ((num + page_size > count) ? (count - num) : page_size);
			return GetEnumeratorEnum(collection.GetEnumerator(), num, num + page_size);
		}
		return source.GetEnumerator();
	}

	public PropertyDescriptorCollection GetItemProperties(PropertyDescriptor[] listAccessors)
	{
		if (!(source is ITypedList typedList))
		{
			return null;
		}
		return typedList.GetItemProperties(listAccessors);
	}

	public string GetListName(PropertyDescriptor[] listAccessors)
	{
		return string.Empty;
	}

	private IEnumerator GetListEnum(IList list, int start, int end)
	{
		if (!AllowPaging)
		{
			end = list.Count;
		}
		else if (start >= list.Count)
		{
			yield break;
		}
		for (int i = start; i < end; i++)
		{
			yield return list[i];
		}
	}

	private IEnumerator GetEnumeratorEnum(IEnumerator e, int start, int end)
	{
		for (int i = 0; i < start; i++)
		{
			e.MoveNext();
		}
		for (int j = start; !allow_paging || j < end; j++)
		{
			if (!e.MoveNext())
			{
				break;
			}
			yield return e.Current;
		}
	}
}
