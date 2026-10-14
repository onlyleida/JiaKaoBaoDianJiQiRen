namespace System.Xml.Xsl.Qil;

internal class QilLoop : QilBinary
{
	public QilIterator Variable
	{
		get
		{
			return (QilIterator)Left;
		}
		set
		{
			Left = value;
		}
	}

	public QilNode Body
	{
		get
		{
			return Right;
		}
		set
		{
			Right = value;
		}
	}

	public QilLoop(QilNodeType nodeType, QilNode variable, QilNode body)
		: base(nodeType, variable, body)
	{
	}
}
