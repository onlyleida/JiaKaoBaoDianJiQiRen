namespace System.Web.UI.WebControls.WebParts;

public class WebPartVerbsEventArgs : EventArgs
{
	private WebPartVerbCollection _verbs;

	public WebPartVerbCollection Verbs
	{
		get
		{
			if (_verbs == null)
			{
				return WebPartVerbCollection.Empty;
			}
			return _verbs;
		}
		set
		{
			_verbs = value;
		}
	}

	public WebPartVerbsEventArgs()
		: this(null)
	{
	}

	public WebPartVerbsEventArgs(WebPartVerbCollection verbs)
	{
		_verbs = verbs;
	}
}
