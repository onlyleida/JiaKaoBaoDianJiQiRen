using System.ComponentModel;
using System.Globalization;
using System.Runtime.InteropServices;

namespace System.Windows.Forms;

[ClassInterface(ClassInterfaceType.AutoDispatch)]
[DefaultEvent("ValueChanged")]
[DefaultProperty("Value")]
[DefaultBindingProperty("Value")]
[ComVisible(true)]
public class NumericUpDown : UpDownBase, ISupportInitialize
{
	private bool suppress_validation;

	private int decimal_places;

	private bool hexadecimal;

	private decimal increment;

	private decimal maximum;

	private decimal minimum;

	private bool thousands_separator;

	private decimal dvalue;

	private NumericUpDownAccelerationCollection accelerations;

	private static object UIAMinimumChangedEvent = new object();

	private static object UIAMaximumChangedEvent = new object();

	private static object UIASmallChangeChangedEvent = new object();

	private static object ValueChangedEvent = new object();

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public NumericUpDownAccelerationCollection Accelerations
	{
		get
		{
			if (accelerations == null)
			{
				accelerations = new NumericUpDownAccelerationCollection();
			}
			return accelerations;
		}
	}

	[DefaultValue(0)]
	public int DecimalPlaces
	{
		get
		{
			return decimal_places;
		}
		set
		{
			decimal_places = value;
			UpdateEditText();
		}
	}

	[DefaultValue(false)]
	public bool Hexadecimal
	{
		get
		{
			return hexadecimal;
		}
		set
		{
			hexadecimal = value;
			UpdateEditText();
		}
	}

