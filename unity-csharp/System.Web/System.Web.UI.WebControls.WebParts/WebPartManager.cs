using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Security;
using System.Xml;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Bindable(false)]
[Designer("System.Web.UI.Design.WebControls.WebParts.WebPartManagerDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[NonVisualControl]
[ParseChildren(true)]
[PersistChildren(false)]
[ViewStateModeById]
public class WebPartManager : Control, INamingContainer, IPersonalizable
{
	public static readonly WebPartDisplayMode BrowseDisplayMode;

	public static readonly WebPartDisplayMode CatalogDisplayMode;

	public static readonly WebPartDisplayMode ConnectDisplayMode;

	public static readonly WebPartDisplayMode DesignDisplayMode;

	public static readonly WebPartDisplayMode EditDisplayMode;

	public TransformerTypeCollection AvailableTransformers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string CloseProviderWarning
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebPartConnectionCollection Connections
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string DeleteWarning
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public virtual WebPartDisplayMode DisplayMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebPartDisplayModeCollection DisplayModes
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebPartConnectionCollection DynamicConnections
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual bool EnableClientScript
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public virtual string ExportSensitiveDataWarning
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	protected WebPartManagerInternals Internals
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected virtual bool IsCustomPersonalizationStateDirty
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected virtual PermissionSet MediumPermissionSet
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected virtual PermissionSet MinimalPermissionSet
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartPersonalization Personalization
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPart SelectedWebPart
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartConnectionCollection StaticConnections
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartDisplayModeCollection SupportedDisplayModes
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartCollection WebParts
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartZoneCollection Zones
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public event WebPartAuthorizationEventHandler AuthorizeWebPart
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event EventHandler ConnectionsActivated
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event EventHandler ConnectionsActivating
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartDisplayModeEventHandler DisplayModeChanged
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartDisplayModeCancelEventHandler DisplayModeChanging
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartEventHandler SelectedWebPartChanged
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartCancelEventHandler SelectedWebPartChanging
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartEventHandler WebPartAdded
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartAddingEventHandler WebPartAdding
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartEventHandler WebPartClosed
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartCancelEventHandler WebPartClosing
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartEventHandler WebPartDeleted
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartCancelEventHandler WebPartDeleting
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartEventHandler WebPartMoved
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartMovingEventHandler WebPartMoving
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartConnectionsEventHandler WebPartsConnected
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartConnectionsCancelEventHandler WebPartsConnecting
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartConnectionsEventHandler WebPartsDisconnected
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event WebPartConnectionsCancelEventHandler WebPartsDisconnecting
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebPartManager()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	bool IPersonalizable.get_IsDirty()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual void ActivateConnections()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public WebPart AddWebPart(WebPart webPart, WebPartZoneBase zone, int zoneIndex)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual void BeginWebPartConnecting(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void BeginWebPartEditing(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool CanConnectWebParts(WebPart provider, ProviderConnectionPoint providerConnectionPoint, WebPart consumer, ConsumerConnectionPoint consumerConnectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual bool CanConnectWebParts(WebPart provider, ProviderConnectionPoint providerConnectionPoint, WebPart consumer, ConsumerConnectionPoint consumerConnectionPoint, WebPartTransformer transformer)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual bool CheckRenderClientScript()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CloseWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public WebPartConnection ConnectWebParts(WebPart provider, ProviderConnectionPoint providerConnectionPoint, WebPart consumer, ConsumerConnectionPoint consumerConnectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual WebPartConnection ConnectWebParts(WebPart provider, ProviderConnectionPoint providerConnectionPoint, WebPart consumer, ConsumerConnectionPoint consumerConnectionPoint, WebPartTransformer transformer)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual WebPart CopyWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual TransformerTypeCollection CreateAvailableTransformers()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual WebPartDisplayModeCollection CreateDisplayModes()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual string CreateDynamicConnectionID()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual string CreateDynamicWebPartID(Type webPartType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual ErrorWebPart CreateErrorWebPart(string originalID, string originalTypeName, string originalPath, string genericWebPartID, string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual WebPartPersonalization CreatePersonalization()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual GenericWebPart CreateWebPart(Control control)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void DeleteWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void DisconnectWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void DisconnectWebParts(WebPartConnection connection)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void EndWebPartConnecting()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void EndWebPartEditing()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void ExportWebPart(WebPart webPart, XmlWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual ConsumerConnectionPointCollection GetConsumerConnectionPoints(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static WebPartManager GetCurrentWebPartManager(Page page)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected internal virtual string GetDisplayTitle(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public string GetExportUrl(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public GenericWebPart GetGenericWebPart(Control control)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual ProviderConnectionPointCollection GetProviderConnectionPoints(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual WebPart ImportWebPart(XmlReader reader, out string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual bool IsAuthorized(Type type, string path, string authorizationFilter, bool isShared)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool IsAuthorized(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual void LoadCustomPersonalizationState(PersonalizationDictionary state)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void MoveWebPart(WebPart webPart, WebPartZoneBase zone, int zoneIndex)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnAuthorizeWebPart(WebPartAuthorizationEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnConnectionsActivated(EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnConnectionsActivating(EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnDisplayModeChanged(WebPartDisplayModeEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnDisplayModeChanging(WebPartDisplayModeCancelEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnSelectedWebPartChanged(WebPartEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnSelectedWebPartChanging(WebPartCancelEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartAdded(WebPartEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartAdding(WebPartAddingEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartClosed(WebPartEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartClosing(WebPartCancelEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartDeleted(WebPartEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartDeleting(WebPartCancelEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartMoved(WebPartEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartMoving(WebPartMovingEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartsConnected(WebPartConnectionsEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartsConnecting(WebPartConnectionsCancelEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartsDisconnected(WebPartConnectionsEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnWebPartsDisconnecting(WebPartConnectionsCancelEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RegisterClientScript()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void SaveCustomPersonalizationState(PersonalizationDictionary state)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void SetPersonalizationDirty()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void SetSelectedWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IPersonalizable.Load(PersonalizationDictionary state)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IPersonalizable.Save(PersonalizationDictionary state)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
