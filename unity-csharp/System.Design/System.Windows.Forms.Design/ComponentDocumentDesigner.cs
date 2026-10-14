using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;

namespace System.Windows.Forms.Design;

public class ComponentDocumentDesigner : ComponentDesigner, IRootDesigner, IDesigner, IDisposable, IToolboxUser, ITypeDescriptorFilterService, IOleDragClient
{
	ViewTechnology[] IRootDesigner.SupportedTechnologies => new ViewTechnology[1] { ViewTechnology.WindowsForms };

	bool IOleDragClient.CanModifyComponents => true;

	[System.MonoTODO]
	IComponent IOleDragClient.Component
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public Control Control
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool TrayAutoArrange
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public bool TrayLargeIcon
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public ComponentDocumentDesigner()
	{
	}

	[System.MonoTODO]
	object IRootDesigner.GetView(ViewTechnology technology)
	{
		throw new NotImplementedException();
	}

	bool IToolboxUser.GetToolSupported(ToolboxItem tool)
	{
		return true;
	}

	[System.MonoTODO]
	void IToolboxUser.ToolPicked(ToolboxItem tool)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	bool ITypeDescriptorFilterService.FilterAttributes(IComponent component, IDictionary attributes)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	bool ITypeDescriptorFilterService.FilterEvents(IComponent component, IDictionary events)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	bool ITypeDescriptorFilterService.FilterProperties(IComponent component, IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	bool IOleDragClient.AddComponent(IComponent component, string name, bool firstAdd)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	Control IOleDragClient.GetControlForComponent(object component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	Control IOleDragClient.GetDesignerControl()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	bool IOleDragClient.IsDropOk(IComponent component)
	{
		return true;
	}

	[System.MonoTODO]
	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	protected virtual bool GetToolSupported(ToolboxItem tool)
	{
		return true;
	}

	[System.MonoTODO]
	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}
}
