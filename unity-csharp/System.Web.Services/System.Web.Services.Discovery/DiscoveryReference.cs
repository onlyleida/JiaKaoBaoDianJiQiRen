using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;
using System.Web.Services.Diagnostics;
using System.Xml.Serialization;

namespace System.Web.Services.Discovery;

public abstract class DiscoveryReference
{
	private DiscoveryClientProtocol clientProtocol;

	[XmlIgnore]
	public DiscoveryClientProtocol ClientProtocol
	{
		get
		{
			return clientProtocol;
		}
		set
		{
			clientProtocol = value;
		}
	}

	[XmlIgnore]
	public virtual string DefaultFilename => FilenameFromUrl(Url);

	[XmlIgnore]
	public abstract string Url { get; set; }

	public abstract void WriteDocument(object document, Stream stream);

	public abstract object ReadDocument(Stream stream);

	internal virtual void LoadExternals(Hashtable loadedExternals)
	{
	}

	public static string FilenameFromUrl(string url)
	{
		int num = url.LastIndexOf('/', url.Length - 1);
		if (num >= 0)
		{
			url = url.Substring(num + 1);
		}
		int num2 = url.IndexOf('.');
		if (num2 >= 0)
		{
			url = url.Substring(0, num2);
		}
		int num3 = url.IndexOf('?');
		if (num3 >= 0)
		{
			url = url.Substring(0, num3);
		}
		if (url == null || url.Length == 0)
		{
			return "item";
		}
		return MakeValidFilename(url);
	}

	private static bool FindChar(char ch, char[] chars)
	{
		for (int i = 0; i < chars.Length; i++)
		{
			if (ch == chars[i])
			{
				return true;
			}
		}
		return false;
	}

	internal static string MakeValidFilename(string filename)
	{
		if (filename == null)
		{
			return null;
		}
		StringBuilder stringBuilder = new StringBuilder(filename.Length);
		foreach (char c in filename)
		{
			if (!FindChar(c, Path.InvalidPathChars))
			{
				stringBuilder.Append(c);
			}
		}
		string text = stringBuilder.ToString();
		if (text.Length == 0)
		{
			text = "item";
		}
		return Path.GetFileName(text);
	}

	public void Resolve()
	{
		if (ClientProtocol == null)
		{
			throw new InvalidOperationException(Res.GetString("WebResolveMissingClientProtocol"));
		}
		if (ClientProtocol.Documents[Url] != null || ClientProtocol.InlinedSchemas[Url] != null)
		{
			return;
		}
		string url = Url;
		string url2 = Url;
		string contentType = null;
		Stream stream = ClientProtocol.Download(ref url, ref contentType);
		if (ClientProtocol.Documents[url] != null)
		{
			Url = url;
			return;
		}
		try
		{
			Url = url;
			Resolve(contentType, stream);
		}
		catch
		{
			Url = url2;
			throw;
		}
		finally
		{
			stream.Close();
		}
	}

	internal Exception AttemptResolve(string contentType, Stream stream)
	{
		try
		{
			Resolve(contentType, stream);
			return null;
		}
		catch (Exception ex)
		{
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			if (Tracing.On)
			{
				Tracing.ExceptionCatch(TraceEventType.Warning, this, "AttemptResolve", ex);
			}
			return ex;
		}
	}

	protected internal abstract void Resolve(string contentType, Stream stream);

	internal static string UriToString(string baseUrl, string relUrl)
	{
		return new Uri(new Uri(baseUrl), relUrl).GetComponents(UriComponents.AbsoluteUri, UriFormat.SafeUnescaped);
	}
}
