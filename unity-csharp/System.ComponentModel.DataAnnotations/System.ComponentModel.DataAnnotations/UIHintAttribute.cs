using System.Collections.Generic;
using System.Globalization;
using System.Linq;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = true)]
public class UIHintAttribute : Attribute
{
	internal class UIHintImplementation
	{
		private IDictionary<string, object> _controlParameters;

		private object[] _inputControlParameters;

		public string UIHint { get; private set; }

		public string PresentationLayer { get; private set; }

		public IDictionary<string, object> ControlParameters
		{
			get
			{
				if (_controlParameters == null)
				{
					_controlParameters = BuildControlParametersDictionary();
				}
				return _controlParameters;
			}
		}

		public UIHintImplementation(string uiHint, string presentationLayer, params object[] controlParameters)
		{
			UIHint = uiHint;
			PresentationLayer = presentationLayer;
			if (controlParameters != null)
			{
				_inputControlParameters = new object[controlParameters.Length];
				Array.Copy(controlParameters, _inputControlParameters, controlParameters.Length);
			}
		}

		public override int GetHashCode()
		{
			string text = UIHint ?? string.Empty;
			string text2 = PresentationLayer ?? string.Empty;
			return text.GetHashCode() ^ text2.GetHashCode();
		}

		public override bool Equals(object obj)
		{
			UIHintImplementation uIHintImplementation = (UIHintImplementation)obj;
			if (UIHint != uIHintImplementation.UIHint || PresentationLayer != uIHintImplementation.PresentationLayer)
			{
				return false;
			}
			IDictionary<string, object> controlParameters;
			IDictionary<string, object> controlParameters2;
			try
			{
				controlParameters = ControlParameters;
				controlParameters2 = uIHintImplementation.ControlParameters;
			}
			catch (InvalidOperationException)
			{
				return false;
			}
			if (controlParameters.Count != controlParameters2.Count)
			{
				return false;
			}
			return controlParameters.OrderBy((KeyValuePair<string, object> p) => p.Key).SequenceEqual(controlParameters2.OrderBy((KeyValuePair<string, object> p) => p.Key));
		}

		private IDictionary<string, object> BuildControlParametersDictionary()
		{
			IDictionary<string, object> dictionary = new Dictionary<string, object>();
			object[] inputControlParameters = _inputControlParameters;
			if (inputControlParameters == null || inputControlParameters.Length == 0)
			{
				return dictionary;
			}
			if (inputControlParameters.Length % 2 != 0)
			{
				throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The number of control parameters must be even."));
			}
			for (int i = 0; i < inputControlParameters.Length; i += 2)
			{
				object obj = inputControlParameters[i];
				object value = inputControlParameters[i + 1];
				if (obj == null)
				{
					throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The key parameter at position {0} is null. Every key control parameter must be a string.", i));
				}
				if (!(obj is string text))
				{
					throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The key parameter at position {0} with value '{1}' is not a string. Every key control parameter must be a string.", i, inputControlParameters[i].ToString()));
				}
				if (dictionary.ContainsKey(text))
				{
					throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The key parameter at position {0} with value '{1}' occurs more than once.", i, text));
				}
				dictionary[text] = value;
			}
			return dictionary;
		}
	}

	private UIHintImplementation _implementation;

	public string UIHint => _implementation.UIHint;

	public string PresentationLayer => _implementation.PresentationLayer;

	public IDictionary<string, object> ControlParameters => _implementation.ControlParameters;

	public override object TypeId => this;

	public UIHintAttribute(string uiHint)
		: this(uiHint, null, new object[0])
	{
	}

	public UIHintAttribute(string uiHint, string presentationLayer)
		: this(uiHint, presentationLayer, new object[0])
	{
	}

	public UIHintAttribute(string uiHint, string presentationLayer, params object[] controlParameters)
	{
		_implementation = new UIHintImplementation(uiHint, presentationLayer, controlParameters);
	}

	public override int GetHashCode()
	{
		return _implementation.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (!(obj is UIHintAttribute uIHintAttribute))
		{
			return false;
		}
		return _implementation.Equals(uIHintAttribute._implementation);
	}
}
