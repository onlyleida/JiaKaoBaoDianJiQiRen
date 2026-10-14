using System.CodeDom;
using System.CodeDom.Compiler;
using System.Xml.Schema;
using System.Xml.Serialization;
using System.Xml.Serialization.Advanced;

namespace System.Data.Design;

public class TypedDataSetSchemaImporterExtension : SchemaImporterExtension
{
	public TypedDataSetSchemaImporterExtension()
		: this(TypedDataSetGenerator.GenerateOption.None)
	{
	}

	protected TypedDataSetSchemaImporterExtension(TypedDataSetGenerator.GenerateOption dataSetGenerateOptions)
	{
	}

	[System.MonoTODO]
	public override string ImportSchemaType(XmlSchemaType type, XmlSchemaObject context, XmlSchemas schemas, XmlSchemaImporter importer, CodeCompileUnit compileUnit, CodeNamespace mainNamespace, CodeGenerationOptions options, CodeDomProvider codeProvider)
	{
		if (type == null)
		{
			return null;
		}
		_ = context is XmlSchemaElement;
		return null;
	}

	[System.MonoTODO]
	public override string ImportSchemaType(string name, string namespaceName, XmlSchemaObject context, XmlSchemas schemas, XmlSchemaImporter importer, CodeCompileUnit compileUnit, CodeNamespace mainNamespace, CodeGenerationOptions options, CodeDomProvider codeProvider)
	{
		return null;
	}
}
