using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Runtime.Serialization;

namespace System.Web.UI.Design;

[Serializable]
[System.MonoTODO]
public class WebControlToolboxItem : ToolboxItem
{
	private int persistChildren;

	private string toolData;

	public WebControlToolboxItem()
	{
		toolData = null;
		persistChildren = -1;
	}

	[System.MonoTODO]
	public WebControlToolboxItem(Type type)
	{
		toolData = null;
		persistChildren = -1;
	}

	protected WebControlToolboxItem(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override IComponent[] CreateComponentsCore(IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override void Serialize(SerializationInfo info, StreamingContext context)
	{
		base.Serialize(info, context);
		if (toolData != null)
		{
			info.AddValue("ToolData", toolData);
		}
		if (persistChildren != -1)
		{
			info.AddValue("PersistChildren", persistChildren);
		}
	}

	[System.MonoTODO]
	protected override void Deserialize(SerializationInfo info, StreamingContext context)
	{
		base.Deserialize(info, context);
		toolData = info.GetString("ToolData");
		persistChildren = info.GetInt32("PersistChildren");
	}

	[System.MonoTODO]
	public override void Initialize(Type type)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public object GetToolAttributeValue(IDesignerHost host, Type attributeType)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public string GetToolHtml(IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Type GetToolType(IDesignerHost host)
	{
		throw new NotImplementedException();
	}
}
