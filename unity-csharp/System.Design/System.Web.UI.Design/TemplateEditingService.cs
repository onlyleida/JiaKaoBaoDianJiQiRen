using System.ComponentModel.Design;
using System.Web.UI.WebControls;

namespace System.Web.UI.Design;

[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
public sealed class TemplateEditingService : ITemplateEditingService, IDisposable
{
	private IDesignerHost _designerHost;

	public bool SupportsNestedTemplateEditing => false;

	public TemplateEditingService(IDesignerHost designerHost)
	{
		if (designerHost == null)
		{
			throw new ArgumentNullException("designerHost");
		}
		_designerHost = designerHost;
	}

	~TemplateEditingService()
	{
		Dispose(disposing: false);
	}

	[System.MonoTODO]
	public ITemplateEditingFrame CreateFrame(TemplatedControlDesigner designer, string frameName, string[] templateNames)
	{
		return CreateFrame(designer, frameName, templateNames, null, null);
	}

	[System.MonoTODO]
	public ITemplateEditingFrame CreateFrame(TemplatedControlDesigner designer, string frameName, string[] templateNames, Style controlStyle, Style[] templateStyles)
	{
		throw new NotImplementedException();
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	private void Dispose(bool disposing)
	{
		if (disposing)
		{
			_designerHost = null;
		}
	}

	[System.MonoTODO]
	public string GetContainingTemplateName(Control control)
	{
		throw new NotImplementedException();
	}
}
