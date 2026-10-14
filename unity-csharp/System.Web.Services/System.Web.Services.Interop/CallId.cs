using System.Runtime.InteropServices;

namespace System.Web.Services.Interop;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
internal struct CallId(string machine, int pid, IntPtr userThread, long stackPtr, string entryPoint, string destMachine)
{
	public string szMachine = machine;

	public int dwPid = pid;

	public IntPtr userThread = userThread;

	public long addStackPointer = stackPtr;

	public string szEntryPoint = entryPoint;

	public string szDestinationMachine = destMachine;
}
