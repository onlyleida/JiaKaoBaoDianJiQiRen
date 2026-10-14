using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[TypeConverter(typeof(ExpandableObjectConverter))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class HotSpot : IStateManager
{
	private StateBag viewState = new StateBag();

	[Localizable(true)]
	[DefaultValue("")]
	public virtual string AccessKey
	{
		get
		{
			object obj = viewState["AccessKey"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			if (value == null || value.Length < 2)
			{
				viewState["AccessKey"] = value;
				return;
			}
			throw new ArgumentOutOfRangeException("value", "AccessKey can only be null, empty or a single character");
		}
	}

	[NotifyParentProperty(true)]
	[Bindable(true)]
	[DefaultValue("")]
	[Localizable(true)]
	[WebCategory("Behavior")]
	public virtual string AlternateText
	{
		get
		{
			object obj = viewState["AlternateText"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["AlternateText"] = value;
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(HotSpotMode.NotSet)]
	[WebCategory("Behavior")]
	public virtual HotSpotMode HotSpotMode
	{
		get
		{
			object obj = viewState["HotSpotMode"];
			if (obj == null)
			{
				return HotSpotMode.NotSet;
			}
			return (HotSpotMode)obj;
		}
		set
		{
			if (value < HotSpotMode.NotSet || value > HotSpotMode.Inactive)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			viewState["HotSpotMode"] = value;
		}
	}

	[DefaultValue("")]
	[Bindable(true)]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[NotifyParentProperty(true)]
	[UrlProperty]
	public string NavigateUrl
	{
		get
		{
			object obj = viewState["NavigateUrl"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["NavigateUrl"] = value;
		}
	}

	[WebCategory("Behavior")]
	[DefaultValue("")]
	[Bindable(true)]
	[NotifyParentProperty(true)]
	public string PostBackValue
	{
		get
		{
			object obj = viewState["PostBackValue"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["PostBackValue"] = value;
		}
	}

	[DefaultValue(0)]
	[WebCategory("Accessibility")]
	public virtual short TabIndex
	{
		get
		{
			object obj = viewState["TabIndex"];
			if (obj == null)
			{
				return 0;
			}
			return (short)obj;
		}
		set
		{
			viewState["TabIndex"] = value;
		}
	}

	[WebCategory("Behavior")]
	[TypeConverter(typeof(TargetConverter))]
	[NotifyParentProperty(true)]
	[DefaultValue("")]
	public virtual string Target
	{
		get
		{
			object obj = viewState["Target"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["Target"] = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected StateBag ViewState => viewState;

	protected virtual bool IsTrackingViewState => viewState.IsTrackingViewState;

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	protected internal abstract string MarkupName { get; }

	protected virtual void LoadViewState(object savedState)
	{
		viewState.LoadViewState(savedState);
	}

	protected virtual object SaveViewState()
	{
		return viewState.SaveViewState();
	}

	protected virtual void TrackViewState()
	{
		viewState.TrackViewState();
	}

	void IStateManager.LoadViewState(object savedState)
	{
		LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	public override string ToString()
	{
		return GetType().Name;
	}

	internal void SetDirty()
	{
		viewState.SetDirty(dirty: true);
	}

	public abstract string GetCoordinates();
}
