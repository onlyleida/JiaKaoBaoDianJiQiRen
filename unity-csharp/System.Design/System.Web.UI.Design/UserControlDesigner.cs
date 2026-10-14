using System.ComponentModel.Design;

namespace System.Web.UI.Design;

public class UserControlDesigner : ControlDesigner
{
	public override DesignerActionListCollection ActionLists
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override bool AllowResize => false;

	public override string GetDesignTimeHtml()
	{
		return CreatePlaceHolderDesignTimeHtml();
	}
}
