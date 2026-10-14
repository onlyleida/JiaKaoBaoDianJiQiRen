using Unity;

namespace System.Web.UI.WebControls;

public class DataControlFieldCell : TableCell
{
	private DataControlField containerField;

	public DataControlField ContainingField => containerField;

	public override ValidateRequestMode ValidateRequestMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DataControlFieldCell(DataControlField containingField)
		: this(HtmlTextWriterTag.Td, containingField)
	{
	}

	protected DataControlFieldCell(HtmlTextWriterTag tagKey, DataControlField containingField)
		: base(tagKey)
	{
		containerField = containingField;
	}
}
