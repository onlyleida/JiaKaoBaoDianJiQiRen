using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[ComImport]
[Guid("08A2C56F-7C16-41C1-A8BE-432917A1A2D1")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IISAPIRuntime
{
	void DoGCCollect();

	[return: MarshalAs(UnmanagedType.I4)]
	int ProcessRequest([In] IntPtr ecb, [In][MarshalAs(UnmanagedType.I4)] int useProcessModel);

	void StartProcessing();

	void StopProcessing();
}
