namespace System.Web.UI.Design;

[Obsolete("Use IControlDesignerTag interface instead")]
public interface IControlDesignerBehavior
{
	object DesignTimeElementView { get; }

	string DesignTimeHtml { get; set; }

	void OnTemplateModeChanged();
}
