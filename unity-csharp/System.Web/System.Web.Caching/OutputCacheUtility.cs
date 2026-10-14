using System.Collections;
using System.Collections.Generic;
using Unity;

namespace System.Web.Caching;

public static class OutputCacheUtility
{
	public static CacheDependency CreateCacheDependency(HttpResponse response)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static void FlushKernelCache(string cacheKey)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static ArrayList GetContentBuffers(HttpResponse response)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static IEnumerable<KeyValuePair<HttpCacheValidateHandler, object>> GetValidationCallbacks(HttpResponse response)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<KeyValuePair<HttpCacheValidateHandler, object>>)0;
	}

	public static void SetContentBuffers(HttpResponse response, ArrayList buffers)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static string SetupKernelCaching(string originalCacheUrl, HttpResponse response)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
