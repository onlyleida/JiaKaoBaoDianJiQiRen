using System.Collections.Specialized;

namespace System.Web;

public class UnvalidatedRequestValuesWrapper : UnvalidatedRequestValuesBase
{
	private readonly UnvalidatedRequestValues _requestValues;

	public override NameValueCollection Form => _requestValues.Form;

	public override NameValueCollection QueryString => _requestValues.QueryString;

	public override NameValueCollection Headers => _requestValues.Headers;

	public override HttpCookieCollection Cookies => _requestValues.Cookies;

	public override HttpFileCollectionBase Files => new HttpFileCollectionWrapper(_requestValues.Files);

	public override string RawUrl => _requestValues.RawUrl;

	public override string Path => _requestValues.Path;

	public override string PathInfo => _requestValues.PathInfo;

	public override string this[string field] => _requestValues[field];

	public override Uri Url => _requestValues.Url;

	public UnvalidatedRequestValuesWrapper(UnvalidatedRequestValues requestValues)
	{
		if (requestValues == null)
		{
			throw new ArgumentNullException("requestValues");
		}
		_requestValues = requestValues;
	}
}
