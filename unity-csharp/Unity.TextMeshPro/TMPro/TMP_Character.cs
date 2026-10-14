using System;
using UnityEngine.TextCore;

namespace TMPro;

[Serializable]
public class TMP_Character : TMP_TextElement
{
	public TMP_Character()
	{
		m_ElementType = TextElementType.Character;
		scale = 1f;
	}

	public TMP_Character(uint unicode, Glyph glyph)
	{
		m_ElementType = TextElementType.Character;
		base.unicode = unicode;
		textAsset = null;
		base.glyph = glyph;
		glyphIndex = glyph.index;
		scale = 1f;
	}

	public TMP_Character(uint unicode, TMP_FontAsset fontAsset, Glyph glyph)
	{
		m_ElementType = TextElementType.Character;
		base.unicode = unicode;
		textAsset = fontAsset;
		base.glyph = glyph;
		glyphIndex = glyph.index;
		scale = 1f;
	}

	internal TMP_Character(uint unicode, uint glyphIndex)
	{
		m_ElementType = TextElementType.Character;
		base.unicode = unicode;
		textAsset = null;
		glyph = null;
		base.glyphIndex = glyphIndex;
		scale = 1f;
	}
}
