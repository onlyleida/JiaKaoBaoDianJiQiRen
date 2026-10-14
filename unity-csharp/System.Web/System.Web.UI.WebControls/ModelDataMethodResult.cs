using System.Collections.Specialized;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls;

public class ModelDataMethodResult
{
	public OrderedDictionary OutputParameters
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public object ReturnValue
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ModelDataMethodResult(object returnValue, OrderedDictionary outputParameters)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
