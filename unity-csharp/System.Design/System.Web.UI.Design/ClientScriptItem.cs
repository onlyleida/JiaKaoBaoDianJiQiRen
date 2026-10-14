namespace System.Web.UI.Design;

public sealed class ClientScriptItem
{
	private string text;

	private string source;

	private string language;

	private string type;

	private string id;

	public string Id => id;

	public string Language => language;

	public string Source => source;

	public string Text => text;

	public string Type => type;

	public ClientScriptItem(string text, string source, string language, string type, string id)
	{
		this.text = text;
		this.source = source;
		this.language = language;
		this.type = type;
		this.id = id;
	}
}
