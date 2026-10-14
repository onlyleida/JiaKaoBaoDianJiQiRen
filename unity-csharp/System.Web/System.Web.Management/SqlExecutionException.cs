using System.Data.SqlClient;
using Unity;

namespace System.Web.Management;

[Serializable]
public sealed class SqlExecutionException : SystemException
{
	public string Commands
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string Database
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public SqlException Exception
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string Server
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string SqlFile
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public SqlExecutionException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public SqlExecutionException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public SqlExecutionException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public SqlExecutionException(string message, string server, string database, string sqlFile, string commands, SqlException sqlException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
