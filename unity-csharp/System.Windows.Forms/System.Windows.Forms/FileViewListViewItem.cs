namespace System.Windows.Forms;

internal class FileViewListViewItem : ListViewItem
{
	private FSEntry fsEntry;

	public FSEntry FSEntry
	{
		get
		{
			return fsEntry;
		}
		set
		{
			fsEntry = value;
		}
	}

	public FileViewListViewItem(FSEntry fsEntry)
	{
		this.fsEntry = fsEntry;
		ImageIndex = fsEntry.IconIndex;
		Text = fsEntry.Name;
		switch (fsEntry.FileType)
		{
		case FSEntry.FSEntryType.Directory:
			SubItems.Add(string.Empty);
			SubItems.Add(Locale.GetText("Directory"));
			SubItems.Add(fsEntry.LastAccessTime.ToShortDateString() + " " + fsEntry.LastAccessTime.ToShortTimeString());
			break;
		case FSEntry.FSEntryType.File:
		{
			long num = 1L;
			try
			{
				if (fsEntry.FileSize > 1024)
				{
					num = fsEntry.FileSize / 1024;
				}
			}
			catch (Exception)
			{
				num = 1L;
			}
			SubItems.Add(num + " KB");
			SubItems.Add(Locale.GetText("File"));
			SubItems.Add(fsEntry.LastAccessTime.ToShortDateString() + " " + fsEntry.LastAccessTime.ToShortTimeString());
			break;
		}
		case FSEntry.FSEntryType.Device:
			SubItems.Add(string.Empty);
			SubItems.Add(Locale.GetText("Device"));
			SubItems.Add(fsEntry.LastAccessTime.ToShortDateString() + " " + fsEntry.LastAccessTime.ToShortTimeString());
			break;
		case FSEntry.FSEntryType.RemovableDevice:
			SubItems.Add(string.Empty);
			SubItems.Add(Locale.GetText("RemovableDevice"));
			SubItems.Add(fsEntry.LastAccessTime.ToShortDateString() + " " + fsEntry.LastAccessTime.ToShortTimeString());
			break;
		}
	}
}
