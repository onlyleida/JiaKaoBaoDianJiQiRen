using Unity;

namespace System.Windows.Forms;

public static class ImeContext
{
	public static void Disable(IntPtr handle)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void Enable(IntPtr handle)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static ImeMode GetImeMode(IntPtr handle)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static bool IsOpen(IntPtr handle)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static void SetImeStatus(ImeMode imeMode, IntPtr handle)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void SetOpenStatus(bool open, IntPtr handle)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
