namespace System.Diagnostics;

internal class FilterElement : TypedElement
{
	public FilterElement()
		: base(typeof(TraceFilter))
	{
	}

	public TraceFilter GetRuntimeObject()
	{
		TraceFilter traceFilter = (TraceFilter)BaseGetRuntimeObject();
		traceFilter.initializeData = InitData;
		return traceFilter;
	}

	internal TraceFilter RefreshRuntimeObject(TraceFilter filter)
	{
		if (Type.GetType(TypeName) != filter.GetType() || InitData != filter.initializeData)
		{
			_runtimeObject = null;
			return GetRuntimeObject();
		}
		return filter;
	}
}
