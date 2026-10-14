using System.Collections;
using System.Security.Permissions;
using System.Web.Compilation;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ObjectTagBuilder : ControlBuilder
{
	private string id;

	private string scope;

	private Type type;

	internal Type Type => type;

	internal string ObjectID => id;

	internal string Scope => scope;

	public ObjectTagBuilder()
	{
		SetTagName("object");
	}

	public override void AppendLiteralString(string s)
	{
	}

	public override void AppendSubBuilder(ControlBuilder subBuilder)
	{
	}

	public override void Init(TemplateParser parser, ControlBuilder parentBuilder, Type type, string tagName, string id, IDictionary attribs)
	{
		if (id == null && attribs == null)
		{
			throw new HttpException("Missing 'id'.");
		}
		if (attribs == null)
		{
			throw new ParseException(parser.Location, "Error in ObjectTag.");
		}
		attribs.Remove("runat");
		this.id = attribs["id"] as string;
		attribs.Remove("id");
		if (this.id == null || this.id.Trim() == "")
		{
			throw new ParseException(parser.Location, "Object tag must have a valid ID.");
		}
		scope = attribs["scope"] as string;
		string text = attribs["class"] as string;
		attribs.Remove("scope");
		attribs.Remove("class");
		if (text == null || text.Trim() == "")
		{
			throw new ParseException(parser.Location, "Object tag must have 'class' attribute.");
		}
		this.type = parser.LoadType(text);
		if (this.type == null)
		{
			throw new ParseException(parser.Location, "Type " + text + " not found.");
		}
		if (attribs["progid"] != null || attribs["classid"] != null)
		{
			throw new ParseException(parser.Location, "ClassID and ProgID are not supported.");
		}
		if (attribs.Count > 0)
		{
			throw new ParseException(parser.Location, "Unknown attribute");
		}
	}
}
