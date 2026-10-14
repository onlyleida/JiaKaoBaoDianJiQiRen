using System;

namespace Mono.Net;

internal struct CFRange(int loc, int len)
{
	public IntPtr Location = (IntPtr)loc;

	public IntPtr Length = (IntPtr)len;
}
