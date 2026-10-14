using System;

namespace UnityEngine.UIElements;

internal class KeyboardTextEditorEventHandler(TextEditorEngine editorEngine, ITextInputField textInputField) : TextEditorEventHandler(editorEngine, textInputField)
{
	internal bool m_Changed;

	private bool m_Dragged;

	private bool m_DragToPosition;

	private bool m_PostponeMove;

	private bool m_SelectAllOnMouseUp = true;

	private string m_PreDrawCursorText;

	public override void ExecuteDefaultActionAtTarget(EventBase evt)
	{
		base.ExecuteDefaultActionAtTarget(evt);
		if (evt.eventTypeId == EventBase<FocusEvent>.TypeId())
		{
			OnFocus(evt as FocusEvent);
		}
		else if (evt.eventTypeId == EventBase<MouseDownEvent>.TypeId())
		{
			OnMouseDown(evt as MouseDownEvent);
		}
		else if (evt.eventTypeId == EventBase<MouseUpEvent>.TypeId())
		{
			OnMouseUp(evt as MouseUpEvent);
		}
		else if (evt.eventTypeId == EventBase<MouseMoveEvent>.TypeId())
		{
			OnMouseMove(evt as MouseMoveEvent);
		}
		else if (evt.eventTypeId == EventBase<KeyDownEvent>.TypeId())
		{
			OnKeyDown(evt as KeyDownEvent);
		}
		else if (evt.eventTypeId == EventBase<ValidateCommandEvent>.TypeId())
		{
			OnValidateCommandEvent(evt as ValidateCommandEvent);
		}
		else if (evt.eventTypeId == EventBase<ExecuteCommandEvent>.TypeId())
		{
			OnExecuteCommandEvent(evt as ExecuteCommandEvent);
		}
	}

	private void OnFocus(FocusEvent _)
	{
		m_DragToPosition = false;
	}

	private void OnMouseDown(MouseDownEvent evt)
	{
		textInputField.SyncTextEngine();
		m_Changed = false;
		if (!textInputField.hasFocus)
		{
			editorEngine.m_HasFocus = true;
			editorEngine.MoveCursorToPosition_Internal(evt.localMousePosition, evt.button == 0 && evt.shiftKey);
			if (evt.button == 0)
			{
				textInputField.CaptureMouse();
			}
			evt.StopPropagation();
		}
		else if (evt.button == 0)
		{
			if (evt.clickCount == 2 && textInputField.doubleClickSelectsWord)
			{
				editorEngine.SelectCurrentWord();
				editorEngine.DblClickSnap(TextEditor.DblClickSnapping.WORDS);
				editorEngine.MouseDragSelectsWholeWords(on: true);
				m_DragToPosition = false;
			}
			else if (evt.clickCount == 3 && textInputField.tripleClickSelectsLine)
			{
				editorEngine.SelectCurrentParagraph();
				editorEngine.MouseDragSelectsWholeWords(on: true);
				editorEngine.DblClickSnap(TextEditor.DblClickSnapping.PARAGRAPHS);
				m_DragToPosition = false;
			}
			else
			{
				editorEngine.MoveCursorToPosition_Internal(evt.localMousePosition, evt.shiftKey);
				m_SelectAllOnMouseUp = false;
			}
			textInputField.CaptureMouse();
			evt.StopPropagation();
		}
		else if (evt.button == 1)
		{
			if (editorEngine.cursorIndex == editorEngine.selectIndex)
			{
				editorEngine.MoveCursorToPosition_Internal(evt.localMousePosition, shift: false);
			}
			m_SelectAllOnMouseUp = false;
			m_DragToPosition = false;
		}
		editorEngine.UpdateScrollOffset();
	}

	private void OnMouseUp(MouseUpEvent evt)
	{
		if (evt.button == 0 && textInputField.HasMouseCapture())
		{
			textInputField.SyncTextEngine();
			m_Changed = false;
			if (m_Dragged && m_DragToPosition)
			{
				editorEngine.MoveSelectionToAltCursor();
			}
			else if (m_PostponeMove)
			{
				editorEngine.MoveCursorToPosition_Internal(evt.localMousePosition, evt.shiftKey);
			}
			else if (m_SelectAllOnMouseUp)
			{
				m_SelectAllOnMouseUp = false;
			}
			editorEngine.MouseDragSelectsWholeWords(on: false);
			textInputField.ReleaseMouse();
			m_DragToPosition = true;
			m_Dragged = false;
			m_PostponeMove = false;
			evt.StopPropagation();
			editorEngine.UpdateScrollOffset();
		}
	}

	private void OnMouseMove(MouseMoveEvent evt)
	{
		if (evt.button != 0 || !textInputField.HasMouseCapture())
		{
			return;
		}
		textInputField.SyncTextEngine();
		m_Changed = false;
		if (!evt.shiftKey && editorEngine.hasSelection && m_DragToPosition)
		{
			editorEngine.MoveAltCursorToPosition(evt.localMousePosition);
		}
		else
		{
			if (evt.shiftKey)
			{
				editorEngine.MoveCursorToPosition_Internal(evt.localMousePosition, evt.shiftKey);
			}
			else
			{
				editorEngine.SelectToPosition(evt.localMousePosition);
			}
			m_DragToPosition = false;
			m_SelectAllOnMouseUp = !editorEngine.hasSelection;
		}
		m_Dragged = true;
		evt.StopPropagation();
		editorEngine.UpdateScrollOffset();
	}

