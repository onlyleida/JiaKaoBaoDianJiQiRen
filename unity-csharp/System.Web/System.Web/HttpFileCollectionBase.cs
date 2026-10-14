using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Runtime.CompilerServices;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public abstract class HttpFileCollectionBase : NameObjectCollectionBase, ICollection, IEnumerable
{
	public virtual string[] AllKeys
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override int Count
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public virtual bool IsSynchronized
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public virtual object SyncRoot
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public virtual HttpPostedFileBase this[string name]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public virtual HttpPostedFileBase this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public virtual void CopyTo(Array dest, int index)
	{
		throw new NotImplementedException();
	}

	public virtual HttpPostedFileBase Get(int index)
	{
		throw new NotImplementedException();
	}

	public virtual HttpPostedFileBase Get(string name)
	{
		throw new NotImplementedException();
	}

	public virtual IList<HttpPostedFileBase> GetMultiple(string name)
	{
		throw new NotImplementedException();
	}

	public override IEnumerator GetEnumerator()
	{
		throw new NotImplementedException();
	}

	public virtual string GetKey(int index)
	{
		throw new NotImplementedException();
	}
}
