using System.ComponentModel;

namespace System.Web.UI.WebControls;

public sealed class MenuItemStyle : Style
{
	[Flags]
	private enum MenuItemStyles
	{
		HorizontalPadding = 0x10000,
		VerticalPadding = 0x20000,
		ItemSpacing = 0x40000
	}

	[DefaultValue(typeof(Unit), "")]
	[NotifyParentProperty(true)]
	public Unit HorizontalPadding
	{
		get
		{
			if (CheckBit(65536))
			{
				return (Unit)ViewState["HorizontalPadding"];
			}
			return Unit.Empty;
		}
		set
		{
			ViewState["HorizontalPadding"] = value;
			SetBit(65536);
		}
	}

	[DefaultValue(typeof(Unit), "")]
	[NotifyParentProperty(true)]
	public Unit VerticalPadding
	{
		get
		{
			if (CheckBit(131072))
			{
				return (Unit)ViewState["VerticalPadding"];
			}
			return Unit.Empty;
		}
		set
		{
			ViewState["VerticalPadding"] = value;
			SetBit(131072);
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(typeof(Unit), "")]
	public Unit ItemSpacing
	{
		get
		{
			if (CheckBit(262144))
			{
				return (Unit)ViewState["ItemSpacing"];
			}
			return Unit.Empty;
		}
		set
		{
			ViewState["ItemSpacing"] = value;
			SetBit(262144);
		}
	}

	public MenuItemStyle()
	{
	}

	public MenuItemStyle(StateBag bag)
		: base(bag)
	{
	}

	public override void CopyFrom(Style s)
	{
		if (s == null || s.IsEmpty)
		{
			return;
		}
		base.CopyFrom(s);
		if (s is MenuItemStyle menuItemStyle)
		{
			if (menuItemStyle.CheckBit(65536))
			{
				HorizontalPadding = menuItemStyle.HorizontalPadding;
			}
			if (menuItemStyle.CheckBit(262144))
			{
				ItemSpacing = menuItemStyle.ItemSpacing;
			}
			if (menuItemStyle.CheckBit(131072))
			{
				VerticalPadding = menuItemStyle.VerticalPadding;
			}
		}
	}

	public override void MergeWith(Style s)
	{
		if (s == null || s.IsEmpty)
		{
			return;
		}
		base.MergeWith(s);
		if (s is MenuItemStyle menuItemStyle)
		{
			if (!CheckBit(65536) && menuItemStyle.CheckBit(65536))
			{
				HorizontalPadding = menuItemStyle.HorizontalPadding;
			}
			if (!CheckBit(262144) && menuItemStyle.CheckBit(262144))
			{
				ItemSpacing = menuItemStyle.ItemSpacing;
			}
			if (!CheckBit(131072) && menuItemStyle.CheckBit(131072))
			{
				VerticalPadding = menuItemStyle.VerticalPadding;
			}
		}
	}

	public override void Reset()
	{
		ViewState.Remove("HorizontalPadding");
		ViewState.Remove("ItemSpacing");
		ViewState.Remove("VerticalPadding");
		base.Reset();
	}

	protected override void FillStyleAttributes(CssStyleCollection attributes, IUrlResolutionService urlResolver)
	{
		base.FillStyleAttributes(attributes, urlResolver);
		if (CheckBit(65536))
		{
			attributes.Add(HtmlTextWriterStyle.PaddingLeft, HorizontalPadding.ToString());
			attributes.Add(HtmlTextWriterStyle.PaddingRight, HorizontalPadding.ToString());
		}
		if (CheckBit(131072))
		{
			attributes.Add(HtmlTextWriterStyle.PaddingTop, VerticalPadding.ToString());
			attributes.Add(HtmlTextWriterStyle.PaddingBottom, VerticalPadding.ToString());
		}
	}
}
