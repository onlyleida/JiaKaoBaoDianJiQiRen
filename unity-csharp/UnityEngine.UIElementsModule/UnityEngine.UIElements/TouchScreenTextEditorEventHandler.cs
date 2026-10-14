namespace UnityEngine.UIElements;

internal class TouchScreenTextEditorEventHandler(TextEditorEngine editorEngine, ITextInputField textInputField) : TextEditorEventHandler(editorEngine, textInputField)
{
	private IVisualElementScheduledItem m_TouchKeyboardPoller = null;

	private void PollTouchScreenKeyboard()
	{
		if (TouchScreenKeyboard.isSupported && !TouchScreenKeyboard.isInPlaceEditingAllowed)
		{
			if (m_TouchKeyboardPoller == null)
			{
				m_TouchKeyboardPoller = (textInputField as VisualElement)?.schedule.Execute(DoPollTouchScreenKeyboard).Every(100L);
			}
			else
			{
				m_TouchKeyboardPoller.Resume();
			}
		}
	}

	private void DoPollTouchScreenKeyboard()
	{
		if (!TouchScreenKeyboard.isSupported || TouchScreenKeyboard.isInPlaceEditingAllowed || textInputField.editorEngine.keyboardOnScreen == null)
		{
			return;
		}
		textInputField.UpdateText(textInputField.CullString(textInputField.editorEngine.keyboardOnScreen.text));
		if (!textInputField.isDelayed)
		{
			textInputField.UpdateValueFromText();
		}
		if (textInputField.editorEngine.keyboardOnScreen.status != TouchScreenKeyboard.Status.Visible)
		{
			textInputField.editorEngine.keyboardOnScreen = null;
			m_TouchKeyboardPoller.Pause();
			if (textInputField.isDelayed)
			{
				textInputField.UpdateValueFromText();
			}
		}
	}

	public override void ExecuteDefaultActionAtTarget(EventBase evt)
	{
		base.ExecuteDefaultActionAtTarget(evt);
		long num = EventBase<MouseDownEvent>.TypeId();
		if (!textInputField.isReadOnly && evt.eventTypeId == num && editorEngine.keyboardOnScreen == null)
		{
			textInputField.SyncTextEngine();
			textInputField.UpdateText(editorEngine.text);
			editorEngine.keyboardOnScreen = TouchScreenKeyboard.Open(textInputField.text, TouchScreenKeyboardType.Default, autocorrection: true, editorEngine.multiline, textInputField.isPasswordField);
			if (editorEngine.keyboardOnScreen != null)
			{
				PollTouchScreenKeyboard();
			}
			editorEngine.UpdateScrollOffset();
			evt.StopPropagation();
		}
	}
}
