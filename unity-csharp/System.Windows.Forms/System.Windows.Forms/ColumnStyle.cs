namespace System.Windows.Forms;

public class ColumnStyle : TableLayoutStyle
{
	private float width;

	public float Width
	{
		get
		{
			return width;
		}
		set
		{
			if (value < 0f)
			{
				throw new ArgumentOutOfRangeException();
			}
			if (width != value)
			{
				width = value;
				if (Owner != null)
				{
					Owner.PerformLayout();
				}
			}
		}
	}

	public ColumnStyle()
	{
		width = 0f;
	}

	public ColumnStyle(SizeType sizeType)
	{
		width = 0f;
		SizeType = sizeType;
	}

	public ColumnStyle(SizeType sizeType, float width)
	{
		if (width < 0f)
		{
			throw new ArgumentOutOfRangeException("height");
		}
		SizeType = sizeType;
		this.width = width;
	}
}
