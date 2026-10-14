using System.ComponentModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[WebPartTransformer(typeof(IWebPartRow), typeof(IWebPartField))]
public sealed class RowToFieldTransformer : WebPartTransformer, IWebPartField
{
	public string FieldName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public RowToFieldTransformer()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	PropertyDescriptor IWebPartField.get_Schema()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override Control CreateConfigurationControl()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected internal override void LoadConfigurationState(object savedState)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override object SaveConfigurationState()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	void IWebPartField.GetFieldValue(FieldCallback callback)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override object Transform(object providerData)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
