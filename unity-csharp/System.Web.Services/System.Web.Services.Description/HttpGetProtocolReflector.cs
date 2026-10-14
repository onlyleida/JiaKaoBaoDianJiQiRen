using System.Web.Services.Protocols;

namespace System.Web.Services.Description;

internal class HttpGetProtocolReflector : HttpProtocolReflector
{
	public override string ProtocolName => "HttpGet";

	protected override void BeginClass()
	{
		if (IsEmptyBinding)
		{
			return;
		}
		HttpBinding httpBinding = new HttpBinding();
		httpBinding.Verb = "GET";
		Binding.Extensions.Add(httpBinding);
		HttpAddressBinding httpAddressBinding = new HttpAddressBinding();
		httpAddressBinding.Location = ServiceUrl;
		if (UriFixups != null)
		{
			UriFixups.Add((Uri current) =>
			{
				httpAddressBinding.Location = DiscoveryServerType.CombineUris(current, httpAddressBinding.Location);
			});
		}
		Port.Extensions.Add(httpAddressBinding);
	}

	protected override bool ReflectMethod()
	{
		if (!ReflectUrlParameters())
		{
			return false;
		}
		if (!ReflectMimeReturn())
		{
			return false;
		}
		HttpOperationBinding httpOperationBinding = new HttpOperationBinding();
		httpOperationBinding.Location = MethodUrl;
		OperationBinding.Extensions.Add(httpOperationBinding);
		return true;
	}
}
