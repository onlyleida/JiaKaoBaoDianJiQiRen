namespace System.Web.UI.WebControls;

public interface IDataBoundListControl : IDataBoundControl
{
	DataKeyArray DataKeys { get; }

	DataKey SelectedDataKey { get; }

	int SelectedIndex { get; set; }

	string[] ClientIDRowSuffix { get; set; }

	bool EnablePersistedSelection { get; set; }
}
