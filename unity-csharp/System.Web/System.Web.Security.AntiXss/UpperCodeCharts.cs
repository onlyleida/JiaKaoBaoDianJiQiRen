namespace System.Web.Security.AntiXss;

[Flags]
public enum UpperCodeCharts
{
	None = 0,
	DevanagariExtended = 1,
	KayahLi = 2,
	Rejang = 4,
	HangulJamoExtendedA = 8,
	Javanese = 0x10,
	Cham = 0x20,
	MyanmarExtendedA = 0x40,
	TaiViet = 0x80,
	MeeteiMayek = 0x100,
	HangulSyllables = 0x200,
	HangulJamoExtendedB = 0x400,
	CjkCompatibilityIdeographs = 0x800,
	AlphabeticPresentationForms = 0x1000,
	ArabicPresentationFormsA = 0x2000,
	VariationSelectors = 0x4000,
	VerticalForms = 0x8000,
	CombiningHalfMarks = 0x10000,
	CjkCompatibilityForms = 0x20000,
	SmallFormVariants = 0x40000,
	ArabicPresentationFormsB = 0x80000,
	HalfWidthAndFullWidthForms = 0x100000,
	Specials = 0x200000
}
