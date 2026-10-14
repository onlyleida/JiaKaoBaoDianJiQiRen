using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[ValidationProperty("SelectedItem")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ListBox : ListControl, IPostBackDataHandler
{
	[Browsable(false)]
	public override Color BorderColor
	{
		get
		{
			return base.BorderColor;
		}
		set
		{
			base.BorderColor = value;
		}
	}

	[Browsable(false)]
	public override BorderStyle BorderStyle
	{
		get
		{
			return base.BorderStyle;
		}
		set
		{
			base.BorderStyle = value;
		}
	}

	[Browsable(false)]
	public override Unit BorderWidth
	{
		get
		{
			return base.BorderWidth;
		}
		set
		{
			base.BorderWidth = value;
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue(4)]
	[WebSysDescription("")]
	public virtual int Rows
	{
		get
		{
			return ViewState.GetInt("Rows", 4);
		}
		set
		{
			if (value < 1 || value > 2000)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["Rows"] = value;
		}
	}

	[DefaultValue(ListSelectionMode.Single)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual ListSelectionMode SelectionMode
	{
		get
		{
			return (ListSelectionMode)ViewState.GetInt("SelectionMode", 0);
		}
		set
		{
			if (!Enum.IsDefined(typeof(ListSelectionMode), value))
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["SelectionMode"] = value;
		}
	}

	public virtual int[] GetSelectedIndices()
	{
		return (int[])GetSelectedIndicesInternal().ToArray(typeof(int));
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		if (Page != null)
		{
			Page.VerifyRenderingInServerForm(this);
		}
		if (ID != null)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Name, UniqueID);
		}
		if (AutoPostBack)
		{
			string postBackEventReference = Page.ClientScript.GetPostBackEventReference(GetPostBackOptions(), registerForEventValidation: true);
			postBackEventReference = "setTimeout('" + postBackEventReference.Replace("\\", "\\\\").Replace("'", "\\'") + "', 0)";
			writer.AddAttribute(HtmlTextWriterAttribute.Onchange, BuildScriptAttribute("onchange", postBackEventReference));
		}
		if (SelectionMode == ListSelectionMode.Multiple)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Multiple, "multiple", fEncode: false);
		}
		writer.AddAttribute(HtmlTextWriterAttribute.Size, Rows.ToString(Helpers.InvariantCulture));
		base.AddAttributesToRender(writer);
	}

	private PostBackOptions GetPostBackOptions()
	{
		PostBackOptions postBackOptions = new PostBackOptions(this);
		postBackOptions.ActionUrl = null;
		postBackOptions.ValidationGroup = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.RequiresJavaScriptProtocol = false;
		postBackOptions.ClientSubmit = true;
		postBackOptions.PerformValidation = CausesValidation && Page != null && Page.AreValidatorsUplevel(ValidationGroup);
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		return postBackOptions;
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page page = Page;
		if (page != null && IsEnabled)
		{
			page.RegisterRequiresPostBack(this);
		}
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		EnsureDataBound();
		string[] values = postCollection.GetValues(postDataKey);
		if (values == null || values.Length == 0)
		{
			int selectedIndex = SelectedIndex;
			SelectedIndex = -1;
			return selectedIndex != -1;
		}
		ValidateEvent(UniqueID, values[0]);
		if (SelectionMode == ListSelectionMode.Single)
		{
			return SelectSingle(values);
		}
		return SelectMultiple(values);
	}

	private bool SelectSingle(string[] values)
	{
		string value = values[0];
		int num = Items.IndexOf(value);
		int selectedIndex = SelectedIndex;
		if (num != selectedIndex)
		{
			SelectedIndex = num;
			return true;
		}
		return false;
	}

	private bool SelectMultiple(string[] values)
	{
		ArrayList selectedIndicesInternal = GetSelectedIndicesInternal();
		ClearSelection();
		foreach (string value in values)
		{
			ListItem listItem = Items.FindByValue(value);
			if (listItem != null)
			{
				listItem.Selected = true;
			}
		}
		ArrayList selectedIndicesInternal2 = GetSelectedIndicesInternal();
		int num = selectedIndicesInternal.Count;
		if (selectedIndicesInternal2.Count != num)
		{
			return true;
		}
		while (--num >= 0)
		{
			if ((int)selectedIndicesInternal[num] != (int)selectedIndicesInternal2[num])
			{
				return true;
			}
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		if (CausesValidation)
		{
			Page.Validate(ValidationGroup);
		}
		OnSelectedIndexChanged(EventArgs.Empty);
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}

	internal override bool MultiSelectOk()
	{
		return SelectionMode == ListSelectionMode.Multiple;
	}
}
