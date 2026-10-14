namespace System.Web.Services.Protocols;

public class HtmlFormParameterReader : ValueCollectionParameterReader
{
	internal const string MimeType = "application/x-www-form-urlencoded";

	public override object[] Read(HttpRequest request)
	{
		if (!ContentType.MatchesBase(request.ContentType, "application/x-www-form-urlencoded"))
		{
			return null;
		}
		return Read(request.Form);
	}
}
