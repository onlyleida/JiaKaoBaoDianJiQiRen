using System.Collections;
using System.IO;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Html32TextWriter : HtmlTextWriter
{
	private bool div_table_substitution;

	private bool bold;

	private bool italic;

	[MonoTODO("no effect on html generation")]
	public bool ShouldPerformDivTableSubstitution
	{
		get
		{
			return div_table_substitution;
		}
		set
		{
			div_table_substitution = value;
		}
	}

	[MonoTODO("no effect on html generation")]
	public bool SupportsBold
	{
		get
		{
			return bold;
		}
		set
		{
			bold = value;
		}
	}

	[MonoTODO("no effect on html generation")]
	public bool SupportsItalic
	{
		get
		{
			return italic;
		}
		set
		{
			italic = value;
		}
	}

	[MonoTODO("Not implemented, always returns null")]
	protected Stack FontStack => null;

	public Html32TextWriter(TextWriter writer)
		: base(writer)
	{
	}

	public Html32TextWriter(TextWriter writer, string tabString)
		: base(writer, tabString)
	{
	}

	public override void RenderBeginTag(HtmlTextWriterTag tagKey)
	{
		base.RenderBeginTag(tagKey);
	}

	public override void RenderEndTag()
	{
		base.RenderEndTag();
	}

	protected override string GetTagName(HtmlTextWriterTag tagKey)
	{
		if (tagKey == HtmlTextWriterTag.Unknown || !Enum.IsDefined(typeof(HtmlTextWriterTag), tagKey))
		{
			return string.Empty;
		}
		return tagKey.ToString().ToLower(Helpers.InvariantCulture);
	}

	protected override bool OnStyleAttributeRender(string name, string value, HtmlTextWriterStyle key)
	{
		return base.OnStyleAttributeRender(name, value, key);
	}

	protected override bool OnTagRender(string name, HtmlTextWriterTag key)
	{
		return base.OnTagRender(name, key);
	}

	protected override string RenderAfterContent()
	{
		return base.RenderAfterContent();
	}

	protected override string RenderAfterTag()
	{
		return base.RenderAfterTag();
	}

	protected override string RenderBeforeContent()
	{
		return base.RenderBeforeContent();
	}

	protected override string RenderBeforeTag()
	{
		return base.RenderBeforeTag();
	}
}
