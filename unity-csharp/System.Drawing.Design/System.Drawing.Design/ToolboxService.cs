using System.Collections;
using System.ComponentModel.Design;
using System.Reflection;
using System.Windows.Forms;

namespace System.Drawing.Design;

public abstract class ToolboxService : IComponentDiscoveryService, IToolboxService
{
	protected abstract CategoryNameCollection CategoryNames { get; }

	protected abstract string SelectedCategory { get; set; }

	protected abstract ToolboxItemContainer SelectedItemContainer { get; set; }

	CategoryNameCollection IToolboxService.CategoryNames
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	string IToolboxService.SelectedCategory
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

	[MonoTODO]
	protected ToolboxService()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	protected virtual ToolboxItemContainer CreateItemContainer(IDataObject dataObject)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	protected virtual ToolboxItemContainer CreateItemContainer(ToolboxItem item, IDesignerHost link)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	protected virtual void FilterChanged()
	{
		throw new NotImplementedException();
	}

	protected abstract IList GetItemContainers();

	protected abstract IList GetItemContainers(string categoryName);

	[MonoTODO]
	protected virtual bool IsItemContainer(IDataObject dataObject, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	protected bool IsItemContainerSupported(ToolboxItemContainer container, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	protected abstract void Refresh();

	[MonoTODO]
	protected virtual void SelectedItemContainerUsed()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	protected virtual bool SetCursor()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static void UnloadToolboxItems()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static ToolboxItem GetToolboxItem(Type toolType)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static ToolboxItem GetToolboxItem(Type toolType, bool nonPublic)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static ICollection GetToolboxItems(AssemblyName an)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static ICollection GetToolboxItems(AssemblyName an, bool throwOnError)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static ICollection GetToolboxItems(Assembly a, string newCodeBase)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public static ICollection GetToolboxItems(Assembly a, string newCodeBase, bool throwOnError)
	{
		throw new NotImplementedException();
	}

	ICollection IComponentDiscoveryService.GetComponentTypes(IDesignerHost designerHost, Type baseType)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.AddCreator(ToolboxItemCreatorCallback creator, string format)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.AddCreator(ToolboxItemCreatorCallback creator, string format, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.AddLinkedToolboxItem(ToolboxItem toolboxItem, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.AddLinkedToolboxItem(ToolboxItem toolboxItem, string category, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.AddToolboxItem(ToolboxItem toolboxItem, string category)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.AddToolboxItem(ToolboxItem toolboxItem)
	{
		throw new NotImplementedException();
	}

	ToolboxItem IToolboxService.DeserializeToolboxItem(object serializedObject)
	{
		throw new NotImplementedException();
	}

	ToolboxItem IToolboxService.DeserializeToolboxItem(object serializedObject, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	ToolboxItem IToolboxService.GetSelectedToolboxItem()
	{
		throw new NotImplementedException();
	}

	ToolboxItem IToolboxService.GetSelectedToolboxItem(IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	ToolboxItemCollection IToolboxService.GetToolboxItems()
	{
		throw new NotImplementedException();
	}

	ToolboxItemCollection IToolboxService.GetToolboxItems(IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	ToolboxItemCollection IToolboxService.GetToolboxItems(string category)
	{
		throw new NotImplementedException();
	}

	ToolboxItemCollection IToolboxService.GetToolboxItems(string category, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	bool IToolboxService.IsSupported(object serializedObject, ICollection filterAttributes)
	{
		throw new NotImplementedException();
	}

	bool IToolboxService.IsSupported(object serializedObject, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	bool IToolboxService.IsToolboxItem(object serializedObject)
	{
		throw new NotImplementedException();
	}

	bool IToolboxService.IsToolboxItem(object serializedObject, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.Refresh()
	{
		throw new NotImplementedException();
	}

	void IToolboxService.RemoveCreator(string format)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.RemoveCreator(string format, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.RemoveToolboxItem(ToolboxItem toolboxItem)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.RemoveToolboxItem(ToolboxItem toolboxItem, string category)
	{
		throw new NotImplementedException();
	}

	void IToolboxService.SelectedToolboxItemUsed()
	{
		throw new NotImplementedException();
	}

	object IToolboxService.SerializeToolboxItem(ToolboxItem toolboxItem)
	{
		throw new NotImplementedException();
	}

	bool IToolboxService.SetCursor()
	{
		throw new NotImplementedException();
	}

	void IToolboxService.SetSelectedToolboxItem(ToolboxItem toolboxItem)
	{
		throw new NotImplementedException();
	}
}
