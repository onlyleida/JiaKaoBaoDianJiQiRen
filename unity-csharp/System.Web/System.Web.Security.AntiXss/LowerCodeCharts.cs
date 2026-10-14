namespace System.Web.Security.AntiXss;

[Flags]
public enum LowerCodeCharts : long
{
	None = 0L,
	BasicLatin = 1L,
	C1ControlsAndLatin1Supplement = 2L,
	LatinExtendedA = 4L,
	LatinExtendedB = 8L,
	IpaExtensions = 0x10L,
	SpacingModifierLetters = 0x20L,
	CombiningDiacriticalMarks = 0x40L,
	GreekAndCoptic = 0x80L,
	Cyrillic = 0x100L,
	CyrillicSupplement = 0x200L,
	Armenian = 0x400L,
	Hebrew = 0x800L,
	Arabic = 0x1000L,
	Syriac = 0x2000L,
	ArabicSupplement = 0x4000L,
	Thaana = 0x8000L,
	Nko = 0x10000L,
	Samaritan = 0x20000L,
	Devanagari = 0x40000L,
	Bengali = 0x80000L,
	Gurmukhi = 0x100000L,
	Gujarati = 0x200000L,
	Oriya = 0x400000L,
	Tamil = 0x800000L,
	Telugu = 0x1000000L,
	Kannada = 0x2000000L,
	Malayalam = 0x4000000L,
	Sinhala = 0x8000000L,
	Thai = 0x10000000L,
	Lao = 0x20000000L,
	Tibetan = 0x40000000L,
	Default = BasicLatin | C1ControlsAndLatin1Supplement | LatinExtendedA | LatinExtendedB | IpaExtensions | SpacingModifierLetters | CombiningDiacriticalMarks
}
