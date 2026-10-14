namespace System.Web.UI.Design;

public class XmlUrlEditor : UrlEditor
{
	protected override string Caption => "Select XML File";

	protected override string Filter => "XML Files(*.xml)|*.xml|All Files(*.*)|*.*|";

	protected override UrlBuilderOptions Options => UrlBuilderOptions.NoAbsolute;
}
