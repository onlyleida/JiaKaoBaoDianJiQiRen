using System.Collections.Specialized;
using System.Security.Permissions;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpModuleCollection : NameObjectCollectionBase
{
	public IHttpModule this[string name] => Get(name);

	public IHttpModule this[int index] => Get(index);

	public string[] AllKeys => BaseGetAllKeys();

	internal HttpModuleCollection()
	{
	}

	internal void AddModule(string key, IHttpModule m)
	{
		BaseAdd(key, m);
	}

	public void CopyTo(Array dest, int index)
	{
		BaseGetAllValues().CopyTo(dest, index);
	}

	public string GetKey(int index)
	{
		return BaseGetKey(index);
	}

	public IHttpModule Get(int index)
	{
		return (IHttpModule)BaseGet(index);
	}

	public IHttpModule Get(string name)
	{
		return (IHttpModule)BaseGet(name);
	}
}
