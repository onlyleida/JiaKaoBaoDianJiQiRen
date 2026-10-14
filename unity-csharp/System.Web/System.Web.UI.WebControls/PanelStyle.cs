using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class PanelStyle : Style
{
	[Flags]
	private enum PanelStyles
	{
		BackImageUrl = 0x10000,
		Direction = 0x20000,
		HorizontalAlign = 0x40000,
		ScrollBars = 0x80000,
		Wrap = 0x100000
	}

	[UrlProperty]
	[DefaultValue("")]
	public virtual string BackImageUrl
	{
		get
		{
			if (!CheckBit(65536))
			{
				return string.Empty;
			}
			return ViewState.GetString("BackImageUrl", string.Empty);
		}
		set
		{
			ViewState["BackImageUrl"] = value;
			SetBit(65536);
		}
	}

	[DefaultValue(ContentDirection.NotSet)]
	public virtual ContentDirection Direction
	{
		get
		{
			if (!CheckBit(131072))
			{
				return ContentDirection.NotSet;
			}
			return (ContentDirection)ViewState["Direction"];
		}
		set
		{
			ViewState["Direction"] = value;
			SetBit(131072);
		}
	}

	[DefaultValue(HorizontalAlign.NotSet)]
	public virtual HorizontalAlign HorizontalAlign
	{
		get
		{
			if (!CheckBit(262144))
			{
				return HorizontalAlign.NotSet;
			}
			return (HorizontalAlign)ViewState["HorizontalAlign"];
		}
		set
		{
			ViewState["HorizontalAlign"] = value;
			SetBit(262144);
		}
	}

	[DefaultValue(ScrollBars.None)]
	public virtual ScrollBars ScrollBars
	{
		get
		{
			if (!CheckBit(524288))
			{
				return ScrollBars.None;
			}
			return (ScrollBars)ViewState["ScrollBars"];
		}
		set
		{
			ViewState["ScrollBars"] = value;
			SetBit(524288);
		}
	}

	[DefaultValue(true)]
	public virtual bool Wrap
	{
		get
		{
			if (!CheckBit(1048576))
			{
				return true;
			}
			return (bool)ViewState["Wrap"];
		}
		set
		{
			ViewState["Wrap"] = value;
			SetBit(1048576);
		}
	}

	public PanelStyle(StateBag bag)
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
		if (s is PanelStyle panelStyle)
		{
			if (s.CheckBit(65536))
			{
				BackImageUrl = panelStyle.BackImageUrl;
			}
			if (s.CheckBit(131072))
			{
				Direction = panelStyle.Direction;
			}
			if (s.CheckBit(262144))
			{
				HorizontalAlign = panelStyle.HorizontalAlign;
			}
			if (s.CheckBit(524288))
			{
				ScrollBars = panelStyle.ScrollBars;
			}
			if (s.CheckBit(1048576))
			{
				Wrap = panelStyle.Wrap;
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
		if (s is PanelStyle panelStyle)
		{
			if (!CheckBit(65536) && s.CheckBit(65536))
			{
				BackImageUrl = panelStyle.BackImageUrl;
			}
			if (!CheckBit(131072) && s.CheckBit(131072))
			{
				Direction = panelStyle.Direction;
			}
			if (!CheckBit(262144) && s.CheckBit(262144))
			{
				HorizontalAlign = panelStyle.HorizontalAlign;
			}
			if (!CheckBit(524288) && s.CheckBit(524288))
			{
				ScrollBars = panelStyle.ScrollBars;
			}
			if (!CheckBit(1048576) && s.CheckBit(1048576))
			{
				Wrap = panelStyle.Wrap;
			}
		}
	}

	public override void Reset()
	{
		base.Reset();
		ViewState.Remove("BackImageUrl");
		ViewState.Remove("Direction");
		ViewState.Remove("HorizontalAlign");
		ViewState.Remove("ScrollBars");
		ViewState.Remove("Wrap");
	}
}
