using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;

namespace System.Web.UI.Design;

public abstract class TemplatedControlDesigner : ControlDesigner
{
	private ITemplateEditingFrame _activeTemplateFrame;

	private bool _enableTemplateEditing = true;

	private bool _templateMode;

	private EventHandler _templateVerbHandler;

	protected override bool DataBindingsEnabled
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override TemplateGroupCollection TemplateGroups
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	public ITemplateEditingFrame ActiveTemplateEditingFrame => _activeTemplateFrame;

	public bool CanEnterTemplateMode => _enableTemplateEditing;

	[Obsolete("Use ControlDesigner.InTemplateMode instead")]
	public new bool InTemplateMode => _templateMode;

	internal EventHandler TemplateEditingVerbHandler => _templateVerbHandler;

	public TemplatedControlDesigner()
	{
	}

	[System.MonoTODO]
	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	protected abstract ITemplateEditingFrame CreateTemplateEditingFrame(TemplateEditingVerb verb);

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	protected abstract TemplateEditingVerb[] GetCachedTemplateEditingVerbs();

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	public abstract string GetTemplateContent(ITemplateEditingFrame editingFrame, string templateName, out bool allowEditing);

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	public abstract void SetTemplateContent(ITemplateEditingFrame editingFrame, string templateName, string templateContent);

	[System.MonoTODO]
	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	public void EnterTemplateMode(ITemplateEditingFrame newTemplateEditingFrame)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	[System.MonoTODO]
	public void ExitTemplateMode(bool fSwitchingTemplates, bool fNested, bool fSave)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	public virtual string GetTemplateContainerDataItemProperty(string templateName)
	{
		return string.Empty;
	}

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	public virtual IEnumerable GetTemplateContainerDataSource(string templateName)
	{
		return null;
	}

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	[System.MonoTODO]
	public TemplateEditingVerb[] GetTemplateEditingVerbs()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected ITemplate GetTemplateFromText(string text)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Template editing is supported in ControlDesigner.TemplateGroups with SetViewFlags(ViewFlags.TemplateEditing, true) in 2.0.")]
	public virtual Type GetTemplatePropertyParentType(string templateName)
	{
		return Component.GetType();
	}

	[System.MonoTODO]
	protected string GetTextFromTemplate(ITemplate template)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Use ControlDesigner.Tag instead")]
	[System.MonoTODO]
	protected override void OnBehaviorAttached()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void OnComponentChanged(object sender, ComponentChangedEventArgs ce)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void OnSetParent()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void OnTemplateModeChanged()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected void SaveActiveTemplateEditingFrame()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void UpdateDesignTimeHtml()
	{
		throw new NotImplementedException();
	}
}
