using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;

namespace System.Web.UI.Design;

[System.MonoTODO]
public class HtmlControlDesigner : ComponentDesigner
{
	[Obsolete("Use ControlDesigner.Tag instead")]
	[System.MonoTODO]
	public IHtmlControlDesignerBehavior Behavior
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
	public DataBindingCollection DataBindings
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	[Obsolete("Use new WebFormsRootDesigner feature instead. It is not used anymore", true)]
	protected object DesignTimeElement
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[Obsolete("Code serialization is not supported in 2.0 anymore")]
	[System.MonoTODO]
	public virtual bool ShouldCodeSerialize
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

	public ExpressionBindingCollection Expressions
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public HtmlControlDesigner()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	[Obsolete("Use ControlDesigner.Tag instead")]
	protected virtual void OnBehaviorAttached()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	[Obsolete("Use ControlDesigner.Tag instead")]
	protected virtual void OnBehaviorDetaching()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	[Obsolete("Use DataBinding.Changed event instead")]
	protected virtual void OnBindingsCollectionChanged(string propName)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnSetParent()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override void PreFilterEvents(IDictionary events)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}
}
