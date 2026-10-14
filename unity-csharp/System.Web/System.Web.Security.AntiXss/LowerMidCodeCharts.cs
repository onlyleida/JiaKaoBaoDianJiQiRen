namespace System.Web.Security.AntiXss;

[Flags]
public enum LowerMidCodeCharts : long
{
	None = 0L,
	Myanmar = 1L,
	Georgian = 2L,
	HangulJamo = 4L,
	Ethiopic = 8L,
	EthiopicSupplement = 0x10L,
	Cherokee = 0x20L,
	UnifiedCanadianAboriginalSyllabics = 0x40L,
	Ogham = 0x80L,
	Runic = 0x100L,
	Tagalog = 0x200L,
	Hanunoo = 0x400L,
	Buhid = 0x800L,
	Tagbanwa = 0x1000L,
	Khmer = 0x2000L,
	Mongolian = 0x4000L,
	UnifiedCanadianAboriginalSyllabicsExtended = 0x8000L,
	Limbu = 0x10000L,
	TaiLe = 0x20000L,
	NewTaiLue = 0x40000L,
	KhmerSymbols = 0x80000L,
	Buginese = 0x100000L,
	TaiTham = 0x200000L,
	Balinese = 0x400000L,
	Sudanese = 0x800000L,
	Lepcha = 0x1000000L,
	OlChiki = 0x2000000L,
	VedicExtensions = 0x4000000L,
	PhoneticExtensions = 0x8000000L,
	PhoneticExtensionsSupplement = 0x10000000L,
	CombiningDiacriticalMarksSupplement = 0x20000000L,
	LatinExtendedAdditional = 0x40000000L
}
