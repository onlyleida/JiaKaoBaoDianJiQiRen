using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SupportsPreviewControl(true)]
[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class DataListDesigner : BaseDataListDesigner
{
	protected bool TemplatesExist
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public DataListDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[Obsolete("Use of this method is not recommended because template editing is handled in ControlDesigner. To support template editing expose template data in the TemplateGroups property and call SetViewFlags(ViewFlags.TemplateEditing, true). http://go.microsoft.com/fwlink/?linkid=14202")]
	protected override ITemplateEditingFrame CreateTemplateEditingFrame(TemplateEditingVerb verb)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[Obsolete("Use of this method is not recommended because template editing is handled in ControlDesigner. To support template editing expose template data in the TemplateGroups property and call SetViewFlags(ViewFlags.TemplateEditing, true). http://go.microsoft.com/fwlink/?linkid=14202")]
	protected override TemplateEditingVerb[] GetCachedTemplateEditingVerbs()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[Obsolete("Use of this method is not recommended because template editing is handled in ControlDesigner. To support template editing expose template data in the TemplateGroups property and call SetViewFlags(ViewFlags.TemplateEditing, true). http://go.microsoft.com/fwlink/?linkid=14202")]
	public override string GetTemplateContent(ITemplateEditingFrame editingFrame, string templateName, out bool allowEditing)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected override void OnSchemaRefreshed()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void OnTemplateEditingVerbsChanged()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[Obsolete("Use of this method is not recommended because template editing is handled in ControlDesigner. To support template editing expose template data in the TemplateGroups property and call SetViewFlags(ViewFlags.TemplateEditing, true). http://go.microsoft.com/fwlink/?linkid=14202")]
	public override void SetTemplateContent(ITemplateEditingFrame editingFrame, string templateName, string templateContent)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
