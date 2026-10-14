using System.Collections.Generic;
using System.IO;
using Unity;

namespace System.Web.UI;

public abstract class RenderTraceListener
{
	public static IList<Func<RenderTraceListener>> ListenerFactories
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<Func<RenderTraceListener>>)0;
		}
	}

	protected RenderTraceListener()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void BeginRendering(TextWriter writer, object renderedObject)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void EndRendering(TextWriter writer, object renderedObject)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void Initialize(HttpContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void SetTraceData(object tracedObject, object traceDataKey, object traceDataValue)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void ShareTraceData(object source, object destination)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
