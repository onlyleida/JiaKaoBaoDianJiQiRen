using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.Instrumentation;

public sealed class PageInstrumentationService
{
	public IList<PageExecutionListener> ExecutionListeners
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<PageExecutionListener>)0;
		}
	}

	public static bool IsEnabled
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public PageInstrumentationService()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
