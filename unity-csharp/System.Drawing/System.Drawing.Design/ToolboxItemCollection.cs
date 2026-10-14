using System.Collections;
using System.Security.Permissions;

namespace System.Drawing.Design;

[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public sealed class ToolboxItemCollection : ReadOnlyCollectionBase
{
	public ToolboxItem this[int index] => (ToolboxItem)InnerList[index];

	public ToolboxItemCollection(ToolboxItemCollection value)
	{
		InnerList.AddRange(value);
	}

	public ToolboxItemCollection(ToolboxItem[] value)
	{
		InnerList.AddRange(value);
	}

	public bool Contains(ToolboxItem value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(ToolboxItem[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}

	public int IndexOf(ToolboxItem value)
	{
		return InnerList.IndexOf(value);
	}
}
