namespace System.Web.Configuration;

[Flags]
public enum AsyncPreloadModeFlags
{
	None = 0,
	Form = 1,
	FormMultiPart = 2,
	NonForm = 4,
	AllFormTypes = Form | FormMultiPart,
	All = AllFormTypes | NonForm
}
