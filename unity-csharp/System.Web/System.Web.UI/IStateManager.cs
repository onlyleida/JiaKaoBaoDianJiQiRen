namespace System.Web.UI;

public interface IStateManager
{
	bool IsTrackingViewState { get; }

	void LoadViewState(object state);

	object SaveViewState();

	void TrackViewState();
}
