using System.Collections;
using System.Collections.Specialized;
using System.Runtime.CompilerServices;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HttpFileCollectionWrapper : HttpFileCollectionBase
{
	private HttpFileCollection w;

	public override string[] AllKeys => w.AllKeys;

	public override int Count => w.Count;

	public override bool IsSynchronized => ((ICollection)w).IsSynchronized;

	public override HttpPostedFileBase this[int index] => Get(index);

	public override HttpPostedFileBase this[string name] => Get(name);

	public override KeysCollection Keys => w.Keys;

	public override object SyncRoot => ((ICollection)w).SyncRoot;

	public HttpFileCollectionWrapper(HttpFileCollection httpFileCollection)
	{
		if (httpFileCollection == null)
		{
			throw new ArgumentNullException("httpFileCollection");
		}
		w = httpFileCollection;
	}

	public override void CopyTo(Array dest, int index)
	{
		w.CopyTo(dest, index);
	}

	public override HttpPostedFileBase Get(int index)
	{
		HttpPostedFile httpPostedFile = w.Get(index);
		if (httpPostedFile == null)
		{
			return null;
		}
		return new HttpPostedFileWrapper(httpPostedFile);
	}

	public override HttpPostedFileBase Get(string name)
	{
		HttpPostedFile httpPostedFile = w.Get(name);
		if (httpPostedFile == null)
		{
			return null;
		}
		return new HttpPostedFileWrapper(httpPostedFile);
	}

	public override IEnumerator GetEnumerator()
	{
		return w.GetEnumerator();
	}

	public override string GetKey(int index)
	{
		return w.GetKey(index);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		w.GetObjectData(info, context);
	}

	public override void OnDeserialization(object sender)
	{
		w.OnDeserialization(sender);
	}
}
