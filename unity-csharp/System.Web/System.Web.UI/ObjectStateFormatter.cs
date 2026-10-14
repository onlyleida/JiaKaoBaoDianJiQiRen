using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Web.Util;

namespace System.Web.UI;

public sealed class ObjectStateFormatter : IFormatter, IStateFormatter
{
	private sealed class WriterContext
	{
		private Hashtable cache;

		private short nextKey;

		private short key;

		public short Key => key;

		public bool RegisterCache(object o)
		{
			if (nextKey == short.MaxValue)
			{
				return false;
			}
			if (cache == null)
			{
				cache = new Hashtable();
				cache.Add(o, key = nextKey++);
				return false;
			}
			object obj = cache[o];
			if (obj == null)
			{
				cache.Add(o, key = nextKey++);
				return false;
			}
			key = (short)obj;
			return true;
		}
	}

	private sealed class ReaderContext
	{
		private ArrayList cache;

		public void CacheItem(object o)
		{
			if (cache == null)
			{
				cache = new ArrayList();
			}
			cache.Add(o);
		}

		public object GetCache(short key)
		{
			return cache[key];
		}
	}

	private abstract class ObjectFormatter
	{
		private static readonly Hashtable writeMap;

		private static ObjectFormatter[] readMap;

		private static BinaryObjectFormatter binaryObjectFormatter;

		private static TypeFormatter typeFormatter;

		private static EnumFormatter enumFormatter;

		private static SingleRankArrayFormatter singleRankArrayFormatter;

		private static TypeConverterFormatter typeConverterFormatter;

		private static byte nextId;

		protected readonly byte PrimaryId;

		protected readonly byte SecondaryId = byte.MaxValue;

		protected readonly byte TertiaryId = byte.MaxValue;

		protected abstract Type Type { get; }

		protected virtual int NumberOfIds => 1;

		static ObjectFormatter()
		{
			writeMap = new Hashtable();
			readMap = new ObjectFormatter[256];
			nextId = 1;
			new StringFormatter().Register();
			new Int64Formatter().Register();
			new Int32Formatter().Register();
			new Int16Formatter().Register();
			new ByteFormatter().Register();
			new BooleanFormatter().Register();
			new CharFormatter().Register();
			new DateTimeFormatter().Register();
			new PairFormatter().Register();
			new TripletFormatter().Register();
			new ArrayListFormatter().Register();
			new HashtableFormatter().Register();
			new ObjectArrayFormatter().Register();
			new UnitFormatter().Register();
			new FontUnitFormatter().Register();
			new IndexedStringFormatter().Register();
			new ColorFormatter().Register();
			enumFormatter = new EnumFormatter();
			enumFormatter.Register();
			typeFormatter = new TypeFormatter();
			typeFormatter.Register();
			singleRankArrayFormatter = new SingleRankArrayFormatter();
			singleRankArrayFormatter.Register();
			typeConverterFormatter = new TypeConverterFormatter();
			typeConverterFormatter.Register();
			binaryObjectFormatter = new BinaryObjectFormatter();
			binaryObjectFormatter.Register();
		}

		public ObjectFormatter()
		{
			PrimaryId = nextId++;
			if (NumberOfIds == 1)
			{
				return;
			}
			SecondaryId = nextId++;
			if (NumberOfIds != 2)
			{
				TertiaryId = nextId++;
				if (NumberOfIds != 3)
				{
					throw new Exception();
				}
			}
		}

		protected abstract void Write(BinaryWriter w, object o, WriterContext ctx);

		protected abstract object Read(byte token, BinaryReader r, ReaderContext ctx);

		public virtual void Register()
		{
			writeMap[Type] = this;
			readMap[PrimaryId] = this;
			if (SecondaryId != byte.MaxValue)
			{
				readMap[SecondaryId] = this;
				if (TertiaryId != byte.MaxValue)
				{
					readMap[TertiaryId] = this;
				}
			}
		}

