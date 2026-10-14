using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Data;

[Serializable]
public sealed class DBConcurrencyException : SystemException
{
	private DataRow[] _dataRows;

	public DataRow Row
	{
		get
		{
			DataRow[] dataRows = _dataRows;
			if (dataRows == null || dataRows.Length == 0)
			{
				return null;
			}
			return dataRows[0];
		}
		set
		{
			_dataRows = new DataRow[1] { value };
		}
	}

	public int RowCount => _dataRows?.Length ?? 0;

	public DBConcurrencyException()
		: this("DB concurrency violation.", null)
	{
	}

	public DBConcurrencyException(string message)
		: this(message, null)
	{
	}

	public DBConcurrencyException(string message, Exception inner)
		: base(message, inner)
	{
		HResult = -2146232011;
	}

	public DBConcurrencyException(string message, Exception inner, DataRow[] dataRows)
		: base(message, inner)
	{
		HResult = -2146232011;
		_dataRows = dataRows;
	}

	[SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.SerializationFormatter)]
	public override void GetObjectData(SerializationInfo si, StreamingContext context)
	{
		base.GetObjectData(si, context);
	}

	public void CopyToRows(DataRow[] array)
	{
		CopyToRows(array, 0);
	}

	public void CopyToRows(DataRow[] array, int arrayIndex)
	{
		_dataRows?.CopyTo(array, arrayIndex);
	}
}
