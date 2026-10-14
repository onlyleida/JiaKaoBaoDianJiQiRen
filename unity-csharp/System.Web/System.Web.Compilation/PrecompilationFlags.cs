namespace System.Web.Compilation;

[Flags]
public enum PrecompilationFlags
{
	Default = 0,
	Updatable = 1,
	OverwriteTarget = 2,
	ForceDebug = 4,
	Clean = 8,
	CodeAnalysis = 0x10,
	AllowPartiallyTrustedCallers = 0x20,
	DelaySign = 0x40,
	FixedNames = 0x80,
	IgnoreBadImageFormatException = 0x100
}
