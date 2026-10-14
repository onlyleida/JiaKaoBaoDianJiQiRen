using System.Collections;
using System.Security.Permissions;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public class SoapHeaderCollection : CollectionBase
{
	public SoapHeader this[int index]
	{
		get
		{
			return (SoapHeader)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(SoapHeader header)
	{
		return List.Add(header);
	}

	public void Insert(int index, SoapHeader header)
	{
		List.Insert(index, header);
	}

	public int IndexOf(SoapHeader header)
	{
		return List.IndexOf(header);
	}

	public bool Contains(SoapHeader header)
	{
		return List.Contains(header);
	}

	public void Remove(SoapHeader header)
	{
		List.Remove(header);
	}

	public void CopyTo(SoapHeader[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
