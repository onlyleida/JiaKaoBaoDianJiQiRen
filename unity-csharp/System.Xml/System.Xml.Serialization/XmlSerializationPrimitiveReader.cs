namespace System.Xml.Serialization;

internal class XmlSerializationPrimitiveReader : XmlSerializationReader
{
	private string id4_boolean;

	private string id14_unsignedInt;

	private string id15_unsignedLong;

	private string id7_float;

	private string id10_dateTime;

	private string id6_long;

	private string id9_decimal;

	private string id8_double;

	private string id17_guid;

	private string id19_TimeSpan;

	private string id2_Item;

	private string id13_unsignedShort;

	private string id18_char;

	private string id3_int;

	private string id12_byte;

	private string id16_base64Binary;

	private string id11_unsignedByte;

	private string id5_short;

	private string id1_string;

	private string id1_QName;

	internal object Read_string()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id1_string || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = ((!ReadNull()) ? Reader.ReadElementString() : null);
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_int()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id3_int || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToInt32(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_boolean()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id4_boolean || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToBoolean(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_short()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id5_short || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToInt16(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_long()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id6_long || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToInt64(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_float()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id7_float || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToSingle(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_double()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id8_double || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToDouble(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_decimal()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id9_decimal || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToDecimal(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_dateTime()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id10_dateTime || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlSerializationReader.ToDateTime(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_unsignedByte()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id11_unsignedByte || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToByte(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_byte()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id12_byte || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToSByte(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_unsignedShort()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id13_unsignedShort || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToUInt16(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_unsignedInt()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id14_unsignedInt || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToUInt32(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_unsignedLong()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id15_unsignedLong || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToUInt64(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_base64Binary()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id16_base64Binary || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = ((!ReadNull()) ? ToByteArrayBase64(isNull: false) : null);
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_guid()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id17_guid || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlConvert.ToGuid(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_TimeSpan()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id19_TimeSpan || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (Reader.IsEmptyElement)
			{
				Reader.Skip();
				result = default(TimeSpan);
			}
			else
			{
				result = XmlConvert.ToTimeSpan(Reader.ReadElementString());
			}
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_char()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id18_char || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = XmlSerializationReader.ToChar(Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	internal object Read_QName()
	{
		object result = null;
		Reader.MoveToContent();
		if (Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)Reader.LocalName != id1_QName || (object)Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = ((!ReadNull()) ? ReadElementQualifiedName() : null);
		}
		else
		{
			UnknownNode(null);
		}
		return result;
	}

	protected override void InitCallbacks()
	{
	}

	protected override void InitIDs()
	{
		id4_boolean = Reader.NameTable.Add("boolean");
		id14_unsignedInt = Reader.NameTable.Add("unsignedInt");
		id15_unsignedLong = Reader.NameTable.Add("unsignedLong");
		id7_float = Reader.NameTable.Add("float");
		id10_dateTime = Reader.NameTable.Add("dateTime");
		id6_long = Reader.NameTable.Add("long");
		id9_decimal = Reader.NameTable.Add("decimal");
		id8_double = Reader.NameTable.Add("double");
		id17_guid = Reader.NameTable.Add("guid");
		if (LocalAppContextSwitches.EnableTimeSpanSerialization)
		{
			id19_TimeSpan = Reader.NameTable.Add("TimeSpan");
		}
		id2_Item = Reader.NameTable.Add("");
		id13_unsignedShort = Reader.NameTable.Add("unsignedShort");
		id18_char = Reader.NameTable.Add("char");
		id3_int = Reader.NameTable.Add("int");
		id12_byte = Reader.NameTable.Add("byte");
		id16_base64Binary = Reader.NameTable.Add("base64Binary");
		id11_unsignedByte = Reader.NameTable.Add("unsignedByte");
		id5_short = Reader.NameTable.Add("short");
		id1_string = Reader.NameTable.Add("string");
		id1_QName = Reader.NameTable.Add("QName");
	}
}
