using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.HiddenFieldDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ControlValueProperty("Value")]
[NonVisualControl]
[ParseChildren]
[PersistChildren(false)]
[SupportsEventValidation]
[DefaultEvent("ValueChanged")]
[DefaultProperty("Value")]
public class HiddenField : Control, IPostBackDataHandler
{
	private static readonly object ValueChangedEvent = new object();

	[Bindable(true)]
	[DefaultValue("")]
	public virtual string Value
	{
		get
		{
			return ViewState.GetString("Value", string.Empty);
		}
		set
		{
			ViewState["Value"] = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DefaultValue(false)]
	public override bool EnableTheming
	{
		get
		{
			return false;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DefaultValue("")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string SkinID
	{
		get
		{
			return string.Empty;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	public event EventHandler ValueChanged
	{
		add
		{
			Events.AddHandler(ValueChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ValueChangedEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void Focus()
	{
		throw new NotSupportedException();
	}

	protected virtual void OnValueChanged(EventArgs e)
	{
		((EventHandler)Events[ValueChangedEvent])?.Invoke(this, e);
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		if (Value != postCollection[postDataKey])
		{
			Value = postCollection[postDataKey];
			return true;
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		ValidateEvent(UniqueID, string.Empty);
		OnValueChanged(EventArgs.Empty);
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		Page page = Page;
		string text = UniqueID;
		page?.ClientScript.RegisterForEventValidation(text);
		writer.AddAttribute(HtmlTextWriterAttribute.Type, "hidden", fEncode: false);
		if (!string.IsNullOrEmpty(ClientID))
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Id, ClientID);
		}
		if (!string.IsNullOrEmpty(text))
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Name, text);
		}
		if (!string.IsNullOrEmpty(Value))
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Value, Value);
		}
		writer.RenderBeginTag(HtmlTextWriterTag.Input);
		writer.RenderEndTag();
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}
}
