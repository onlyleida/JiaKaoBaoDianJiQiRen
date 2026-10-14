namespace System.Windows.Forms.Design.Behavior;

public sealed class SnapLine
{
	private SnapLineType type;

	private int offset;

	private string filter;

	private SnapLinePriority priority;

	public string Filter => filter;

	public bool IsHorizontal
	{
		get
		{
			switch (SnapLineType)
			{
			case SnapLineType.Top:
			case SnapLineType.Bottom:
			case SnapLineType.Horizontal:
			case SnapLineType.Baseline:
				return true;
			default:
				return false;
			}
		}
	}

	public bool IsVertical
	{
		get
		{
			SnapLineType snapLineType = SnapLineType;
			if ((uint)(snapLineType - 2) <= 1u || snapLineType == SnapLineType.Vertical)
			{
				return true;
			}
			return false;
		}
	}

	public int Offset => offset;

	public SnapLinePriority Priority => priority;

	public SnapLineType SnapLineType => type;

	[System.MonoTODO]
	public static bool ShouldSnap(SnapLine line1, SnapLine line2)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public SnapLine(SnapLineType type, int offset)
		: this(type, offset, null)
	{
	}

	[System.MonoTODO]
	public SnapLine(SnapLineType type, int offset, string filter)
		: this(type, offset, filter, (SnapLinePriority)0)
	{
	}

	[System.MonoTODO]
	public SnapLine(SnapLineType type, int offset, SnapLinePriority priority)
		: this(type, offset, null, priority)
	{
	}

	[System.MonoTODO]
	public SnapLine(SnapLineType type, int offset, string filter, SnapLinePriority priority)
	{
		this.type = type;
		this.offset = offset;
		this.filter = filter;
		this.priority = priority;
	}

	[System.MonoTODO]
	public void AdjustOffset(int adjustment)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string ToString()
	{
		return base.ToString();
	}
}
