using System.ComponentModel;
using System.IO;

namespace System.Windows.Forms;

[Designer("System.Windows.Forms.Design.SaveFileDialogDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
public sealed class SaveFileDialog : FileDialog
{
	[DefaultValue(false)]
	public bool CreatePrompt
	{
		get
		{
			return createPrompt;
		}
		set
		{
			createPrompt = value;
		}
	}

	[DefaultValue(true)]
	public bool OverwritePrompt
	{
		get
		{
			return overwritePrompt;
		}
		set
		{
			overwritePrompt = value;
		}
	}

	internal override string DialogTitle
	{
		get
		{
			string text = base.DialogTitle;
			if (text.Length == 0)
			{
				text = Locale.GetText("Save As");
			}
			return text;
		}
	}

	public SaveFileDialog()
	{
		form.SuspendLayout();
		form.Text = Locale.GetText("Save As");
		FileTypeLabel = Locale.GetText("Save as type:");
		OpenSaveButtonText = Locale.GetText("Save");
		SearchSaveLabel = Locale.GetText("Save in:");
		fileDialogType = FileDialogType.SaveFileDialog;
		form.ResumeLayout(performLayout: false);
	}

	public Stream OpenFile()
	{
		if (FileName == null)
		{
			throw new ArgumentNullException("OpenFile", "FileName is null");
		}
		try
		{
			return new FileStream(FileName, FileMode.Create, FileAccess.ReadWrite);
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override void Reset()
	{
		base.Reset();
		overwritePrompt = true;
		createPrompt = false;
	}
}
