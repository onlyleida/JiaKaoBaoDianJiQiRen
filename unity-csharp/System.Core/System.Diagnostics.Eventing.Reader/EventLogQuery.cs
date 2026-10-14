using Unity;

namespace System.Diagnostics.Eventing.Reader;

public class EventLogQuery
{
	public bool ReverseDirection
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public EventLogSession Session
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool TolerateQueryErrors
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public EventLogQuery(string path, PathType pathType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogQuery(string path, PathType pathType, string query)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
