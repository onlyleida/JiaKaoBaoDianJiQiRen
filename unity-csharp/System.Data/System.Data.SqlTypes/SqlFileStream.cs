using System.IO;
using System.Runtime.InteropServices;
using Unity;

namespace System.Data.SqlTypes;

public sealed class SqlFileStream : Stream
{
	public override bool CanRead
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override bool CanSeek
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override bool CanWrite
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override long Length
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override long Position
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

	public byte[] TransactionContext
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public SqlFileStream(string path, byte[] transactionContext, FileAccess access)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public SqlFileStream(string path, byte[] transactionContext, FileAccess access, FileOptions options, long allocationSize)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void Flush()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override int Read([In][Out] byte[] buffer, int offset, int count)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public override long Seek(long offset, SeekOrigin origin)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public override void SetLength(long value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void Write(byte[] buffer, int offset, int count)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
