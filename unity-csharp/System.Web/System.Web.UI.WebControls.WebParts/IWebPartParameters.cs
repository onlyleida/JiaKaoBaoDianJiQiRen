using System.ComponentModel;

namespace System.Web.UI.WebControls.WebParts;

public interface IWebPartParameters
{
	PropertyDescriptorCollection Schema { get; }

	void GetParametersData(ParametersCallback callback);

	void SetConsumerSchema(PropertyDescriptorCollection schema);
}
