using System.IO;
using System.Runtime.InteropServices;
using System.Security;
using System.Security.Permissions;
using System.Text;
using System.Web.Configuration;
using System.Web.Util;

namespace System.Web.Hosting;

[ComVisible(false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class SimpleWorkerRequest : HttpWorkerRequest
{
	private string page;

	private string query;

	private string app_virtual_dir;

	private string app_physical_dir;

	private string path_info;

	private TextWriter output;

	private bool hosted;

	private string raw_url;

	public override string MachineConfigPath
	{
		get
		{
			if (hosted)
			{
				string machineConfigPath = ICalls.GetMachineConfigPath();
				if (SecurityManager.SecurityEnabled && machineConfigPath != null && machineConfigPath.Length > 0)
				{
					new FileIOPermission(FileIOPermissionAccess.PathDiscovery, machineConfigPath).Demand();
				}
				return machineConfigPath;
			}
			return null;
		}
	}

	public override string MachineInstallDirectory
	{
		get
		{
			if (hosted)
			{
				string machineInstallDirectory = ICalls.GetMachineInstallDirectory();
				if (SecurityManager.SecurityEnabled && machineInstallDirectory != null && machineInstallDirectory.Length > 0)
				{
					new FileIOPermission(FileIOPermissionAccess.PathDiscovery, machineInstallDirectory).Demand();
				}
				return machineInstallDirectory;
			}
			return null;
		}
	}

	public override string RootWebConfigPath => WebConfigurationManager.OpenWebConfiguration("~").FilePath;

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public SimpleWorkerRequest(string page, string query, TextWriter output)
	{
		this.page = page;
		this.query = query;
		this.output = output;
		app_virtual_dir = HttpRuntime.AppDomainAppVirtualPath;
		app_physical_dir = HttpRuntime.AppDomainAppPath;
		hosted = true;
		InitializePaths();
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public SimpleWorkerRequest(string appVirtualDir, string appPhysicalDir, string page, string query, TextWriter output)
	{
		this.page = page;
		this.query = query;
		this.output = output;
		app_virtual_dir = appVirtualDir;
		app_physical_dir = appPhysicalDir;
		InitializePaths();
	}

	private void InitializePaths()
	{
		int num = page.IndexOf('/');
		if (num >= 0)
		{
			path_info = page.Substring(num);
			page = page.Substring(0, num);
		}
		else
		{
			path_info = "";
		}
	}

	public override void EndOfRequest()
	{
	}

	public override void FlushResponse(bool finalFlush)
	{
	}

	public override string GetAppPath()
	{
		return app_virtual_dir;
	}

	public override string GetAppPathTranslated()
	{
		if (SecurityManager.SecurityEnabled && app_physical_dir != null && app_physical_dir.Length > 0)
		{
			new FileIOPermission(FileIOPermissionAccess.PathDiscovery, app_physical_dir).Demand();
		}
		return app_physical_dir;
	}

	public override string GetFilePath()
	{
		string text = UrlUtils.Combine(app_virtual_dir, page);
		if (text == "")
		{
			if (!(app_virtual_dir == "/"))
			{
				return app_virtual_dir + "/";
			}
			return app_virtual_dir;
		}
		return text;
	}

	public override string GetFilePathTranslated()
	{
		string text = Path.Combine(path2: (Path.DirectorySeparatorChar != '\\') ? page : page.Replace('/', '\\'), path1: app_physical_dir);
		if (SecurityManager.SecurityEnabled && text != null && text.Length > 0)
		{
			new FileIOPermission(FileIOPermissionAccess.PathDiscovery, text).Demand();
		}
		return text;
	}

	public override string GetHttpVerbName()
	{
		return "GET";
	}

	public override string GetHttpVersion()
	{
		return "HTTP/1.0";
	}

	public override string GetLocalAddress()
	{
		return "127.0.0.1";
	}

	public override int GetLocalPort()
	{
		return 80;
	}

	public override string GetPathInfo()
	{
		return path_info;
	}

	public override string GetQueryString()
	{
		return query;
	}

	public override string GetRawUrl()
	{
		if (raw_url == null)
		{
			string text = ((query == null || query == "") ? "" : ("?" + query));
			raw_url = UrlUtils.Combine(app_virtual_dir, page);
			if (path_info != "")
			{
				raw_url = raw_url + "/" + path_info + text;
			}
			else
			{
				raw_url += text;
			}
		}
		return raw_url;
	}

	public override string GetRemoteAddress()
	{
		return "127.0.0.1";
	}

	public override int GetRemotePort()
	{
		return 0;
	}

	public override string GetServerVariable(string name)
	{
		return "";
	}

	public override string GetUriPath()
	{
		if (app_virtual_dir == "/")
		{
			return app_virtual_dir + page + path_info;
		}
		return app_virtual_dir + "/" + page + path_info;
	}

	public override IntPtr GetUserToken()
	{
		return IntPtr.Zero;
	}

	public override string MapPath(string path)
	{
		if (!hosted)
		{
			return null;
		}
		if (path != null && path.Length == 0)
		{
			return app_physical_dir;
		}
		if (!path.StartsWith(app_virtual_dir))
		{
			throw new ArgumentNullException("path is not rooted in the virtual directory");
		}
		string text = path.Substring(app_virtual_dir.Length);
		if (text.Length > 0 && text[0] == '/')
		{
			text = text.Substring(1);
		}
		if (Path.DirectorySeparatorChar != '/')
		{
			text = text.Replace('/', Path.DirectorySeparatorChar);
		}
		return Path.Combine(app_physical_dir, text);
	}

	public override void SendKnownResponseHeader(int index, string value)
	{
	}

	public override void SendResponseFromFile(IntPtr handle, long offset, long length)
	{
	}

	public override void SendResponseFromFile(string filename, long offset, long length)
	{
	}

	public override void SendResponseFromMemory(byte[] data, int length)
	{
		output.Write(Encoding.Default.GetChars(data, 0, length));
	}

	public override void SendStatus(int statusCode, string statusDescription)
	{
	}

	public override void SendUnknownResponseHeader(string name, string value)
	{
	}
}
