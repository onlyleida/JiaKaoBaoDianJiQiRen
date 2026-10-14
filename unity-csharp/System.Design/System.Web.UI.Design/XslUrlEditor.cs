namespace System.Web.UI.Design;

public class XslUrlEditor : UrlEditor
{
	protected override string Caption => "Select XSL Transform File";

	protected override string Filter => "XSL Files(*.xsl;*.xslt)|*.xsl;*.xslt|All Files(*.*)|*.*|";

	protected override UrlBuilderOptions Options => UrlBuilderOptions.NoAbsolute;
}
