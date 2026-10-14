using System.Collections;
using System.Security.Permissions;
using System.Web.UI.WebControls;
using Unity;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class ContainerControlDesigner : ControlDesigner
{
	[System.MonoTODO]
	public override bool AllowResize
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual string FrameCaption
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual Style FrameStyle
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected virtual bool NoWrap
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	[System.MonoTODO]
	protected virtual void AddDesignTimeCssAttributes(IDictionary styleAttributes)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual IDictionary GetDesignTimeCssAttributes()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string GetDesignTimeHtml(DesignerRegionCollection regions)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string GetEditableDesignerRegionContent(EditableDesignerRegion region)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string GetPersistenceContent()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void SetEditableDesignerRegionContent(EditableDesignerRegion region, string content)
	{
		throw new NotImplementedException();
	}
}
