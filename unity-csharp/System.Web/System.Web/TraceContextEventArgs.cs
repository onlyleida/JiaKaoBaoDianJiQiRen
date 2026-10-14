using System.Collections;

namespace System.Web;

public sealed class TraceContextEventArgs : EventArgs
{
	private ICollection _records;

	public ICollection TraceRecords => _records;

	public TraceContextEventArgs(ICollection records)
	{
		_records = records;
	}
}
