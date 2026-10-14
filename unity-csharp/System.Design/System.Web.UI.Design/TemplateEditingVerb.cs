using System.ComponentModel.Design;

namespace System.Web.UI.Design;

[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
public class TemplateEditingVerb : DesignerVerb, IDisposable
{
	private int _index;

	public int Index => _index;

	[System.MonoTODO]
	public TemplateEditingVerb(string text, int index)
		: base(text, null)
	{
		throw new NotImplementedException();
	}

	public TemplateEditingVerb(string text, int index, TemplatedControlDesigner designer)
		: base(text, designer.TemplateEditingVerbHandler)
	{
		_index = index;
	}

	~TemplateEditingVerb()
	{
		Dispose(disposing: false);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	[System.MonoTODO]
	protected virtual void Dispose(bool disposing)
	{
	}
}
