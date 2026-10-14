using System.Collections;
using System.Runtime.InteropServices;
using System.Security.Permissions;

namespace System.ComponentModel;

[ComVisible(true)]
[HostProtection(SecurityAction.LinkDemand, Synchronization = true)]
public class ComponentCollection : ReadOnlyCollectionBase
{
	public virtual IComponent this[string name]
	{
		get
		{
			if (name != null)
			{
				foreach (IComponent item in (IEnumerable)InnerList)
				{
					if (item != null && item.Site != null && item.Site.Name != null && string.Equals(item.Site.Name, name, StringComparison.OrdinalIgnoreCase))
					{
						return item;
					}
				}
			}
			return null;
		}
	}

	public virtual IComponent this[int index] => (IComponent)InnerList[index];

	public ComponentCollection(IComponent[] components)
	{
		InnerList.AddRange(components);
	}

	public void CopyTo(IComponent[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}
}