	public decimal Increment
	{
		get
		{
			return increment;
		}
		set
		{
			if (value < 0m)
			{
				throw new ArgumentOutOfRangeException("value", value, "NumericUpDown increment cannot be negative");
			}
			increment = value;
			OnUIASmallChangeChanged(EventArgs.Empty);
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	public decimal Maximum
	{
		get
		{
			return maximum;
		}
		set
		{
			maximum = value;
			if (minimum > maximum)
			{
				minimum = maximum;
			}
			if (dvalue > maximum)
			{
				Value = maximum;
			}
			OnUIAMaximumChanged(EventArgs.Empty);
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	public decimal Minimum
	{
		get
		{
			return minimum;
		}
		set
		{
			minimum = value;
			if (maximum < minimum)
			{
				maximum = minimum;
			}
			if (dvalue < minimum)
			{
				Value = minimum;
			}
			OnUIAMinimumChanged(EventArgs.Empty);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new Padding Padding
	{
		get
		{
			return Padding.Empty;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Bindable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	[DefaultValue(false)]
	[Localizable(true)]
	public bool ThousandsSeparator
	{
		get
		{
			return thousands_separator;
		}
		set
		{
			thousands_separator = value;
			UpdateEditText();
		}
	}

	[Bindable(true)]
	public decimal Value
	{
		get
		{
			if (UserEdit)
			{
				ValidateEditText();
			}
			return dvalue;
		}
		set
		{
			if (value != dvalue)
			{
				if (!suppress_validation && (value < minimum || value > maximum))
				{
					throw new ArgumentOutOfRangeException("value", "NumericUpDown.Value must be within the specified Minimum and Maximum values");
				}
				dvalue = value;
				OnValueChanged(EventArgs.Empty);
				UpdateEditText();
			}
		}
	}

	internal event EventHandler UIAMinimumChanged
	{
		add
		{
			Events.AddHandler(UIAMinimumChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIAMinimumChangedEvent, value);
		}
	}

	internal event EventHandler UIAMaximumChanged
	{
		add
		{
			Events.AddHandler(UIAMaximumChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIAMaximumChangedEvent, value);
		}
	}

	internal event EventHandler UIASmallChangeChanged
	{
		add
		{
			Events.AddHandler(UIASmallChangeChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIASmallChangeChangedEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler PaddingChanged
	{
		add
		{
			base.PaddingChanged += value;
		}
		remove
		{
			base.PaddingChanged -= value;
		}
	}

	public event EventHandler ValueChanged
	{
		add
		{
			Events.AddHandler(ValueChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ValueChangedEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler TextChanged
	{
		add
		{
			base.TextChanged += value;
		}
		remove
		{
			base.TextChanged -= value;
		}
	}

	internal void OnUIAMinimumChanged(EventArgs e)
	{
		((EventHandler)Events[UIAMinimumChangedEvent])?.Invoke(this, e);
	}

	internal void OnUIAMaximumChanged(EventArgs e)
	{
		((EventHandler)Events[UIAMaximumChangedEvent])?.Invoke(this, e);
	}

	internal void OnUIASmallChangeChanged(EventArgs e)
	{
		((EventHandler)Events[UIASmallChangeChangedEvent])?.Invoke(this, e);
	}

	public NumericUpDown()
	{
		suppress_validation = false;
		decimal_places = 0;
		hexadecimal = false;
		increment = 1m;
		maximum = 100m;
		minimum = 0m;
		thousands_separator = false;
		Text = "0";
	}

	public void BeginInit()
	{
		suppress_validation = true;
	}

	public void EndInit()
	{
		suppress_validation = false;
		Value = Check(dvalue);
		UpdateEditText();
	}

	public override string ToString()
	{
		return $"{base.ToString()}, Minimum = {minimum}, Maximum = {maximum}";
	}

	public override void DownButton()
	{
		if (UserEdit)
		{
			ParseEditText();
		}
		Value = Math.Max(minimum, dvalue - increment);
		OnUIADownButtonClick(EventArgs.Empty);
	}

	public override void UpButton()
	{
		if (UserEdit)
		{
			ParseEditText();
		}
		Value = Math.Min(maximum, dvalue + increment);
		OnUIAUpButtonClick(EventArgs.Empty);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new AccessibleObject(this)
		{
			role = AccessibleRole.SpinButton
		};
	}

	protected override void OnTextBoxKeyPress(object source, KeyPressEventArgs e)
	{
		if ((Control.ModifierKeys & ~Keys.Shift) == 0)
		{
			NumberFormatInfo numberFormat = CultureInfo.CurrentCulture.NumberFormat;
			string text = e.KeyChar.ToString();
			if (text != numberFormat.NegativeSign && text != numberFormat.NumberDecimalSeparator && text != numberFormat.NumberGroupSeparator && (hexadecimal ? "\b0123456789abcdefABCDEF" : "\b0123456789").IndexOf(e.KeyChar) == -1)
			{
				e.Handled = true;
			}
			base.OnTextBoxKeyPress(source, e);
		}
	}

	protected virtual void OnValueChanged(EventArgs e)
	{
		((EventHandler)Events[ValueChangedEvent])?.Invoke(this, e);
	}

	protected void ParseEditText()
	{
		try
		{
			if (!hexadecimal)
			{
				Value = Check(decimal.Parse(Text, CultureInfo.CurrentCulture));
			}
			else
			{
				Value = Check(Convert.ToDecimal(Convert.ToInt32(Text, 16)));
			}
		}
		catch
		{
		}
		finally
		{
			UserEdit = false;
		}
	}

	private decimal Check(decimal val)
	{
		decimal num = val;
		if (num < minimum)
		{
			num = minimum;
		}
		if (num > maximum)
		{
			num = maximum;
		}
		return num;
	}

	protected override void UpdateEditText()
	{
		if (!suppress_validation)
		{
			if (UserEdit)
			{
				ParseEditText();
			}
			ChangingText = true;
			if (!hexadecimal)
			{
				string text = ((!thousands_separator) ? "F" : "N");
				text += decimal_places;
				Text = dvalue.ToString(text, CultureInfo.CurrentCulture);
			}
			else
			{
				Text = ((long)dvalue).ToString("X", CultureInfo.CurrentCulture);
			}
		}
	}

	protected override void ValidateEditText()
	{
		ParseEditText();
		UpdateEditText();
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		if (UserEdit)
		{
			UpdateEditText();
		}
	}

	protected override void OnKeyUp(KeyEventArgs e)
	{
		base.OnKeyUp(e);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
	}
}
