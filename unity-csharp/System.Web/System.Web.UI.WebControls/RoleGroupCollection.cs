using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Security.Principal;

namespace System.Web.UI.WebControls;

[Editor("System.Web.UI.Design.WebControls.RoleGroupCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class RoleGroupCollection : CollectionBase
{
	public RoleGroup this[int index] => (RoleGroup)List[index];

	public void Add(RoleGroup group)
	{
		List.Add(group);
	}

	public bool Contains(RoleGroup group)
	{
		return List.Contains(group);
	}

	public void CopyTo(RoleGroup[] array, int index)
	{
		if (array == null)
		{
			throw new ArgumentNullException("array");
		}
		if (index < 0)
		{
			throw new ArgumentException(Locale.GetText("Negative index."), "index");
		}
		if (Count <= array.Length - index)
		{
			throw new ArgumentException(Locale.GetText("Destination isn't large enough to copy collection."), "array");
		}
		for (int i = 0; i < Count; i++)
		{
			array[i + index] = this[i];
		}
	}

	public RoleGroup GetMatchingRoleGroup(IPrincipal user)
	{
		if (user == null)
		{
			throw new ArgumentNullException("user");
		}
		if (Count > 0)
		{
			{
				IEnumerator enumerator = GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						RoleGroup roleGroup = (RoleGroup)enumerator.Current;
						if (roleGroup.ContainsUser(user))
						{
							return roleGroup;
						}
					}
				}
				finally
				{
					IDisposable disposable = enumerator as IDisposable;
					if (disposable != null)
					{
						disposable.Dispose();
					}
				}
			}
		}
		return null;
	}

	public int IndexOf(RoleGroup group)
	{
		return List.IndexOf(group);
	}

	public void Insert(int index, RoleGroup group)
	{
		List.Insert(index, group);
	}

	protected override void OnValidate(object value)
	{
		base.OnValidate(value);
	}

	public void Remove(RoleGroup group)
	{
		if (group != null && Contains(group))
		{
			List.Remove(group);
		}
	}
}
