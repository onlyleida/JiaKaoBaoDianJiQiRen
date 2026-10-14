namespace System.Web.Security.AntiXss;

[Flags]
public enum UpperMidCodeCharts : long
{
	None = 0L,
	CyrillicExtendedA = 1L,
	SupplementalPunctuation = 2L,
	CjkRadicalsSupplement = 4L,
	KangxiRadicals = 8L,
	IdeographicDescriptionCharacters = 0x10L,
	CjkSymbolsAndPunctuation = 0x20L,
	Hiragana = 0x40L,
	Katakana = 0x80L,
	Bopomofo = 0x100L,
	HangulCompatibilityJamo = 0x200L,
	Kanbun = 0x400L,
	BopomofoExtended = 0x800L,
	CjkStrokes = 0x1000L,
	KatakanaPhoneticExtensions = 0x2000L,
	EnclosedCjkLettersAndMonths = 0x4000L,
	CjkCompatibility = 0x8000L,
	CjkUnifiedIdeographsExtensionA = 0x10000L,
	YijingHexagramSymbols = 0x20000L,
	CjkUnifiedIdeographs = 0x40000L,
	YiSyllables = 0x80000L,
	YiRadicals = 0x100000L,
	Lisu = 0x200000L,
	Vai = 0x400000L,
	CyrillicExtendedB = 0x800000L,
	Bamum = 0x1000000L,
	ModifierToneLetters = 0x2000000L,
	LatinExtendedD = 0x4000000L,
	SylotiNagri = 0x8000000L,
	CommonIndicNumberForms = 0x10000000L,
	Phagspa = 0x20000000L,
	Saurashtra = 0x40000000L
}
