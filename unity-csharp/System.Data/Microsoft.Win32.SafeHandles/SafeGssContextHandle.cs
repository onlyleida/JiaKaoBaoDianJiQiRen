using System;
using System.Runtime.InteropServices;

namespace Microsoft.Win32.SafeHandles;

internal sealed class SafeGssContextHandle : SafeHandle
{
	public override bool IsInvalid => handle == IntPtr.Zero;

	public SafeGssContextHandle()
		: base(IntPtr.Zero, ownsHandle: true)
	{
	}

	protected override bool ReleaseHandle()
	{
		Interop.NetSecurityNative.Status status = Interop.NetSecurityNative.DeleteSecContext(out var _, ref handle);
		SetHandle(IntPtr.Zero);
		return status == Interop.NetSecurityNative.Status.GSS_S_COMPLETE;
	}
}
