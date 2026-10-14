using Unity;

namespace System.Web.Management;

public class WebBaseEvent
{
	private string message;

	private object event_source;

	private int event_code;

	private int event_detail_code;

	public static WebApplicationInformation ApplicationInformation
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public int EventCode => event_code;

	public int EventDetailCode => event_detail_code;

	public Guid EventID
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public long EventSequence
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public object EventSource => event_source;

	public DateTime EventTime
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DateTime EventTimeUtc
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string Message => message;

	public long EventOccurrence
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected WebBaseEvent(string message, object eventSource, int eventCode)
	{
		this.message = message;
		event_source = eventSource;
		event_code = eventCode;
	}

	protected WebBaseEvent(string message, object eventSource, int eventCode, int eventDetailCode)
	{
		this.message = message;
		event_source = eventSource;
		event_code = eventCode;
		event_detail_code = eventDetailCode;
	}

	public virtual void FormatCustomEventDetails(WebEventFormatter formatter)
	{
		throw new NotImplementedException();
	}

	public virtual void Raise()
	{
		throw new NotImplementedException();
	}

	public static void Raise(WebBaseEvent eventRaised)
	{
		throw new NotImplementedException();
	}

	public override string ToString()
	{
		throw new NotImplementedException();
	}

	public virtual string ToString(bool includeAppInfo, bool includeCustomEventDetails)
	{
		throw new NotImplementedException();
	}

	protected internal virtual void IncrementPerfCounters()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
