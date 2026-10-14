using System;
using System.Runtime.InteropServices;
using System.Text;

namespace Microsoft.Win32.SafeHandles;

internal class SafeGssCredHandle : SafeHandle
{
	public override bool IsInvalid => handle == IntPtr.Zero;

	public static SafeGssCredHandle Create(string username, string password, bool isNtlmOnly)
	{
		if (string.IsNullOrEmpty(username))
		{
			return new SafeGssCredHandle();
		}
		SafeGssCredHandle outputCredHandle = null;
		using SafeGssNameHandle desiredName = SafeGssNameHandle.CreateUser(username);
		Interop.NetSecurityNative.Status status = ((!string.IsNullOrEmpty(password)) ? Interop.NetSecurityNative.InitiateCredWithPassword(out var minorStatus, isNtlmOnly, desiredName, password, Encoding.UTF8.GetByteCount(password), out outputCredHandle) : Interop.NetSecurityNative.InitiateCredSpNego(out minorStatus, desiredName, out outputCredHandle));
		if (status != Interop.NetSecurityNative.Status.GSS_S_COMPLETE)
		{
			outputCredHandle.Dispose();
			throw new Interop.NetSecurityNative.GssApiException(status, minorStatus);
		}
		return outputCredHandle;
	}

	private SafeGssCredHandle()
		: base(IntPtr.Zero, ownsHandle: true)
	{
	}

	protected override bool ReleaseHandle()
	{
		Interop.NetSecurityNative.Status status = Interop.NetSecurityNative.ReleaseCred(out var _, ref handle);
		SetHandle(IntPtr.Zero);
		return status == Interop.NetSecurityNative.Status.GSS_S_COMPLETE;
	}
}
