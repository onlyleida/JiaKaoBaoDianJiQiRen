using System.Runtime.InteropServices;

namespace System.Buffers;

public unsafe struct MemoryHandle(IRetainable retainable, void* pinnedPointer = null, GCHandle handle = default(GCHandle)) : IDisposable
{
	private IRetainable _retainable = retainable;

	private unsafe void* _pointer = pinnedPointer;

	private GCHandle _handle = handle;

	public unsafe void* PinnedPointer => _pointer;

	internal unsafe void AddOffset(int offset)
	{
		if (_pointer == null)
		{
			ThrowHelper.ThrowArgumentNullException(ExceptionArgument.pointer);
		}
		else
		{
			_pointer = (byte*)_pointer + offset;
		}
	}

	public unsafe void Dispose()
	{
		if (_handle.IsAllocated)
		{
			_handle.Free();
		}
		if (_retainable != null)
		{
			_retainable.Release();
			_retainable = null;
		}
		_pointer = null;
	}
}
