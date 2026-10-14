namespace System.Web.UI.WebControls;

public class CallingDataMethodsEventArgs : EventArgs
{
	public Type DataMethodsType { get; set; }

	public object DataMethodsObject { get; set; }
}
