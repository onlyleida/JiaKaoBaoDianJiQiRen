using System.Collections;
using System.Globalization;
using System.Text;
using System.Xml.Schema;

namespace System.Xml.Serialization;

internal class XmlSerializationWriterCodeGen : XmlSerializationCodeGen
{
	internal XmlSerializationWriterCodeGen(IndentedWriter writer, TypeScope[] scopes, string access, string className)
		: base(writer, scopes, access, className)
	{
	}

	internal void GenerateBegin()
	{
		Writer.Write(Access);
		Writer.Write(" class ");
		Writer.Write(ClassName);
		Writer.Write(" : ");
		Writer.Write(typeof(XmlSerializationWriter).FullName);
		Writer.WriteLine(" {");
		Writer.Indent++;
		TypeScope[] array = Scopes;
		foreach (TypeScope typeScope in array)
		{
			foreach (TypeMapping typeMapping3 in typeScope.TypeMappings)
			{
				if (typeMapping3 is StructMapping || typeMapping3 is EnumMapping)
				{
					MethodNames.Add(typeMapping3, NextMethodName(typeMapping3.TypeDesc.Name));
				}
			}
			RaCodeGen.WriteReflectionInit(typeScope);
		}
		array = Scopes;
		for (int i = 0; i < array.Length; i++)
		{
			foreach (TypeMapping typeMapping4 in array[i].TypeMappings)
			{
				if (typeMapping4.IsSoap)
				{
					if (typeMapping4 is StructMapping)
					{
						WriteStructMethod((StructMapping)typeMapping4);
					}
					else if (typeMapping4 is EnumMapping)
					{
						WriteEnumMethod((EnumMapping)typeMapping4);
					}
				}
			}
		}
	}

	internal override void GenerateMethod(TypeMapping mapping)
	{
		if (!GeneratedMethods.Contains(mapping))
		{
			GeneratedMethods[mapping] = mapping;
			if (mapping is StructMapping)
			{
				WriteStructMethod((StructMapping)mapping);
			}
			else if (mapping is EnumMapping)
			{
				WriteEnumMethod((EnumMapping)mapping);
			}
		}
	}

	internal void GenerateEnd()
	{
		GenerateReferencedMethods();
		GenerateInitCallbacksMethod();
		Writer.Indent--;
		Writer.WriteLine("}");
	}

	internal string GenerateElement(XmlMapping xmlMapping)
	{
		if (!xmlMapping.IsWriteable)
		{
			return null;
		}
		if (!xmlMapping.GenerateSerializer)
		{
			throw new ArgumentException(Res.GetString("Internal error."), "xmlMapping");
		}
		if (xmlMapping is XmlTypeMapping)
		{
			return GenerateTypeElement((XmlTypeMapping)xmlMapping);
		}
		if (xmlMapping is XmlMembersMapping)
		{
			return GenerateMembersElement((XmlMembersMapping)xmlMapping);
		}
		throw new ArgumentException(Res.GetString("Internal error."), "xmlMapping");
	}

	private void GenerateInitCallbacksMethod()
	{
		Writer.WriteLine();
		Writer.WriteLine("protected override void InitCallbacks() {");
		Writer.Indent++;
		TypeScope[] array = Scopes;
		for (int i = 0; i < array.Length; i++)
		{
			foreach (TypeMapping typeMapping in array[i].TypeMappings)
			{
				if (typeMapping.IsSoap && (typeMapping is StructMapping || typeMapping is EnumMapping) && !typeMapping.TypeDesc.IsRoot)
				{
					string s = (string)MethodNames[typeMapping];
					Writer.Write("AddWriteCallback(");
					Writer.Write(RaCodeGen.GetStringForTypeof(typeMapping.TypeDesc.CSharpName, typeMapping.TypeDesc.UseReflection));
					Writer.Write(", ");
					WriteQuotedCSharpString(typeMapping.TypeName);
					Writer.Write(", ");
					WriteQuotedCSharpString(typeMapping.Namespace);
					Writer.Write(", new ");
					Writer.Write(typeof(XmlSerializationWriteCallback).FullName);
					Writer.Write("(this.");
					Writer.Write(s);
					Writer.WriteLine("));");
				}
			}
		}
		Writer.Indent--;
		Writer.WriteLine("}");
	}

	private void WriteQualifiedNameElement(string name, string ns, object defaultValue, string source, bool nullable, bool IsSoap, TypeMapping mapping)
	{
		int num;
		if (defaultValue != null)
		{
			num = ((defaultValue != DBNull.Value) ? 1 : 0);
			if (num != 0)
			{
				WriteCheckDefault(source, defaultValue, nullable);
				Writer.WriteLine(" {");
				Writer.Indent++;
			}
		}
		else
		{
			num = 0;
		}
		string text = (IsSoap ? "Encoded" : "Literal");
		Writer.Write(nullable ? ("WriteNullableQualifiedName" + text) : "WriteElementQualifiedName");
		Writer.Write("(");
		WriteQuotedCSharpString(name);
		if (ns != null)
		{
			Writer.Write(", ");
			WriteQuotedCSharpString(ns);
		}
		Writer.Write(", ");
		Writer.Write(source);
		if (IsSoap)
		{
			Writer.Write(", new System.Xml.XmlQualifiedName(");
			WriteQuotedCSharpString(mapping.TypeName);
			Writer.Write(", ");
			WriteQuotedCSharpString(mapping.Namespace);
			Writer.Write(")");
		}
		Writer.WriteLine(");");
		if (num != 0)
		{
			Writer.Indent--;
			Writer.WriteLine("}");
		}
	}

	private void WriteEnumValue(EnumMapping mapping, string source)
	{
		string s = ReferenceMapping(mapping);
		Writer.Write(s);
		Writer.Write("(");
		Writer.Write(source);
		Writer.Write(")");
	}

	private void WritePrimitiveValue(TypeDesc typeDesc, string source, bool isElement)
	{
		if (typeDesc == StringTypeDesc || typeDesc.FormatterName == "String")
		{
			Writer.Write(source);
		}
		else if (!typeDesc.HasCustomFormatter)
		{
			Writer.Write(typeof(XmlConvert).FullName);
			Writer.Write(".ToString((");
			Writer.Write(typeDesc.CSharpName);
			Writer.Write(")");
			Writer.Write(source);
			Writer.Write(")");
		}
		else
		{
			Writer.Write("From");
			Writer.Write(typeDesc.FormatterName);
			Writer.Write("(");
			Writer.Write(source);
			Writer.Write(")");
		}
	}

	private void WritePrimitive(string method, string name, string ns, object defaultValue, string source, TypeMapping mapping, bool writeXsiType, bool isElement, bool isNullable)
	{
		TypeDesc typeDesc = mapping.TypeDesc;
		bool flag = defaultValue != null && defaultValue != DBNull.Value && mapping.TypeDesc.HasDefaultSupport;
		if (flag)
		{
			if (mapping is EnumMapping)
			{
				Writer.Write("if (");
				if (mapping.TypeDesc.UseReflection)
				{
					Writer.Write(RaCodeGen.GetStringForEnumLongValue(source, mapping.TypeDesc.UseReflection));
				}
				else
				{
					Writer.Write(source);
				}
				Writer.Write(" != ");
				if (((EnumMapping)mapping).IsFlags)
				{
					Writer.Write("(");
					string[] array = ((string)defaultValue).Split(null);
					for (int i = 0; i < array.Length; i++)
					{
						if (array[i] != null && array[i].Length != 0)
						{
							if (i > 0)
							{
								Writer.WriteLine(" | ");
							}
							Writer.Write(RaCodeGen.GetStringForEnumCompare((EnumMapping)mapping, array[i], mapping.TypeDesc.UseReflection));
						}
					}
					Writer.Write(")");
				}
				else
				{
					Writer.Write(RaCodeGen.GetStringForEnumCompare((EnumMapping)mapping, (string)defaultValue, mapping.TypeDesc.UseReflection));
				}
				Writer.Write(")");
			}
			else
			{
				WriteCheckDefault(source, defaultValue, isNullable);
			}
			Writer.WriteLine(" {");
			Writer.Indent++;
		}
		Writer.Write(method);
		Writer.Write("(");
		WriteQuotedCSharpString(name);
		if (ns != null)
		{
			Writer.Write(", ");
			WriteQuotedCSharpString(ns);
		}
		Writer.Write(", ");
		if (mapping is EnumMapping)
		{
			WriteEnumValue((EnumMapping)mapping, source);
		}
		else
		{
			WritePrimitiveValue(typeDesc, source, isElement);
		}
		if (writeXsiType)
		{
			Writer.Write(", new System.Xml.XmlQualifiedName(");
			WriteQuotedCSharpString(mapping.TypeName);
			Writer.Write(", ");
			WriteQuotedCSharpString(mapping.Namespace);
			Writer.Write(")");
		}
		Writer.WriteLine(");");
		if (flag)
		{
			Writer.Indent--;
			Writer.WriteLine("}");
		}
	}

	private void WriteTag(string methodName, string name, string ns)
	{
		Writer.Write(methodName);
		Writer.Write("(");
		WriteQuotedCSharpString(name);
		Writer.Write(", ");
		if (ns == null)
		{
			Writer.Write("null");
		}
		else
		{
			WriteQuotedCSharpString(ns);
		}
		Writer.WriteLine(");");
	}

