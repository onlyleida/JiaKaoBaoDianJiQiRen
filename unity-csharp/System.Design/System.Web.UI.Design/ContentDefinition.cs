namespace System.Web.UI.Design;

public class ContentDefinition
{
	private string id;

	private string content;

	private string html;

	public string ContentPlaceHolderID => id;

	public string DefaultContent => content;

	public string DefaultDesignTimeHtml => html;

	public ContentDefinition(string id, string content, string designTimeHtml)
	{
		this.id = id;
		this.content = content;
		html = designTimeHtml;
	}
}
