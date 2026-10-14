using System.Collections.Generic;
using System.Collections.Specialized;
using System.Security.Permissions;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpFileCollection : NameObjectCollectionBase
{
	public HttpPostedFile this[string name] => Get(name);

	public HttpPostedFile this[int index] => Get(index);

	public string[] AllKeys => BaseGetAllKeys();

	internal HttpFileCollection()
	{
	}

	internal void AddFile(string name, HttpPostedFile file)
	{
		BaseAdd(name, file);
	}

	public void CopyTo(Array dest, int index)
	{
		BaseGetAllValues().CopyTo(dest, index);
	}

	public string GetKey(int index)
	{
		return BaseGetKey(index);
	}

	public HttpPostedFile Get(int index)
	{
		return (HttpPostedFile)BaseGet(index);
	}

	public HttpPostedFile Get(string name)
	{
		return (HttpPostedFile)BaseGet(name);
	}

	public IList<HttpPostedFile> GetMultiple(string name)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IList<HttpPostedFile>)0;
	}
}
