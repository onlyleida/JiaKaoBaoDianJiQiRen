namespace System.Xml.Xsl.Qil;

internal class QilInvoke : QilBinary
{
	public QilFunction Function
	{
		get
		{
			return (QilFunction)Left;
		}
		set
		{
			Left = value;
		}
	}

	public QilList Arguments
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

	public QilInvoke(QilNodeType nodeType, QilNode function, QilNode arguments)
		: base(nodeType, function, arguments)
	{
	}
}
