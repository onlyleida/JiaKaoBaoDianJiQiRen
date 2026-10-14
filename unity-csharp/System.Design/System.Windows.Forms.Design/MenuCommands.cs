using System.ComponentModel.Design;

namespace System.Windows.Forms.Design;

public sealed class MenuCommands : StandardCommands
{
	public static readonly CommandID ComponentTrayMenu;

	public static readonly CommandID ContainerMenu;

	public static readonly CommandID DesignerProperties;

	public static readonly CommandID KeyCancel;

	public static readonly CommandID KeyDefaultAction;

	public static readonly CommandID KeyMoveDown;

	public static readonly CommandID KeyMoveLeft;

	public static readonly CommandID KeyMoveRight;

	public static readonly CommandID KeyMoveUp;

	public static readonly CommandID KeyNudgeDown;

	public static readonly CommandID KeyNudgeHeightDecrease;

	public static readonly CommandID KeyNudgeHeightIncrease;

	public static readonly CommandID KeyNudgeLeft;

	public static readonly CommandID KeyNudgeRight;

	public static readonly CommandID KeyNudgeUp;

	public static readonly CommandID KeyNudgeWidthDecrease;

	public static readonly CommandID KeyNudgeWidthIncrease;

	public static readonly CommandID KeyReverseCancel;

	public static readonly CommandID KeySelectNext;

	public static readonly CommandID KeySelectPrevious;

	public static readonly CommandID KeySizeHeightDecrease;

	public static readonly CommandID KeySizeHeightIncrease;

	public static readonly CommandID KeySizeWidthDecrease;

	public static readonly CommandID KeySizeWidthIncrease;

	public static readonly CommandID KeyTabOrderSelect;

	public static readonly CommandID SelectionMenu;

	public static readonly CommandID TraySelectionMenu;

	public static readonly CommandID EditLabel;

	public static readonly CommandID KeyEnd;

	public static readonly CommandID KeyHome;

	public static readonly CommandID KeyInvokeSmartTag;

	public static readonly CommandID KeyShiftEnd;

	public static readonly CommandID KeyShiftHome;

	public static readonly CommandID SetStatusRectangle;

	public static readonly CommandID SetStatusText;

	private static readonly Guid guidVSStd97;

	private static readonly Guid guidVSStd2K;

	private static readonly Guid wfCommandSet;

	private static readonly Guid wfMenuGroup;

	static MenuCommands()
	{
		wfMenuGroup = new Guid("{74D21312-2AEE-11d1-8BFB-00A0C90F26F7}");
		wfCommandSet = new Guid("{74D21313-2AEE-11d1-8BFB-00A0C90F26F7}");
		guidVSStd2K = new Guid("{1496A755-94DE-11D0-8C3F-00C04FC2AAE2}");
		guidVSStd97 = new Guid("{5efc7975-14bc-11cf-9b2b-00aa00573819}");
		SelectionMenu = new CommandID(wfMenuGroup, 1280);
		ContainerMenu = new CommandID(wfMenuGroup, 1281);
		TraySelectionMenu = new CommandID(wfMenuGroup, 1283);
		ComponentTrayMenu = new CommandID(wfMenuGroup, 1286);
		DesignerProperties = new CommandID(wfCommandSet, 4097);
		KeyCancel = new CommandID(guidVSStd2K, 103);
		KeyReverseCancel = new CommandID(wfCommandSet, 16385);
		KeyDefaultAction = new CommandID(guidVSStd2K, 3);
		KeyMoveUp = new CommandID(guidVSStd2K, 11);
		KeyMoveDown = new CommandID(guidVSStd2K, 13);
		KeyMoveLeft = new CommandID(guidVSStd2K, 7);
		KeyMoveRight = new CommandID(guidVSStd2K, 9);
		KeyNudgeUp = new CommandID(guidVSStd2K, 1227);
		KeyNudgeDown = new CommandID(guidVSStd2K, 1225);
		KeyNudgeLeft = new CommandID(guidVSStd2K, 1224);
		KeyNudgeRight = new CommandID(guidVSStd2K, 1226);
		KeySizeWidthIncrease = new CommandID(guidVSStd2K, 10);
		KeySizeHeightIncrease = new CommandID(guidVSStd2K, 12);
		KeySizeWidthDecrease = new CommandID(guidVSStd2K, 8);
		KeySizeHeightDecrease = new CommandID(guidVSStd2K, 14);
		KeyNudgeWidthIncrease = new CommandID(guidVSStd2K, 1231);
		KeyNudgeHeightIncrease = new CommandID(guidVSStd2K, 1228);
		KeyNudgeWidthDecrease = new CommandID(guidVSStd2K, 1230);
		KeyNudgeHeightDecrease = new CommandID(guidVSStd2K, 1229);
		KeySelectNext = new CommandID(guidVSStd2K, 4);
		KeySelectPrevious = new CommandID(guidVSStd2K, 5);
		KeyTabOrderSelect = new CommandID(wfCommandSet, 16405);
		KeyHome = new CommandID(guidVSStd2K, 15);
		KeyShiftHome = new CommandID(guidVSStd2K, 16);
		KeyEnd = new CommandID(guidVSStd2K, 17);
		KeyShiftEnd = new CommandID(guidVSStd2K, 18);
		KeyInvokeSmartTag = new CommandID(guidVSStd2K, 147);
		EditLabel = new CommandID(guidVSStd97, 338);
		SetStatusText = new CommandID(wfCommandSet, 16387);
		SetStatusRectangle = new CommandID(wfCommandSet, 16388);
	}
}
