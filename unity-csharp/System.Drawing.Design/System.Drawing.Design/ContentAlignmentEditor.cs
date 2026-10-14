using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.Drawing.Design;

public class ContentAlignmentEditor : UITypeEditor
{
	private class AlignmentUI : ListBox
	{
		private object value;

		private IWindowsFormsEditorService service;

		public object Value => value;

		public AlignmentUI(UITypeEditor host, IWindowsFormsEditorService service, object value)
		{
			this.service = service;
			this.value = value;
			Items.Add(ContentAlignment.TopLeft);
			Items.Add(ContentAlignment.TopCenter);
			Items.Add(ContentAlignment.TopRight);
			Items.Add(ContentAlignment.MiddleLeft);
			Items.Add(ContentAlignment.MiddleCenter);
			Items.Add(ContentAlignment.MiddleRight);
			Items.Add(ContentAlignment.BottomLeft);
			Items.Add(ContentAlignment.BottomCenter);
			Items.Add(ContentAlignment.BottomRight);
		}

		protected override void OnClick(EventArgs e)
		{
			base.OnClick(e);
			value = SelectedItem;
			service.CloseDropDown();
		}
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider == null)
		{
			return value;
		}
		IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
		if (windowsFormsEditorService == null)
		{
			return value;
		}
		AlignmentUI alignmentUI = new AlignmentUI(this, windowsFormsEditorService, value);
		windowsFormsEditorService.DropDownControl(alignmentUI);
		return alignmentUI.Value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}
}
