using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Editor("System.ComponentModel.Design.CollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
public sealed class ProxyWebPartConnectionCollection : CollectionBase
{
	public bool IsReadOnly
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public WebPartConnection this[string id]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ProxyWebPartConnectionCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public WebPartConnection get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public int Add(WebPartConnection value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool Contains(WebPartConnection value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(WebPartConnection[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(WebPartConnection value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void Insert(int index, WebPartConnection value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Remove(WebPartConnection value)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
