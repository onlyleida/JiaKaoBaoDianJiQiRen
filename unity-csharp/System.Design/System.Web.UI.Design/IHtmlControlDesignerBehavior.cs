namespace System.Web.UI.Design;

[Obsolete("Use IControlDesignerTag and IControlDesignerView instead")]
public interface IHtmlControlDesignerBehavior
{
	HtmlControlDesigner Designer { get; set; }

	object DesignTimeElement { get; }

	object GetAttribute(string attribute, bool ignoreCase);

	object GetStyleAttribute(string attribute, bool designTimeOnly, bool ignoreCase);

	void RemoveAttribute(string attribute, bool ignoreCase);

	void RemoveStyleAttribute(string attribute, bool designTimeOnly, bool ignoreCase);

	void SetAttribute(string attribute, object value, bool ignoreCase);

	void SetStyleAttribute(string attribute, bool designTimeOnly, object value, bool ignoreCase);
}
