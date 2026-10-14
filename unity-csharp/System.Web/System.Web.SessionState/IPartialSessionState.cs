using System.Collections.Generic;

namespace System.Web.SessionState;

public interface IPartialSessionState
{
	IList<string> PartialSessionStateKeys { get; }
}
