using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TableItemStyle : Style
{
	[Flags]
	private enum TableItemStyles
	{
		HorizontalAlign = 0x10000,
		VerticalAlign = 0x20000,
		Wrap = 0x40000
	}

	[DefaultValue(HorizontalAlign.NotSet)]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual HorizontalAlign HorizontalAlign
	{
		get
		{
			if (!CheckBit(65536))
			{
				return HorizontalAlign.NotSet;
			}
			return (HorizontalAlign)ViewState["HorizontalAlign"];
		}
		set
		{
			if (value < HorizontalAlign.NotSet || value > HorizontalAlign.Justify)
			{
				throw new ArgumentOutOfRangeException(Locale.GetText("Invalid HorizontalAlign value."));
			}
			ViewState["HorizontalAlign"] = value;
			SetBit(65536);
		}
	}

	[DefaultValue(VerticalAlign.NotSet)]
	[WebCategory("Layout")]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	public virtual VerticalAlign VerticalAlign
	{
		get
		{
			if (!CheckBit(131072))
			{
				return VerticalAlign.NotSet;
			}
			return (VerticalAlign)ViewState["VerticalAlign"];
		}
		set
		{
			if (value < VerticalAlign.NotSet || value > VerticalAlign.Bottom)
			{
				throw new ArgumentOutOfRangeException(Locale.GetText("Invalid VerticalAlign value."));
			}
			ViewState["VerticalAlign"] = value;
			SetBit(131072);
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[NotifyParentProperty(true)]
	[DefaultValue(true)]
	public virtual bool Wrap
	{
		get
		{
			if (!CheckBit(262144))
			{
				return true;
			}
			return (bool)ViewState["Wrap"];
		}
		set
		{
			ViewState["Wrap"] = value;
			SetBit(262144);
		}
	}

	public TableItemStyle()
	{
	}

	public TableItemStyle(StateBag bag)
		: base(bag)
	{
	}

	public override void AddAttributesToRender(HtmlTextWriter writer, WebControl owner)
	{
		base.AddAttributesToRender(writer, owner);
		if (writer != null)
		{
			switch (HorizontalAlign)
			{
			case HorizontalAlign.Left:
				writer.AddAttribute(HtmlTextWriterAttribute.Align, "left", fEncode: false);
				break;
			case HorizontalAlign.Center:
				writer.AddAttribute(HtmlTextWriterAttribute.Align, "center", fEncode: false);
				break;
			case HorizontalAlign.Right:
				writer.AddAttribute(HtmlTextWriterAttribute.Align, "right", fEncode: false);
				break;
			case HorizontalAlign.Justify:
				writer.AddAttribute(HtmlTextWriterAttribute.Align, "justify", fEncode: false);
				break;
			}
			switch (VerticalAlign)
			{
			case VerticalAlign.Top:
				writer.AddAttribute(HtmlTextWriterAttribute.Valign, "top", fEncode: false);
				break;
			case VerticalAlign.Middle:
				writer.AddAttribute(HtmlTextWriterAttribute.Valign, "middle", fEncode: false);
				break;
			case VerticalAlign.Bottom:
				writer.AddAttribute(HtmlTextWriterAttribute.Valign, "bottom", fEncode: false);
				break;
			}
			if (!Wrap)
			{
				writer.AddStyleAttribute(HtmlTextWriterStyle.WhiteSpace, "nowrap");
			}
		}
	}

	private void Copy(string name, TableItemStyles s, Style source)
	{
		if (source.CheckBit((int)s))
		{
			object obj = source.ViewState[name];
			if (obj != null)
			{
				ViewState[name] = obj;
				SetBit((int)s);
			}
		}
	}

	public override void CopyFrom(Style s)
	{
		base.CopyFrom(s);
		if (s != null && !s.IsEmpty)
		{
			Copy("HorizontalAlign", TableItemStyles.HorizontalAlign, s);
			Copy("VerticalAlign", TableItemStyles.VerticalAlign, s);
			Copy("Wrap", TableItemStyles.Wrap, s);
		}
	}

	private void Merge(string name, TableItemStyles s, Style source)
	{
		if (!CheckBit((int)s) && source.CheckBit((int)s))
		{
			object obj = source.ViewState[name];
			if (obj != null)
			{
				ViewState[name] = obj;
				SetBit((int)s);
			}
		}
	}

	public override void MergeWith(Style s)
	{
		if (IsEmpty)
		{
			CopyFrom(s);
			return;
		}
		base.MergeWith(s);
		if (s != null)
		{
			Merge("HorizontalAlign", TableItemStyles.HorizontalAlign, s);
			Merge("VerticalAlign", TableItemStyles.VerticalAlign, s);
			Merge("Wrap", TableItemStyles.Wrap, s);
		}
	}

	public override void Reset()
	{
		if (CheckBit(65536))
		{
			ViewState.Remove("HorizontalAlign");
		}
		if (CheckBit(131072))
		{
			ViewState.Remove("VerticalAlign");
		}
		if (CheckBit(262144))
		{
			ViewState.Remove("Wrap");
		}
		base.Reset();
	}
}
