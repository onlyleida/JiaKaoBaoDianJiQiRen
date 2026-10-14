using System.Web.UI.WebControls;

namespace System.Web.UI.Design;

[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
public interface ITemplateEditingService
{
	bool SupportsNestedTemplateEditing { get; }

	ITemplateEditingFrame CreateFrame(TemplatedControlDesigner designer, string frameName, string[] templateNames);

	ITemplateEditingFrame CreateFrame(TemplatedControlDesigner designer, string frameName, string[] templateNames, Style controlStyle, Style[] templateStyles);

	string GetContainingTemplateName(Control control);
}
