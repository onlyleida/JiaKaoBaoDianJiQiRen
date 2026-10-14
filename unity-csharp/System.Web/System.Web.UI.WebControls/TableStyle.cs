using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TableStyle : Style
{
	[Flags]
	private enum TableStyles
	{
		BackImageUrl = 0x10000,
		CellPadding = 0x20000,
		CellSpacing = 0x40000,
		GridLines = 0x80000,
		HorizontalAlign = 0x100000
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[UrlProperty]
	[NotifyParentProperty(true)]
	public virtual string BackImageUrl
	{
		get
		{
			if (!CheckBit(65536))
			{
				return string.Empty;
			}
			return (string)ViewState["BackImageUrl"];
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("BackImageUrl");
			}
			ViewState["BackImageUrl"] = value;
			SetBit(65536);
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(-1)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual int CellPadding
	{
		get
		{
			if (!CheckBit(131072))
			{
				return -1;
			}
			return (int)ViewState["CellPadding"];
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("< -1");
			}
			ViewState["CellPadding"] = value;
			SetBit(131072);
		}
	}

	[DefaultValue(-1)]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual int CellSpacing
	{
		get
		{
			if (!CheckBit(262144))
			{
				return -1;
			}
			return (int)ViewState["CellSpacing"];
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("< -1");
			}
			ViewState["CellSpacing"] = value;
			SetBit(262144);
		}
	}

	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DefaultValue(GridLines.None)]
	public virtual GridLines GridLines
	{
		get
		{
			if (!CheckBit(524288))
			{
				return GridLines.None;
			}
			return (GridLines)ViewState["GridLines"];
		}
		set
		{
			if (value < GridLines.None || value > GridLines.Both)
			{
				throw new ArgumentOutOfRangeException(Locale.GetText("Invalid GridLines value."));
			}
			ViewState["GridLines"] = value;
			SetBit(524288);
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(HorizontalAlign.NotSet)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual HorizontalAlign HorizontalAlign
	{
		get
		{
			if (!CheckBit(1048576))
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
			SetBit(1048576);
		}
	}

	public TableStyle()
	{
	}

	public TableStyle(StateBag bag)
		: base(bag)
	{
	}

	[MonoTODO("collapse style should be rendered only for browsers which support that.")]
	public override void AddAttributesToRender(HtmlTextWriter writer, WebControl owner)
	{
		base.AddAttributesToRender(writer, owner);
		if (writer == null)
		{
			return;
		}
		int cellSpacing = CellSpacing;
		if (cellSpacing != -1)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Cellspacing, cellSpacing.ToString(Helpers.InvariantCulture), fEncode: false);
			if (cellSpacing == 0)
			{
				writer.AddStyleAttribute(HtmlTextWriterStyle.BorderCollapse, "collapse");
			}
		}
		cellSpacing = CellPadding;
		if (cellSpacing != -1)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Cellpadding, cellSpacing.ToString(Helpers.InvariantCulture), fEncode: false);
		}
		GridLines gridLines = GridLines;
		switch (gridLines)
		{
		case GridLines.Horizontal:
			writer.AddAttribute(HtmlTextWriterAttribute.Rules, "rows", fEncode: false);
			break;
		case GridLines.Vertical:
			writer.AddAttribute(HtmlTextWriterAttribute.Rules, "cols", fEncode: false);
			break;
		case GridLines.Both:
			writer.AddAttribute(HtmlTextWriterAttribute.Rules, "all", fEncode: false);
			break;
		}
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
		if (gridLines != GridLines.None && BorderWidth.IsEmpty)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Border, "1", fEncode: false);
		}
	}

	private void Copy(string name, TableStyles s, Style source)
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
			Copy("BackImageUrl", TableStyles.BackImageUrl, s);
			Copy("CellPadding", TableStyles.CellPadding, s);
			Copy("CellSpacing", TableStyles.CellSpacing, s);
			Copy("GridLines", TableStyles.GridLines, s);
			Copy("HorizontalAlign", TableStyles.HorizontalAlign, s);
		}
	}

	private void Merge(string name, TableStyles s, Style source)
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
		if (s != null && !s.IsEmpty)
		{
			Merge("BackImageUrl", TableStyles.BackImageUrl, s);
			Merge("CellPadding", TableStyles.CellPadding, s);
			Merge("CellSpacing", TableStyles.CellSpacing, s);
			Merge("GridLines", TableStyles.GridLines, s);
			Merge("HorizontalAlign", TableStyles.HorizontalAlign, s);
		}
	}

	public override void Reset()
	{
		if (CheckBit(65536))
		{
			ViewState.Remove("BackImageUrl");
		}
		if (CheckBit(131072))
		{
			ViewState.Remove("CellPadding");
		}
		if (CheckBit(262144))
		{
			ViewState.Remove("CellSpacing");
		}
		if (CheckBit(524288))
		{
			ViewState.Remove("GridLines");
		}
		if (CheckBit(1048576))
		{
			ViewState.Remove("HorizontalAlign");
		}
		base.Reset();
	}

	protected override void FillStyleAttributes(CssStyleCollection attributes, IUrlResolutionService urlResolver)
	{
		if (attributes != null)
		{
			string text = BackImageUrl;
			if (text.Length > 0)
			{
				if (urlResolver != null)
				{
					text = urlResolver.ResolveClientUrl(text);
				}
				attributes.Add(HtmlTextWriterStyle.BackgroundImage, text);
			}
		}
		base.FillStyleAttributes(attributes, urlResolver);
	}
}
