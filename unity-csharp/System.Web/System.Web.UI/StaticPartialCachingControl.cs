using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class StaticPartialCachingControl : BasePartialCachingControl
{
	private BuildMethod buildMethod;

	public StaticPartialCachingControl(string ctrlID, string guid, int duration, string varyByParams, string varyByControls, string varyByCustom, BuildMethod buildMethod)
	{
		CtrlID = ctrlID;
		Guid = guid;
		Duration = duration;
		VaryByParams = varyByParams;
		VaryByControls = varyByControls;
		VaryByCustom = varyByCustom;
		this.buildMethod = buildMethod;
	}

	public StaticPartialCachingControl(string ctrlID, string guid, int duration, string varyByParams, string varyByControls, string varyByCustom, string sqlDependency, BuildMethod buildMethod)
		: this(ctrlID, guid, duration, varyByParams, varyByControls, varyByCustom, buildMethod)
	{
	}

	public StaticPartialCachingControl(string ctrlID, string guid, int duration, string varyByParams, string varyByControls, string varyByCustom, string sqlDependency, BuildMethod buildMethod, string providerName)
		: this(ctrlID, guid, duration, varyByParams, varyByControls, varyByCustom, sqlDependency, buildMethod)
	{
		ProviderName = providerName;
	}

	[MonoTODO("Consider sqlDependency parameter")]
	public static void BuildCachedControl(Control parent, string ctrlID, string guid, int duration, string varyByParams, string varyByControls, string varyByCustom, string sqlDependency, BuildMethod buildMethod)
	{
		StaticPartialCachingControl child = new StaticPartialCachingControl(ctrlID, guid, duration, varyByParams, varyByControls, varyByCustom, sqlDependency, buildMethod);
		parent?.Controls.Add(child);
	}

	public static void BuildCachedControl(Control parent, string ctrlID, string guid, int duration, string varyByParams, string varyByControls, string varyByCustom, BuildMethod buildMethod)
	{
		BuildCachedControl(parent, ctrlID, guid, duration, varyByParams, varyByControls, varyByCustom, null, buildMethod);
	}

	public static void BuildCachedControl(Control parent, string ctrlID, string guid, int duration, string varyByParams, string varyByControls, string varyByCustom, string sqlDependency, BuildMethod buildMethod, string providerName)
	{
		StaticPartialCachingControl child = new StaticPartialCachingControl(ctrlID, guid, duration, varyByParams, varyByControls, varyByCustom, sqlDependency, buildMethod, providerName);
		parent?.Controls.Add(child);
	}

	internal override Control CreateControl()
	{
		return buildMethod();
	}
}
