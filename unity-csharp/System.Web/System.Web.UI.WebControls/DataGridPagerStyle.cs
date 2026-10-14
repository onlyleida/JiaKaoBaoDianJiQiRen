using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DataGridPagerStyle : TableItemStyle
{
	[Flags]
	private enum DataGridPagerStyles
	{
		Mode = 0x100000,
		NextPageText = 0x200000,
		PageButtonCount = 0x400000,
		Position = 0x800000,
		PrevPageText = 0x1000000,
		Visible = 0x2000000
	}

	[WebCategory("Misc")]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[DefaultValue(PagerMode.NextPrev)]
	public PagerMode Mode
	{
		get
		{
			if (!CheckBit(1048576))
			{
				return PagerMode.NextPrev;
			}
			return (PagerMode)ViewState["Mode"];
		}
		set
		{
			ViewState["Mode"] = value;
			SetBit(1048576);
		}
	}

	[WebCategory("Misc")]
	[DefaultValue("&gt;")]
	[Localizable(true)]
	[WebSysDescription("")]
	[NotifyParentProperty(true)]
	public string NextPageText
	{
		get
		{
			if (!CheckBit(2097152))
			{
				return "&gt;";
			}
			return ViewState.GetString("NextPageText", "&gt;");
		}
		set
		{
			ViewState["NextPageText"] = value;
			SetBit(2097152);
		}
	}

	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	[DefaultValue(10)]
	public int PageButtonCount
	{
		get
		{
			if (!CheckBit(4194304))
			{
				return 10;
			}
			return ViewState.GetInt("PageButtonCount", 10);
		}
		set
		{
			if (value < 1)
			{
				throw new ArgumentOutOfRangeException("value", "PageButtonCount must be greater than 0");
			}
			ViewState["PageButtonCount"] = value;
			SetBit(4194304);
		}
	}

	[DefaultValue(PagerPosition.Bottom)]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public PagerPosition Position
	{
		get
		{
			if (!CheckBit(8388608))
			{
				return PagerPosition.Bottom;
			}
			return (PagerPosition)ViewState["Position"];
		}
		set
		{
			ViewState["Position"] = value;
			SetBit(8388608);
		}
	}

	[WebCategory("Misc")]
	[Localizable(true)]
	[NotifyParentProperty(true)]
	[DefaultValue("&lt;")]
	[WebSysDescription("")]
	public string PrevPageText
	{
		get
		{
			if (!CheckBit(16777216))
			{
				return "&lt;";
			}
			return ViewState.GetString("PrevPageText", "&lt;");
		}
		set
		{
			ViewState["PrevPageText"] = value;
			SetBit(16777216);
		}
	}

	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	[DefaultValue(true)]
	public bool Visible
	{
		get
		{
			if (!CheckBit(33554432))
			{
				return true;
			}
			return ViewState.GetBool("Visible", def: true);
		}
		set
		{
			ViewState["Visible"] = value;
			SetBit(33554432);
		}
	}

	internal DataGridPagerStyle()
	{
	}

	public override void CopyFrom(Style s)
	{
		base.CopyFrom(s);
		if (s != null && !s.IsEmpty)
		{
			if (s.CheckBit(1048576) && ((DataGridPagerStyle)s).Mode != PagerMode.NextPrev)
			{
				Mode = ((DataGridPagerStyle)s).Mode;
			}
			if (s.CheckBit(2097152) && ((DataGridPagerStyle)s).NextPageText != "&gt;")
			{
				NextPageText = ((DataGridPagerStyle)s).NextPageText;
			}
			if (s.CheckBit(4194304) && ((DataGridPagerStyle)s).PageButtonCount != 10)
			{
				PageButtonCount = ((DataGridPagerStyle)s).PageButtonCount;
			}
			if (s.CheckBit(8388608) && ((DataGridPagerStyle)s).Position != PagerPosition.Bottom)
			{
				Position = ((DataGridPagerStyle)s).Position;
			}
			if (s.CheckBit(16777216) && ((DataGridPagerStyle)s).PrevPageText != "&lt;")
			{
				PrevPageText = ((DataGridPagerStyle)s).PrevPageText;
			}
			if (s.CheckBit(33554432) && !((DataGridPagerStyle)s).Visible)
			{
				Visible = ((DataGridPagerStyle)s).Visible;
			}
		}
	}

	public override void MergeWith(Style s)
	{
		base.MergeWith(s);
		if (s != null && !s.IsEmpty)
		{
			if (!CheckBit(1048576) && s.CheckBit(1048576) && ((DataGridPagerStyle)s).Mode != PagerMode.NextPrev)
			{
				Mode = ((DataGridPagerStyle)s).Mode;
			}
			if (!CheckBit(2097152) && s.CheckBit(2097152) && ((DataGridPagerStyle)s).NextPageText != "&gt;")
			{
				NextPageText = ((DataGridPagerStyle)s).NextPageText;
			}
			if (!CheckBit(4194304) && s.CheckBit(4194304) && ((DataGridPagerStyle)s).PageButtonCount != 10)
			{
				PageButtonCount = ((DataGridPagerStyle)s).PageButtonCount;
			}
			if (!CheckBit(8388608) && s.CheckBit(8388608) && ((DataGridPagerStyle)s).Position != PagerPosition.Bottom)
			{
				Position = ((DataGridPagerStyle)s).Position;
			}
			if (!CheckBit(16777216) && s.CheckBit(16777216) && ((DataGridPagerStyle)s).PrevPageText != "&lt;")
			{
				PrevPageText = ((DataGridPagerStyle)s).PrevPageText;
			}
			if (!CheckBit(33554432) && s.CheckBit(33554432) && !((DataGridPagerStyle)s).Visible)
			{
				Visible = ((DataGridPagerStyle)s).Visible;
			}
		}
	}

	public override void Reset()
	{
		ViewState.Remove("Mode");
		ViewState.Remove("NextPageText");
		ViewState.Remove("PageButtonCount");
		ViewState.Remove("Position");
		ViewState.Remove("PrevPageText");
		ViewState.Remove("Visible");
		base.Reset();
	}
}