	private void WriteTag(string methodName, string name, string ns, bool writePrefixed)
	{
		Writer.Write(methodName);
		Writer.Write("(");
		WriteQuotedCSharpString(name);
		Writer.Write(", ");
		if (ns == null)
		{
			Writer.Write("null");
		}
		else
		{
			WriteQuotedCSharpString(ns);
		}
		Writer.Write(", null, ");
		if (writePrefixed)
		{
			Writer.Write("true");
		}
		else
		{
			Writer.Write("false");
		}
		Writer.WriteLine(");");
	}

	private void WriteStartElement(string name, string ns, bool writePrefixed)
	{
		WriteTag("WriteStartElement", name, ns, writePrefixed);
	}

	private void WriteEndElement()
	{
		Writer.WriteLine("WriteEndElement();");
	}

	private void WriteEndElement(string source)
	{
		Writer.Write("WriteEndElement(");
		Writer.Write(source);
		Writer.WriteLine(");");
	}

	private void WriteEncodedNullTag(string name, string ns)
	{
		WriteTag("WriteNullTagEncoded", name, ns);
	}

	private void WriteLiteralNullTag(string name, string ns)
	{
		WriteTag("WriteNullTagLiteral", name, ns);
	}

	private void WriteEmptyTag(string name, string ns)
	{
		WriteTag("WriteEmptyTag", name, ns);
	}

