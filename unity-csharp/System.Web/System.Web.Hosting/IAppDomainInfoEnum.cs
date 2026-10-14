using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[Guid("F79648FB-558B-4a09-88F1-1E3BCB30E34F")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IAppDomainInfoEnum
{
	[return: MarshalAs(UnmanagedType.I4)]
	int Count();

	[return: MarshalAs(UnmanagedType.Interface)]
	IAppDomainInfo GetData();

	[return: MarshalAs(UnmanagedType.Bool)]
	bool MoveNext();

	void Reset();
}
