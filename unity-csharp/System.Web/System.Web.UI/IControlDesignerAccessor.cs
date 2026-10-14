using System.Collections;

namespace System.Web.UI;

public interface IControlDesignerAccessor
{
	IDictionary UserData { get; }

	IDictionary GetDesignModeState();

	void SetDesignModeState(IDictionary data);

	void SetOwnerControl(Control owner);
}
