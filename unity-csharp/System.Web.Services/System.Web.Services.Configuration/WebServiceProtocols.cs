namespace System.Web.Services.Configuration;

[Flags]
public enum WebServiceProtocols
{
	Unknown = 0,
	HttpSoap = 1,
	HttpGet = 2,
	HttpPost = 4,
	Documentation = 8,
	HttpPostLocalhost = 0x10,
	HttpSoap12 = 0x20,
	AnyHttpSoap = HttpSoap | HttpSoap12
}
