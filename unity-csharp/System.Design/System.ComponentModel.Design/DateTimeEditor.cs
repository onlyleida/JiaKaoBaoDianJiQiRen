using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.ComponentModel.Design;

public class DateTimeEditor : UITypeEditor
{
	private class EditorControl : MonthCalendar
	{
		public EditorControl()
		{
			MaxSelectionCount = 1;
		}
	}

	private IWindowsFormsEditorService editorService;

	private EditorControl control = new EditorControl();

	private DateTime editContent;

	public DateTimeEditor()
	{
		control.DateSelected += control_DateSelected;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && provider != null)
		{
			editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (editorService != null)
			{
				if (!(value is DateTime))
				{
					return value;
				}
				editContent = (DateTime)value;
				if (editContent > control.MaxDate || editContent < control.MinDate)
				{
					control.SelectionStart = DateTime.Today;
				}
				else
				{
					control.SelectionStart = editContent;
				}
				editorService.DropDownControl(control);
				return editContent;
			}
		}
		return base.EditValue(context, provider, value);
	}

	private void control_DateSelected(object sender, DateRangeEventArgs e)
	{
		editContent = e.Start;
		editorService.CloseDropDown();
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}
}
