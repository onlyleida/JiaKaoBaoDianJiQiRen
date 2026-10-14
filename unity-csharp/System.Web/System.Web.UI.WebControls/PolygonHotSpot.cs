using System.ComponentModel;

namespace System.Web.UI.WebControls;

public sealed class PolygonHotSpot : HotSpot
{
	protected internal override string MarkupName => "poly";

	[DefaultValue("")]
	public string Coordinates
	{
		get
		{
			object obj = ViewState["Coordinates"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			ViewState["Coordinates"] = value;
		}
	}

	public override string GetCoordinates()
	{
		return Coordinates;
	}
}
