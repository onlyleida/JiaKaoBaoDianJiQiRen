using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ParseChildren(true, "HotSpots")]
[DefaultProperty("HotSpots")]
[DefaultEvent("Click")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ImageMap : Image, IPostBackEventHandler
{
	private HotSpotCollection spots;

	private static readonly object ClickEvent = new object();

	[Browsable(true)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public override bool Enabled
	{
		get
		{
			return base.Enabled;
		}
		set
		{
			base.Enabled = value;
		}
	}

	[DefaultValue(HotSpotMode.NotSet)]
	public virtual HotSpotMode HotSpotMode
	{
		get
		{
			object obj = ViewState["HotSpotMode"];
			if (obj == null)
			{
				return HotSpotMode.NotSet;
			}
			return (HotSpotMode)obj;
		}
		set
		{
			ViewState["HotSpotMode"] = value;
		}
	}

	[DefaultValue("")]
	public virtual string Target
	{
		get
		{
			object obj = ViewState["Target"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[NotifyParentProperty(true)]
	public HotSpotCollection HotSpots
	{
		get
		{
			if (spots == null)
			{
				spots = new HotSpotCollection();
				if (IsTrackingViewState)
				{
					((IStateManager)spots).TrackViewState();
				}
			}
			return spots;
		}
	}

	[Category("Action")]
	public event ImageMapEventHandler Click
	{
		add
		{
			Events.AddHandler(ClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ClickEvent, value);
		}
	}

	protected virtual void OnClick(ImageMapEventArgs e)
	{
		if (Events != null)
		{
			((ImageMapEventHandler)Events[ClickEvent])?.Invoke(this, e);
		}
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (spots != null)
		{
			((IStateManager)spots).TrackViewState();
		}
	}

	protected override object SaveViewState()
	{
		object obj = base.SaveViewState();
		object obj2 = ((spots != null) ? ((IStateManager)spots).SaveViewState() : null);
		if (obj != null || obj2 != null)
		{
			return new Pair(obj, obj2);
		}
		return null;
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			base.LoadViewState(null);
			return;
		}
		Pair pair = (Pair)savedState;
		base.LoadViewState(pair.First);
		((IStateManager)HotSpots).LoadViewState(pair.Second);
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		ValidateEvent(UniqueID, eventArgument);
		HotSpot hotSpot = HotSpots[int.Parse(eventArgument)];
		OnClick(new ImageMapEventArgs(hotSpot.PostBackValue));
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		if (spots != null && spots.Count > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Usemap, "#ImageMap" + ClientID);
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		base.Render(writer);
		if (spots == null || spots.Count <= 0)
		{
			return;
		}
		bool flag = Enabled;
		writer.AddAttribute(HtmlTextWriterAttribute.Id, "ImageMap" + ClientID);
		writer.AddAttribute(HtmlTextWriterAttribute.Name, "ImageMap" + ClientID);
		writer.RenderBeginTag(HtmlTextWriterTag.Map);
		for (int i = 0; i < spots.Count; i++)
		{
			HotSpot hotSpot = spots[i];
			writer.AddAttribute(HtmlTextWriterAttribute.Shape, hotSpot.MarkupName);
			writer.AddAttribute(HtmlTextWriterAttribute.Coords, hotSpot.GetCoordinates());
			writer.AddAttribute(HtmlTextWriterAttribute.Title, hotSpot.AlternateText);
			writer.AddAttribute(HtmlTextWriterAttribute.Alt, hotSpot.AlternateText);
			if (hotSpot.AccessKey.Length > 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Accesskey, hotSpot.AccessKey);
			}
			if (hotSpot.TabIndex != 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Tabindex, hotSpot.TabIndex.ToString());
			}
			switch ((hotSpot.HotSpotMode != HotSpotMode.NotSet) ? hotSpot.HotSpotMode : HotSpotMode)
			{
			case HotSpotMode.Inactive:
				writer.AddAttribute("nohref", "true", fEndode: false);
				break;
			case HotSpotMode.Navigate:
			{
				string value = ((hotSpot.Target.Length > 0) ? hotSpot.Target : Target);
				if (!string.IsNullOrEmpty(value))
				{
					writer.AddAttribute(HtmlTextWriterAttribute.Target, value);
				}
				if (flag)
				{
					string value2 = ResolveClientUrl(hotSpot.NavigateUrl);
					writer.AddAttribute(HtmlTextWriterAttribute.Href, value2);
				}
				break;
			}
			case HotSpotMode.PostBack:
				writer.AddAttribute(HtmlTextWriterAttribute.Href, Page.ClientScript.GetPostBackClientHyperlink(this, i.ToString(), registerForEventValidation: true));
				break;
			}
			writer.RenderBeginTag(HtmlTextWriterTag.Area);
			writer.RenderEndTag();
		}
		writer.RenderEndTag();
	}
}
