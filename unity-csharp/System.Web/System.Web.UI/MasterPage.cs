using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Web.Compilation;
using System.Web.Hosting;

namespace System.Web.UI;

[ControlBuilder(typeof(MasterPageControlBuilder))]
[ParseChildren(false)]
public class MasterPage : UserControl
{
	private Hashtable definedContentTemplates = new Hashtable();

	private Hashtable templates = new Hashtable();

	private List<string> placeholders;

	private string parentMasterPageFile;

	private MasterPage parentMasterPage;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal IList ContentPlaceHolders
	{
		get
		{
			if (placeholders == null)
			{
				placeholders = new List<string>();
			}
			return placeholders;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal IDictionary ContentTemplates => templates;

	[DefaultValue("")]
	public string MasterPageFile
	{
		get
		{
			return parentMasterPageFile;
		}
		set
		{
			parentMasterPageFile = value;
			parentMasterPage = null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public MasterPage Master
	{
		get
		{
			if (parentMasterPage == null && parentMasterPageFile != null)
			{
				parentMasterPage = CreateMasterPage(this, Context, parentMasterPageFile, definedContentTemplates);
			}
			return parentMasterPage;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal void AddContentTemplate(string templateName, ITemplate template)
	{
		if (definedContentTemplates.ContainsKey(templateName))
		{
			throw new HttpException("Multiple contents applied to " + templateName);
		}
		definedContentTemplates[templateName] = template;
	}

	public void InstantiateInContentPlaceHolder(Control contentPlaceHolder, ITemplate template)
	{
		if (contentPlaceHolder == null || template == null)
		{
			throw new NullReferenceException();
		}
		if (contentPlaceHolder != null)
		{
			template?.InstantiateIn(contentPlaceHolder);
		}
	}

	internal static MasterPage CreateMasterPage(TemplateControl owner, HttpContext context, string masterPageFile, IDictionary contentTemplateCollection)
	{
		HttpRequest request = context.Request;
		if (request != null)
		{
			masterPageFile = HostingEnvironment.VirtualPathProvider.CombineVirtualPaths(request.CurrentExecutionFilePath, masterPageFile);
		}
		if (!(BuildManager.CreateInstanceFromVirtualPath(masterPageFile, typeof(MasterPage)) is MasterPage masterPage))
		{
			throw new HttpException("Failed to create MasterPage instance for '" + masterPageFile + "'.");
		}
		if (contentTemplateCollection != null)
		{
			foreach (string key in contentTemplateCollection.Keys)
			{
				if (masterPage.ContentTemplates[key] == null)
				{
					masterPage.ContentTemplates[key] = contentTemplateCollection[key];
				}
			}
		}
		masterPage.Page = owner.Page;
		masterPage.InitializeAsUserControlInternal();
		List<string> list = masterPage.placeholders;
		if (contentTemplateCollection != null && list != null && list.Count > 0)
		{
			foreach (string key2 in contentTemplateCollection.Keys)
			{
				if (!list.Contains(key2.ToLowerInvariant()))
				{
					throw new HttpException($"Cannot find ContentPlaceHolder '{key2}' in the master page '{masterPageFile}'");
				}
			}
		}
		return masterPage;
	}

	internal static void ApplyMasterPageRecursive(string currentFilePath, VirtualPathProvider vpp, MasterPage master, Dictionary<string, bool> appliedMasterPageFiles)
	{
		string masterPageFile = master.MasterPageFile;
		if (!string.IsNullOrEmpty(masterPageFile))
		{
			masterPageFile = vpp.CombineVirtualPaths(currentFilePath, masterPageFile);
			if (appliedMasterPageFiles.ContainsKey(masterPageFile))
			{
				throw new HttpException("circular dependency in master page files detected");
			}
			MasterPage master2 = master.Master;
			if (master2 != null)
			{
				master.Controls.Clear();
				master.Controls.Add(master2);
				appliedMasterPageFiles.Add(masterPageFile, value: true);
				ApplyMasterPageRecursive(currentFilePath, vpp, master2, appliedMasterPageFiles);
			}
		}
	}
}
