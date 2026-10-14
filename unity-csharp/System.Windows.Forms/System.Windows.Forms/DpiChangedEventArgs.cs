using System.ComponentModel;
using System.Drawing;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Windows.Forms;

public sealed class DpiChangedEventArgs : CancelEventArgs
{
	public int DeviceDpiNew
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int DeviceDpiOld
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public Rectangle SuggestedRectangle
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal DpiChangedEventArgs()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
