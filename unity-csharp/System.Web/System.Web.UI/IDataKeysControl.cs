using System.Web.UI.WebControls;

namespace System.Web.UI;

public interface IDataKeysControl
{
	string[] ClientIDRowSuffix { get; }

	DataKeyArray ClientIDRowSuffixDataKeys { get; }
}
