using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.Drawing.Design;

public class CursorEditor : UITypeEditor
{
	private class CursorUI : ListBox
	{
		private object value;

		private IWindowsFormsEditorService service;

		public object Value => value;

		public CursorUI(UITypeEditor host, IWindowsFormsEditorService service, object value)
		{
			this.service = service;
			this.value = value;
			foreach (object standardValue in TypeDescriptor.GetConverter(typeof(Cursor)).GetStandardValues())
			{
				Items.Add(standardValue);
			}
		}

		protected override void OnClick(EventArgs e)
		{
			base.OnClick(e);
			value = SelectedItem;
			service.CloseDropDown();
		}
	}

	public override bool IsDropDownResizable => true;

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
		CursorUI cursorUI = new CursorUI(this, windowsFormsEditorService, value);
		windowsFormsEditorService.DropDownControl(cursorUI);
		return cursorUI.Value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}
}
