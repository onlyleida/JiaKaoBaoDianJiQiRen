using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class WebPartMovingEventArgs : WebPartCancelEventArgs
{
	public WebPartZoneBase Zone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public int ZoneIndex
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebPartMovingEventArgs(WebPart webPart, WebPartZoneBase zone, int zoneIndex)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
