using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class SubMenuStyle : Style, ICustomTypeDescriptor
{
	private const string HORZ_PADD = "HorizontalPadding";

	private const string VERT_PADD = "VerticalPadding";

	[NotifyParentProperty(true)]
	[DefaultValue(typeof(Unit), "")]
	public Unit HorizontalPadding
	{
		get
		{
			if (IsSet("HorizontalPadding"))
			{
				return (Unit)ViewState["HorizontalPadding"];
			}
			return Unit.Empty;
		}
		set
		{
			ViewState["HorizontalPadding"] = value;
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(typeof(Unit), "")]
	public Unit VerticalPadding
	{
		get
		{
			if (IsSet("VerticalPadding"))
			{
				return (Unit)ViewState["VerticalPadding"];
			}
			return Unit.Empty;
		}
		set
		{
			ViewState["VerticalPadding"] = value;
		}
	}

	public SubMenuStyle()
	{
	}

	public SubMenuStyle(StateBag bag)
		: base(bag)
	{
	}

	private bool IsSet(string v)
	{
		return ViewState[v] != null;
	}

	public override void CopyFrom(Style s)
	{
		if (s == null || s.IsEmpty)
		{
			return;
		}
		base.CopyFrom(s);
		if (s is SubMenuStyle subMenuStyle)
		{
			if (subMenuStyle.IsSet("HorizontalPadding"))
			{
				HorizontalPadding = subMenuStyle.HorizontalPadding;
			}
			if (subMenuStyle.IsSet("VerticalPadding"))
			{
				VerticalPadding = subMenuStyle.VerticalPadding;
			}
		}
	}

	public override void MergeWith(Style s)
	{
		if (s == null || s.IsEmpty)
		{
			return;
		}
		if (IsEmpty)
		{
			CopyFrom(s);
			return;
		}
		base.MergeWith(s);
		if (s is SubMenuStyle subMenuStyle)
		{
			if (subMenuStyle.IsSet("HorizontalPadding") && !IsSet("HorizontalPadding"))
			{
				HorizontalPadding = subMenuStyle.HorizontalPadding;
			}
			if (subMenuStyle.IsSet("VerticalPadding") && !IsSet("VerticalPadding"))
			{
				VerticalPadding = subMenuStyle.VerticalPadding;
			}
		}
	}

	public override void Reset()
	{
		if (IsSet("HorizontalPadding"))
		{
			ViewState.Remove("HorizontalPadding");
		}
		if (IsSet("VerticalPadding"))
		{
			ViewState.Remove("VerticalPadding");
		}
		base.Reset();
	}

	protected override void FillStyleAttributes(CssStyleCollection attributes, IUrlResolutionService urlResolver)
	{
		base.FillStyleAttributes(attributes, urlResolver);
		if (IsSet("HorizontalPadding"))
		{
			attributes.Add(HtmlTextWriterStyle.PaddingLeft, HorizontalPadding.ToString());
			attributes.Add(HtmlTextWriterStyle.PaddingRight, HorizontalPadding.ToString());
		}
		if (IsSet("VerticalPadding"))
		{
			attributes.Add(HtmlTextWriterStyle.PaddingTop, VerticalPadding.ToString());
			attributes.Add(HtmlTextWriterStyle.PaddingBottom, VerticalPadding.ToString());
		}
	}

	[MonoTODO("Not implemented")]
	System.ComponentModel.AttributeCollection ICustomTypeDescriptor.GetAttributes()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	string ICustomTypeDescriptor.GetClassName()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	string ICustomTypeDescriptor.GetComponentName()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	TypeConverter ICustomTypeDescriptor.GetConverter()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] arr)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] arr)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
	{
		throw new NotImplementedException();
	}
}
