namespace System.Web.UI.WebControls;

public class ViewCollection : ControlCollection
{
	public new View this[int i] => (View)base[i];

	public ViewCollection(Control owner)
		: base(owner)
	{
	}

	public override void Add(Control v)
	{
		if (!(v is View))
		{
			throw new ArgumentException("The parameter is not a View control");
		}
		base.Add(v);
	}

	public override void AddAt(int index, Control v)
	{
		if (!(v is View))
		{
			throw new ArgumentException("The parameter is not a View control");
		}
		base.AddAt(index, v);
	}
}
