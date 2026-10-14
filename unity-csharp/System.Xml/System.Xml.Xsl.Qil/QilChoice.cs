namespace System.Xml.Xsl.Qil;

internal class QilChoice : QilBinary
{
	public QilNode Expression
	{
		get
		{
			return Left;
		}
		set
		{
			Left = value;
		}
	}

	public QilList Branches
	{
		get
		{
			return (QilList)Right;
		}
		set
		{
			Right = value;
		}
	}

	public QilChoice(QilNodeType nodeType, QilNode expression, QilNode branches)
		: base(nodeType, expression, branches)
	{
	}
}
