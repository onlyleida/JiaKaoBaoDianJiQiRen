using System.Collections;

namespace System.Web.UI.Design;

public interface IContentResolutionService
{
	IDictionary ContentDefinitions { get; }

	ContentDesignerState GetContentDesignerState(string identifier);

	void SetContentDesignerState(string identifier, ContentDesignerState state);
}
