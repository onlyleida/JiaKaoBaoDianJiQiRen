using System.Collections.Generic;
using System.Globalization;
using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogSession : IDisposable
{
	public static EventLogSession GlobalSession
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	[SecurityCritical]
	public EventLogSession()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogSession(string server)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public EventLogSession(string server, string domain, string user, SecureString password, SessionAuthentication logOnType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void CancelCurrentOperations()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ClearLog(string logName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ClearLog(string logName, string backupPath)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	protected virtual void Dispose(bool disposing)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ExportLog(string path, PathType pathType, string query, string targetFilePath)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ExportLog(string path, PathType pathType, string query, string targetFilePath, bool tolerateQueryErrors)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ExportLogAndMessages(string path, PathType pathType, string query, string targetFilePath)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ExportLogAndMessages(string path, PathType pathType, string query, string targetFilePath, bool tolerateQueryErrors, CultureInfo targetCultureInfo)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogInformation GetLogInformation(string logName, PathType pathType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SecurityCritical]
	public IEnumerable<string> GetLogNames()
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<string>)0;
	}

	[SecurityCritical]
	public IEnumerable<string> GetProviderNames()
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<string>)0;
	}
}
