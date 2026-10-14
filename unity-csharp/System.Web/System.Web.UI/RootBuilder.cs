using System.Collections;
using System.Security.Permissions;
using System.Web.Compilation;
using System.Web.UI.HtmlControls;
using Unity;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class RootBuilder : TemplateBuilder
{
	private Hashtable built_objects;

	private static Hashtable htmlControls;

	private static Hashtable htmlInputControls;

	private AspComponentFoundry foundry;

	internal AspComponentFoundry Foundry
	{
		get
		{
			return foundry;
		}
		set
		{
			if (value != null)
			{
				foundry = value;
			}
		}
	}

	public IDictionary BuiltObjects
	{
		get
		{
			if (built_objects == null)
			{
				built_objects = new Hashtable();
			}
			return built_objects;
		}
	}

	public RootBuilder()
	{
		foundry = new AspComponentFoundry();
		Line = 1;
	}

	static RootBuilder()
	{
		htmlControls = new Hashtable(StringComparer.InvariantCultureIgnoreCase);
		htmlControls.Add("A", typeof(HtmlAnchor));
		htmlControls.Add("BUTTON", typeof(HtmlButton));
		htmlControls.Add("FORM", typeof(HtmlForm));
		htmlControls.Add("HEAD", typeof(HtmlHead));
		htmlControls.Add("IMG", typeof(HtmlImage));
		htmlControls.Add("INPUT", "INPUT");
		htmlControls.Add("SELECT", typeof(HtmlSelect));
		htmlControls.Add("TABLE", typeof(HtmlTable));
		htmlControls.Add("TD", typeof(HtmlTableCell));
		htmlControls.Add("TH", typeof(HtmlTableCell));
		htmlControls.Add("TR", typeof(HtmlTableRow));
		htmlControls.Add("TEXTAREA", typeof(HtmlTextArea));
		htmlInputControls = new Hashtable(StringComparer.InvariantCultureIgnoreCase);
		htmlInputControls.Add("BUTTON", typeof(HtmlInputButton));
		htmlInputControls.Add("SUBMIT", typeof(HtmlInputSubmit));
		htmlInputControls.Add("RESET", typeof(HtmlInputReset));
		htmlInputControls.Add("CHECKBOX", typeof(HtmlInputCheckBox));
		htmlInputControls.Add("FILE", typeof(HtmlInputFile));
		htmlInputControls.Add("HIDDEN", typeof(HtmlInputHidden));
		htmlInputControls.Add("IMAGE", typeof(HtmlInputImage));
		htmlInputControls.Add("RADIO", typeof(HtmlInputRadioButton));
		htmlInputControls.Add("TEXT", typeof(HtmlInputText));
		htmlInputControls.Add("PASSWORD", typeof(HtmlInputPassword));
	}

	public RootBuilder(TemplateParser parser)
	{
		foundry = new AspComponentFoundry();
		Line = 1;
		if (parser != null)
		{
			FileName = parser.InputFile;
		}
		Init(parser, null, null, null, null, null);
	}

	public override Type GetChildControlType(string tagName, IDictionary attribs)
	{
		if (tagName == null)
		{
			throw new ArgumentNullException("tagName");
		}
		AspComponent component = foundry.GetComponent(tagName);
		if (component != null)
		{
			if (!string.IsNullOrEmpty(component.Source))
			{
				TemplateParser templateParser = Parser;
				if (component.FromConfig)
				{
					string baseVirtualDir = templateParser.BaseVirtualDir;
					VirtualPath virtualPath = new VirtualPath(component.Source);
					if (baseVirtualDir == virtualPath.Directory)
					{
						throw new ParseException(templateParser.Location, $"The page '{templateParser.VirtualPath}' cannot use the user control '{virtualPath.Absolute}', because it is registered in web.config and lives in the same directory as the page.");
					}
					Parser.AddDependency(component.Source);
				}
			}
			return component.Type;
		}
		if (component != null && component.Prefix != string.Empty)
		{
			throw new Exception("Unknown server tag '" + tagName + "'");
		}
		return LookupHtmlControls(tagName, attribs);
	}

	private static Type LookupHtmlControls(string tagName, IDictionary attribs)
	{
		object obj = htmlControls[tagName];
		if (obj is string)
		{
			if (attribs == null)
			{
				throw new HttpException("Unable to map input type control to a Type.");
			}
			string text = attribs["TYPE"] as string;
			if (text == null)
			{
				text = "TEXT";
			}
			Type obj2 = htmlInputControls[text] as Type;
			if (obj2 == null)
			{
				throw new HttpException("Unable to map input type control to a Type.");
			}
			return obj2;
		}
		if (obj == null)
		{
			obj = typeof(HtmlGenericControl);
		}
		return (Type)obj;
	}

	protected internal virtual void OnCodeGenerationComplete()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
