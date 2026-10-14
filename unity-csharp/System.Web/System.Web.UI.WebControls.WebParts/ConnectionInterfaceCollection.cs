using System.Collections;

namespace System.Web.UI.WebControls.WebParts;

public sealed class ConnectionInterfaceCollection : ReadOnlyCollectionBase
{
	public static readonly ConnectionInterfaceCollection Empty = new ConnectionInterfaceCollection();

	public Type this[int index] => (Type)InnerList[index];

	public ConnectionInterfaceCollection()
	{
	}

	public ConnectionInterfaceCollection(ICollection connectionInterfaces)
	{
		InnerList.AddRange(connectionInterfaces);
	}

	public ConnectionInterfaceCollection(ConnectionInterfaceCollection existingConnectionInterfaces, ICollection connectionInterfaces)
		: this()
	{
		InnerList.AddRange(existingConnectionInterfaces);
		InnerList.AddRange(connectionInterfaces);
	}

	public bool Contains(Type value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(Type[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}

	public int IndexOf(Type value)
	{
		return InnerList.IndexOf(value);
	}
}
