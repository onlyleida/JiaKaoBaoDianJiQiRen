using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Threading;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpWriter : TextWriter
{
	private const long MAX_TOTAL_BUFFERS_SIZE = 4194304L;

	private const uint SINGLE_BUFFER_SIZE = 131072u;

	private const uint MIN_SINGLE_BUFFER_SIZE = 32768u;

	private HttpResponseStream output_stream;

	private HttpResponse response;

	private Encoding encoding;

	[ThreadStatic]
	private static byte[] _bytebuffer;

	private static readonly uint byteBufferSize;

	private char[] chars;

	private static char[] newline;

	public override Encoding Encoding => encoding;

	public Stream OutputStream => output_stream;

	internal HttpResponse Response => response;

	static HttpWriter()
	{
		newline = new char[2] { '\r', '\n' };
		ThreadPool.GetMinThreads(out var workerThreads, out var _);
		workerThreads *= 3;
		uint val = (uint)(4194304L / (long)workerThreads);
		byteBufferSize = Math.Min(131072u, val);
		if (byteBufferSize < 32768)
		{
			byteBufferSize = 32768u;
		}
	}

	internal HttpWriter(HttpResponse response)
	{
		chars = new char[1];
		base._002Ector();
		this.response = response;
		encoding = response.ContentEncoding;
		output_stream = response.output_stream;
	}

	private byte[] GetByteBuffer(int length)
	{
		if (_bytebuffer == null)
		{
			_bytebuffer = new byte[byteBufferSize];
		}
		if (byteBufferSize >= length)
		{
			return _bytebuffer;
		}
		return new byte[length];
	}

	internal void SetEncoding(Encoding new_encoding)
	{
		encoding = new_encoding;
	}

	public override void Close()
	{
		output_stream.Close();
	}

	public override void Flush()
	{
		output_stream.Flush();
	}

	public override void Write(char ch)
	{
		chars[0] = ch;
		Write(chars, 0, 1);
	}

	public override void Write(object obj)
	{
		if (obj != null)
		{
			Write(obj.ToString());
		}
	}

	public override void Write(string s)
	{
		if (s != null)
		{
			WriteString(s, 0, s.Length);
		}
	}

	public override void Write(char[] buffer, int index, int count)
	{
		if (buffer == null || index < 0 || count < 0 || buffer.Length - index < count)
		{
			throw new ArgumentOutOfRangeException();
		}
		int maxByteCount = encoding.GetMaxByteCount(count);
		byte[] byteBuffer = GetByteBuffer(maxByteCount);
		int bytes = encoding.GetBytes(buffer, index, count, byteBuffer, 0);
		output_stream.Write(byteBuffer, 0, bytes);
		if (!response.buffer)
		{
			response.Flush();
		}
	}

	public override void WriteLine()
	{
		Write(newline, 0, 2);
	}

	public void WriteString(string s, int index, int count)
	{
		if (s != null)
		{
			if (index < 0 || count < 0 || index + count > s.Length)
			{
				throw new ArgumentOutOfRangeException();
			}
			int maxByteCount = encoding.GetMaxByteCount(count);
			byte[] byteBuffer = GetByteBuffer(maxByteCount);
			int bytes = encoding.GetBytes(s, index, count, byteBuffer, 0);
			output_stream.Write(byteBuffer, 0, bytes);
			if (!response.buffer)
			{
				response.Flush();
			}
		}
	}

	internal void WriteUTF8Ptr(IntPtr ptr, int length)
	{
		output_stream.WritePtr(ptr, length);
	}

	public void WriteBytes(byte[] buffer, int index, int count)
	{
		output_stream.Write(buffer, index, count);
		if (!response.buffer)
		{
			response.Flush();
		}
	}

	internal HttpWriter()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
