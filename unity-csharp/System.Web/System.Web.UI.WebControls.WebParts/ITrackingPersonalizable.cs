namespace System.Web.UI.WebControls.WebParts;

public interface ITrackingPersonalizable
{
	bool TracksChanges { get; }

	void BeginLoad();

	void BeginSave();

	void EndLoad();

	void EndSave();
}
