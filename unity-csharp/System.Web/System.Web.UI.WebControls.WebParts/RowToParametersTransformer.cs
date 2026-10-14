using System.ComponentModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[WebPartTransformer(typeof(IWebPartRow), typeof(IWebPartParameters))]
public sealed class RowToParametersTransformer : WebPartTransformer, IWebPartParameters
{
	public string[] ConsumerFieldNames
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

	public string[] ProviderFieldNames
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

	public RowToParametersTransformer()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	PropertyDescriptorCollection IWebPartParameters.get_Schema()
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

	void IWebPartParameters.GetParametersData(ParametersCallback callback)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IWebPartParameters.SetConsumerSchema(PropertyDescriptorCollection schema)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override object Transform(object providerData)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
