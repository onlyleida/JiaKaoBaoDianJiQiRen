namespace System.Web.Configuration;

public class RegexWorker
{
	[MonoTODO("Mono does not currently need this routine. Not implemented.")]
	public string this[string key]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public RegexWorker(HttpBrowserCapabilities browserCaps)
	{
	}

	[MonoTODO("Mono does not currently need this routine.  Always returns false.")]
	public bool ProcessRegex(string target, string regexExpression)
	{
		return false;
	}
}
