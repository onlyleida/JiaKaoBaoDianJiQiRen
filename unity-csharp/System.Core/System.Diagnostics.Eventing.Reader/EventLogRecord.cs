using System.Collections.Generic;
using System.Security;
using System.Security.Permissions;
using System.Security.Principal;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogRecord : EventRecord
{
	public override Guid? ActivityId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override EventBookmark Bookmark
	{
		[SecuritySafeCritical]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string ContainerLog
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override int Id
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override long? Keywords
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override IEnumerable<string> KeywordsDisplayNames
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IEnumerable<string>)0;
		}
	}

	public override byte? Level
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string LevelDisplayName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string LogName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string MachineName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IEnumerable<int> MatchedQueryIds
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IEnumerable<int>)0;
		}
	}

	public override short? Opcode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string OpcodeDisplayName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override int? ProcessId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override IList<EventProperty> Properties
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<EventProperty>)0;
		}
	}

	public override Guid? ProviderId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string ProviderName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override int? Qualifiers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override long? RecordId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override Guid? RelatedActivityId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override int? Task
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string TaskDisplayName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override int? ThreadId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override DateTime? TimeCreated
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override SecurityIdentifier UserId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override byte? Version
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal EventLogRecord()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	protected override void Dispose(bool disposing)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override string FormatDescription()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override string FormatDescription(IEnumerable<object> values)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public IList<object> GetPropertyValues(EventLogPropertySelector propertySelector)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IList<object>)0;
	}

	[SecuritySafeCritical]
	public override string ToXml()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
