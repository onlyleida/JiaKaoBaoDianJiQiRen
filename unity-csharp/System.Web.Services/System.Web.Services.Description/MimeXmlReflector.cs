using System.Web.Services.Protocols;
using System.Xml;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

internal class MimeXmlReflector : MimeReflector
{
	internal override bool ReflectParameters()
	{
		return false;
	}

	internal override bool ReflectReturn()
	{
		MessagePart messagePart = new MessagePart();
		messagePart.Name = "Body";
		ReflectionContext.OutputMessage.Parts.Add(messagePart);
		if (typeof(XmlNode).IsAssignableFrom(ReflectionContext.Method.ReturnType))
		{
			MimeContentBinding mimeContentBinding = new MimeContentBinding();
			mimeContentBinding.Type = "text/xml";
			mimeContentBinding.Part = messagePart.Name;
			ReflectionContext.OperationBinding.Output.Extensions.Add(mimeContentBinding);
		}
		else
		{
			MimeXmlBinding mimeXmlBinding = new MimeXmlBinding();
			mimeXmlBinding.Part = messagePart.Name;
			LogicalMethodInfo method = ReflectionContext.Method;
			XmlAttributes xmlAttributes = new XmlAttributes(method.ReturnTypeCustomAttributeProvider);
			XmlTypeMapping xmlTypeMapping = ReflectionContext.ReflectionImporter.ImportTypeMapping(method.ReturnType, xmlAttributes.XmlRoot);
			xmlTypeMapping.SetKey(method.GetKey() + ":Return");
			ReflectionContext.SchemaExporter.ExportTypeMapping(xmlTypeMapping);
			messagePart.Element = new XmlQualifiedName(xmlTypeMapping.XsdElementName, xmlTypeMapping.Namespace);
			ReflectionContext.OperationBinding.Output.Extensions.Add(mimeXmlBinding);
		}
		return true;
	}
}
