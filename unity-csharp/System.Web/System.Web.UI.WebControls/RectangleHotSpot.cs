using System.ComponentModel;

namespace System.Web.UI.WebControls;

public sealed class RectangleHotSpot : HotSpot
{
	protected internal override string MarkupName => "rect";

	[DefaultValue(0)]
	public int Left
	{
		get
		{
			object obj = ViewState["Left"];
			if (obj == null)
			{
				return 0;
			}
			return (int)obj;
		}
		set
		{
			ViewState["Left"] = value;
		}
	}

	[DefaultValue(0)]
	public int Top
	{
		get
		{
			object obj = ViewState["Top"];
			if (obj == null)
			{
				return 0;
			}
			return (int)obj;
		}
		set
		{
			ViewState["Top"] = value;
		}
	}

	[DefaultValue(0)]
	public int Right
	{
		get
		{
			object obj = ViewState["Right"];
			if (obj == null)
			{
				return 0;
			}
			return (int)obj;
		}
		set
		{
			ViewState["Right"] = value;
		}
	}

	[DefaultValue(0)]
	public int Bottom
	{
		get
		{
			object obj = ViewState["Bottom"];
			if (obj == null)
			{
				return 0;
			}
			return (int)obj;
		}
		set
		{
			ViewState["Bottom"] = value;
		}
	}

	public override string GetCoordinates()
	{
		return Left + "," + Top + "," + Right + "," + Bottom;
	}
}
