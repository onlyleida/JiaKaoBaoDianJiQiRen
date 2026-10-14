namespace System.Xml.Xsl.Qil;

internal class QilTargetType : QilBinary
{
	public QilNode Source
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

	public XmlQueryType TargetType
	{
		get
		{
			return (XmlQueryType)((QilLiteral)Right).Value;
		}
		set
		{
			((QilLiteral)Right).Value = value;
		}
	}

	public QilTargetType(QilNodeType nodeType, QilNode expr, QilNode targetType)
		: base(nodeType, expr, targetType)
	{
	}
}
