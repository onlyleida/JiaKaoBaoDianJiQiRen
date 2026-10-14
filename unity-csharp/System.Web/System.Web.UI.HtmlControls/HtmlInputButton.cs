using System.ComponentModel;
using System.Globalization;
using System.Reflection;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[DefaultEvent("ServerClick")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputButton : HtmlInputControl, IPostBackEventHandler
{
	private static readonly object ServerClickEvent = new object();

	[WebSysDescription("")]
	[DefaultValue(true)]
	[WebCategory("Behavior")]
	public virtual bool CausesValidation
	{
		get
		{
			string text = Attributes["CausesValidation"];
			if (text == null)
			{
				return true;
			}
			return bool.Parse(text);
		}
		set
		{
			Attributes["CausesValidation"] = value.ToString();
		}
	}

	[DefaultValue("")]
	public virtual string ValidationGroup
	{
		get
		{
			string text = Attributes["ValidationGroup"];
			if (text == null)
			{
				return "";
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("ValidationGroup");
			}
			else
			{
				Attributes["ValidationGroup"] = value;
			}
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event EventHandler ServerClick
	{
		add
		{
			Events.AddHandler(ServerClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ServerClickEvent, value);
		}
	}

	public HtmlInputButton()
		: this("button")
	{
	}

	public HtmlInputButton(string type)
		: base(type)
	{
	}

	private void RaisePostBackEventInternal(string eventArgument)
	{
		ValidateEvent(UniqueID, eventArgument);
		if (CausesValidation)
		{
			Page.Validate(ValidationGroup);
		}
		if (string.Compare(Type, "reset", ignoreCase: true, Helpers.InvariantCulture) != 0)
		{
			OnServerClick(EventArgs.Empty);
		}
		else
		{
			ResetForm(FindForm());
		}
	}

	private HtmlForm FindForm()
	{
		return Page?.Form;
	}

	private void ResetForm(HtmlForm form)
	{
		if (form != null && form.HasControls())
		{
			ResetChildrenValues(form.Controls);
		}
	}

	private void ResetChildrenValues(ControlCollection children)
	{
		foreach (Control child in children)
		{
			if (child != null)
			{
				if (child.HasControls())
				{
					ResetChildrenValues(child.Controls);
				}
				ResetChildValue(child);
			}
		}
	}

	private void ResetChildValue(Control child)
	{
		Type type = child.GetType();
		object[] customAttributes = type.GetCustomAttributes(inherit: false);
		if (customAttributes == null || customAttributes.Length == 0)
		{
			return;
		}
		string text = null;
		object[] array = customAttributes;
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is DefaultPropertyAttribute defaultPropertyAttribute)
			{
				text = defaultPropertyAttribute.Name;
				break;
			}
		}
		if (text == null || text.Length == 0)
		{
			return;
		}
		PropertyInfo propertyInfo = null;
		try
		{
			propertyInfo = type.GetProperty(text, BindingFlags.IgnoreCase | BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public);
		}
		catch (Exception)
		{
		}
		if (propertyInfo == null || !propertyInfo.CanWrite)
		{
			return;
		}
		customAttributes = propertyInfo.GetCustomAttributes(inherit: false);
		if (customAttributes == null || customAttributes.Length == 0)
		{
			return;
		}
		DefaultValueAttribute defaultValueAttribute = null;
		object obj = null;
		array = customAttributes;
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is DefaultValueAttribute defaultValueAttribute2)
			{
				obj = defaultValueAttribute2.Value;
				break;
			}
		}
		if (obj == null || propertyInfo.PropertyType != obj.GetType())
		{
			return;
		}
		try
		{
			propertyInfo.SetValue(child, obj, null);
		}
		catch (Exception)
		{
		}
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEventInternal(eventArgument);
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		if ((object)Events[ServerClickEvent] != null)
		{
			Page.RequiresPostBackScript();
		}
	}

	protected virtual void OnServerClick(EventArgs e)
	{
		((EventHandler)Events[ServerClickEvent])?.Invoke(this, e);
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		CultureInfo invariantCulture = Helpers.InvariantCulture;
		string type = Type;
		if (string.Compare(type, "reset", ignoreCase: true, invariantCulture) != 0 && (string.Compare(type, "submit", ignoreCase: true, invariantCulture) == 0 || (string.Compare(type, "button", ignoreCase: true, invariantCulture) == 0 && (object)Events[ServerClickEvent] != null)))
		{
			string text = string.Empty;
			if (Attributes["onclick"] != null)
			{
				text = ClientScriptManager.EnsureEndsWithSemicolon(Attributes["onclick"] + text);
				Attributes.Remove("onclick");
			}
			Page page = Page;
			if (page != null)
			{
				PostBackOptions postBackOptions = GetPostBackOptions();
				text += page.ClientScript.GetPostBackEventReference(postBackOptions, registerForEventValidation: true);
			}
			if (text.Length > 0)
			{
				bool fEncode = true;
				if ((object)Events[ServerClickEvent] != null)
				{
					fEncode = false;
				}
				writer.WriteAttribute("onclick", text, fEncode);
				writer.WriteAttribute("language", "javascript");
			}
		}
		Attributes.Remove("CausesValidation");
		base.RenderAttributes(writer);
	}

	private PostBackOptions GetPostBackOptions()
	{
		Page page = Page;
		PostBackOptions postBackOptions = new PostBackOptions(this);
		postBackOptions.ValidationGroup = null;
		postBackOptions.ActionUrl = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.RequiresJavaScriptProtocol = false;
		postBackOptions.ClientSubmit = string.Compare(Type, "submit", ignoreCase: true, Helpers.InvariantCulture) != 0;
		postBackOptions.PerformValidation = CausesValidation && page != null && page.Validators.Count > 0;
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		return postBackOptions;
	}
}
