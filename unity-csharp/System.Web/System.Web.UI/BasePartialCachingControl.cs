using System.ComponentModel;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.Caching;

namespace System.Web.UI;

[ToolboxItem(false)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class BasePartialCachingControl : Control
{
	private CacheDependency dependency;

	private string ctrl_id;

	private string guid;

	private int duration;

	private string varyby_params;

	private string varyby_controls;

	private string varyby_custom;

	private DateTime expirationTime;

	private bool slidingExpiration;

	private Control control;

	private ControlCachePolicy cachePolicy;

	private string cacheKey;

	private string cachedData;

	internal string CtrlID
	{
		get
		{
			return ctrl_id;
		}
		set
		{
			ctrl_id = value;
		}
	}

	internal string Guid
	{
		get
		{
			return guid;
		}
		set
		{
			guid = value;
		}
	}

	internal int Duration
	{
		get
		{
			return duration;
		}
		set
		{
			duration = value;
		}
	}

	internal string VaryByParams
	{
		get
		{
			return varyby_params;
		}
		set
		{
			varyby_params = value;
		}
	}

	internal string VaryByControls
	{
		get
		{
			return varyby_controls;
		}
		set
		{
			varyby_controls = value;
		}
	}

	internal string VaryByCustom
	{
		get
		{
			return varyby_custom;
		}
		set
		{
			varyby_custom = value;
		}
	}

	internal DateTime ExpirationTime
	{
		get
		{
			return expirationTime;
		}
		set
		{
			expirationTime = value;
		}
	}

	internal bool SlidingExpiration
	{
		get
		{
			return slidingExpiration;
		}
		set
		{
			slidingExpiration = value;
		}
	}

	internal string ProviderName { get; set; }

	public ControlCachePolicy CachePolicy
	{
		get
		{
			if (cachePolicy == null)
			{
				cachePolicy = new ControlCachePolicy(this);
			}
			return cachePolicy;
		}
	}

	public CacheDependency Dependency
	{
		get
		{
			return dependency;
		}
		set
		{
			dependency = value;
		}
	}

	internal abstract Control CreateControl();

	public override void Dispose()
	{
		if (dependency != null)
		{
			dependency.Dispose();
			dependency = null;
		}
	}

	private void RetrieveCachedContents()
	{
		cacheKey = CreateKey();
		OutputCacheProvider provider = GetProvider();
		cachedData = provider.Get(cacheKey) as string;
	}

	private OutputCacheProvider GetProvider()
	{
		string providerName = ProviderName;
		OutputCacheProvider outputCacheProvider;
		if (string.IsNullOrEmpty(providerName))
		{
			outputCacheProvider = OutputCache.DefaultProvider;
		}
		else
		{
			outputCacheProvider = OutputCache.GetProvider(providerName);
			if (outputCacheProvider == null)
			{
				outputCacheProvider = OutputCache.DefaultProvider;
			}
		}
		return outputCacheProvider;
	}

	private void OnDependencyChanged(string key, object value, CacheItemRemovedReason reason)
	{
		Console.WriteLine("{0}.OnDependencyChanged (\"{0}\", {1}, {2})", this, key, value, reason);
		GetProvider().Remove(key);
	}

	internal override void InitRecursive(Control namingContainer)
	{
		RetrieveCachedContents();
		if (cachedData == null)
		{
			control = CreateControl();
			Controls.Add(control);
		}
		else
		{
			control = null;
		}
		base.InitRecursive(namingContainer);
	}

	protected internal override void Render(HtmlTextWriter output)
	{
		if (cachedData != null)
		{
			output.Write(cachedData);
			return;
		}
		if (control == null)
		{
			base.Render(output);
			return;
		}
		HttpContext current = HttpContext.Current;
		StringWriter stringWriter = new StringWriter();
		TextWriter textWriter = current.Response.SetTextWriter(stringWriter);
		HtmlTextWriter writer = new HtmlTextWriter(stringWriter);
		string text;
		try
		{
			control.RenderControl(writer);
		}
		finally
		{
			text = stringWriter.ToString();
			current.Response.SetTextWriter(textWriter);
			output.Write(text);
		}
		OutputCacheProvider provider = GetProvider();
		DateTime utcExpiry = DateTime.UtcNow.AddSeconds(duration);
		provider.Set(cacheKey, text, utcExpiry);
		current.InternalCache.Insert(cacheKey, text, dependency, utcExpiry.ToLocalTime(), Cache.NoSlidingExpiration, CacheItemPriority.Normal, null);
	}

	private string CreateKey()
	{
		StringBuilder stringBuilder = new StringBuilder();
		HttpContext current = HttpContext.Current;
		stringBuilder.Append("PartialCachingControl\n");
		stringBuilder.Append("GUID: " + guid + "\n");
		if (varyby_params != null && varyby_params.Length > 0)
		{
			string[] array = varyby_params.Split(';');
			for (int i = 0; i < array.Length; i++)
			{
				string text = current.Request.Params[array[i]];
				stringBuilder.Append("VP:");
				stringBuilder.Append(array[i]);
				stringBuilder.Append('=');
				stringBuilder.Append((text != null) ? text : "__null__");
				stringBuilder.Append('\n');
			}
		}
		if (varyby_controls != null && varyby_params.Length > 0)
		{
			string[] array2 = varyby_controls.Split(';');
			for (int j = 0; j < array2.Length; j++)
			{
				string text2 = current.Request.Params[array2[j]];
				stringBuilder.Append("VCN:");
				stringBuilder.Append(array2[j]);
				stringBuilder.Append('=');
				stringBuilder.Append((text2 != null) ? text2 : "__null__");
				stringBuilder.Append('\n');
			}
		}
		if (varyby_custom != null)
		{
			string varyByCustomString = current.ApplicationInstance.GetVaryByCustomString(current, varyby_custom);
			stringBuilder.Append("VC:");
			stringBuilder.Append(varyby_custom);
			stringBuilder.Append('=');
			stringBuilder.Append((varyByCustomString != null) ? varyByCustomString : "__null__");
			stringBuilder.Append('\n');
		}
		return stringBuilder.ToString();
	}
}
