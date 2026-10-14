using System.Web.UI.WebControls;

namespace System.Web.UI;

public interface IStyleSheet
{
	void CreateStyleRule(Style style, IUrlResolutionService urlResolver, string selector);

	void RegisterStyle(Style style, IUrlResolutionService urlResolver);
}
