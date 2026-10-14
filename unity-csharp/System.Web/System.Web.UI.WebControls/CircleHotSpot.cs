using System.ComponentModel;

namespace System.Web.UI.WebControls;

public sealed class CircleHotSpot : HotSpot
{
	protected internal override string MarkupName => "circle";

	[DefaultValue(0)]
	public int Radius
	{
		get
		{
			return ViewState.GetInt("Radius", 0);
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException();
			}
			ViewState["Radius"] = value;
		}
	}

	[DefaultValue(0)]
	public int X
	{
		get
		{
			return ViewState.GetInt("X", 0);
		}
		set
		{
			ViewState["X"] = value;
		}
	}

	[DefaultValue(0)]
	public int Y
	{
		get
		{
			return ViewState.GetInt("Y", 0);
		}
		set
		{
			ViewState["Y"] = value;
		}
	}

	public override string GetCoordinates()
	{
		return X + "," + Y + "," + Radius;
	}
}
