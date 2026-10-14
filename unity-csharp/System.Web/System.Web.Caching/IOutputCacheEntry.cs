using System.Collections.Generic;

namespace System.Web.Caching;

public interface IOutputCacheEntry
{
	List<HeaderElement> HeaderElements { get; set; }

	List<ResponseElement> ResponseElements { get; set; }
}
