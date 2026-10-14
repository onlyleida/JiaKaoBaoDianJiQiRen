using System.ComponentModel;
using System.Security.Permissions;
using System.Text;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TableHeaderCell : TableCell
{
	[DefaultValue("")]
	public virtual string AbbreviatedText
	{
		get
		{
			object obj = ViewState["AbbreviatedText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("AbbreviatedText");
			}
			else
			{
				ViewState["AbbreviatedText"] = value;
			}
		}
	}

	[DefaultValue(null)]
	[TypeConverter(typeof(StringArrayConverter))]
	public virtual string[] CategoryText
	{
		get
		{
			object obj = ViewState["CategoryText"];
			if (obj != null)
			{
				return (string[])obj;
			}
			return new string[0];
		}
		set
		{
			ViewState["CategoryText"] = value;
		}
	}

	[DefaultValue(TableHeaderScope.NotSet)]
	public virtual TableHeaderScope Scope
	{
		get
		{
			object obj = ViewState["Scope"];
			if (obj != null)
			{
				return (TableHeaderScope)obj;
			}
			return TableHeaderScope.NotSet;
		}
		set
		{
			ViewState["Scope"] = (int)value;
		}
	}

	public TableHeaderCell()
		: base(HtmlTextWriterTag.Th)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		if (writer == null)
		{
			return;
		}
		object obj = ViewState["AbbreviatedText"];
		if (obj != null)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Abbr, (string)obj);
		}
		switch (Scope)
		{
		case TableHeaderScope.Column:
			writer.AddAttribute(HtmlTextWriterAttribute.Scope, "column", fEncode: false);
			break;
		case TableHeaderScope.Row:
			writer.AddAttribute(HtmlTextWriterAttribute.Scope, "row", fEncode: false);
			break;
		}
		string[] categoryText = CategoryText;
		if (categoryText.Length == 1)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Axis, categoryText[0]);
		}
		else if (categoryText.Length > 1)
		{
			StringBuilder stringBuilder = new StringBuilder();
			for (int i = 0; i < categoryText.Length - 1; i++)
			{
				stringBuilder.Append(categoryText[i]);
				stringBuilder.Append(",");
			}
			stringBuilder.Append(categoryText[categoryText.Length - 1]);
			writer.AddAttribute(HtmlTextWriterAttribute.Axis, stringBuilder.ToString());
		}
	}
}