	private void OnKeyDown(KeyDownEvent evt)
	{
		if (!textInputField.hasFocus)
		{
			return;
		}
		textInputField.SyncTextEngine();
		m_Changed = false;
		if (editorEngine.HandleKeyEvent(evt.imguiEvent, textInputField.isReadOnly))
		{
			if (textInputField.text != editorEngine.text)
			{
				m_Changed = true;
			}
			evt.StopPropagation();
		}
		else
		{
			char character = evt.character;
			if ((!editorEngine.multiline && (evt.keyCode == KeyCode.Tab || character == '\t')) || (editorEngine.multiline && (evt.keyCode == KeyCode.Tab || character == '\t') && evt.modifiers != EventModifiers.None))
			{
				return;
			}
			evt.StopPropagation();
			if ((character == '\n' && !editorEngine.multiline && !evt.altKey) || (character == '\n' && editorEngine.multiline && evt.shiftKey) || !textInputField.AcceptCharacter(character))
			{
				return;
			}
			Font font = editorEngine.style.font;
			if ((font != null && font.HasCharacter(character)) || character == '\n' || character == '\t')
			{
				editorEngine.Insert(character);
				m_Changed = true;
			}
			else if (character == '\0' && !string.IsNullOrEmpty(GUIUtility.compositionString))
			{
				editorEngine.ReplaceSelection("");
				m_Changed = true;
			}
		}
		if (m_Changed)
		{
			editorEngine.text = textInputField.CullString(editorEngine.text);
			textInputField.UpdateText(editorEngine.text);
		}
		editorEngine.UpdateScrollOffset();
	}

	private void OnValidateCommandEvent(ValidateCommandEvent evt)
	{
		if (!textInputField.hasFocus)
		{
			return;
		}
		textInputField.SyncTextEngine();
		m_Changed = false;
		switch (evt.commandName)
		{
		case "Cut":
			if (!editorEngine.hasSelection || textInputField.isReadOnly)
			{
				return;
			}
			break;
		case "Copy":
			if (!editorEngine.hasSelection)
			{
				return;
			}
			break;
		case "Paste":
			if (!editorEngine.CanPaste() || textInputField.isReadOnly)
			{
				return;
			}
			break;
		case "Delete":
			if (textInputField.isReadOnly)
			{
				return;
			}
			break;
		}
		evt.StopPropagation();
	}

	private void OnExecuteCommandEvent(ExecuteCommandEvent evt)
	{
		if (!textInputField.hasFocus)
		{
			return;
		}
		textInputField.SyncTextEngine();
		m_Changed = false;
		bool flag = false;
		string text = editorEngine.text;
		if (!textInputField.hasFocus)
		{
			return;
		}
		switch (evt.commandName)
		{
		case "OnLostFocus":
			evt.StopPropagation();
			return;
		case "Cut":
			if (!textInputField.isReadOnly)
			{
				editorEngine.Cut();
				flag = true;
			}
			break;
		case "Copy":
			editorEngine.Copy();
			evt.StopPropagation();
			return;
		case "Paste":
			if (!textInputField.isReadOnly)
			{
				editorEngine.Paste();
				flag = true;
			}
			break;
		case "SelectAll":
			editorEngine.SelectAll();
			evt.StopPropagation();
			return;
		case "Delete":
			if (!textInputField.isReadOnly)
			{
				if (SystemInfo.operatingSystemFamily == OperatingSystemFamily.MacOSX)
				{
					editorEngine.Delete();
				}
				else
				{
					editorEngine.Cut();
				}
				flag = true;
			}
			break;
		}
		if (flag)
		{
			if (text != editorEngine.text)
			{
				m_Changed = true;
			}
			evt.StopPropagation();
		}
		if (m_Changed)
		{
			editorEngine.text = textInputField.CullString(editorEngine.text);
			textInputField.UpdateText(editorEngine.text);
			evt.StopPropagation();
		}
		editorEngine.UpdateScrollOffset();
	}

	public void PreDrawCursor(string newText)
	{
		textInputField.SyncTextEngine();
		m_PreDrawCursorText = editorEngine.text;
		int num = editorEngine.cursorIndex;
		if (!string.IsNullOrEmpty(GUIUtility.compositionString))
		{
			editorEngine.text = newText.Substring(0, editorEngine.cursorIndex) + GUIUtility.compositionString + newText.Substring(editorEngine.selectIndex);
			num += GUIUtility.compositionString.Length;
		}
		else
		{
			editorEngine.text = newText;
		}
		editorEngine.text = textInputField.CullString(editorEngine.text);
		num = Math.Min(num, editorEngine.text.Length);
		editorEngine.graphicalCursorPos = editorEngine.style.GetCursorPixelPosition(editorEngine.localPosition, new GUIContent(editorEngine.text), num);
	}

	public void PostDrawCursor()
	{
		editorEngine.text = m_PreDrawCursorText;
	}
}
