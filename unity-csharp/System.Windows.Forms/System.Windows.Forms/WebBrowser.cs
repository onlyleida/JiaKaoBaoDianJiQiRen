using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Runtime.InteropServices;
using Microsoft.Win32;
using Mono.WebBrowser;

namespace System.Windows.Forms;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.AutoDispatch)]
[Docking(DockingBehavior.AutoDock)]
[DefaultProperty("Url")]
[Designer("System.Windows.Forms.Design.WebBrowserDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultEvent("DocumentCompleted")]
public class WebBrowser : WebBrowserBase
{
	[ComVisible(false)]
	[MonoTODO("Stub, not implemented")]
	protected class WebBrowserSite : WebBrowserSiteBase
	{
		[MonoTODO("Stub, not implemented")]
		public WebBrowserSite(WebBrowser host)
		{
		}
	}

	private bool allowNavigation;

	private bool allowWebBrowserDrop = true;

	private bool isWebBrowserContextMenuEnabled;

	private object objectForScripting;

	private bool webBrowserShortcutsEnabled;

	private bool scrollbarsEnabled = true;

	private WebBrowserReadyState readyState;

	private HtmlDocument document;

	private WebBrowserEncryptionLevel securityLevel;

	private Stream data;

	private bool isStreamSet;

	private string url;

	[DefaultValue(true)]
	public bool AllowNavigation
	{
		get
		{
			return allowNavigation;
		}
		set
		{
			allowNavigation = value;
		}
	}

	[DefaultValue(true)]
	public bool AllowWebBrowserDrop
	{
		get
		{
			return allowWebBrowserDrop;
		}
		set
		{
			allowWebBrowserDrop = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool CanGoBack => WebHost.Navigation.CanGoBack;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool CanGoForward => WebHost.Navigation.CanGoForward;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HtmlDocument Document
	{
		get
		{
			if (document == null && documentReady)
			{
				document = new HtmlDocument(this, WebHost);
			}
			return document;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Stream DocumentStream
	{
		get
		{
			if (WebHost.Document != null)
			{
				_ = WebHost.Document.DocumentElement;
			}
			return null;
		}
		set
		{
			if (!allowNavigation)
			{
				Url = new Uri("about:blank");
				data = value;
				isStreamSet = true;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string DocumentText
	{
		get
		{
			if (WebHost.Document == null || WebHost.Document.DocumentElement == null)
			{
				return string.Empty;
			}
			return WebHost.Document.DocumentElement.OuterHTML;
		}
		set
		{
			if (WebHost.Document != null && WebHost.Document.DocumentElement != null)
			{
				WebHost.Document.DocumentElement.OuterHTML = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string DocumentTitle
	{
		get
		{
			if (document != null)
			{
				return document.Title;
			}
			return string.Empty;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string DocumentType
	{
		get
		{
			if (document != null)
			{
				return document.DocType;
			}
			return string.Empty;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public WebBrowserEncryptionLevel EncryptionLevel => securityLevel;

	public override bool Focused => base.Focused;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsBusy => !documentReady;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsOffline => WebHost.Offline;

	[MonoTODO("Stub, not implemented")]
	[DefaultValue(true)]
	public bool IsWebBrowserContextMenuEnabled
	{
		get
		{
			return isWebBrowserContextMenuEnabled;
		}
		set
		{
			isWebBrowserContextMenuEnabled = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[MonoTODO("Stub, not implemented")]
	public object ObjectForScripting
	{
		get
		{
			return objectForScripting;
		}
		set
		{
			objectForScripting = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public WebBrowserReadyState ReadyState => readyState;

	[DefaultValue(false)]
	public bool ScriptErrorsSuppressed
	{
		get
		{
			return SuppressDialogs;
		}
		set
		{
			SuppressDialogs = value;
		}
	}

	[DefaultValue(true)]
	public bool ScrollBarsEnabled
	{
		get
		{
			return scrollbarsEnabled;
		}
		set
		{
			scrollbarsEnabled = value;
			if (document != null)
			{
				SetScrollbars();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual string StatusText => status;

	[TypeConverter(typeof(WebBrowserUriTypeConverter))]
	[DefaultValue(null)]
	[Bindable(true)]
	public Uri Url
	{
		get
		{
			if (url != null)
			{
				return new Uri(url);
			}
			if (WebHost.Document != null && WebHost.Document.Url != null)
			{
				return new Uri(WebHost.Document.Url);
			}
			return null;
		}
		set
		{
			url = null;
			Navigate(value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Version Version => WebHost.GetType().Assembly.GetName().Version;

	[MonoTODO("Stub, not implemented")]
	[DefaultValue(true)]
	public bool WebBrowserShortcutsEnabled
	{
		get
		{
			return webBrowserShortcutsEnabled;
		}
		set
		{
			webBrowserShortcutsEnabled = value;
		}
	}

	protected override Size DefaultSize => base.DefaultSize;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new Padding Padding
	{
		get
		{
			return base.Padding;
		}
		set
		{
			base.Padding = value;
		}
	}

	[Browsable(false)]
	public event EventHandler CanGoBackChanged;

	[Browsable(false)]
	public event EventHandler CanGoForwardChanged;

	public event WebBrowserDocumentCompletedEventHandler DocumentCompleted;

	[Browsable(false)]
	public event EventHandler DocumentTitleChanged;

	[Browsable(false)]
	public event EventHandler EncryptionLevelChanged;

	public event EventHandler FileDownload;

	public event WebBrowserNavigatedEventHandler Navigated;

	public event WebBrowserNavigatingEventHandler Navigating;

	public event CancelEventHandler NewWindow;

	public event WebBrowserProgressChangedEventHandler ProgressChanged;

	[Browsable(false)]
	public event EventHandler StatusTextChanged;

	[MonoTODO]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new event EventHandler PaddingChanged;

	[MonoTODO("WebBrowser control is only supported on Linux/Windows. No support for OSX.")]
	public WebBrowser()
	{
	}

	public bool GoBack()
	{
		documentReady = false;
		document = null;
		return WebHost.Navigation.Back();
	}

	public bool GoForward()
	{
		documentReady = false;
		document = null;
		return WebHost.Navigation.Forward();
	}

	public void GoHome()
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Home();
	}

	public void Navigate(string urlString)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(urlString);
	}

	public void Navigate(Uri url)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(url.ToString());
	}

	public void Navigate(string urlString, bool newWindow)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(urlString);
	}

	public void Navigate(string urlString, string targetFrameName)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(urlString);
	}

	public void Navigate(Uri url, bool newWindow)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(url.ToString());
	}

	public void Navigate(Uri url, string targetFrameName)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(url.ToString());
	}

	public void Navigate(string urlString, string targetFrameName, byte[] postData, string additionalHeaders)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(urlString);
	}

	public void Navigate(Uri url, string targetFrameName, byte[] postData, string additionalHeaders)
	{
		documentReady = false;
		document = null;
		WebHost.Navigation.Go(url.ToString());
	}

	public override void Refresh()
	{
		Refresh(WebBrowserRefreshOption.IfExpired);
	}

	public void Refresh(WebBrowserRefreshOption opt)
	{
		documentReady = false;
		document = null;
		switch (opt)
		{
		case WebBrowserRefreshOption.Normal:
			WebHost.Navigation.Reload(ReloadOption.Proxy);
			break;
		case WebBrowserRefreshOption.IfExpired:
			WebHost.Navigation.Reload(ReloadOption.None);
			break;
		case WebBrowserRefreshOption.Completely:
			WebHost.Navigation.Reload(ReloadOption.Full);
			break;
		case WebBrowserRefreshOption.Continue:
			break;
		}
	}

	public void Stop()
	{
		WebHost.Navigation.Stop();
	}

	public void GoSearch()
	{
		string urlString = "http://www.google.com";
		try
		{
			RegistryKey registryKey = Registry.CurrentUser.OpenSubKey("Software\\Microsoft\\Internet Explorer\\Main\\Search Page");
			if (registryKey != null)
			{
				object value = registryKey.GetValue("Default_Search_URL");
				if (value != null && value is string && Uri.TryCreate(value as string, UriKind.Absolute, out var result))
				{
					urlString = result.ToString();
				}
			}
		}
		catch
		{
		}
		Navigate(urlString);
	}

	public void Print()
	{
		throw new NotImplementedException();
	}

	public void ShowPageSetupDialog()
	{
		throw new NotImplementedException();
	}

	public void ShowPrintDialog()
	{
		throw new NotImplementedException();
	}

	public void ShowPrintPreviewDialog()
	{
		throw new NotImplementedException();
	}

	public void ShowPropertiesDialog()
	{
		throw new NotImplementedException();
	}

	public void ShowSaveAsDialog()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Stub, not implemented")]
	protected override void AttachInterfaces(object nativeActiveXObject)
	{
		base.AttachInterfaces(nativeActiveXObject);
	}

	[MonoTODO("Stub, not implemented")]
	protected override void CreateSink()
	{
		base.CreateSink();
	}

	[MonoTODO("Stub, not implemented")]
	protected override WebBrowserSiteBase CreateWebBrowserSiteBase()
	{
		return base.CreateWebBrowserSiteBase();
	}

	[MonoTODO("Stub, not implemented")]
	protected override void DetachInterfaces()
	{
		base.DetachInterfaces();
	}

	[MonoTODO("Stub, not implemented")]
	protected override void DetachSink()
	{
		base.DetachSink();
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	protected override void WndProc(ref Message m)
	{
		base.WndProc(ref m);
	}

	protected virtual void OnCanGoBackChanged(EventArgs e)
	{
		if (CanGoBackChanged != null)
		{
			CanGoBackChanged(this, e);
		}
	}

	protected virtual void OnCanGoForwardChanged(EventArgs e)
	{
		if (CanGoForwardChanged != null)
		{
			CanGoForwardChanged(this, e);
		}
	}

	protected virtual void OnDocumentCompleted(WebBrowserDocumentCompletedEventArgs e)
	{
		if (DocumentCompleted != null)
		{
			DocumentCompleted(this, e);
		}
	}

	protected virtual void OnDocumentTitleChanged(EventArgs e)
	{
		if (DocumentTitleChanged != null)
		{
			DocumentTitleChanged(this, e);
		}
	}

	protected virtual void OnEncryptionLevelChanged(EventArgs e)
	{
		if (EncryptionLevelChanged != null)
		{
			EncryptionLevelChanged(this, e);
		}
	}

	protected virtual void OnFileDownload(EventArgs e)
	{
		if (FileDownload != null)
		{
			FileDownload(this, e);
		}
	}

	protected virtual void OnNavigated(WebBrowserNavigatedEventArgs e)
	{
		if (Navigated != null)
		{
			Navigated(this, e);
		}
	}

	protected virtual void OnNavigating(WebBrowserNavigatingEventArgs e)
	{
		if (Navigating != null)
		{
			Navigating(this, e);
		}
	}

	protected virtual void OnNewWindow(CancelEventArgs e)
	{
		if (NewWindow != null)
		{
			NewWindow(this, e);
		}
	}

	protected virtual void OnProgressChanged(WebBrowserProgressChangedEventArgs e)
	{
		if (ProgressChanged != null)
		{
			ProgressChanged(this, e);
		}
	}

	protected virtual void OnStatusTextChanged(EventArgs e)
	{
		if (StatusTextChanged != null)
		{
			StatusTextChanged(this, e);
		}
	}

	internal override bool OnNewWindowInternal()
	{
		CancelEventArgs e = new CancelEventArgs();
		OnNewWindow(e);
		return e.Cancel;
	}

	internal override void OnWebHostLoadStarted(object sender, LoadStartedEventArgs e)
	{
		documentReady = false;
		document = null;
		readyState = WebBrowserReadyState.Loading;
		WebBrowserNavigatingEventArgs e2 = new WebBrowserNavigatingEventArgs(new Uri(e.Uri), e.FrameName);
		OnNavigating(e2);
	}

	internal override void OnWebHostLoadCommited(object sender, LoadCommitedEventArgs e)
	{
		readyState = WebBrowserReadyState.Loaded;
		url = e.Uri;
		SetScrollbars();
		WebBrowserNavigatedEventArgs e2 = new WebBrowserNavigatedEventArgs(new Uri(e.Uri));
		OnNavigated(e2);
	}

	internal override void OnWebHostProgressChanged(object sender, Mono.WebBrowser.ProgressChangedEventArgs e)
	{
		readyState = WebBrowserReadyState.Interactive;
		WebBrowserProgressChangedEventArgs e2 = new WebBrowserProgressChangedEventArgs(e.Progress, e.MaxProgress);
		OnProgressChanged(e2);
	}

	internal override void OnWebHostLoadFinished(object sender, LoadFinishedEventArgs e)
	{
		url = null;
		documentReady = true;
		readyState = WebBrowserReadyState.Complete;
		if (isStreamSet)
		{
			byte[] buffer = new byte[data.Length];
			long length = data.Length;
			int num = 0;
			data.Position = 0L;
			do
			{
				num = data.Read(buffer, (int)data.Position, (int)(length - data.Position));
			}
			while (num > 0);
			WebHost.Render(buffer);
			data = null;
			isStreamSet = false;
		}
		SetScrollbars();
		WebBrowserDocumentCompletedEventArgs e2 = new WebBrowserDocumentCompletedEventArgs(new Uri(e.Uri));
		OnDocumentCompleted(e2);
	}

	internal override void OnWebHostSecurityChanged(object sender, SecurityChangedEventArgs e)
	{
		switch (e.State)
		{
		case SecurityLevel.Insecure:
			securityLevel = WebBrowserEncryptionLevel.Insecure;
			break;
		case SecurityLevel.Mixed:
			securityLevel = WebBrowserEncryptionLevel.Mixed;
			break;
		case SecurityLevel.Secure:
			securityLevel = WebBrowserEncryptionLevel.Bit56;
			break;
		}
	}

	internal override void OnWebHostContextMenuShown(object sender, ContextMenuEventArgs e)
	{
		if (isWebBrowserContextMenuEnabled)
		{
			ContextMenu contextMenu = new ContextMenu();
			MenuItem item = new MenuItem("Back", delegate
			{
				GoBack();
			})
			{
				Enabled = CanGoBack
			};
			contextMenu.MenuItems.Add(item);
			item = new MenuItem("Forward", delegate
			{
				GoForward();
			})
			{
				Enabled = CanGoForward
			};
			contextMenu.MenuItems.Add(item);
			item = new MenuItem("Refresh", delegate
			{
				Refresh();
			});
			contextMenu.MenuItems.Add(item);
			contextMenu.MenuItems.Add(new MenuItem("-"));
			contextMenu.Show(this, PointToClient(Control.MousePosition));
		}
	}

	internal override void OnWebHostStatusChanged(object sender, StatusChangedEventArgs e)
	{
		status = e.Message;
		OnStatusTextChanged(null);
	}

	private void SetScrollbars()
	{
	}
}
