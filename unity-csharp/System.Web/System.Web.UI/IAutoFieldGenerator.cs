using System.Collections;

namespace System.Web.UI;

public interface IAutoFieldGenerator
{
	ICollection GenerateFields(Control control);
}
