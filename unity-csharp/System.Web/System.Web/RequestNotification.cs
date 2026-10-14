namespace System.Web;

[Flags]
public enum RequestNotification
{
	BeginRequest = 1,
	AuthenticateRequest = 2,
	AuthorizeRequest = 4,
	ResolveRequestCache = 8,
	MapRequestHandler = 0x10,
	AcquireRequestState = 0x20,
	PreExecuteRequestHandler = 0x40,
	ExecuteRequestHandler = 0x80,
	ReleaseRequestState = 0x100,
	UpdateRequestCache = 0x200,
	LogRequest = 0x400,
	EndRequest = 0x800,
	SendResponse = 0x20000000
}
