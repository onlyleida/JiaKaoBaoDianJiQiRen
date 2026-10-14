namespace System.Web.Services.Description;

[Flags]
public enum ServiceDescriptionImportWarnings
{
	NoCodeGenerated = 1,
	OptionalExtensionsIgnored = 2,
	RequiredExtensionsIgnored = 4,
	UnsupportedOperationsIgnored = 8,
	UnsupportedBindingsIgnored = 0x10,
	NoMethodsGenerated = 0x20,
	SchemaValidation = 0x40,
	WsiConformance = 0x80
}
