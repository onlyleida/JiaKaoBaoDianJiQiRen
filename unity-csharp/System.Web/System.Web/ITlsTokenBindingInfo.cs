namespace System.Web;

public interface ITlsTokenBindingInfo
{
	byte[] GetProvidedTokenBindingId();

	byte[] GetReferredTokenBindingId();
}
