using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[ComImport]
[Guid("f11dc4c9-ddd1-4566-ad53-cf6f3a28fefe")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IProcessPingCallback
{
	void Respond();
}
