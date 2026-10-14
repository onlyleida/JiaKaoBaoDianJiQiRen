using System.Collections.Specialized;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.Configuration;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.Util;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpServerUtility
{
	private HttpContext context;

	public string MachineName
	{
		[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Medium)]
		[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
		[EnvironmentPermission(SecurityAction.Assert, Read = "COMPUTERNAME")]
		get
		{
			return Environment.MachineName;
		}
	}

	public int ScriptTimeout
	{
		get
		{
			return (int)context.ConfigTimeout.TotalSeconds;
		}
		[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Medium)]
		set
		{
			context.ConfigTimeout = TimeSpan.FromSeconds(value);
		}
	}

	internal HttpServerUtility(HttpContext context)
	{
		this.context = context;
	}

	public void ClearError()
	{
		context.ClearError();
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public object CreateObject(string progID)
	{
		throw new HttpException(500, "COM is not supported");
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public object CreateObject(Type type)
	{
		throw new HttpException(500, "COM is not supported");
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public object CreateObjectFromClsid(string clsid)
	{
		throw new HttpException(500, "COM is not supported");
	}

	public void Execute(string path)
	{
		Execute(path, null, preserveForm: true);
	}

	public void Execute(string path, TextWriter writer)
	{
		Execute(path, writer, preserveForm: true);
	}

	public void Execute(string path, bool preserveForm)
	{
		Execute(path, null, preserveForm);
	}

	public void Execute(string path, TextWriter writer, bool preserveForm)
	{
		Execute(path, writer, preserveForm, isTransfer: false);
	}

	private void Execute(string path, TextWriter writer, bool preserveForm, bool isTransfer)
	{
		if (path == null)
		{
			throw new ArgumentNullException("path");
		}
		if (path.IndexOf(':') != -1)
		{
			throw new ArgumentException("Invalid path.");
		}
		string queryString = null;
		int num = path.IndexOf('?');
		if (num != -1)
		{
			queryString = path.Substring(num + 1);
			path = path.Substring(0, num);
		}
		string text = UrlUtils.Combine(context.Request.BaseVirtualDir, path);
		SessionStateSection config = WebConfigurationManager.GetWebApplicationSection("system.web/sessionState") as SessionStateSection;
		if (SessionStateModule.IsCookieLess(context, config))
		{
			text = UrlUtils.RemoveSessionId(VirtualPathUtility.GetDirectory(text), text);
		}
		IHttpHandler handler = context.ApplicationInstance.GetHandler(context, text, ignoreContextHandler: true);
		Execute(handler, writer, preserveForm, text, queryString, isTransfer, isInclude: true);
	}

	internal void Execute(IHttpHandler handler, TextWriter writer, bool preserveForm, string exePath, string queryString, bool isTransfer, bool isInclude)
	{
		bool flag = handler is StaticFileHandler;
		if (isTransfer && !(handler is Page) && !flag)
		{
			throw new HttpException("Transfer is only allowed to .aspx and static files");
		}
		HttpRequest request = context.Request;
		string queryStringRaw = request.QueryStringRaw;
		if (queryString != null)
		{
			request.QueryStringRaw = queryString;
		}
		else if (!preserveForm)
		{
			request.QueryStringRaw = string.Empty;
		}
		HttpResponse response = context.Response;
		WebROCollection form = request.Form as WebROCollection;
		if (!preserveForm)
		{
			request.SetForm(new WebROCollection());
		}
		TextWriter textWriter = writer;
		if (textWriter == null)
		{
			textWriter = response.Output;
		}
		TextWriter textWriter2 = response.SetTextWriter(textWriter);
		string currentExecutionFilePath = request.CurrentExecutionFilePath;
		bool isProcessingInclude = context.IsProcessingInclude;
		try
		{
			context.PushHandler(handler);
			if (flag)
			{
				request.SetFilePath(exePath);
			}
			request.SetCurrentExePath(exePath);
			context.IsProcessingInclude = isInclude;
			if (!(handler is IHttpAsyncHandler))
			{
				handler.ProcessRequest(context);
				return;
			}
			IHttpAsyncHandler httpAsyncHandler = (IHttpAsyncHandler)handler;
			IAsyncResult asyncResult = httpAsyncHandler.BeginProcessRequest(context, null, null);
			(asyncResult?.AsyncWaitHandle)?.WaitOne();
			httpAsyncHandler.EndProcessRequest(asyncResult);
		}
		finally
		{
			if (queryStringRaw != request.QueryStringRaw)
			{
				if (queryStringRaw != null && queryStringRaw.Length > 0)
				{
					queryStringRaw = queryStringRaw.Substring(1);
					request.QueryStringRaw = queryStringRaw;
				}
				else
				{
					request.QueryStringRaw = string.Empty;
				}
			}
			response.SetTextWriter(textWriter2);
			if (!preserveForm)
			{
				request.SetForm(form);
			}
			context.PopHandler();
			request.SetCurrentExePath(currentExecutionFilePath);
			context.IsProcessingInclude = isProcessingInclude;
		}
	}

	public Exception GetLastError()
	{
		if (context == null)
		{
			return HttpContext.Current.Error;
		}
		return context.Error;
	}

	public string HtmlDecode(string s)
	{
		return HttpUtility.HtmlDecode(s);
	}

	public void HtmlDecode(string s, TextWriter output)
	{
		HttpUtility.HtmlDecode(s, output);
	}

	public string HtmlEncode(string s)
	{
		return HttpUtility.HtmlEncode(s);
	}

	public void HtmlEncode(string s, TextWriter output)
	{
		HttpUtility.HtmlEncode(s, output);
	}

	public string MapPath(string path)
	{
		return context.Request.MapPath(path);
	}

	public void TransferRequest(string path)
	{
		TransferRequest(path, preserveForm: false, null, null);
	}

	public void TransferRequest(string path, bool preserveForm)
	{
		TransferRequest(path, preserveForm, null, null);
	}

	[MonoTODO("Always throws PlatformNotSupportedException.")]
	public void TransferRequest(string path, bool preserveForm, string method, NameValueCollection headers)
	{
		throw new PlatformNotSupportedException();
	}

	public void Transfer(string path)
	{
		Transfer(path, preserveForm: true);
	}

	public void Transfer(string path, bool preserveForm)
	{
		Execute(path, null, preserveForm, isTransfer: true);
		context.Response.End();
	}

	public void Transfer(IHttpHandler handler, bool preserveForm)
	{
		if (handler == null)
		{
			throw new ArgumentNullException("handler");
		}
		Execute(handler, null, preserveForm, context.Request.CurrentExecutionFilePath, null, isTransfer: true, isInclude: true);
		context.Response.End();
	}

	public void Execute(IHttpHandler handler, TextWriter writer, bool preserveForm)
	{
		if (handler == null)
		{
			throw new ArgumentNullException("handler");
		}
		Execute(handler, writer, preserveForm, context.Request.CurrentExecutionFilePath, null, isTransfer: false, isInclude: true);
	}

	public static byte[] UrlTokenDecode(string input)
	{
		if (input == null)
		{
			throw new ArgumentNullException("input");
		}
		if (input.Length < 1)
		{
			return new byte[0];
		}
		byte[] bytes = Encoding.ASCII.GetBytes(input);
		int num = input.Length - 1;
		int num2 = bytes[num] - 48;
		char[] array = new char[num + num2];
		int i;
		for (i = 0; i < num; i++)
		{
			switch ((char)bytes[i])
			{
			case '-':
				array[i] = '+';
				break;
			case '_':
				array[i] = '/';
				break;
			default:
				array[i] = (char)bytes[i];
				break;
			}
		}
		while (num2 > 0)
		{
			array[i++] = '=';
			num2--;
		}
		return Convert.FromBase64CharArray(array, 0, array.Length);
	}

	public static string UrlTokenEncode(byte[] input)
	{
		if (input == null)
		{
			throw new ArgumentNullException("input");
		}
		if (input.Length < 1)
		{
			return string.Empty;
		}
		string text = Convert.ToBase64String(input);
		int num;
		if (text == null || (num = text.Length) == 0)
		{
			return string.Empty;
		}
		int num2 = 48;
		while (num > 0 && text[num - 1] == '=')
		{
			num2++;
			num--;
		}
		char[] array = new char[num + 1];
		array[num] = (char)num2;
		for (int i = 0; i < num; i++)
		{
			switch (text[i])
			{
			case '+':
				array[i] = '-';
				break;
			case '/':
				array[i] = '_';
				break;
			default:
				array[i] = text[i];
				break;
			}
		}
		return new string(array);
	}

	public string UrlDecode(string s)
	{
		HttpRequest request = context.Request;
		if (request != null)
		{
			return HttpUtility.UrlDecode(s, request.ContentEncoding);
		}
		return HttpUtility.UrlDecode(s);
	}

	public void UrlDecode(string s, TextWriter output)
	{
		if (s != null)
		{
			output.Write(UrlDecode(s));
		}
	}

	public string UrlEncode(string s)
	{
		HttpResponse response = context.Response;
		if (response != null)
		{
			return HttpUtility.UrlEncode(s, response.ContentEncoding);
		}
		return HttpUtility.UrlEncode(s);
	}

	public void UrlEncode(string s, TextWriter output)
	{
		if (s != null)
		{
			output.Write(UrlEncode(s));
		}
	}

	public string UrlPathEncode(string s)
	{
		if (s == null)
		{
			return null;
		}
		int num = s.IndexOf('?');
		string text = null;
		if (num != -1)
		{
			text = s.Substring(0, num);
			return HttpUtility.UrlEncode(text) + s.Substring(num);
		}
		return HttpUtility.UrlEncode(s);
	}

	internal HttpServerUtility()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void TransferRequest(string path, bool preserveForm, string method, NameValueCollection headers, bool preserveUser)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
