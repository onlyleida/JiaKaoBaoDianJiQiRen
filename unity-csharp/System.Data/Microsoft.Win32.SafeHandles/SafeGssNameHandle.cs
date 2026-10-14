using System;
using System.Runtime.InteropServices;
using System.Text;

namespace Microsoft.Win32.SafeHandles;

internal sealed class SafeGssNameHandle : SafeHandle
{
	public override bool IsInvalid => handle == IntPtr.Zero;

	public static SafeGssNameHandle CreateUser(string name)
	{
		Interop.NetSecurityNative.Status status = Interop.NetSecurityNative.ImportUserName(out var minorStatus, name, Encoding.UTF8.GetByteCount(name), out var outputName);
		if (status != Interop.NetSecurityNative.Status.GSS_S_COMPLETE)
		{
			outputName.Dispose();
			throw new Interop.NetSecurityNative.GssApiException(status, minorStatus);
		}
		return outputName;
	}

	public static SafeGssNameHandle CreatePrincipal(string name)
	{
		Interop.NetSecurityNative.Status status = Interop.NetSecurityNative.ImportPrincipalName(out var minorStatus, name, Encoding.UTF8.GetByteCount(name), out var outputName);
		if (status != Interop.NetSecurityNative.Status.GSS_S_COMPLETE)
		{
			outputName.Dispose();
			throw new Interop.NetSecurityNative.GssApiException(status, minorStatus);
		}
		return outputName;
	}

	protected override bool ReleaseHandle()
	{
		Interop.NetSecurityNative.Status status = Interop.NetSecurityNative.ReleaseName(out var _, ref handle);
		SetHandle(IntPtr.Zero);
		return status == Interop.NetSecurityNative.Status.GSS_S_COMPLETE;
	}

	private SafeGssNameHandle()
		: base(IntPtr.Zero, ownsHandle: true)
	{
	}
}
