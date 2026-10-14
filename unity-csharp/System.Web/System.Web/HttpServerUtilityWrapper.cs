using System.Collections.Specialized;
using System.IO;
using System.Runtime.CompilerServices;
using System.Security.Permissions;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HttpServerUtilityWrapper : HttpServerUtilityBase
{
	private HttpServerUtility w;

	public override string MachineName => w.MachineName;

	public override int ScriptTimeout
	{
		get
		{
			return w.ScriptTimeout;
		}
		set
		{
			w.ScriptTimeout = value;
		}
	}

	public HttpServerUtilityWrapper(HttpServerUtility httpServerUtility)
	{
		if (httpServerUtility == null)
		{
			throw new ArgumentNullException("httpServerUtility");
		}
		w = httpServerUtility;
	}

	public override void ClearError()
	{
		w.ClearError();
	}

	public override object CreateObject(string progID)
	{
		return w.CreateObject(progID);
	}

	public override object CreateObject(Type type)
	{
		return w.CreateObject(type);
	}

	public override object CreateObjectFromClsid(string clsid)
	{
		return w.CreateObjectFromClsid(clsid);
	}

	public override void Execute(string path)
	{
		w.Execute(path);
	}

	public override void Execute(string path, bool preserveForm)
	{
		w.Execute(path, preserveForm);
	}

	public override void Execute(string path, TextWriter writer)
	{
		w.Execute(path, writer);
	}

	public override void Execute(string path, TextWriter writer, bool preserveForm)
	{
		w.Execute(path, writer, preserveForm);
	}

	public override void Execute(IHttpHandler handler, TextWriter writer, bool preserveForm)
	{
		w.Execute(handler, writer, preserveForm);
	}

	public override Exception GetLastError()
	{
		return w.GetLastError();
	}

	public override string HtmlDecode(string s)
	{
		return w.HtmlDecode(s);
	}

	public override void HtmlDecode(string s, TextWriter output)
	{
		w.HtmlDecode(s, output);
	}

	public override string HtmlEncode(string s)
	{
		return w.HtmlEncode(s);
	}

	public override void HtmlEncode(string s, TextWriter output)
	{
		w.HtmlEncode(s, output);
	}

	public override string MapPath(string path)
	{
		return w.MapPath(path);
	}

	public override void Transfer(string path)
	{
		w.Transfer(path);
	}

	public override void Transfer(string path, bool preserveForm)
	{
		w.Transfer(path, preserveForm);
	}

	public override void Transfer(IHttpHandler handler, bool preserveForm)
	{
		w.Transfer(handler, preserveForm);
	}

	[MonoTODO]
	public override void TransferRequest(string path)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public override void TransferRequest(string path, bool preserveForm)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public override void TransferRequest(string path, bool preserveForm, string method, NameValueCollection headers)
	{
		throw new NotImplementedException();
	}

	public override string UrlDecode(string s)
	{
		return w.UrlDecode(s);
	}

	public override void UrlDecode(string s, TextWriter output)
	{
		w.UrlDecode(s, output);
	}

	public override string UrlEncode(string s)
	{
		return w.UrlEncode(s);
	}

	public override void UrlEncode(string s, TextWriter output)
	{
		w.UrlEncode(s, output);
	}

	public override string UrlPathEncode(string s)
	{
		return w.UrlPathEncode(s);
	}

	[MonoTODO]
	public override byte[] UrlTokenDecode(string input)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public override string UrlTokenEncode(byte[] input)
	{
		throw new NotImplementedException();
	}
}
