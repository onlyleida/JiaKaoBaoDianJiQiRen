using System.Collections.Generic;
using System.Globalization;
using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class ProviderMetadata : IDisposable
{
	public string DisplayName
	{
		[SecurityCritical]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IEnumerable<EventMetadata> Events
	{
		[SecurityCritical]
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IEnumerable<EventMetadata>)0;
		}
	}

	public Uri HelpLink
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Guid Id
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public IList<EventKeyword> Keywords
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<EventKeyword>)0;
		}
	}

	public IList<EventLevel> Levels
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<EventLevel>)0;
		}
	}

	public IList<EventLogLink> LogLinks
	{
		[SecurityCritical]
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<EventLogLink>)0;
		}
	}

	public string MessageFilePath
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
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

	public IList<EventOpcode> Opcodes
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<EventOpcode>)0;
		}
	}

	public string ParameterFilePath
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string ResourceFilePath
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IList<EventTask> Tasks
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<EventTask>)0;
		}
	}

	public ProviderMetadata(string providerName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ProviderMetadata(string providerName, EventLogSession session, CultureInfo targetCultureInfo)
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
}
