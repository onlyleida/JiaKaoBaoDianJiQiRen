namespace System.EnterpriseServices.CompensatingResourceManager;

public sealed class LogRecord
{
	private LogRecordFlags flags;

	private object record;

	private int sequence;

	public LogRecordFlags Flags => flags;

	public object Record => record;

	public int Sequence => sequence;

	[MonoTODO]
	internal LogRecord()
	{
	}

	[MonoTODO]
	internal LogRecord(_LogRecord logRecord)
	{
		flags = (LogRecordFlags)logRecord.dwCrmFlags;
		sequence = logRecord.dwSequenceNumber;
		record = logRecord.blobUserData;
	}
}