		public static void WriteObject(BinaryWriter w, object o, WriterContext ctx)
		{
			if (o == null)
			{
				w.Write((byte)0);
				return;
			}
			Type type = o.GetType();
			ObjectFormatter objectFormatter = writeMap[type] as ObjectFormatter;
			if (objectFormatter == null)
			{
				if (o is Type)
				{
					objectFormatter = typeFormatter;
				}
				else if (type.IsEnum)
				{
					objectFormatter = enumFormatter;
				}
				else if (type.IsArray && ((Array)o).Rank == 1)
				{
					objectFormatter = singleRankArrayFormatter;
				}
				else
				{
					TypeConverter converter = TypeDescriptor.GetConverter(o);
					if (converter == null || converter.GetType() == typeof(TypeConverter) || !converter.CanConvertTo(typeof(string)) || !converter.CanConvertFrom(typeof(string)))
					{
						objectFormatter = binaryObjectFormatter;
					}
					else
					{
						typeConverterFormatter.Converter = converter;
						objectFormatter = typeConverterFormatter;
					}
				}
			}
			objectFormatter.Write(w, o, ctx);
		}

		public static object ReadObject(BinaryReader r, ReaderContext ctx)
		{
			byte b = r.ReadByte();
			if (b == 0)
			{
				return null;
			}
			return readMap[b].Read(b, r, ctx);
		}

		protected void Write7BitEncodedInt(BinaryWriter w, int value)
		{
			do
			{
				int num = (value >> 7) & 0x1FFFFFF;
				byte b = (byte)(value & 0x7F);
				if (num != 0)
				{
					b |= 0x80;
				}
				w.Write(b);
				value = num;
			}
			while (value != 0);
		}

		protected int Read7BitEncodedInt(BinaryReader r)
		{
			int num = 0;
			int num2 = 0;
			byte b;
			do
			{
				b = r.ReadByte();
				num |= (b & 0x7F) << num2;
				num2 += 7;
			}
			while ((b & 0x80) == 128);
			return num;
		}
	}

	private class StringFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(string);

