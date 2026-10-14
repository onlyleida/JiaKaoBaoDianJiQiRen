using System.ComponentModel;
using System.Drawing;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartMenuStyle : TableStyle, ICustomTypeDescriptor
{
	public Color ShadowColor
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebPartMenuStyle()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public WebPartMenuStyle(StateBag bag)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	System.ComponentModel.AttributeCollection ICustomTypeDescriptor.GetAttributes()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	string ICustomTypeDescriptor.GetClassName()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	string ICustomTypeDescriptor.GetComponentName()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	TypeConverter ICustomTypeDescriptor.GetConverter()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] attributes)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] attributes)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
