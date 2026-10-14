namespace System.Web.Util;

public enum RequestValidationSource
{
	QueryString,
	Form,
	Cookies,
	Files,
	RawUrl,
	Path,
	PathInfo,
	Headers
}
