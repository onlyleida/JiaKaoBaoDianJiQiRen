using System.ComponentModel;

namespace System.Web.UI.WebControls;

[ToolboxItem(false)]
[Designer("System.Web.UI.Design.WebControls.ContentDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ControlBuilder(typeof(ContentBuilderInternal))]
public class Content : Control, INamingContainer, INonBindingContainer
{
	[IDReferenceProperty(typeof(ContentPlaceHolder))]
	[DefaultValue("")]
	[Themeable(false)]
	[WebCategory("Behavior")]
	public string ContentPlaceHolderID
	{
		get
		{
			return string.Empty;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new event EventHandler DataBinding
	{
		add
		{
			base.DataBinding += value;
		}
		remove
		{
			base.DataBinding -= value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new event EventHandler Disposed
	{
		add
		{
			base.Disposed += value;
		}
		remove
		{
			base.Disposed -= value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new event EventHandler Init
	{
		add
		{
			base.Init += value;
		}
		remove
		{
			base.Init -= value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new event EventHandler Load
	{
		add
		{
			base.Load += value;
		}
		remove
		{
			base.Load -= value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new event EventHandler PreRender
	{
		add
		{
			base.PreRender += value;
		}
		remove
		{
			base.PreRender -= value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new event EventHandler Unload
	{
		add
		{
			base.Unload += value;
		}
		remove
		{
			base.Unload -= value;
		}
	}
}
