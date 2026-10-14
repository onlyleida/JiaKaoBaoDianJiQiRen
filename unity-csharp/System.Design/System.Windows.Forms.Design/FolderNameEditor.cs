using System.ComponentModel;
using System.Drawing.Design;

namespace System.Windows.Forms.Design;

[System.MonoTODO]
public class FolderNameEditor : UITypeEditor
{
	protected enum FolderBrowserFolder
	{
		Desktop = 0,
		Favorites = 6,
		MyComputer = 17,
		MyDocuments = 5,
		MyPictures = 39,
		NetAndDialUpConnections = 49,
		NetworkNeighborhood = 18,
		Printers = 4,
		Recent = 8,
		SendTo = 9,
		StartMenu = 11,
		Templates = 21
	}

	[Flags]
	protected enum FolderBrowserStyles
	{
		BrowseForComputer = 0x1000,
		BrowseForEverything = 0x4000,
		BrowseForPrinter = 0x2000,
		RestrictToDomain = 2,
		RestrictToFilesystem = 1,
		RestrictToSubfolders = 8,
		ShowTextBox = 0x10
	}

	protected sealed class FolderBrowser : Component
	{
		private string descriptionText;

		private string directoryPath;

		private FolderBrowserStyles publicOptions;

		private FolderBrowserFolder startLocation;

		public string Description
		{
			get
			{
				return descriptionText;
			}
			set
			{
				descriptionText = ((value == null) ? string.Empty : value);
			}
		}

		public string DirectoryPath => directoryPath;

		public FolderBrowserFolder StartLocation
		{
			get
			{
				return startLocation;
			}
			set
			{
				startLocation = value;
			}
		}

		public FolderBrowserStyles Style
		{
			get
			{
				return publicOptions;
			}
			set
			{
				publicOptions = value;
			}
		}

		[System.MonoTODO]
		public FolderBrowser()
		{
			startLocation = FolderBrowserFolder.Desktop;
			publicOptions = FolderBrowserStyles.RestrictToFilesystem;
			descriptionText = string.Empty;
			directoryPath = string.Empty;
		}

		[System.MonoTODO]
		public DialogResult ShowDialog()
		{
			return ShowDialog(null);
		}

		[System.MonoTODO]
		public DialogResult ShowDialog(IWin32Window owner)
		{
			throw new NotImplementedException();
		}
	}

	private FolderBrowser folderBrowser;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (folderBrowser == null)
		{
			folderBrowser = new FolderBrowser();
			InitializeDialog(folderBrowser);
		}
		if (folderBrowser.ShowDialog() != DialogResult.OK)
		{
			return value;
		}
		return folderBrowser.DirectoryPath;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	protected virtual void InitializeDialog(FolderBrowser folderBrowser)
	{
	}
}
