using System.Web.UI.WebControls;

namespace System.Web.UI.Design;

[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
public interface ITemplateEditingFrame : IDisposable
{
	Style ControlStyle { get; }

	int InitialHeight { get; set; }

	int InitialWidth { get; set; }

	string Name { get; }

	string[] TemplateNames { get; }

	Style[] TemplateStyles { get; }

	TemplateEditingVerb Verb { get; set; }

	void Close(bool saveChanges);

	void Open();

	void Resize(int width, int height);

	void Save();

	void UpdateControlName(string newName);
}
