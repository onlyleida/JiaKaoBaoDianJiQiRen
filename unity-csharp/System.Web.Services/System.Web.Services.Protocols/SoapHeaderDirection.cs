namespace System.Web.Services.Protocols;

[Flags]
public enum SoapHeaderDirection
{
	In = 1,
	Out = 2,
	InOut = In | Out,
	Fault = 4
}
