namespace System.Web.UI;

public class EmptyControlCollection : ControlCollection
{
	public EmptyControlCollection(Control owner)
		: base(owner)
	{
	}

	private void ThrowNotSupportedException()
	{
		throw new HttpException(SR.GetString("'{0}' does not allow child controls.", Owner.GetType().ToString()));
	}

	public override void Add(Control child)
	{
		ThrowNotSupportedException();
	}

	public override void AddAt(int index, Control child)
	{
		ThrowNotSupportedException();
	}
}
