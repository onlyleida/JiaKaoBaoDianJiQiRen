using System.ComponentModel;
using System.IO;

namespace System.Windows.Forms;

public sealed class OpenFileDialog : FileDialog
{
	[DefaultValue(true)]
	public override bool CheckFileExists
	{
		get
		{
			return base.CheckFileExists;
		}
		set
		{
			base.CheckFileExists = value;
		}
	}

	[DefaultValue(false)]
	public bool Multiselect
	{
		get
		{
			return BMultiSelect;
		}
		set
		{
			BMultiSelect = value;
		}
	}

	[DefaultValue(false)]
	public new bool ReadOnlyChecked
	{
		get
		{
			return base.ReadOnlyChecked;
		}
		set
		{
			base.ReadOnlyChecked = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string SafeFileName => Path.GetFileName(FileName);

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string[] SafeFileNames
	{
		get
		{
			string[] array = FileNames;
			for (int i = 0; i < array.Length; i++)
			{
				array[i] = Path.GetFileName(array[i]);
			}
			return array;
		}
	}

	[DefaultValue(false)]
	public new bool ShowReadOnly
	{
		get
		{
			return base.ShowReadOnly;
		}
		set
		{
			base.ShowReadOnly = value;
		}
	}

	internal override string DialogTitle
	{
		get
		{
			string text = base.DialogTitle;
			if (text.Length == 0)
			{
				text = Locale.GetText("Open");
			}
			return text;
		}
	}

	public OpenFileDialog()
	{
		form.SuspendLayout();
		form.Text = Locale.GetText("Open");
		CheckFileExists = true;
		OpenSaveButtonText = Locale.GetText("Open");
		SearchSaveLabel = Locale.GetText("Look in:");
		fileDialogType = FileDialogType.OpenFileDialog;
		form.ResumeLayout(performLayout: false);
	}

	public Stream OpenFile()
	{
		if (FileName.Length == 0)
		{
			throw new ArgumentNullException("OpenFile", "FileName is null");
		}
		return new FileStream(FileName, FileMode.Open, FileAccess.Read);
	}

	public override void Reset()
	{
		base.Reset();
		BMultiSelect = false;
		base.CheckFileExists = true;
		base.ReadOnlyChecked = false;
		base.ShowReadOnly = false;
	}
}
