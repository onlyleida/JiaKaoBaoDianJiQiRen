using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using Unity;

namespace System.Web;

[ComVisible(false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class HttpWorkerRequest
{
	public delegate void EndOfSendNotification(HttpWorkerRequest wr, object extraData);

	public const int HeaderCacheControl = 0;

	public const int HeaderConnection = 1;

	public const int HeaderDate = 2;

	public const int HeaderKeepAlive = 3;

	public const int HeaderPragma = 4;

	public const int HeaderTrailer = 5;

	public const int HeaderTransferEncoding = 6;

	public const int HeaderUpgrade = 7;

	public const int HeaderVia = 8;

	public const int HeaderWarning = 9;

	public const int HeaderAllow = 10;

	public const int HeaderContentLength = 11;

	public const int HeaderContentType = 12;

	public const int HeaderContentEncoding = 13;

	public const int HeaderContentLanguage = 14;

	public const int HeaderContentLocation = 15;

	public const int HeaderContentMd5 = 16;

	public const int HeaderContentRange = 17;

	public const int HeaderExpires = 18;

	public const int HeaderLastModified = 19;

	public const int HeaderAccept = 20;

	public const int HeaderAcceptCharset = 21;

	public const int HeaderAcceptEncoding = 22;

	public const int HeaderAcceptLanguage = 23;

	public const int HeaderAuthorization = 24;

	public const int HeaderCookie = 25;

	public const int HeaderExpect = 26;

	public const int HeaderFrom = 27;

	public const int HeaderHost = 28;

	public const int HeaderIfMatch = 29;

	public const int HeaderIfModifiedSince = 30;

	public const int HeaderIfNoneMatch = 31;

	public const int HeaderIfRange = 32;

	public const int HeaderIfUnmodifiedSince = 33;

	public const int HeaderMaxForwards = 34;

	public const int HeaderProxyAuthorization = 35;

	public const int HeaderReferer = 36;

	public const int HeaderRange = 37;

	public const int HeaderTe = 38;

	public const int HeaderUserAgent = 39;

	public const int RequestHeaderMaximum = 40;

	public const int HeaderAcceptRanges = 20;

	public const int HeaderAge = 21;

	public const int HeaderEtag = 22;

	public const int HeaderLocation = 23;

	public const int HeaderProxyAuthenticate = 24;

	public const int HeaderRetryAfter = 25;

	public const int HeaderServer = 26;

	public const int HeaderSetCookie = 27;

	public const int HeaderVary = 28;

	public const int HeaderWwwAuthenticate = 29;

	public const int ResponseHeaderMaximum = 30;

	public const int ReasonResponseCacheMiss = 0;

	public const int ReasonFileHandleCacheMiss = 1;

	public const int ReasonCachePolicy = 2;

	public const int ReasonCacheSecurity = 3;

	public const int ReasonClientDisconnect = 4;

	public const int ReasonDefault = 0;

	private static readonly Dictionary<string, int> RequestHeaderIndexer;

	private static readonly Dictionary<string, int> ResponseHeaderIndexer;

	private bool started_internally;

	internal bool StartedInternally
	{
		get
		{
			return started_internally;
		}
		set
		{
			started_internally = value;
		}
	}

	public virtual string MachineConfigPath => null;

	public virtual string MachineInstallDirectory => null;

	public virtual Guid RequestTraceIdentifier => Guid.Empty;

	public virtual string RootWebConfigPath => null;

	public virtual bool SupportsAsyncFlush
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool SupportsAsyncRead
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	static HttpWorkerRequest()
	{
		RequestHeaderIndexer = new Dictionary<string, int>(StringComparer.OrdinalIgnoreCase);
		for (int i = 0; i < 40; i++)
		{
			RequestHeaderIndexer.Add(GetKnownRequestHeaderName(i), i);
		}
		ResponseHeaderIndexer = new Dictionary<string, int>(StringComparer.OrdinalIgnoreCase);
		for (int j = 0; j < 30; j++)
		{
			ResponseHeaderIndexer.Add(GetKnownResponseHeaderName(j), j);
		}
	}

	public virtual void CloseConnection()
	{
	}

	public virtual string GetAppPath()
	{
		return null;
	}

	public virtual string GetAppPathTranslated()
	{
		return null;
	}

	public virtual string GetAppPoolID()
	{
		return null;
	}

	public virtual long GetBytesRead()
	{
		return 0L;
	}

	public virtual string GetFilePath()
	{
		return null;
	}

	public virtual string GetFilePathTranslated()
	{
		return null;
	}

	public virtual string GetKnownRequestHeader(int index)
	{
		return null;
	}

	public virtual string GetPathInfo()
	{
		return "";
	}

	public virtual byte[] GetPreloadedEntityBody()
	{
		return null;
	}

	public virtual int GetPreloadedEntityBody(byte[] buffer, int offset)
	{
		return 0;
	}

	public virtual int GetPreloadedEntityBodyLength()
	{
		return 0;
	}

	public virtual string GetProtocol()
	{
		if (IsSecure())
		{
			return "https";
		}
		return "http";
	}

	public virtual byte[] GetQueryStringRawBytes()
	{
		return null;
	}

	public virtual string GetRemoteName()
	{
		return GetRemoteAddress();
	}

	public virtual int GetRequestReason()
	{
		return 0;
	}

	public virtual string GetServerName()
	{
		return GetLocalAddress();
	}

	public virtual string GetServerVariable(string name)
	{
		return null;
	}

	public virtual int GetTotalEntityBodyLength()
	{
		return 0;
	}

	public virtual string GetUnknownRequestHeader(string name)
	{
		return null;
	}

	[CLSCompliant(false)]
	public virtual string[][] GetUnknownRequestHeaders()
	{
		return null;
	}

	public virtual IntPtr GetUserToken()
	{
		return IntPtr.Zero;
	}

	public bool HasEntityBody()
	{
		return false;
	}

	public virtual bool HeadersSent()
	{
		return true;
	}

	public virtual bool IsClientConnected()
	{
		return true;
	}

	public virtual bool IsEntireEntityBodyIsPreloaded()
	{
		return false;
	}

	public virtual bool IsSecure()
	{
		return false;
	}

	public virtual string MapPath(string virtualPath)
	{
		return null;
	}

	public virtual int ReadEntityBody(byte[] buffer, int size)
	{
		return 0;
	}

	public virtual int ReadEntityBody(byte[] buffer, int offset, int size)
	{
		byte[] array = new byte[size];
		int num = ReadEntityBody(array, size);
		if (num > 0)
		{
			Array.Copy(array, 0, buffer, offset, num);
		}
		return num;
	}

	public virtual void SendCalculatedContentLength(long contentLength)
	{
		SendCalculatedContentLength((int)contentLength);
	}

	public virtual void SendCalculatedContentLength(int contentLength)
	{
	}

	public virtual void SendResponseFromMemory(IntPtr data, int length)
	{
		if (data != IntPtr.Zero)
		{
			byte[] array = new byte[length];
			Marshal.Copy(data, array, 0, length);
			SendResponseFromMemory(array, length);
		}
	}

	public virtual void SetEndOfSendNotification(EndOfSendNotification callback, object extraData)
	{
	}

	public abstract void EndOfRequest();

	public abstract void FlushResponse(bool finalFlush);

	public abstract string GetHttpVerbName();

	public abstract string GetHttpVersion();

	public abstract string GetLocalAddress();

	public abstract int GetLocalPort();

	public abstract string GetQueryString();

	public abstract string GetRawUrl();

	public abstract string GetRemoteAddress();

	public abstract int GetRemotePort();

	public abstract string GetUriPath();

	public abstract void SendKnownResponseHeader(int index, string value);

	public abstract void SendResponseFromFile(IntPtr handle, long offset, long length);

	public abstract void SendResponseFromFile(string filename, long offset, long length);

	public abstract void SendResponseFromMemory(byte[] data, int length);

	public abstract void SendStatus(int statusCode, string statusDescription);

	public abstract void SendUnknownResponseHeader(string name, string value);

	public static int GetKnownRequestHeaderIndex(string header)
	{
		if (RequestHeaderIndexer.TryGetValue(header, out var value))
		{
			return value;
		}
		return -1;
	}

	public static string GetKnownRequestHeaderName(int index)
	{
		return index switch
		{
			0 => "Cache-Control", 
			1 => "Connection", 
			2 => "Date", 
			3 => "Keep-Alive", 
			4 => "Pragma", 
			5 => "Trailer", 
			6 => "Transfer-Encoding", 
			7 => "Upgrade", 
			8 => "Via", 
			9 => "Warning", 
			10 => "Allow", 
			11 => "Content-Length", 
			12 => "Content-Type", 
			13 => "Content-Encoding", 
			14 => "Content-Language", 
			15 => "Content-Location", 
			16 => "Content-MD5", 
			17 => "Content-Range", 
			18 => "Expires", 
			19 => "Last-Modified", 
			20 => "Accept", 
			21 => "Accept-Charset", 
			22 => "Accept-Encoding", 
			23 => "Accept-Language", 
			24 => "Authorization", 
			25 => "Cookie", 
			26 => "Expect", 
			27 => "From", 
			28 => "Host", 
			29 => "If-Match", 
			30 => "If-Modified-Since", 
			31 => "If-None-Match", 
			32 => "If-Range", 
			33 => "If-Unmodified-Since", 
			34 => "Max-Forwards", 
			35 => "Proxy-Authorization", 
			36 => "Referer", 
			37 => "Range", 
			38 => "TE", 
			39 => "User-Agent", 
			_ => throw new IndexOutOfRangeException("index"), 
		};
	}

	public static int GetKnownResponseHeaderIndex(string header)
	{
		if (ResponseHeaderIndexer.TryGetValue(header, out var value))
		{
			return value;
		}
		return -1;
	}

	public static string GetKnownResponseHeaderName(int index)
	{
		return index switch
		{
			0 => "Cache-Control", 
			1 => "Connection", 
			2 => "Date", 
			3 => "Keep-Alive", 
			4 => "Pragma", 
			5 => "Trailer", 
			6 => "Transfer-Encoding", 
			7 => "Upgrade", 
			8 => "Via", 
			9 => "Warning", 
			10 => "Allow", 
			11 => "Content-Length", 
			12 => "Content-Type", 
			13 => "Content-Encoding", 
			14 => "Content-Language", 
			15 => "Content-Location", 
			16 => "Content-MD5", 
			17 => "Content-Range", 
			18 => "Expires", 
			19 => "Last-Modified", 
			20 => "Accept-Ranges", 
			21 => "Age", 
			22 => "ETag", 
			23 => "Location", 
			24 => "Proxy-Authenticate", 
			25 => "Retry-After", 
			26 => "Server", 
			27 => "Set-Cookie", 
			28 => "Vary", 
			29 => "WWW-Authenticate", 
			_ => throw new IndexOutOfRangeException("index"), 
		};
	}

	public static string GetStatusDescription(int code)
	{
		return code switch
		{
			100 => "Continue", 
			101 => "Switching Protocols", 
			102 => "Processing", 
			200 => "OK", 
			201 => "Created", 
			202 => "Accepted", 
			203 => "Non-Authoritative Information", 
			204 => "No Content", 
			205 => "Reset Content", 
			206 => "Partial Content", 
			207 => "Multi-Status", 
			300 => "Multiple Choices", 
			301 => "Moved Permanently", 
			302 => "Found", 
			303 => "See Other", 
			304 => "Not Modified", 
			305 => "Use Proxy", 
			307 => "Temporary Redirect", 
			400 => "Bad Request", 
			401 => "Unauthorized", 
			402 => "Payment Required", 
			403 => "Forbidden", 
			404 => "Not Found", 
			405 => "Method Not Allowed", 
			406 => "Not Acceptable", 
			407 => "Proxy Authentication Required", 
			408 => "Request Timeout", 
			409 => "Conflict", 
			410 => "Gone", 
			411 => "Length Required", 
			412 => "Precondition Failed", 
			413 => "Request Entity Too Large", 
			414 => "Request-Uri Too Long", 
			415 => "Unsupported Media Type", 
			416 => "Requested Range Not Satisfiable", 
			417 => "Expectation Failed", 
			422 => "Unprocessable Entity", 
			423 => "Locked", 
			424 => "Failed Dependency", 
			500 => "Internal Server Error", 
			501 => "Not Implemented", 
			502 => "Bad Gateway", 
			503 => "Service Unavailable", 
			504 => "Gateway Timeout", 
			505 => "Http Version Not Supported", 
			507 => "Insufficient Storage", 
			_ => "", 
		};
	}

	public virtual byte[] GetClientCertificate()
	{
		return new byte[0];
	}

	public virtual byte[] GetClientCertificateBinaryIssuer()
	{
		return new byte[0];
	}

	public virtual int GetClientCertificateEncoding()
	{
		return 0;
	}

	public virtual byte[] GetClientCertificatePublicKey()
	{
		return new byte[0];
	}

	public virtual DateTime GetClientCertificateValidFrom()
	{
		return DateTime.Now;
	}

	public virtual DateTime GetClientCertificateValidUntil()
	{
		return DateTime.Now;
	}

	public virtual long GetConnectionID()
	{
		return 0L;
	}

	public virtual long GetUrlContextID()
	{
		return 0L;
	}

	public virtual IntPtr GetVirtualPathToken()
	{
		return IntPtr.Zero;
	}

	public virtual IAsyncResult BeginFlush(AsyncCallback callback, object state)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual IAsyncResult BeginRead(byte[] buffer, int offset, int count, AsyncCallback callback, object state)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual void EndFlush(IAsyncResult asyncResult)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual int EndRead(IAsyncResult asyncResult)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
