using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[ComImport]
[Guid("BB1AEEC0-E4EC-47BA-8724-D26AC4F16604")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
internal interface IProcessResumeCallback
{
	void Resume();
}
