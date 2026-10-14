namespace System.Web.Services.Protocols;

public class UrlParameterReader : ValueCollectionParameterReader
{
	public override object[] Read(HttpRequest request)
	{
		return Read(request.QueryString);
	}
}
