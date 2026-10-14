using System.Collections;
using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[TypeConverter("System.Web.UI.WebControls.EmptyStringExpandableObjectConverter")]
public class WebPartPersonalization
{
	public static readonly WebPartUserCapability EnterSharedScopeUserCapability;

	public static readonly WebPartUserCapability ModifyStateUserCapability;

	public bool CanEnterSharedScope
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool Enabled
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

	public virtual bool HasPersonalizationState
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual PersonalizationScope InitialScope
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

	public bool IsEnabled
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected bool IsInitialized
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool IsModifiable
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual string ProviderName
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

	public PersonalizationScope Scope
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected bool ShouldResetPersonalizationState
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

	protected virtual IDictionary UserCapabilities
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected WebPartManager WebPartManager
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartPersonalization(WebPartManager owner)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual void ApplyPersonalizationState()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual void ApplyPersonalizationState(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void ChangeScope(PersonalizationScope scope)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual void CopyPersonalizationState(WebPart webPartA, WebPart webPartB)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void EnsureEnabled(bool ensureModifiable)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual void ExtractPersonalizationState()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual void ExtractPersonalizationState(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual string GetAuthorizationFilter(string webPartID)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual PersonalizationScope Load()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual void ResetPersonalizationState()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void Save()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual void SetDirty()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual void SetDirty(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void ToggleScope()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
