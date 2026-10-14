using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.UI;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class TraceContext
{
	private static readonly object traceFinishedEvent = new object();

	private HttpContext _Context;

	private TraceManager _traceManager;

	private bool _Enabled;

	private TraceMode _Mode = TraceMode.Default;

	private TraceData data;

	private bool data_saved;

	private bool _haveTrace;

	private Hashtable view_states;

	private Hashtable control_states;

	private Hashtable sizes;

	private EventHandlerList events = new EventHandlerList();

	internal bool HaveTrace => _haveTrace;

	public bool IsEnabled
	{
		get
		{
			if (!_haveTrace)
			{
				return TraceManager.Enabled;
			}
			return _Enabled;
		}
		set
		{
			if (value && data == null)
			{
				data = new TraceData();
			}
			_haveTrace = true;
			_Enabled = value;
		}
	}

	private TraceManager TraceManager
	{
		get
		{
			if (_traceManager == null)
			{
				_traceManager = HttpRuntime.TraceManager;
			}
			return _traceManager;
		}
	}

	public TraceMode TraceMode
	{
		get
		{
			if (_Mode != TraceMode.Default)
			{
				return _Mode;
			}
			return TraceManager.TraceMode;
		}
		set
		{
			_Mode = value;
		}
	}

	public event TraceContextEventHandler TraceFinished
	{
		add
		{
			events.AddHandler(traceFinishedEvent, value);
		}
		remove
		{
			events.AddHandler(traceFinishedEvent, value);
		}
	}

	public TraceContext(HttpContext context)
	{
		_Context = context;
	}

	public void Warn(string message)
	{
		Write(string.Empty, message, null, Warning: true);
	}

	public void Warn(string category, string message)
	{
		Write(category, message, null, Warning: true);
	}

	public void Warn(string category, string message, Exception errorInfo)
	{
		Write(category, message, errorInfo, Warning: true);
	}

	public void Write(string message)
	{
		Write(string.Empty, message, null, Warning: false);
	}

	public void Write(string category, string message)
	{
		Write(category, message, null, Warning: false);
	}

	public void Write(string category, string message, Exception errorInfo)
	{
		Write(category, message, errorInfo, Warning: false);
	}

	private void Write(string category, string msg, Exception error, bool Warning)
	{
		if (IsEnabled)
		{
			if (data == null)
			{
				data = new TraceData();
			}
			data.Write(category, msg, error, Warning);
		}
	}

	internal void SaveData()
	{
		if (data == null)
		{
			data = new TraceData();
		}
		data.TraceMode = _Context.Trace.TraceMode;
		SetRequestDetails();
		if (_Context.Handler is Page)
		{
			data.AddControlTree((Page)_Context.Handler, view_states, control_states, sizes);
		}
		AddCookies();
		AddHeaders();
		AddServerVars();
		TraceManager.AddTraceData(data);
		data_saved = true;
	}

	internal void SaveViewState(Control ctrl, object vs)
	{
		if (view_states == null)
		{
			view_states = new Hashtable();
		}
		view_states[ctrl] = vs;
	}

	internal void SaveControlState(Control ctrl, object vs)
	{
		if (control_states == null)
		{
			control_states = new Hashtable();
		}
		control_states[ctrl] = vs;
	}

	internal void SaveSize(Control ctrl, int size)
	{
		if (sizes == null)
		{
			sizes = new Hashtable();
		}
		sizes[ctrl] = size;
	}

	internal void Render(HtmlTextWriter output)
	{
		if (!data_saved)
		{
			SaveData();
		}
		data.Render(output);
	}

	private void SetRequestDetails()
	{
		data.RequestPath = _Context.Request.FilePath;
		data.SessionID = ((_Context.Session != null) ? _Context.Session.SessionID : string.Empty);
		data.RequestType = _Context.Request.RequestType;
		data.RequestTime = _Context.Timestamp;
		data.StatusCode = _Context.Response.StatusCode;
		data.RequestEncoding = _Context.Request.ContentEncoding;
		data.ResponseEncoding = _Context.Response.ContentEncoding;
	}

	private void AddCookies()
	{
		foreach (string key in _Context.Request.Cookies.Keys)
		{
			data.AddCookie(key, _Context.Request.Cookies[key].Value);
		}
	}

	private void AddHeaders()
	{
		foreach (string key in _Context.Request.Headers.Keys)
		{
			data.AddHeader(key, _Context.Request.Headers[key]);
		}
	}

	private void AddServerVars()
	{
		foreach (string serverVariable in _Context.Request.ServerVariables)
		{
			data.AddServerVar(serverVariable, _Context.Request.ServerVariables[serverVariable]);
		}
	}
}
