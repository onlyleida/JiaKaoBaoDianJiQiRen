using System.ComponentModel;
using System.Drawing.Design;

namespace System.Web.UI.WebControls;

public sealed class TreeNodeStyle : Style
{
	[Flags]
	private enum TreeNodeStyles
	{
		ChildNodesPadding = 0x10000,
		HorizontalPadding = 0x20000,
		ImageUrl = 0x40000,
		NodeSpacing = 0x80000,
		VerticalPadding = 0x100000
	}

	private const string CHILD_PADD = "ChildNodesPadding";

	private const string HORZ_PADD = "HorizontalPadding";

	private const string IMG_URL = "ImageUrl";

	private const string SPACING = "NodeSpacing";

	private const string VERT_PADD = "VerticalPadding";

	[UrlProperty]
	[NotifyParentProperty(true)]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string ImageUrl
	{
		get
		{
			if (!CheckBit(262144))
			{
				return string.Empty;
			}
			return ViewState.GetString("ImageUrl", string.Empty);
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			ViewState["ImageUrl"] = value;
			SetBit(262144);
		}
	}

	[DefaultValue(0)]
	[NotifyParentProperty(true)]
	public Unit ChildNodesPadding
	{
		get
		{
			if (!CheckBit(65536))
			{
				return 0;
			}
			if (ViewState["ChildNodesPadding"] != null)
			{
				return (Unit)ViewState["ChildNodesPadding"];
			}
			return 0;
		}
		set
		{
			ViewState["ChildNodesPadding"] = value;
			SetBit(65536);
		}
	}

	[DefaultValue(0)]
	[NotifyParentProperty(true)]
	public Unit HorizontalPadding
	{
		get
		{
			if (!CheckBit(131072))
			{
				return 0;
			}
			if (ViewState["HorizontalPadding"] != null)
			{
				return (Unit)ViewState["HorizontalPadding"];
			}
			return 0;
		}
		set
		{
			ViewState["HorizontalPadding"] = value;
			SetBit(131072);
		}
	}

	[DefaultValue(0)]
	[NotifyParentProperty(true)]
	public Unit VerticalPadding
	{
		get
		{
			if (!CheckBit(1048576))
			{
				return 0;
			}
			if (ViewState["VerticalPadding"] != null)
			{
				return (Unit)ViewState["VerticalPadding"];
			}
			return 0;
		}
		set
		{
			ViewState["VerticalPadding"] = value;
			SetBit(1048576);
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(0)]
	public Unit NodeSpacing
	{
		get
		{
			if (!CheckBit(524288))
			{
				return 0;
			}
			if (ViewState["NodeSpacing"] != null)
			{
				return (Unit)ViewState["NodeSpacing"];
			}
			return 0;
		}
		set
		{
			ViewState["NodeSpacing"] = value;
			SetBit(524288);
		}
	}

	public TreeNodeStyle()
	{
	}

	public TreeNodeStyle(StateBag bag)
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
		if (s is TreeNodeStyle treeNodeStyle)
		{
			if (treeNodeStyle.CheckBit(65536))
			{
				ChildNodesPadding = treeNodeStyle.ChildNodesPadding;
			}
			if (treeNodeStyle.CheckBit(131072))
			{
				HorizontalPadding = treeNodeStyle.HorizontalPadding;
			}
			if (treeNodeStyle.CheckBit(262144))
			{
				ImageUrl = treeNodeStyle.ImageUrl;
			}
			if (treeNodeStyle.CheckBit(524288))
			{
				NodeSpacing = treeNodeStyle.NodeSpacing;
			}
			if (treeNodeStyle.CheckBit(1048576))
			{
				VerticalPadding = treeNodeStyle.VerticalPadding;
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
		if (s is TreeNodeStyle treeNodeStyle)
		{
			if (treeNodeStyle.CheckBit(65536) && !CheckBit(65536))
			{
				ChildNodesPadding = treeNodeStyle.ChildNodesPadding;
			}
			if (treeNodeStyle.CheckBit(131072) && !CheckBit(131072))
			{
				HorizontalPadding = treeNodeStyle.HorizontalPadding;
			}
			if (treeNodeStyle.CheckBit(262144) && !CheckBit(262144))
			{
				ImageUrl = treeNodeStyle.ImageUrl;
			}
			if (treeNodeStyle.CheckBit(524288) && !CheckBit(524288))
			{
				NodeSpacing = treeNodeStyle.NodeSpacing;
			}
			if (treeNodeStyle.CheckBit(1048576) && !CheckBit(1048576))
			{
				VerticalPadding = treeNodeStyle.VerticalPadding;
			}
		}
	}

	public override void Reset()
	{
		if (CheckBit(65536))
		{
			ViewState.Remove("ChildNodesPadding");
		}
		if (CheckBit(131072))
		{
			ViewState.Remove("HorizontalPadding");
		}
		if (CheckBit(262144))
		{
			ViewState.Remove("ImageUrl");
		}
		if (CheckBit(524288))
		{
			ViewState.Remove("NodeSpacing");
		}
		if (CheckBit(1048576))
		{
			ViewState.Remove("VerticalPadding");
		}
		base.Reset();
	}

	protected override void FillStyleAttributes(CssStyleCollection attributes, IUrlResolutionService urlResolver)
	{
		base.FillStyleAttributes(attributes, urlResolver);
		if (CheckBit(131072))
		{
			attributes.Add(HtmlTextWriterStyle.PaddingLeft, HorizontalPadding.ToString());
			attributes.Add(HtmlTextWriterStyle.PaddingRight, HorizontalPadding.ToString());
		}
		if (CheckBit(1048576))
		{
			attributes.Add(HtmlTextWriterStyle.PaddingTop, VerticalPadding.ToString());
			attributes.Add(HtmlTextWriterStyle.PaddingBottom, VerticalPadding.ToString());
		}
	}
}
