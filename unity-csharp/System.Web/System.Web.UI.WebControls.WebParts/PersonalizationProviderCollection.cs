using System.Configuration.Provider;
using System.Reflection;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[DefaultMember("Item")]
public sealed class PersonalizationProviderCollection : ProviderCollection
{
	public PersonalizationProviderCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void CopyTo(PersonalizationProvider[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
