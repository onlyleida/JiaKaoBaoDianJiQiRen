namespace System.Xml.Xsl.Qil;

internal class QilDataSource : QilBinary
{
	public QilNode Name
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

	public QilNode BaseUri
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

	public QilDataSource(QilNodeType nodeType, QilNode name, QilNode baseUri)
		: base(nodeType, name, baseUri)
	{
	}
}