	private string GenerateMembersElement(XmlMembersMapping xmlMembersMapping)
	{
		ElementAccessor accessor = xmlMembersMapping.Accessor;
		MembersMapping membersMapping = (MembersMapping)accessor.Mapping;
		bool hasWrapperElement = membersMapping.HasWrapperElement;
		bool writeAccessors = membersMapping.WriteAccessors;
		bool flag = xmlMembersMapping.IsSoap & writeAccessors;
		string text = NextMethodName(accessor.Name);
		Writer.WriteLine();
		Writer.Write("public void ");
		Writer.Write(text);
		Writer.WriteLine("(object[] p) {");
		Writer.Indent++;
		Writer.WriteLine("WriteStartDocument();");
		if (!membersMapping.IsSoap)
		{
			Writer.WriteLine("TopLevelElement();");
		}
		Writer.WriteLine("int pLength = p.Length;");
		if (hasWrapperElement)
		{
			WriteStartElement(accessor.Name, (accessor.Form == XmlSchemaForm.Qualified) ? accessor.Namespace : "", membersMapping.IsSoap);
			int num = FindXmlnsIndex(membersMapping.Members);
			if (num >= 0)
			{
				_ = membersMapping.Members[num];
				string source = "((" + typeof(XmlSerializerNamespaces).FullName + ")p[" + num.ToString(CultureInfo.InvariantCulture) + "])";
				Writer.Write("if (pLength > ");
				Writer.Write(num.ToString(CultureInfo.InvariantCulture));
				Writer.WriteLine(") {");
				Writer.Indent++;
				WriteNamespaces(source);
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			for (int i = 0; i < membersMapping.Members.Length; i++)
			{
				MemberMapping memberMapping = membersMapping.Members[i];
				if (memberMapping.Attribute == null || memberMapping.Ignore)
				{
					continue;
				}
				string source2 = "p[" + i.ToString(CultureInfo.InvariantCulture) + "]";
				string text2 = null;
				int num2 = 0;
				if (memberMapping.CheckSpecified != SpecifiedAccessor.None)
				{
					string text3 = memberMapping.Name + "Specified";
					for (int j = 0; j < membersMapping.Members.Length; j++)
					{
						if (membersMapping.Members[j].Name == text3)
						{
							text2 = "((bool) p[" + j.ToString(CultureInfo.InvariantCulture) + "])";
							num2 = j;
							break;
						}
					}
				}
				Writer.Write("if (pLength > ");
				Writer.Write(i.ToString(CultureInfo.InvariantCulture));
				Writer.WriteLine(") {");
				Writer.Indent++;
				if (text2 != null)
				{
					Writer.Write("if (pLength <= ");
					Writer.Write(num2.ToString(CultureInfo.InvariantCulture));
					Writer.Write(" || ");
					Writer.Write(text2);
					Writer.WriteLine(") {");
					Writer.Indent++;
				}
				WriteMember(source2, memberMapping.Attribute, memberMapping.TypeDesc, "p");
				if (text2 != null)
				{
					Writer.Indent--;
					Writer.WriteLine("}");
				}
				Writer.Indent--;
				Writer.WriteLine("}");
			}
		}
		for (int k = 0; k < membersMapping.Members.Length; k++)
		{
			MemberMapping memberMapping2 = membersMapping.Members[k];
			if (memberMapping2.Xmlns != null || memberMapping2.Ignore)
			{
				continue;
			}
			string text4 = null;
			int num3 = 0;
			if (memberMapping2.CheckSpecified != SpecifiedAccessor.None)
			{
				string text5 = memberMapping2.Name + "Specified";
				for (int l = 0; l < membersMapping.Members.Length; l++)
				{
					if (membersMapping.Members[l].Name == text5)
					{
						text4 = "((bool) p[" + l.ToString(CultureInfo.InvariantCulture) + "])";
						num3 = l;
						break;
					}
				}
			}
			Writer.Write("if (pLength > ");
			Writer.Write(k.ToString(CultureInfo.InvariantCulture));
			Writer.WriteLine(") {");
			Writer.Indent++;
			if (text4 != null)
			{
				Writer.Write("if (pLength <= ");
				Writer.Write(num3.ToString(CultureInfo.InvariantCulture));
				Writer.Write(" || ");
				Writer.Write(text4);
				Writer.WriteLine(") {");
				Writer.Indent++;
			}
			string source3 = "p[" + k.ToString(CultureInfo.InvariantCulture) + "]";
			string choiceSource = null;
			if (memberMapping2.ChoiceIdentifier != null)
			{
				for (int m = 0; m < membersMapping.Members.Length; m++)
				{
					if (membersMapping.Members[m].Name == memberMapping2.ChoiceIdentifier.MemberName)
					{
						choiceSource = ((!memberMapping2.ChoiceIdentifier.Mapping.TypeDesc.UseReflection) ? ("((" + membersMapping.Members[m].TypeDesc.CSharpName + ")p[" + m.ToString(CultureInfo.InvariantCulture) + "])") : ("p[" + m.ToString(CultureInfo.InvariantCulture) + "]"));
						break;
					}
				}
			}
			if (flag && memberMapping2.IsReturnValue && memberMapping2.Elements.Length != 0)
			{
				Writer.Write("WriteRpcResult(");
				WriteQuotedCSharpString(memberMapping2.Elements[0].Name);
				Writer.Write(", ");
				WriteQuotedCSharpString("");
				Writer.WriteLine(");");
			}
			WriteMember(source3, choiceSource, memberMapping2.ElementsSortedByDerivation, memberMapping2.Text, memberMapping2.ChoiceIdentifier, memberMapping2.TypeDesc, writeAccessors | hasWrapperElement);
			if (text4 != null)
			{
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			Writer.Indent--;
			Writer.WriteLine("}");
		}
		if (hasWrapperElement)
		{
			WriteEndElement();
		}
		if (accessor.IsSoap)
		{
			if (!hasWrapperElement && !writeAccessors)
			{
				Writer.Write("if (pLength > ");
				Writer.Write(membersMapping.Members.Length.ToString(CultureInfo.InvariantCulture));
				Writer.WriteLine(") {");
				Writer.Indent++;
				WriteExtraMembers(membersMapping.Members.Length.ToString(CultureInfo.InvariantCulture), "pLength");
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			Writer.WriteLine("WriteReferencedElements();");
		}
		Writer.Indent--;
		Writer.WriteLine("}");
		return text;
	}

	private string GenerateTypeElement(XmlTypeMapping xmlTypeMapping)
	{
		ElementAccessor accessor = xmlTypeMapping.Accessor;
		TypeMapping mapping = accessor.Mapping;
		string text = NextMethodName(accessor.Name);
		Writer.WriteLine();
		Writer.Write("public void ");
		Writer.Write(text);
		Writer.WriteLine("(object o) {");
		Writer.Indent++;
		Writer.WriteLine("WriteStartDocument();");
		Writer.WriteLine("if (o == null) {");
		Writer.Indent++;
		if (accessor.IsNullable)
		{
			if (mapping.IsSoap)
			{
				WriteEncodedNullTag(accessor.Name, (accessor.Form == XmlSchemaForm.Qualified) ? accessor.Namespace : "");
			}
			else
			{
				WriteLiteralNullTag(accessor.Name, (accessor.Form == XmlSchemaForm.Qualified) ? accessor.Namespace : "");
			}
		}
		else
		{
			WriteEmptyTag(accessor.Name, (accessor.Form == XmlSchemaForm.Qualified) ? accessor.Namespace : "");
		}
		Writer.WriteLine("return;");
		Writer.Indent--;
		Writer.WriteLine("}");
		if (!mapping.IsSoap && !mapping.TypeDesc.IsValueType && !mapping.TypeDesc.Type.IsPrimitive)
		{
			Writer.WriteLine("TopLevelElement();");
		}
		WriteMember("o", null, new ElementAccessor[1] { accessor }, null, null, mapping.TypeDesc, !accessor.IsSoap);
		if (mapping.IsSoap)
		{
			Writer.WriteLine("WriteReferencedElements();");
		}
		Writer.Indent--;
		Writer.WriteLine("}");
		return text;
	}

	private string NextMethodName(string name)
	{
		return "Write" + (++NextMethodNumber).ToString(null, NumberFormatInfo.InvariantInfo) + "_" + CodeIdentifier.MakeValidInternal(name);
	}

	private void WriteEnumMethod(EnumMapping mapping)
	{
		string s = (string)MethodNames[mapping];
		Writer.WriteLine();
		string cSharpName = mapping.TypeDesc.CSharpName;
		if (mapping.IsSoap)
		{
			Writer.Write("void ");
			Writer.Write(s);
			Writer.WriteLine("(object e) {");
			WriteLocalDecl(cSharpName, "v", "e", mapping.TypeDesc.UseReflection);
		}
		else
		{
			Writer.Write("string ");
			Writer.Write(s);
			Writer.Write("(");
			Writer.Write(mapping.TypeDesc.UseReflection ? "object" : cSharpName);
			Writer.WriteLine(" v) {");
		}
		Writer.Indent++;
		Writer.WriteLine("string s = null;");
		ConstantMapping[] constants = mapping.Constants;
		if (constants.Length != 0)
		{
			Hashtable hashtable = new Hashtable();
			if (mapping.TypeDesc.UseReflection)
			{
				Writer.WriteLine("switch (" + RaCodeGen.GetStringForEnumLongValue("v", mapping.TypeDesc.UseReflection) + " ){");
			}
			else
			{
				Writer.WriteLine("switch (v) {");
			}
			Writer.Indent++;
			foreach (ConstantMapping constantMapping in constants)
			{
				if (hashtable[constantMapping.Value] == null)
				{
					WriteEnumCase(cSharpName, constantMapping, mapping.TypeDesc.UseReflection);
					Writer.Write("s = ");
					WriteQuotedCSharpString(constantMapping.XmlName);
					Writer.WriteLine("; break;");
					hashtable.Add(constantMapping.Value, constantMapping.Value);
				}
			}
			if (mapping.IsFlags)
			{
				Writer.Write("default: s = FromEnum(");
				Writer.Write(RaCodeGen.GetStringForEnumLongValue("v", mapping.TypeDesc.UseReflection));
				Writer.Write(", new string[] {");
				Writer.Indent++;
				for (int j = 0; j < constants.Length; j++)
				{
					ConstantMapping constantMapping2 = constants[j];
					if (j > 0)
					{
						Writer.WriteLine(", ");
					}
					WriteQuotedCSharpString(constantMapping2.XmlName);
				}
				Writer.Write("}, new ");
				Writer.Write(typeof(long).FullName);
				Writer.Write("[] {");
				for (int k = 0; k < constants.Length; k++)
				{
					ConstantMapping constantMapping3 = constants[k];
					if (k > 0)
					{
						Writer.WriteLine(", ");
					}
					Writer.Write("(long)");
					if (mapping.TypeDesc.UseReflection)
					{
						Writer.Write(constantMapping3.Value.ToString(CultureInfo.InvariantCulture));
						continue;
					}
					Writer.Write(cSharpName);
					Writer.Write(".@");
					CodeIdentifier.CheckValidIdentifier(constantMapping3.Name);
					Writer.Write(constantMapping3.Name);
				}
				Writer.Indent--;
				Writer.Write("}, ");
				WriteQuotedCSharpString(mapping.TypeDesc.FullName);
				Writer.WriteLine("); break;");
			}
			else
			{
				Writer.Write("default: throw CreateInvalidEnumValueException(");
				Writer.Write(RaCodeGen.GetStringForEnumLongValue("v", mapping.TypeDesc.UseReflection));
				Writer.Write(".ToString(System.Globalization.CultureInfo.InvariantCulture), ");
				WriteQuotedCSharpString(mapping.TypeDesc.FullName);
				Writer.WriteLine(");");
			}
			Writer.Indent--;
			Writer.WriteLine("}");
		}
		if (mapping.IsSoap)
		{
			Writer.Write("WriteXsiType(");
			WriteQuotedCSharpString(mapping.TypeName);
			Writer.Write(", ");
			WriteQuotedCSharpString(mapping.Namespace);
			Writer.WriteLine(");");
			Writer.WriteLine("Writer.WriteString(s);");
		}
		else
		{
			Writer.WriteLine("return s;");
		}
		Writer.Indent--;
		Writer.WriteLine("}");
	}

	private void WriteDerivedTypes(StructMapping mapping)
	{
		for (StructMapping structMapping = mapping.DerivedMappings; structMapping != null; structMapping = structMapping.NextDerivedMapping)
		{
			string cSharpName = structMapping.TypeDesc.CSharpName;
			Writer.Write("else if (");
			WriteTypeCompare("t", cSharpName, structMapping.TypeDesc.UseReflection);
			Writer.WriteLine(") {");
			Writer.Indent++;
			string s = ReferenceMapping(structMapping);
			Writer.Write(s);
			Writer.Write("(n, ns,");
			if (!structMapping.TypeDesc.UseReflection)
			{
				Writer.Write("(" + cSharpName + ")");
			}
			Writer.Write("o");
			if (structMapping.TypeDesc.IsNullable)
			{
				Writer.Write(", isNullable");
			}
			Writer.Write(", true");
			Writer.WriteLine(");");
			Writer.WriteLine("return;");
			Writer.Indent--;
			Writer.WriteLine("}");
			WriteDerivedTypes(structMapping);
		}
	}

	private void WriteEnumAndArrayTypes()
	{
		TypeScope[] array = Scopes;
		for (int i = 0; i < array.Length; i++)
		{
			foreach (Mapping typeMapping in array[i].TypeMappings)
			{
				if (typeMapping is EnumMapping && !typeMapping.IsSoap)
				{
					EnumMapping enumMapping = (EnumMapping)typeMapping;
					string cSharpName = enumMapping.TypeDesc.CSharpName;
					Writer.Write("else if (");
					WriteTypeCompare("t", cSharpName, enumMapping.TypeDesc.UseReflection);
					Writer.WriteLine(") {");
					Writer.Indent++;
					string s = ReferenceMapping(enumMapping);
					Writer.WriteLine("Writer.WriteStartElement(n, ns);");
					Writer.Write("WriteXsiType(");
					WriteQuotedCSharpString(enumMapping.TypeName);
					Writer.Write(", ");
					WriteQuotedCSharpString(enumMapping.Namespace);
					Writer.WriteLine(");");
					Writer.Write("Writer.WriteString(");
					Writer.Write(s);
					Writer.Write("(");
					if (!enumMapping.TypeDesc.UseReflection)
					{
						Writer.Write("(" + cSharpName + ")");
					}
					Writer.WriteLine("o));");
					Writer.WriteLine("Writer.WriteEndElement();");
					Writer.WriteLine("return;");
					Writer.Indent--;
					Writer.WriteLine("}");
				}
				else if (typeMapping is ArrayMapping && !typeMapping.IsSoap && typeMapping is ArrayMapping arrayMapping && !typeMapping.IsSoap)
				{
					string cSharpName2 = arrayMapping.TypeDesc.CSharpName;
					Writer.Write("else if (");
					if (arrayMapping.TypeDesc.IsArray)
					{
						WriteArrayTypeCompare("t", cSharpName2, arrayMapping.TypeDesc.ArrayElementTypeDesc.CSharpName, arrayMapping.TypeDesc.UseReflection);
					}
					else
					{
						WriteTypeCompare("t", cSharpName2, arrayMapping.TypeDesc.UseReflection);
					}
					Writer.WriteLine(") {");
					Writer.Indent++;
					Writer.WriteLine("Writer.WriteStartElement(n, ns);");
					Writer.Write("WriteXsiType(");
					WriteQuotedCSharpString(arrayMapping.TypeName);
					Writer.Write(", ");
					WriteQuotedCSharpString(arrayMapping.Namespace);
					Writer.WriteLine(");");
					WriteMember("o", null, arrayMapping.ElementsSortedByDerivation, null, null, arrayMapping.TypeDesc, writeAccessors: true);
					Writer.WriteLine("Writer.WriteEndElement();");
					Writer.WriteLine("return;");
					Writer.Indent--;
					Writer.WriteLine("}");
				}
			}
		}
	}

	private void WriteStructMethod(StructMapping mapping)
	{
		if (mapping.IsSoap && mapping.TypeDesc.IsRoot)
		{
			return;
		}
		string s = (string)MethodNames[mapping];
		Writer.WriteLine();
		Writer.Write("void ");
		Writer.Write(s);
		string cSharpName = mapping.TypeDesc.CSharpName;
		if (mapping.IsSoap)
		{
			Writer.WriteLine("(object s) {");
			Writer.Indent++;
			WriteLocalDecl(cSharpName, "o", "s", mapping.TypeDesc.UseReflection);
		}
		else
		{
			Writer.Write("(string n, string ns, ");
			Writer.Write(mapping.TypeDesc.UseReflection ? "object" : cSharpName);
			Writer.Write(" o");
			if (mapping.TypeDesc.IsNullable)
			{
				Writer.Write(", bool isNullable");
			}
			Writer.WriteLine(", bool needType) {");
			Writer.Indent++;
			if (mapping.TypeDesc.IsNullable)
			{
				Writer.WriteLine("if ((object)o == null) {");
				Writer.Indent++;
				Writer.WriteLine("if (isNullable) WriteNullTagLiteral(n, ns);");
				Writer.WriteLine("return;");
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			Writer.WriteLine("if (!needType) {");
			Writer.Indent++;
			Writer.Write(typeof(Type).FullName);
			Writer.WriteLine(" t = o.GetType();");
			Writer.Write("if (");
			WriteTypeCompare("t", cSharpName, mapping.TypeDesc.UseReflection);
			Writer.WriteLine(") {");
			Writer.WriteLine("}");
			WriteDerivedTypes(mapping);
			if (mapping.TypeDesc.IsRoot)
			{
				WriteEnumAndArrayTypes();
			}
			Writer.WriteLine("else {");
			Writer.Indent++;
			if (mapping.TypeDesc.IsRoot)
			{
				Writer.WriteLine("WriteTypedPrimitive(n, ns, o, true);");
				Writer.WriteLine("return;");
			}
			else
			{
				Writer.WriteLine("throw CreateUnknownTypeException(o);");
			}
			Writer.Indent--;
			Writer.WriteLine("}");
			Writer.Indent--;
			Writer.WriteLine("}");
		}
		if (!mapping.TypeDesc.IsAbstract)
		{
			if (mapping.TypeDesc.Type != null && typeof(XmlSchemaObject).IsAssignableFrom(mapping.TypeDesc.Type))
			{
				Writer.WriteLine("EscapeName = false;");
			}
			string text = null;
			MemberMapping[] allMembers = TypeScope.GetAllMembers(mapping);
			int num = FindXmlnsIndex(allMembers);
			if (num >= 0)
			{
				MemberMapping memberMapping = allMembers[num];
				CodeIdentifier.CheckValidIdentifier(memberMapping.Name);
				text = RaCodeGen.GetStringForMember("o", memberMapping.Name, mapping.TypeDesc);
				if (mapping.TypeDesc.UseReflection)
				{
					text = "((" + memberMapping.TypeDesc.CSharpName + ")" + text + ")";
				}
			}
			if (!mapping.IsSoap)
			{
				Writer.Write("WriteStartElement(n, ns, o, false, ");
				if (text == null)
				{
					Writer.Write("null");
				}
				else
				{
					Writer.Write(text);
				}
				Writer.WriteLine(");");
				if (!mapping.TypeDesc.IsRoot)
				{
					Writer.Write("if (needType) WriteXsiType(");
					WriteQuotedCSharpString(mapping.TypeName);
					Writer.Write(", ");
					WriteQuotedCSharpString(mapping.Namespace);
					Writer.WriteLine(");");
				}
			}
			else if (text != null)
			{
				WriteNamespaces(text);
			}
			foreach (MemberMapping memberMapping2 in allMembers)
			{
				if (memberMapping2.Attribute == null)
				{
					continue;
				}
				CodeIdentifier.CheckValidIdentifier(memberMapping2.Name);
				if (memberMapping2.CheckShouldPersist)
				{
					Writer.Write("if (");
					string text2 = RaCodeGen.GetStringForMethodInvoke("o", cSharpName, "ShouldSerialize" + memberMapping2.Name, mapping.TypeDesc.UseReflection);
					if (mapping.TypeDesc.UseReflection)
					{
						text2 = "((" + typeof(bool).FullName + ")" + text2 + ")";
					}
					Writer.Write(text2);
					Writer.WriteLine(") {");
					Writer.Indent++;
				}
				if (memberMapping2.CheckSpecified != SpecifiedAccessor.None)
				{
					Writer.Write("if (");
					string text3 = RaCodeGen.GetStringForMember("o", memberMapping2.Name + "Specified", mapping.TypeDesc);
					if (mapping.TypeDesc.UseReflection)
					{
						text3 = "((" + typeof(bool).FullName + ")" + text3 + ")";
					}
					Writer.Write(text3);
					Writer.WriteLine(") {");
					Writer.Indent++;
				}
				WriteMember(RaCodeGen.GetStringForMember("o", memberMapping2.Name, mapping.TypeDesc), memberMapping2.Attribute, memberMapping2.TypeDesc, "o");
				if (memberMapping2.CheckSpecified != SpecifiedAccessor.None)
				{
					Writer.Indent--;
					Writer.WriteLine("}");
				}
				if (memberMapping2.CheckShouldPersist)
				{
					Writer.Indent--;
					Writer.WriteLine("}");
				}
			}
			foreach (MemberMapping memberMapping3 in allMembers)
			{
				if (memberMapping3.Xmlns != null)
				{
					continue;
				}
				CodeIdentifier.CheckValidIdentifier(memberMapping3.Name);
				bool flag = memberMapping3.CheckShouldPersist && (memberMapping3.Elements.Length != 0 || memberMapping3.Text != null);
				if (flag)
				{
					Writer.Write("if (");
					string text4 = RaCodeGen.GetStringForMethodInvoke("o", cSharpName, "ShouldSerialize" + memberMapping3.Name, mapping.TypeDesc.UseReflection);
					if (mapping.TypeDesc.UseReflection)
					{
						text4 = "((" + typeof(bool).FullName + ")" + text4 + ")";
					}
					Writer.Write(text4);
					Writer.WriteLine(") {");
					Writer.Indent++;
				}
				if (memberMapping3.CheckSpecified != SpecifiedAccessor.None)
				{
					Writer.Write("if (");
					string text5 = RaCodeGen.GetStringForMember("o", memberMapping3.Name + "Specified", mapping.TypeDesc);
					if (mapping.TypeDesc.UseReflection)
					{
						text5 = "((" + typeof(bool).FullName + ")" + text5 + ")";
					}
					Writer.Write(text5);
					Writer.WriteLine(") {");
					Writer.Indent++;
				}
				string choiceSource = null;
				if (memberMapping3.ChoiceIdentifier != null)
				{
					CodeIdentifier.CheckValidIdentifier(memberMapping3.ChoiceIdentifier.MemberName);
					choiceSource = RaCodeGen.GetStringForMember("o", memberMapping3.ChoiceIdentifier.MemberName, mapping.TypeDesc);
				}
				WriteMember(RaCodeGen.GetStringForMember("o", memberMapping3.Name, mapping.TypeDesc), choiceSource, memberMapping3.ElementsSortedByDerivation, memberMapping3.Text, memberMapping3.ChoiceIdentifier, memberMapping3.TypeDesc, writeAccessors: true);
				if (memberMapping3.CheckSpecified != SpecifiedAccessor.None)
				{
					Writer.Indent--;
					Writer.WriteLine("}");
				}
				if (flag)
				{
					Writer.Indent--;
					Writer.WriteLine("}");
				}
			}
			if (!mapping.IsSoap)
			{
				WriteEndElement("o");
			}
		}
		Writer.Indent--;
		Writer.WriteLine("}");
	}

	private bool CanOptimizeWriteListSequence(TypeDesc listElementTypeDesc)
	{
		if (listElementTypeDesc != null)
		{
			return listElementTypeDesc != QnameTypeDesc;
		}
		return false;
	}

	private void WriteMember(string source, AttributeAccessor attribute, TypeDesc memberTypeDesc, string parent)
	{
		if (memberTypeDesc.IsAbstract)
		{
			return;
		}
		if (memberTypeDesc.IsArrayLike)
		{
			Writer.WriteLine("{");
			Writer.Indent++;
			string cSharpName = memberTypeDesc.CSharpName;
			WriteArrayLocalDecl(cSharpName, "a", source, memberTypeDesc);
			if (memberTypeDesc.IsNullable)
			{
				Writer.WriteLine("if (a != null) {");
				Writer.Indent++;
			}
			if (attribute.IsList)
			{
				if (CanOptimizeWriteListSequence(memberTypeDesc.ArrayElementTypeDesc))
				{
					Writer.Write("Writer.WriteStartAttribute(null, ");
					WriteQuotedCSharpString(attribute.Name);
					Writer.Write(", ");
					string text = ((attribute.Form == XmlSchemaForm.Qualified) ? attribute.Namespace : string.Empty);
					if (text != null)
					{
						WriteQuotedCSharpString(text);
					}
					else
					{
						Writer.Write("null");
					}
					Writer.WriteLine(");");
				}
				else
				{
					Writer.Write(typeof(StringBuilder).FullName);
					Writer.Write(" sb = new ");
					Writer.Write(typeof(StringBuilder).FullName);
					Writer.WriteLine("();");
				}
			}
			TypeDesc arrayElementTypeDesc = memberTypeDesc.ArrayElementTypeDesc;
			if (memberTypeDesc.IsEnumerable)
			{
				Writer.Write(" e = ");
				Writer.Write(typeof(IEnumerator).FullName);
				if (memberTypeDesc.IsPrivateImplementation)
				{
					Writer.Write("((");
					Writer.Write(typeof(IEnumerable).FullName);
					Writer.WriteLine(").GetEnumerator();");
				}
				else if (memberTypeDesc.IsGenericInterface)
				{
					if (memberTypeDesc.UseReflection)
					{
						Writer.Write("(");
						Writer.Write(typeof(IEnumerator).FullName);
						Writer.Write(")");
						Writer.Write(RaCodeGen.GetReflectionVariable(memberTypeDesc.CSharpName, "System.Collections.Generic.IEnumerable*"));
						Writer.WriteLine(".Invoke(a, new object[0]);");
					}
					else
					{
						Writer.Write("((System.Collections.Generic.IEnumerable<");
						Writer.Write(arrayElementTypeDesc.CSharpName);
						Writer.WriteLine(">)a).GetEnumerator();");
					}
				}
				else
				{
					if (memberTypeDesc.UseReflection)
					{
						Writer.Write("(");
						Writer.Write(typeof(IEnumerator).FullName);
						Writer.Write(")");
					}
					Writer.Write(RaCodeGen.GetStringForMethodInvoke("a", memberTypeDesc.CSharpName, "GetEnumerator", memberTypeDesc.UseReflection));
					Writer.WriteLine(";");
				}
				Writer.WriteLine("if (e != null)");
				Writer.WriteLine("while (e.MoveNext()) {");
				Writer.Indent++;
				string cSharpName2 = arrayElementTypeDesc.CSharpName;
				WriteLocalDecl(cSharpName2, "ai", "e.Current", arrayElementTypeDesc.UseReflection);
			}
			else
			{
				Writer.Write("for (int i = 0; i < ");
				if (memberTypeDesc.IsArray)
				{
					Writer.WriteLine("a.Length; i++) {");
				}
				else
				{
					Writer.Write("((");
					Writer.Write(typeof(ICollection).FullName);
					Writer.WriteLine(")a).Count; i++) {");
				}
				Writer.Indent++;
				string cSharpName3 = arrayElementTypeDesc.CSharpName;
				WriteLocalDecl(cSharpName3, "ai", RaCodeGen.GetStringForArrayMember("a", "i", memberTypeDesc), arrayElementTypeDesc.UseReflection);
			}
			if (attribute.IsList)
			{
				if (CanOptimizeWriteListSequence(memberTypeDesc.ArrayElementTypeDesc))
				{
					Writer.WriteLine("if (i != 0) Writer.WriteString(\" \");");
					Writer.Write("WriteValue(");
				}
				else
				{
					Writer.WriteLine("if (i != 0) sb.Append(\" \");");
					Writer.Write("sb.Append(");
				}
				if (attribute.Mapping is EnumMapping)
				{
					WriteEnumValue((EnumMapping)attribute.Mapping, "ai");
				}
				else
				{
					WritePrimitiveValue(arrayElementTypeDesc, "ai", isElement: true);
				}
				Writer.WriteLine(");");
			}
			else
			{
				WriteAttribute("ai", attribute, parent);
			}
			Writer.Indent--;
			Writer.WriteLine("}");
			if (attribute.IsList)
			{
				if (CanOptimizeWriteListSequence(memberTypeDesc.ArrayElementTypeDesc))
				{
					Writer.WriteLine("Writer.WriteEndAttribute();");
				}
				else
				{
					Writer.WriteLine("if (sb.Length != 0) {");
					Writer.Indent++;
					Writer.Write("WriteAttribute(");
					WriteQuotedCSharpString(attribute.Name);
					Writer.Write(", ");
					string text2 = ((attribute.Form == XmlSchemaForm.Qualified) ? attribute.Namespace : string.Empty);
					if (text2 != null)
					{
						WriteQuotedCSharpString(text2);
						Writer.Write(", ");
					}
					Writer.WriteLine("sb.ToString());");
					Writer.Indent--;
					Writer.WriteLine("}");
				}
			}
			if (memberTypeDesc.IsNullable)
			{
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			Writer.Indent--;
			Writer.WriteLine("}");
		}
		else
		{
			WriteAttribute(source, attribute, parent);
		}
	}

	private void WriteAttribute(string source, AttributeAccessor attribute, string parent)
	{
		if (attribute.Mapping is SpecialMapping)
		{
			SpecialMapping specialMapping = (SpecialMapping)attribute.Mapping;
			if (specialMapping.TypeDesc.Kind == TypeKind.Attribute || specialMapping.TypeDesc.CanBeAttributeValue)
			{
				Writer.Write("WriteXmlAttribute(");
				Writer.Write(source);
				Writer.Write(", ");
				Writer.Write(parent);
				Writer.WriteLine(");");
				return;
			}
			throw new InvalidOperationException(Res.GetString("Internal error."));
		}
		TypeDesc typeDesc = attribute.Mapping.TypeDesc;
		if (!typeDesc.UseReflection)
		{
			source = "((" + typeDesc.CSharpName + ")" + source + ")";
		}
		WritePrimitive("WriteAttribute", attribute.Name, (attribute.Form == XmlSchemaForm.Qualified) ? attribute.Namespace : "", attribute.Default, source, attribute.Mapping, writeXsiType: false, isElement: false, isNullable: false);
	}

	private void WriteMember(string source, string choiceSource, ElementAccessor[] elements, TextAccessor text, ChoiceIdentifierAccessor choice, TypeDesc memberTypeDesc, bool writeAccessors)
	{
		if (memberTypeDesc.IsArrayLike && (elements.Length != 1 || !(elements[0].Mapping is ArrayMapping)))
		{
			WriteArray(source, choiceSource, elements, text, choice, memberTypeDesc);
		}
		else
		{
			WriteElements(source, choiceSource, elements, text, choice, "a", writeAccessors, memberTypeDesc.IsNullable);
		}
	}

	private void WriteArray(string source, string choiceSource, ElementAccessor[] elements, TextAccessor text, ChoiceIdentifierAccessor choice, TypeDesc arrayTypeDesc)
	{
		if (elements.Length != 0 || text != null)
		{
			Writer.WriteLine("{");
			Writer.Indent++;
			string cSharpName = arrayTypeDesc.CSharpName;
			WriteArrayLocalDecl(cSharpName, "a", source, arrayTypeDesc);
			if (arrayTypeDesc.IsNullable)
			{
				Writer.WriteLine("if (a != null) {");
				Writer.Indent++;
			}
			if (choice != null)
			{
				_ = choice.Mapping.TypeDesc.UseReflection;
				string cSharpName2 = choice.Mapping.TypeDesc.CSharpName;
				WriteArrayLocalDecl(cSharpName2 + "[]", "c", choiceSource, choice.Mapping.TypeDesc);
				Writer.WriteLine("if (c == null || c.Length < a.Length) {");
				Writer.Indent++;
				Writer.Write("throw CreateInvalidChoiceIdentifierValueException(");
				WriteQuotedCSharpString(choice.Mapping.TypeDesc.FullName);
				Writer.Write(", ");
				WriteQuotedCSharpString(choice.MemberName);
				Writer.Write(");");
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			WriteArrayItems(elements, text, choice, arrayTypeDesc, "a", "c");
			if (arrayTypeDesc.IsNullable)
			{
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			Writer.Indent--;
			Writer.WriteLine("}");
		}
	}

	private void WriteArrayItems(ElementAccessor[] elements, TextAccessor text, ChoiceIdentifierAccessor choice, TypeDesc arrayTypeDesc, string arrayName, string choiceName)
	{
		TypeDesc arrayElementTypeDesc = arrayTypeDesc.ArrayElementTypeDesc;
		if (arrayTypeDesc.IsEnumerable)
		{
			Writer.Write(typeof(IEnumerator).FullName);
			Writer.Write(" e = ");
			if (arrayTypeDesc.IsPrivateImplementation)
			{
				Writer.Write("((");
				Writer.Write(typeof(IEnumerable).FullName);
				Writer.Write(")");
				Writer.Write(arrayName);
				Writer.WriteLine(").GetEnumerator();");
			}
			else if (arrayTypeDesc.IsGenericInterface)
			{
				if (arrayTypeDesc.UseReflection)
				{
					Writer.Write("(");
					Writer.Write(typeof(IEnumerator).FullName);
					Writer.Write(")");
					Writer.Write(RaCodeGen.GetReflectionVariable(arrayTypeDesc.CSharpName, "System.Collections.Generic.IEnumerable*"));
					Writer.Write(".Invoke(");
					Writer.Write(arrayName);
					Writer.WriteLine(", new object[0]);");
				}
				else
				{
					Writer.Write("((System.Collections.Generic.IEnumerable<");
					Writer.Write(arrayElementTypeDesc.CSharpName);
					Writer.Write(">)");
					Writer.Write(arrayName);
					Writer.WriteLine(").GetEnumerator();");
				}
			}
			else
			{
				if (arrayTypeDesc.UseReflection)
				{
					Writer.Write("(");
					Writer.Write(typeof(IEnumerator).FullName);
					Writer.Write(")");
				}
				Writer.Write(RaCodeGen.GetStringForMethodInvoke(arrayName, arrayTypeDesc.CSharpName, "GetEnumerator", arrayTypeDesc.UseReflection));
				Writer.WriteLine(";");
			}
			Writer.WriteLine("if (e != null)");
			Writer.WriteLine("while (e.MoveNext()) {");
			Writer.Indent++;
			string cSharpName = arrayElementTypeDesc.CSharpName;
			WriteLocalDecl(cSharpName, arrayName + "i", "e.Current", arrayElementTypeDesc.UseReflection);
			WriteElements(arrayName + "i", choiceName + "i", elements, text, choice, arrayName + "a", writeAccessors: true, isNullable: true);
		}
		else
		{
			Writer.Write("for (int i");
			Writer.Write(arrayName);
			Writer.Write(" = 0; i");
			Writer.Write(arrayName);
			Writer.Write(" < ");
			if (arrayTypeDesc.IsArray)
			{
				Writer.Write(arrayName);
				Writer.Write(".Length");
			}
			else
			{
				Writer.Write("((");
				Writer.Write(typeof(ICollection).FullName);
				Writer.Write(")");
				Writer.Write(arrayName);
				Writer.Write(").Count");
			}
			Writer.Write("; i");
			Writer.Write(arrayName);
			Writer.WriteLine("++) {");
			Writer.Indent++;
			if (elements.Length + ((text != null) ? 1 : 0) > 1)
			{
				string cSharpName2 = arrayElementTypeDesc.CSharpName;
				WriteLocalDecl(cSharpName2, arrayName + "i", RaCodeGen.GetStringForArrayMember(arrayName, "i" + arrayName, arrayTypeDesc), arrayElementTypeDesc.UseReflection);
				if (choice != null)
				{
					string cSharpName3 = choice.Mapping.TypeDesc.CSharpName;
					WriteLocalDecl(cSharpName3, choiceName + "i", RaCodeGen.GetStringForArrayMember(choiceName, "i" + arrayName, choice.Mapping.TypeDesc), choice.Mapping.TypeDesc.UseReflection);
				}
				WriteElements(arrayName + "i", choiceName + "i", elements, text, choice, arrayName + "a", writeAccessors: true, arrayElementTypeDesc.IsNullable);
			}
			else
			{
				WriteElements(RaCodeGen.GetStringForArrayMember(arrayName, "i" + arrayName, arrayTypeDesc), elements, text, choice, arrayName + "a", writeAccessors: true, arrayElementTypeDesc.IsNullable);
			}
		}
		Writer.Indent--;
		Writer.WriteLine("}");
	}

	private void WriteElements(string source, ElementAccessor[] elements, TextAccessor text, ChoiceIdentifierAccessor choice, string arrayName, bool writeAccessors, bool isNullable)
	{
		WriteElements(source, null, elements, text, choice, arrayName, writeAccessors, isNullable);
	}

	private void WriteElements(string source, string enumSource, ElementAccessor[] elements, TextAccessor text, ChoiceIdentifierAccessor choice, string arrayName, bool writeAccessors, bool isNullable)
	{
		if (elements.Length == 0 && text == null)
		{
			return;
		}
		if (elements.Length == 1 && text == null)
		{
			TypeDesc typeDesc = (elements[0].IsUnbounded ? elements[0].Mapping.TypeDesc.CreateArrayTypeDesc() : elements[0].Mapping.TypeDesc);
			if (!elements[0].Any && !elements[0].Mapping.TypeDesc.UseReflection && !elements[0].Mapping.TypeDesc.IsOptionalValue)
			{
				source = "((" + typeDesc.CSharpName + ")" + source + ")";
			}
			WriteElement(source, elements[0], arrayName, writeAccessors);
			return;
		}
		if (isNullable && choice == null)
		{
			Writer.Write("if ((object)(");
			Writer.Write(source);
			Writer.Write(") != null)");
		}
		Writer.WriteLine("{");
		Writer.Indent++;
		int num = 0;
		ArrayList arrayList = new ArrayList();
		ElementAccessor elementAccessor = null;
		bool flag = false;
		string text2 = choice?.Mapping.TypeDesc.FullName;
		foreach (ElementAccessor elementAccessor2 in elements)
		{
			if (elementAccessor2.Any)
			{
				num++;
				if (elementAccessor2.Name != null && elementAccessor2.Name.Length > 0)
				{
					arrayList.Add(elementAccessor2);
				}
				else if (elementAccessor == null)
				{
					elementAccessor = elementAccessor2;
				}
			}
			else if (choice != null)
			{
				bool useReflection = elementAccessor2.Mapping.TypeDesc.UseReflection;
				string cSharpName = elementAccessor2.Mapping.TypeDesc.CSharpName;
				bool useReflection2 = choice.Mapping.TypeDesc.UseReflection;
				string text3 = (useReflection2 ? "" : (text2 + ".@")) + FindChoiceEnumValue(elementAccessor2, (EnumMapping)choice.Mapping, useReflection2);
				if (flag)
				{
					Writer.Write("else ");
				}
				else
				{
					flag = true;
				}
				Writer.Write("if (");
				Writer.Write(useReflection2 ? RaCodeGen.GetStringForEnumLongValue(enumSource, useReflection2) : enumSource);
				Writer.Write(" == ");
				Writer.Write(text3);
				if (isNullable && !elementAccessor2.IsNullable)
				{
					Writer.Write(" && ((object)(");
					Writer.Write(source);
					Writer.Write(") != null)");
				}
				Writer.WriteLine(") {");
				Writer.Indent++;
				WriteChoiceTypeCheck(source, cSharpName, useReflection, choice, text3, elementAccessor2.Mapping.TypeDesc);
				string text4 = source;
				if (!useReflection)
				{
					text4 = "((" + cSharpName + ")" + source + ")";
				}
				WriteElement(elementAccessor2.Any ? source : text4, elementAccessor2, arrayName, writeAccessors);
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			else
			{
				bool useReflection3 = elementAccessor2.Mapping.TypeDesc.UseReflection;
				string cSharpName2 = (elementAccessor2.IsUnbounded ? elementAccessor2.Mapping.TypeDesc.CreateArrayTypeDesc() : elementAccessor2.Mapping.TypeDesc).CSharpName;
				if (flag)
				{
					Writer.Write("else ");
				}
				else
				{
					flag = true;
				}
				Writer.Write("if (");
				WriteInstanceOf(source, cSharpName2, useReflection3);
				Writer.WriteLine(") {");
				Writer.Indent++;
				string text5 = source;
				if (!useReflection3)
				{
					text5 = "((" + cSharpName2 + ")" + source + ")";
				}
				WriteElement(elementAccessor2.Any ? source : text5, elementAccessor2, arrayName, writeAccessors);
				Writer.Indent--;
				Writer.WriteLine("}");
			}
		}
		if (num > 0)
		{
			if (elements.Length - num > 0)
			{
				Writer.Write("else ");
			}
			string fullName = typeof(XmlElement).FullName;
			Writer.Write("if (");
			Writer.Write(source);
			Writer.Write(" is ");
			Writer.Write(fullName);
			Writer.WriteLine(") {");
			Writer.Indent++;
			Writer.Write(fullName);
			Writer.Write(" elem = (");
			Writer.Write(fullName);
			Writer.Write(")");
			Writer.Write(source);
			Writer.WriteLine(";");
			int num2 = 0;
			foreach (ElementAccessor item in arrayList)
			{
				if (num2++ > 0)
				{
					Writer.Write("else ");
				}
				string text6 = null;
				_ = item.Mapping.TypeDesc.UseReflection;
				if (choice != null)
				{
					bool useReflection4 = choice.Mapping.TypeDesc.UseReflection;
					text6 = (useReflection4 ? "" : (text2 + ".@")) + FindChoiceEnumValue(item, (EnumMapping)choice.Mapping, useReflection4);
					Writer.Write("if (");
					Writer.Write(useReflection4 ? RaCodeGen.GetStringForEnumLongValue(enumSource, useReflection4) : enumSource);
					Writer.Write(" == ");
					Writer.Write(text6);
					if (isNullable && !item.IsNullable)
					{
						Writer.Write(" && ((object)(");
						Writer.Write(source);
						Writer.Write(") != null)");
					}
					Writer.WriteLine(") {");
					Writer.Indent++;
				}
				Writer.Write("if (elem.Name == ");
				WriteQuotedCSharpString(item.Name);
				Writer.Write(" && elem.NamespaceURI == ");
				WriteQuotedCSharpString(item.Namespace);
				Writer.WriteLine(") {");
				Writer.Indent++;
				WriteElement("elem", item, arrayName, writeAccessors);
				if (choice != null)
				{
					Writer.Indent--;
					Writer.WriteLine("}");
					Writer.WriteLine("else {");
					Writer.Indent++;
					Writer.WriteLine("// throw Value '{0}' of the choice identifier '{1}' does not match element '{2}' from namespace '{3}'.");
					Writer.Write("throw CreateChoiceIdentifierValueException(");
					WriteQuotedCSharpString(text6);
					Writer.Write(", ");
					WriteQuotedCSharpString(choice.MemberName);
					Writer.WriteLine(", elem.Name, elem.NamespaceURI);");
					Writer.Indent--;
					Writer.WriteLine("}");
				}
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			if (num2 > 0)
			{
				Writer.WriteLine("else {");
				Writer.Indent++;
			}
			if (elementAccessor != null)
			{
				WriteElement("elem", elementAccessor, arrayName, writeAccessors);
			}
			else
			{
				Writer.WriteLine("throw CreateUnknownAnyElementException(elem.Name, elem.NamespaceURI);");
			}
			if (num2 > 0)
			{
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			Writer.Indent--;
			Writer.WriteLine("}");
		}
		if (text != null)
		{
			bool useReflection5 = text.Mapping.TypeDesc.UseReflection;
			string cSharpName3 = text.Mapping.TypeDesc.CSharpName;
			if (elements.Length != 0)
			{
				Writer.Write("else ");
				Writer.Write("if (");
				WriteInstanceOf(source, cSharpName3, useReflection5);
				Writer.WriteLine(") {");
				Writer.Indent++;
				string source2 = source;
				if (!useReflection5)
				{
					source2 = "((" + cSharpName3 + ")" + source + ")";
				}
				WriteText(source2, text);
				Writer.Indent--;
				Writer.WriteLine("}");
			}
			else
			{
				string source3 = source;
				if (!useReflection5)
				{
					source3 = "((" + cSharpName3 + ")" + source + ")";
				}
				WriteText(source3, text);
			}
		}
		if (elements.Length != 0)
		{
			Writer.Write("else ");
			if (isNullable)
			{
				Writer.Write(" if ((object)(");
				Writer.Write(source);
				Writer.Write(") != null)");
			}
			Writer.WriteLine("{");
			Writer.Indent++;
			Writer.Write("throw CreateUnknownTypeException(");
			Writer.Write(source);
			Writer.WriteLine(");");
			Writer.Indent--;
			Writer.WriteLine("}");
		}
		Writer.Indent--;
		Writer.WriteLine("}");
	}

	private void WriteText(string source, TextAccessor text)
	{
		if (text.Mapping is PrimitiveMapping)
		{
			PrimitiveMapping primitiveMapping = (PrimitiveMapping)text.Mapping;
			Writer.Write("WriteValue(");
			if (text.Mapping is EnumMapping)
			{
				WriteEnumValue((EnumMapping)text.Mapping, source);
			}
			else
			{
				WritePrimitiveValue(primitiveMapping.TypeDesc, source, isElement: false);
			}
			Writer.WriteLine(");");
		}
		else if (text.Mapping is SpecialMapping)
		{
			TypeKind kind = ((SpecialMapping)text.Mapping).TypeDesc.Kind;
			if (kind != TypeKind.Node)
			{
				throw new InvalidOperationException(Res.GetString("Internal error."));
			}
			Writer.Write(source);
			Writer.WriteLine(".WriteTo(Writer);");
		}
	}

	private void WriteElement(string source, ElementAccessor element, string arrayName, bool writeAccessor)
	{
		string text = (writeAccessor ? element.Name : element.Mapping.TypeName);
		string text2;
		if (element.Any && element.Name.Length == 0)
		{
			text2 = null;
		}
		else if (element.Form != XmlSchemaForm.Qualified)
		{
			text2 = "";
		}
		else
		{
			text2 = (writeAccessor ? element.Namespace : element.Mapping.Namespace);
		}
		if (element.Mapping is NullableMapping)
		{
			Writer.Write("if (");
			Writer.Write(source);
			Writer.WriteLine(" != null) {");
			Writer.Indent++;
			string cSharpName = element.Mapping.TypeDesc.BaseTypeDesc.CSharpName;
			string text3 = source;
			if (!element.Mapping.TypeDesc.BaseTypeDesc.UseReflection)
			{
				text3 = "((" + cSharpName + ")" + source + ")";
			}
			ElementAccessor elementAccessor = element.Clone();
			elementAccessor.Mapping = ((NullableMapping)element.Mapping).BaseMapping;
			WriteElement(elementAccessor.Any ? source : text3, elementAccessor, arrayName, writeAccessor);
			Writer.Indent--;
			Writer.WriteLine("}");
			if (element.IsNullable)
			{
				Writer.WriteLine("else {");
				Writer.Indent++;
				WriteLiteralNullTag(element.Name, (element.Form == XmlSchemaForm.Qualified) ? element.Namespace : "");
				Writer.Indent--;
				Writer.WriteLine("}");
			}
		}
		else if (element.Mapping is ArrayMapping)
		{
			ArrayMapping arrayMapping = (ArrayMapping)element.Mapping;
			if (arrayMapping.IsSoap)
			{
				Writer.Write("WritePotentiallyReferencingElement(");
				WriteQuotedCSharpString(text);
				Writer.Write(", ");
				WriteQuotedCSharpString(text2);
				Writer.Write(", ");
				Writer.Write(source);
				if (!writeAccessor)
				{
					Writer.Write(", ");
					Writer.Write(RaCodeGen.GetStringForTypeof(arrayMapping.TypeDesc.CSharpName, arrayMapping.TypeDesc.UseReflection));
					Writer.Write(", true, ");
				}
				else
				{
					Writer.Write(", null, false, ");
				}
				WriteValue(element.IsNullable);
				Writer.WriteLine(");");
				return;
			}
			if (element.IsUnbounded)
			{
				TypeDesc typeDesc = arrayMapping.TypeDesc.CreateArrayTypeDesc();
				string cSharpName2 = typeDesc.CSharpName;
				string text4 = "el" + arrayName;
				string text5 = "c" + text4;
				Writer.WriteLine("{");
				Writer.Indent++;
				WriteArrayLocalDecl(cSharpName2, text4, source, arrayMapping.TypeDesc);
				if (element.IsNullable)
				{
					WriteNullCheckBegin(text4, element);
				}
				else
				{
					if (arrayMapping.TypeDesc.IsNullable)
					{
						Writer.Write("if (");
						Writer.Write(text4);
						Writer.Write(" != null)");
					}
					Writer.WriteLine("{");
					Writer.Indent++;
				}
				Writer.Write("for (int ");
				Writer.Write(text5);
				Writer.Write(" = 0; ");
				Writer.Write(text5);
				Writer.Write(" < ");
				if (typeDesc.IsArray)
				{
					Writer.Write(text4);
					Writer.Write(".Length");
				}
				else
				{
					Writer.Write("((");
					Writer.Write(typeof(ICollection).FullName);
					Writer.Write(")");
					Writer.Write(text4);
					Writer.Write(").Count");
				}
				Writer.Write("; ");
				Writer.Write(text5);
				Writer.WriteLine("++) {");
				Writer.Indent++;
				element.IsUnbounded = false;
				WriteElement(text4 + "[" + text5 + "]", element, arrayName, writeAccessor);
				element.IsUnbounded = true;
				Writer.Indent--;
				Writer.WriteLine("}");
				Writer.Indent--;
				Writer.WriteLine("}");
				Writer.Indent--;
				Writer.WriteLine("}");
				return;
			}
			string cSharpName3 = arrayMapping.TypeDesc.CSharpName;
			Writer.WriteLine("{");
			Writer.Indent++;
			WriteArrayLocalDecl(cSharpName3, arrayName, source, arrayMapping.TypeDesc);
			if (element.IsNullable)
			{
				WriteNullCheckBegin(arrayName, element);
			}
			else
			{
				if (arrayMapping.TypeDesc.IsNullable)
				{
					Writer.Write("if (");
					Writer.Write(arrayName);
					Writer.Write(" != null)");
				}
				Writer.WriteLine("{");
				Writer.Indent++;
			}
			WriteStartElement(text, text2, writePrefixed: false);
			WriteArrayItems(arrayMapping.ElementsSortedByDerivation, null, null, arrayMapping.TypeDesc, arrayName, null);
			WriteEndElement();
			Writer.Indent--;
			Writer.WriteLine("}");
			Writer.Indent--;
			Writer.WriteLine("}");
		}
		else if (element.Mapping is EnumMapping)
		{
			if (element.Mapping.IsSoap)
			{
				string s = (string)MethodNames[element.Mapping];
				Writer.Write("Writer.WriteStartElement(");
				WriteQuotedCSharpString(text);
				Writer.Write(", ");
				WriteQuotedCSharpString(text2);
				Writer.WriteLine(");");
				Writer.Write(s);
				Writer.Write("(");
				Writer.Write(source);
				Writer.WriteLine(");");
				WriteEndElement();
			}
			else
			{
				WritePrimitive("WriteElementString", text, text2, element.Default, source, element.Mapping, writeXsiType: false, isElement: true, element.IsNullable);
			}
		}
		else if (element.Mapping is PrimitiveMapping)
		{
			PrimitiveMapping primitiveMapping = (PrimitiveMapping)element.Mapping;
			if (primitiveMapping.TypeDesc == QnameTypeDesc)
			{
				WriteQualifiedNameElement(text, text2, element.Default, source, element.IsNullable, primitiveMapping.IsSoap, primitiveMapping);
				return;
			}
			string text6 = (primitiveMapping.IsSoap ? "Encoded" : "Literal");
			string text7 = (primitiveMapping.TypeDesc.XmlEncodingNotRequired ? "Raw" : "");
			WritePrimitive(element.IsNullable ? ("WriteNullableString" + text6 + text7) : ("WriteElementString" + text7), text, text2, element.Default, source, primitiveMapping, primitiveMapping.IsSoap, isElement: true, element.IsNullable);
		}
		else if (element.Mapping is StructMapping)
		{
			StructMapping structMapping = (StructMapping)element.Mapping;
			if (structMapping.IsSoap)
			{
				Writer.Write("WritePotentiallyReferencingElement(");
				WriteQuotedCSharpString(text);
				Writer.Write(", ");
				WriteQuotedCSharpString(text2);
				Writer.Write(", ");
				Writer.Write(source);
				if (!writeAccessor)
				{
					Writer.Write(", ");
					Writer.Write(RaCodeGen.GetStringForTypeof(structMapping.TypeDesc.CSharpName, structMapping.TypeDesc.UseReflection));
					Writer.Write(", true, ");
				}
				else
				{
					Writer.Write(", null, false, ");
				}
				WriteValue(element.IsNullable);
			}
			else
			{
				string s2 = ReferenceMapping(structMapping);
				Writer.Write(s2);
				Writer.Write("(");
				WriteQuotedCSharpString(text);
				Writer.Write(", ");
				if (text2 == null)
				{
					Writer.Write("null");
				}
				else
				{
					WriteQuotedCSharpString(text2);
				}
				Writer.Write(", ");
				Writer.Write(source);
				if (structMapping.TypeDesc.IsNullable)
				{
					Writer.Write(", ");
					WriteValue(element.IsNullable);
				}
				Writer.Write(", false");
			}
			Writer.WriteLine(");");
		}
		else
		{
			if (!(element.Mapping is SpecialMapping))
			{
				throw new InvalidOperationException(Res.GetString("Internal error."));
			}
			SpecialMapping specialMapping = (SpecialMapping)element.Mapping;
			_ = specialMapping.TypeDesc.UseReflection;
			_ = specialMapping.TypeDesc.CSharpName;
			if (element.Mapping is SerializableMapping)
			{
				WriteElementCall("WriteSerializable", typeof(IXmlSerializable), source, text, text2, element.IsNullable, !element.Any);
				return;
			}
			Writer.Write("if ((");
			Writer.Write(source);
			Writer.Write(") is ");
			Writer.Write(typeof(XmlNode).FullName);
			Writer.Write(" || ");
			Writer.Write(source);
			Writer.Write(" == null");
			Writer.WriteLine(") {");
			Writer.Indent++;
			WriteElementCall("WriteElementLiteral", typeof(XmlNode), source, text, text2, element.IsNullable, element.Any);
			Writer.Indent--;
			Writer.WriteLine("}");
			Writer.WriteLine("else {");
			Writer.Indent++;
			Writer.Write("throw CreateInvalidAnyTypeException(");
			Writer.Write(source);
			Writer.WriteLine(");");
			Writer.Indent--;
			Writer.WriteLine("}");
		}
	}

	private void WriteElementCall(string func, Type cast, string source, string name, string ns, bool isNullable, bool isAny)
	{
		Writer.Write(func);
		Writer.Write("((");
		Writer.Write(cast.FullName);
		Writer.Write(")");
		Writer.Write(source);
		Writer.Write(", ");
		WriteQuotedCSharpString(name);
		Writer.Write(", ");
		WriteQuotedCSharpString(ns);
		Writer.Write(", ");
		WriteValue(isNullable);
		Writer.Write(", ");
		WriteValue(isAny);
		Writer.WriteLine(");");
	}

	private void WriteCheckDefault(string source, object value, bool isNullable)
	{
		Writer.Write("if (");
		if (value is string && ((string)value).Length == 0)
		{
			Writer.Write("(");
			Writer.Write(source);
			if (isNullable)
			{
				Writer.Write(" == null) || (");
			}
			else
			{
				Writer.Write(" != null) && (");
			}
			Writer.Write(source);
			Writer.Write(".Length != 0)");
		}
		else
		{
			Writer.Write(source);
			Writer.Write(" != ");
			WriteValue(value);
		}
		Writer.Write(")");
	}

	private void WriteChoiceTypeCheck(string source, string fullTypeName, bool useReflection, ChoiceIdentifierAccessor choice, string enumName, TypeDesc typeDesc)
	{
		Writer.Write("if (((object)");
		Writer.Write(source);
		Writer.Write(") != null && !(");
		WriteInstanceOf(source, fullTypeName, useReflection);
		Writer.Write(")) throw CreateMismatchChoiceException(");
		WriteQuotedCSharpString(typeDesc.FullName);
		Writer.Write(", ");
		WriteQuotedCSharpString(choice.MemberName);
		Writer.Write(", ");
		WriteQuotedCSharpString(enumName);
		Writer.WriteLine(");");
	}

	private void WriteNullCheckBegin(string source, ElementAccessor element)
	{
		Writer.Write("if ((object)(");
		Writer.Write(source);
		Writer.WriteLine(") == null) {");
		Writer.Indent++;
		WriteLiteralNullTag(element.Name, (element.Form == XmlSchemaForm.Qualified) ? element.Namespace : "");
		Writer.Indent--;
		Writer.WriteLine("}");
		Writer.WriteLine("else {");
		Writer.Indent++;
	}

	private void WriteValue(object value)
	{
		if (value == null)
		{
			Writer.Write("null");
			return;
		}
		Type type = value.GetType();
		switch (Type.GetTypeCode(type))
		{
		case TypeCode.String:
		{
			string value2 = (string)value;
			WriteQuotedCSharpString(value2);
			return;
		}
		case TypeCode.Char:
		{
			Writer.Write('\'');
			char c = (char)value;
			if (c == '\'')
			{
				Writer.Write("'");
			}
			else
			{
				Writer.Write(c);
			}
			Writer.Write('\'');
			return;
		}
		case TypeCode.Int32:
			Writer.Write(((int)value).ToString(null, NumberFormatInfo.InvariantInfo));
			return;
		case TypeCode.Double:
			Writer.Write(((double)value).ToString("R", NumberFormatInfo.InvariantInfo));
			return;
		case TypeCode.Boolean:
			Writer.Write(((bool)value) ? "true" : "false");
			return;
		case TypeCode.SByte:
		case TypeCode.Byte:
		case TypeCode.Int16:
		case TypeCode.UInt16:
		case TypeCode.UInt32:
		case TypeCode.Int64:
		case TypeCode.UInt64:
			Writer.Write("(");
			Writer.Write(type.FullName);
			Writer.Write(")");
			Writer.Write("(");
			Writer.Write(Convert.ToString(value, NumberFormatInfo.InvariantInfo));
			Writer.Write(")");
			return;
		case TypeCode.Single:
			Writer.Write(((float)value).ToString("R", NumberFormatInfo.InvariantInfo));
			Writer.Write("f");
			return;
		case TypeCode.Decimal:
			Writer.Write(((decimal)value).ToString(null, NumberFormatInfo.InvariantInfo));
			Writer.Write("m");
			return;
		case TypeCode.DateTime:
			Writer.Write(" new ");
			Writer.Write(type.FullName);
			Writer.Write("(");
			Writer.Write(((DateTime)value).Ticks.ToString(CultureInfo.InvariantCulture));
			Writer.Write(")");
			return;
		}
		if (type.IsEnum)
		{
			Writer.Write(((int)value).ToString(null, NumberFormatInfo.InvariantInfo));
			return;
		}
		if (type == typeof(TimeSpan) && LocalAppContextSwitches.EnableTimeSpanSerialization)
		{
			Writer.Write(" new ");
			Writer.Write(type.FullName);
			Writer.Write("(");
			Writer.Write(((TimeSpan)value).Ticks.ToString(CultureInfo.InvariantCulture));
			Writer.Write(")");
			return;
		}
		throw new InvalidOperationException(Res.GetString("The default value type, {0}, is unsupported.", type.FullName));
	}

	private void WriteNamespaces(string source)
	{
		Writer.Write("WriteNamespaceDeclarations(");
		Writer.Write(source);
		Writer.WriteLine(");");
	}

	private int FindXmlnsIndex(MemberMapping[] members)
	{
		for (int i = 0; i < members.Length; i++)
		{
			if (members[i].Xmlns != null)
			{
				return i;
			}
		}
		return -1;
	}

	private void WriteExtraMembers(string loopStartSource, string loopEndSource)
	{
		Writer.Write("for (int i = ");
		Writer.Write(loopStartSource);
		Writer.Write("; i < ");
		Writer.Write(loopEndSource);
		Writer.WriteLine("; i++) {");
		Writer.Indent++;
		Writer.WriteLine("if (p[i] != null) {");
		Writer.Indent++;
		Writer.WriteLine("WritePotentiallyReferencingElement(null, null, p[i], p[i].GetType(), true, false);");
		Writer.Indent--;
		Writer.WriteLine("}");
		Writer.Indent--;
		Writer.WriteLine("}");
	}

	private void WriteLocalDecl(string typeName, string variableName, string initValue, bool useReflection)
	{
		RaCodeGen.WriteLocalDecl(typeName, variableName, initValue, useReflection);
	}

	private void WriteArrayLocalDecl(string typeName, string variableName, string initValue, TypeDesc arrayTypeDesc)
	{
		RaCodeGen.WriteArrayLocalDecl(typeName, variableName, initValue, arrayTypeDesc);
	}

	private void WriteTypeCompare(string variable, string escapedTypeName, bool useReflection)
	{
		RaCodeGen.WriteTypeCompare(variable, escapedTypeName, useReflection);
	}

	private void WriteInstanceOf(string source, string escapedTypeName, bool useReflection)
	{
		RaCodeGen.WriteInstanceOf(source, escapedTypeName, useReflection);
	}

	private void WriteArrayTypeCompare(string variable, string escapedTypeName, string elementTypeName, bool useReflection)
	{
		RaCodeGen.WriteArrayTypeCompare(variable, escapedTypeName, elementTypeName, useReflection);
	}

	private void WriteEnumCase(string fullTypeName, ConstantMapping c, bool useReflection)
	{
		RaCodeGen.WriteEnumCase(fullTypeName, c, useReflection);
	}

	private string FindChoiceEnumValue(ElementAccessor element, EnumMapping choiceMapping, bool useReflection)
	{
		string text = null;
		for (int i = 0; i < choiceMapping.Constants.Length; i++)
		{
			string xmlName = choiceMapping.Constants[i].XmlName;
			if (element.Any && element.Name.Length == 0)
			{
				if (xmlName == "##any:")
				{
					text = ((!useReflection) ? choiceMapping.Constants[i].Name : choiceMapping.Constants[i].Value.ToString(CultureInfo.InvariantCulture));
					break;
				}
				continue;
			}
			int num = xmlName.LastIndexOf(':');
			string text2 = ((num < 0) ? choiceMapping.Namespace : xmlName.Substring(0, num));
			string text3 = ((num < 0) ? xmlName : xmlName.Substring(num + 1));
			if (element.Name == text3 && ((element.Form == XmlSchemaForm.Unqualified && string.IsNullOrEmpty(text2)) || element.Namespace == text2))
			{
				text = ((!useReflection) ? choiceMapping.Constants[i].Name : choiceMapping.Constants[i].Value.ToString(CultureInfo.InvariantCulture));
				break;
			}
		}
		if (text == null || text.Length == 0)
		{
			if (element.Any && element.Name.Length == 0)
			{
				throw new InvalidOperationException(Res.GetString("Type {0} is missing enumeration value '##any:' corresponding to XmlAnyElementAttribute.", choiceMapping.TypeDesc.FullName));
			}
			throw new InvalidOperationException(Res.GetString("Type {0} is missing enumeration value '{1}' for element '{2}' from namespace '{3}'.", choiceMapping.TypeDesc.FullName, element.Namespace + ":" + element.Name, element.Name, element.Namespace));
		}
		if (!useReflection)
		{
			CodeIdentifier.CheckValidIdentifier(text);
		}
		return text;
	}
}
