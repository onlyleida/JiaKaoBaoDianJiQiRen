using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Unity;

namespace System.Web.UI.Design;

[System.MonoTODO]
public class ControlDesigner : HtmlControlDesigner
{
	[System.MonoTODO]
	public virtual bool AllowResize
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	[Obsolete("It is documented as not in use anymore", true)]
	protected object DesignTimeElementView
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	[Obsolete("Use SetViewFlags(ViewFlags.DesignTimeHtmlRequiresLoadComplete, true)")]
	public virtual bool DesignTimeHtmlRequiresLoadComplete
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual string ID
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	[Obsolete("Use Tag.SetDirty() and Tag.IsDirty instead.")]
	public bool IsDirty
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[Obsolete("Use ContainerControlDesigner and EditableDesignerRegion")]
	[System.MonoTODO]
	public bool ReadOnly
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public override DesignerActionListCollection ActionLists
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual DesignerAutoFormatCollection AutoFormats
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected virtual bool DataBindingsEnabled
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected ControlDesignerState DesignerState
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected internal virtual bool HidePropertiesInTemplateMode
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public bool InTemplateMode
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected WebFormsRootDesigner RootDesigner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected IControlDesignerTag Tag
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual TemplateGroupCollection TemplateGroups
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public Control ViewControl
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
		[System.MonoNotSupported("")]
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual bool ViewControlCreated
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
		[System.MonoNotSupported("")]
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected virtual bool UsePreviewControl
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected virtual bool Visible
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	[System.MonoTODO]
	protected string CreatePlaceHolderDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected string CreatePlaceHolderDesignTimeHtml(string instruction)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual string GetDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public static DesignTimeResourceProviderFactory GetDesignTimeResourceProviderFactory(IServiceProvider serviceProvider)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public static ViewRendering GetViewRendering(Control control)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public static ViewRendering GetViewRendering(ControlDesigner designer)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected string CreateErrorDesignTimeHtml(string errorMessage)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected string CreateErrorDesignTimeHtml(string errorMessage, Exception e)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected virtual Control CreateViewControl()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public Rectangle GetBounds()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public virtual string GetDesignTimeHtml(DesignerRegionCollection regions)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public virtual string GetEditableDesignerRegionContent(EditableDesignerRegion region)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public virtual void SetEditableDesignerRegionContent(EditableDesignerRegion region, string content)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public virtual string GetPersistenceContent()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public ViewRendering GetViewRendering()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Invalidate()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Invalidate(Rectangle rectangle)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static void InvokeTransactedChange(IComponent component, TransactedChangeCallback callback, object context, string description)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static void InvokeTransactedChange(IComponent component, TransactedChangeCallback callback, object context, string description, MemberDescriptor member)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static void InvokeTransactedChange(IServiceProvider serviceProvider, IComponent component, TransactedChangeCallback callback, object context, string description, MemberDescriptor member)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Localize(IDesignTimeResourceWriter resourceWriter)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnAutoFormatApplied(DesignerAutoFormat appliedAutoFormat)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnComponentChanging(object sender, ComponentChangingEventArgs ce)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void OnPaint(PaintEventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void RegisterClone(object original, object clone)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected void SetRegionContent(EditableDesignerRegion region, string content)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual string GetEmptyDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual string GetErrorDesignTimeHtml(Exception e)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Use GetPersistenceContent() instead")]
	[System.MonoTODO]
	public virtual string GetPersistInnerHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Use DataBindings.Contains(string) instead")]
	[System.MonoTODO]
	public bool IsPropertyBound(string propName)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	[Obsolete("Use DataBindings.Changed event instead")]
	protected override void OnBindingsCollectionChanged(string propName)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void OnClick(DesignerRegionMouseEventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnComponentChanged(object sender, ComponentChangedEventArgs ce)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Use OnComponentChanged() instead")]
	[System.MonoTODO]
	protected virtual void OnControlResize()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[Obsolete("Use OnComponentChanged() instead")]
	[System.MonoTODO]
	public void RaiseResizeEvent()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void UpdateDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected void SetViewFlags(ViewFlags viewFlags, bool setFlag)
	{
		throw new NotImplementedException();
	}
}
