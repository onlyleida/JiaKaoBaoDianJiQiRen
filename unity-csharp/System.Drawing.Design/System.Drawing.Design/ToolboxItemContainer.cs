using System.Collections;
using System.Runtime.Serialization;
using System.Security;
using System.Windows.Forms;

namespace System.Drawing.Design;

[Serializable]
public class ToolboxItemContainer : ISerializable
{
	[MonoTODO]
	public bool IsCreated
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO]
	public bool IsTransient
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO]
	public virtual IDataObject ToolboxData
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO]
	public ToolboxItemContainer(IDataObject data)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public ToolboxItemContainer(ToolboxItem item)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	protected ToolboxItemContainer(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public override bool Equals(object obj)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public override int GetHashCode()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	[SecurityCritical]
	protected virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public virtual ICollection GetFilter(ICollection creators)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public virtual ToolboxItem GetToolboxItem(ICollection creators)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void UpdateFilter(ToolboxItem item)
	{
		throw new NotImplementedException();
	}
}
