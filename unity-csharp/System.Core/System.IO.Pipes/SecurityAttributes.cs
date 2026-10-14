using System.Runtime.InteropServices;

namespace System.IO.Pipes;

internal struct SecurityAttributes(HandleInheritability inheritability, IntPtr securityDescriptor)
{
	public readonly int Length = Marshal.SizeOf(typeof(SecurityAttributes));

	public readonly IntPtr SecurityDescriptor = securityDescriptor;

	public readonly bool Inheritable = inheritability == HandleInheritability.Inheritable;
}
