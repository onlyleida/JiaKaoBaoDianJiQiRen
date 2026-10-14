using System.Collections.Generic;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
public sealed class FilterUIHintAttribute : Attribute
{
	private UIHintAttribute.UIHintImplementation _implementation;

	public string FilterUIHint => _implementation.UIHint;

	public string PresentationLayer => _implementation.PresentationLayer;

	public IDictionary<string, object> ControlParameters => _implementation.ControlParameters;

	public override object TypeId => this;

	public FilterUIHintAttribute(string filterUIHint)
		: this(filterUIHint, null, new object[0])
	{
	}

	public FilterUIHintAttribute(string filterUIHint, string presentationLayer)
		: this(filterUIHint, presentationLayer, new object[0])
	{
	}

	public FilterUIHintAttribute(string filterUIHint, string presentationLayer, params object[] controlParameters)
	{
		_implementation = new UIHintAttribute.UIHintImplementation(filterUIHint, presentationLayer, controlParameters);
	}

	public override int GetHashCode()
	{
		return _implementation.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (!(obj is FilterUIHintAttribute filterUIHintAttribute))
		{
			return false;
		}
		return _implementation.Equals(filterUIHintAttribute._implementation);
	}
}
