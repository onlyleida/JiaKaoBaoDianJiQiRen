using System.Globalization;

namespace System.ComponentModel.Design;

[Obsolete("use CodeDomLocalizationProvider")]
[ProvideProperty("Localizable", typeof(object))]
[ProvideProperty("Language", typeof(object))]
[ProvideProperty("LoadLanguage", typeof(object))]
public class LocalizationExtenderProvider : IExtenderProvider, IDisposable
{
	[System.MonoTODO]
	public LocalizationExtenderProvider(ISite serviceProvider, IComponent baseComponent)
	{
	}

	[System.MonoTODO]
	public bool CanExtend(object o)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Dispose()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	[DesignOnly(true)]
	[Localizable(true)]
	[System.MonoTODO]
	public CultureInfo GetLanguage(object o)
	{
		throw new NotImplementedException();
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DesignOnly(true)]
	[System.MonoTODO]
	public CultureInfo GetLoadLanguage(object o)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	[Localizable(true)]
	[DesignOnly(true)]
	public bool GetLocalizable(object o)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void ResetLanguage(object o)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void SetLanguage(object o, CultureInfo language)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void SetLocalizable(object o, bool localizable)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public bool ShouldSerializeLanguage(object o)
	{
		throw new NotImplementedException();
	}
}
