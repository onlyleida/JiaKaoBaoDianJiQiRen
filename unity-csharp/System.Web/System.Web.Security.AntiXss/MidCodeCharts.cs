namespace System.Web.Security.AntiXss;

[Flags]
public enum MidCodeCharts : long
{
	None = 0L,
	GreekExtended = 1L,
	GeneralPunctuation = 2L,
	SuperscriptsAndSubscripts = 4L,
	CurrencySymbols = 8L,
	CombiningDiacriticalMarksForSymbols = 0x10L,
	LetterlikeSymbols = 0x20L,
	NumberForms = 0x40L,
	Arrows = 0x80L,
	MathematicalOperators = 0x100L,
	MiscellaneousTechnical = 0x200L,
	ControlPictures = 0x400L,
	OpticalCharacterRecognition = 0x800L,
	EnclosedAlphanumerics = 0x1000L,
	BoxDrawing = 0x2000L,
	BlockElements = 0x4000L,
	GeometricShapes = 0x8000L,
	MiscellaneousSymbols = 0x10000L,
	Dingbats = 0x20000L,
	MiscellaneousMathematicalSymbolsA = 0x40000L,
	SupplementalArrowsA = 0x80000L,
	BraillePatterns = 0x100000L,
	SupplementalArrowsB = 0x200000L,
	MiscellaneousMathematicalSymbolsB = 0x400000L,
	SupplementalMathematicalOperators = 0x800000L,
	MiscellaneousSymbolsAndArrows = 0x1000000L,
	Glagolitic = 0x2000000L,
	LatinExtendedC = 0x4000000L,
	Coptic = 0x8000000L,
	GeorgianSupplement = 0x10000000L,
	Tifinagh = 0x20000000L,
	EthiopicExtended = BlockElements
}
