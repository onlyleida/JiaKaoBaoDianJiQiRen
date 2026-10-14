namespace System.Diagnostics;

public static class StackFrameExtensions
{
	[MonoTODO]
	public static IntPtr GetNativeImageBase(this StackFrame stackFrame)
	{
		if (stackFrame == null)
		{
			throw new ArgumentNullException("stackFrame");
		}
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static IntPtr GetNativeIP(this StackFrame stackFrame)
	{
		if (stackFrame == null)
		{
			throw new ArgumentNullException("stackFrame");
		}
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static bool HasNativeImage(this StackFrame stackFrame)
	{
		if (stackFrame == null)
		{
			throw new ArgumentNullException("stackFrame");
		}
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static bool HasMethod(this StackFrame stackFrame)
	{
		if (stackFrame == null)
		{
			throw new ArgumentNullException("stackFrame");
		}
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static bool HasILOffset(this StackFrame stackFrame)
	{
		if (stackFrame == null)
		{
			throw new ArgumentNullException("stackFrame");
		}
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static bool HasSource(this StackFrame stackFrame)
	{
		if (stackFrame == null)
		{
			throw new ArgumentNullException("stackFrame");
		}
		throw new NotImplementedException();
	}
}
