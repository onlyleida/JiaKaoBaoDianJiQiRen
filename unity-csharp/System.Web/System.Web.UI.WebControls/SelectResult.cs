using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls;

public sealed class SelectResult
{
	public IEnumerable Results
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int TotalRowCount
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public SelectResult(int totalRowCount, IEnumerable results)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
