using System;

namespace UnityEngine.TextCore;

[Serializable]
internal class Character : TextElement
{
	public Character()
	{
		m_ElementType = TextElementType.Character;
		scale = 1f;
	}

	public Character(uint unicode, Glyph glyph)
	{
		m_ElementType = TextElementType.Character;
		base.unicode = unicode;
		base.glyph = glyph;
		glyphIndex = glyph.index;
		scale = 1f;
	}
}