		protected override int NumberOfIds => 2;

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			if (ctx.RegisterCache(o))
			{
				w.Write(SecondaryId);
				w.Write(ctx.Key);
			}
			else
			{
				w.Write(PrimaryId);
				w.Write((string)o);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			if (token == PrimaryId)
			{
				string text = r.ReadString();
				ctx.CacheItem(text);
				return text;
			}
			return ctx.GetCache(r.ReadInt16());
		}
	}

	private class IndexedStringFormatter : StringFormatter
	{
		protected override Type Type => typeof(IndexedString);

		protected override int NumberOfIds => 2;

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			if (!(o is IndexedString indexedString))
			{
				throw new InvalidOperationException("object is not of the IndexedString type");
			}
			base.Write(w, indexedString.Value, ctx);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			string obj = base.Read(token, r, ctx) as string;
			if (string.IsNullOrEmpty(obj))
			{
				throw new InvalidOperationException("string must not be null or empty.");
			}
			return new IndexedString(obj);
		}
	}

	private class Int64Formatter : ObjectFormatter
	{
		protected override Type Type => typeof(long);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			w.Write(PrimaryId);
			w.Write((long)o);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return r.ReadInt64();
		}
	}

	private class Int32Formatter : ObjectFormatter
	{
		protected override Type Type => typeof(int);

		protected override int NumberOfIds => 2;

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			int num = (int)o;
			if ((byte)num == num)
			{
				w.Write(SecondaryId);
				w.Write((byte)num);
			}
			else
			{
				w.Write(PrimaryId);
				w.Write(num);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			if (token == PrimaryId)
			{
				return r.ReadInt32();
			}
			return (int)r.ReadByte();
		}
	}

	private class Int16Formatter : ObjectFormatter
	{
		protected override Type Type => typeof(short);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			w.Write(PrimaryId);
			w.Write((short)o);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return r.ReadInt16();
		}
	}

	private class ByteFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(byte);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			w.Write(PrimaryId);
			w.Write((byte)o);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return r.ReadByte();
		}
	}

	private class BooleanFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(bool);

		protected override int NumberOfIds => 2;

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			if ((bool)o)
			{
				w.Write(PrimaryId);
			}
			else
			{
				w.Write(SecondaryId);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return token == PrimaryId;
		}
	}

	private class CharFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(char);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			w.Write(PrimaryId);
			w.Write((char)o);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return r.ReadChar();
		}
	}

	private class DateTimeFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(DateTime);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			w.Write(PrimaryId);
			w.Write(((DateTime)o).Ticks);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return new DateTime(r.ReadInt64());
		}
	}

	private class PairFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(Pair);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			Pair pair = (Pair)o;
			w.Write(PrimaryId);
			ObjectFormatter.WriteObject(w, pair.First, ctx);
			ObjectFormatter.WriteObject(w, pair.Second, ctx);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return new Pair
			{
				First = ObjectFormatter.ReadObject(r, ctx),
				Second = ObjectFormatter.ReadObject(r, ctx)
			};
		}
	}

	private class TripletFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(Triplet);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			Triplet triplet = (Triplet)o;
			w.Write(PrimaryId);
			ObjectFormatter.WriteObject(w, triplet.First, ctx);
			ObjectFormatter.WriteObject(w, triplet.Second, ctx);
			ObjectFormatter.WriteObject(w, triplet.Third, ctx);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return new Triplet
			{
				First = ObjectFormatter.ReadObject(r, ctx),
				Second = ObjectFormatter.ReadObject(r, ctx),
				Third = ObjectFormatter.ReadObject(r, ctx)
			};
		}
	}

	private class ArrayListFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(ArrayList);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			ArrayList arrayList = (ArrayList)o;
			w.Write(PrimaryId);
			Write7BitEncodedInt(w, arrayList.Count);
			for (int i = 0; i < arrayList.Count; i++)
			{
				ObjectFormatter.WriteObject(w, arrayList[i], ctx);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			int num = Read7BitEncodedInt(r);
			ArrayList arrayList = new ArrayList(num);
			for (int i = 0; i < num; i++)
			{
				arrayList.Add(ObjectFormatter.ReadObject(r, ctx));
			}
			return arrayList;
		}
	}

	private class HashtableFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(Hashtable);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			Hashtable hashtable = (Hashtable)o;
			w.Write(PrimaryId);
			Write7BitEncodedInt(w, hashtable.Count);
			foreach (DictionaryEntry item in hashtable)
			{
				ObjectFormatter.WriteObject(w, item.Key, ctx);
				ObjectFormatter.WriteObject(w, item.Value, ctx);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			int num = Read7BitEncodedInt(r);
			Hashtable hashtable = new Hashtable(num);
			for (int i = 0; i < num; i++)
			{
				object key = ObjectFormatter.ReadObject(r, ctx);
				object value = ObjectFormatter.ReadObject(r, ctx);
				hashtable.Add(key, value);
			}
			return hashtable;
		}
	}

	private class ObjectArrayFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(object[]);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			object[] array = (object[])o;
			w.Write(PrimaryId);
			Write7BitEncodedInt(w, array.Length);
			for (int i = 0; i < array.Length; i++)
			{
				ObjectFormatter.WriteObject(w, array[i], ctx);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			int num = Read7BitEncodedInt(r);
			object[] array = new object[num];
			for (int i = 0; i < num; i++)
			{
				array[i] = ObjectFormatter.ReadObject(r, ctx);
			}
			return array;
		}
	}

	private class ColorFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(Color);

		protected override int NumberOfIds => 2;

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			Color color = (Color)o;
			if (color.IsEmpty || color.IsKnownColor)
			{
				w.Write(SecondaryId);
				if (color.IsEmpty)
				{
					w.Write(-1);
				}
				else
				{
					w.Write((int)color.ToKnownColor());
				}
			}
			else
			{
				w.Write(PrimaryId);
				w.Write(color.ToArgb());
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			int num = r.ReadInt32();
			if (token == PrimaryId)
			{
				return Color.FromArgb(num);
			}
			if (num == -1)
			{
				return Color.Empty;
			}
			return Color.FromKnownColor((KnownColor)num);
		}
	}

	private class EnumFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(Enum);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			object o2 = Convert.ChangeType(o, ((Enum)o).GetTypeCode());
			w.Write(PrimaryId);
			ObjectFormatter.WriteObject(w, o.GetType(), ctx);
			ObjectFormatter.WriteObject(w, o2, ctx);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			Type enumType = (Type)ObjectFormatter.ReadObject(r, ctx);
			object value = ObjectFormatter.ReadObject(r, ctx);
			return Enum.ToObject(enumType, value);
		}
	}

	private class TypeFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(Type);

		protected override int NumberOfIds => 2;

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			if (ctx.RegisterCache(o))
			{
				w.Write(SecondaryId);
				w.Write(ctx.Key);
			}
			else
			{
				w.Write(PrimaryId);
				w.Write(((Type)o).FullName);
				w.Write(((Type)o).Assembly.FullName);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			if (token == PrimaryId)
			{
				string name = r.ReadString();
				Type type = Assembly.Load(r.ReadString()).GetType(name);
				ctx.CacheItem(type);
				return type;
			}
			return ctx.GetCache(r.ReadInt16());
		}
	}

	private class SingleRankArrayFormatter : ObjectFormatter
	{
		private readonly BinaryFormatter _binaryFormatter = new BinaryFormatter();

		protected override Type Type => typeof(Array);

		protected override int NumberOfIds => 2;

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			Array array = (Array)o;
			if (array.GetType().GetElementType().IsPrimitive)
			{
				w.Write(SecondaryId);
				_binaryFormatter.Serialize(w.BaseStream, o);
				return;
			}
			w.Write(PrimaryId);
			ObjectFormatter.WriteObject(w, array.GetType().GetElementType(), ctx);
			Write7BitEncodedInt(w, array.Length);
			for (int i = 0; i < array.Length; i++)
			{
				ObjectFormatter.WriteObject(w, array.GetValue(i), ctx);
			}
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			if (token == SecondaryId)
			{
				return _binaryFormatter.Deserialize(r.BaseStream);
			}
			Type elementType = (Type)ObjectFormatter.ReadObject(r, ctx);
			int num = Read7BitEncodedInt(r);
			Array array = Array.CreateInstance(elementType, num);
			for (int i = 0; i < num; i++)
			{
				array.SetValue(ObjectFormatter.ReadObject(r, ctx), i);
			}
			return array;
		}
	}

	private class FontUnitFormatter : StringFormatter
	{
		protected override Type Type => typeof(FontUnit);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			base.Write(w, o.ToString(), ctx);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return FontUnit.Parse((string)base.Read(token, r, ctx));
		}
	}

	private class UnitFormatter : StringFormatter
	{
		protected override Type Type => typeof(Unit);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			base.Write(w, o.ToString(), ctx);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			return Unit.Parse((string)base.Read(token, r, ctx));
		}
	}

	private class TypeConverterFormatter : StringFormatter
	{
		private TypeConverter converter;

		protected override Type Type => typeof(TypeConverter);

		public TypeConverter Converter
		{
			set
			{
				converter = value;
			}
		}

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			w.Write(PrimaryId);
			ObjectFormatter.WriteObject(w, o.GetType(), ctx);
			string o2 = (string)converter.ConvertTo(null, Helpers.InvariantCulture, o, typeof(string));
			base.Write(w, o2, ctx);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			Type type = (Type)ObjectFormatter.ReadObject(r, ctx);
			converter = TypeDescriptor.GetConverter(type);
			token = r.ReadByte();
			string value = (string)base.Read(token, r, ctx);
			return converter.ConvertFrom(null, Helpers.InvariantCulture, value);
		}
	}

	private class BinaryObjectFormatter : ObjectFormatter
	{
		protected override Type Type => typeof(object);

		protected override void Write(BinaryWriter w, object o, WriterContext ctx)
		{
			w.Write(PrimaryId);
			MemoryStream memoryStream = new MemoryStream(128);
			new BinaryFormatter().Serialize(memoryStream, o);
			byte[] buffer = memoryStream.GetBuffer();
			Write7BitEncodedInt(w, buffer.Length);
			w.Write(buffer, 0, buffer.Length);
		}

		protected override object Read(byte token, BinaryReader r, ReaderContext ctx)
		{
			int num = Read7BitEncodedInt(r);
			byte[] array = r.ReadBytes(num);
			if (array.Length != num)
			{
				throw new Exception();
			}
			return new BinaryFormatter().Deserialize(new MemoryStream(array));
		}
	}

	private const ushort SERIALIZED_STREAM_MAGIC = 511;

	private Page page;

	private MachineKeySection section;

	private bool EnableMac
	{
		get
		{
			if (page != null)
			{
				return page.EnableViewStateMac;
			}
			return section != null;
		}
	}

	private bool NeedViewStateEncryption
	{
		get
		{
			if (page != null)
			{
				return page.NeedViewStateEncryption;
			}
			return false;
		}
	}

	internal MachineKeySection Section
	{
		get
		{
			if (section == null)
			{
				section = (MachineKeySection)WebConfigurationManager.GetWebApplicationSection("system.web/machineKey");
			}
			return section;
		}
		set
		{
			section = value;
		}
	}

	SerializationBinder IFormatter.Binder
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	StreamingContext IFormatter.Context
	{
		get
		{
			return new StreamingContext(StreamingContextStates.All);
		}
		set
		{
		}
	}

	ISurrogateSelector IFormatter.SurrogateSelector
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	public ObjectStateFormatter()
	{
	}

	internal ObjectStateFormatter(Page page)
	{
		this.page = page;
	}

	public object Deserialize(Stream inputStream)
	{
		if (inputStream == null)
		{
			throw new ArgumentNullException("inputStream");
		}
		BinaryReader binaryReader = new BinaryReader(inputStream);
		if (binaryReader.ReadInt16() != 511)
		{
			throw new ArgumentException("The serialized data is invalid");
		}
		return DeserializeObject(binaryReader);
	}

	public object Deserialize(string inputString)
	{
		if (inputString == null)
		{
			throw new ArgumentNullException("inputString");
		}
		if (inputString.Length == 0)
		{
			throw new ArgumentNullException("inputString");
		}
		byte[] array = Convert.FromBase64String(inputString);
		if (array == null || array.Length == 0)
		{
			throw new ArgumentNullException("inputString");
		}
		if (NeedViewStateEncryption)
		{
			array = ((!EnableMac) ? MachineKeySectionUtils.Decrypt(Section, array) : MachineKeySectionUtils.VerifyDecrypt(Section, array));
		}
		else if (EnableMac)
		{
			array = MachineKeySectionUtils.Verify(Section, array);
		}
		if (array == null)
		{
			throw new HttpException("Unable to validate data.");
		}
		using MemoryStream inputStream = new MemoryStream(array);
		return Deserialize(inputStream);
	}

	public string Serialize(object stateGraph)
	{
		if (stateGraph == null)
		{
			return string.Empty;
		}
		byte[] array = null;
		using (MemoryStream memoryStream = new MemoryStream())
		{
			Serialize(memoryStream, stateGraph);
			array = memoryStream.GetBuffer();
		}
		if (NeedViewStateEncryption)
		{
			array = ((!EnableMac) ? MachineKeySectionUtils.Encrypt(Section, array) : MachineKeySectionUtils.EncryptSign(Section, array));
		}
		else if (EnableMac)
		{
			array = MachineKeySectionUtils.Sign(Section, array);
		}
		return Convert.ToBase64String(array, 0, array.Length);
	}

	public void Serialize(Stream outputStream, object stateGraph)
	{
		if (outputStream == null)
		{
			throw new ArgumentNullException("outputStream");
		}
		if (stateGraph == null)
		{
			throw new ArgumentNullException("stateGraph");
		}
		BinaryWriter binaryWriter = new BinaryWriter(outputStream);
		binaryWriter.Write((ushort)511);
		SerializeValue(binaryWriter, stateGraph);
	}

	private void SerializeValue(BinaryWriter w, object o)
	{
		ObjectFormatter.WriteObject(w, o, new WriterContext());
	}

	private object DeserializeObject(BinaryReader r)
	{
		return ObjectFormatter.ReadObject(r, new ReaderContext());
	}

	object IFormatter.Deserialize(Stream serializationStream)
	{
		return Deserialize(serializationStream);
	}

	void IFormatter.Serialize(Stream serializationStream, object stateGraph)
	{
		Serialize(serializationStream, stateGraph);
	}
}
