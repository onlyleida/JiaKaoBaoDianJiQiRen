using System.ComponentModel;
using System.Data;

namespace System.Web.UI.WebControls;

[DefaultProperty("DefaultValue")]
public class Parameter : ICloneable, IStateManager
{
	private StateBag viewState;

	private bool isTrackingViewState;

	private ParameterCollection _owner;

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	[WebCategory("Parameter")]
	[DefaultValue(null)]
	[WebSysDescription("Default value to be used in case value is null.")]
	public string DefaultValue
	{
		get
		{
			return ViewState.GetString("DefaultValue", null);
		}
		set
		{
			if (DefaultValue != value)
			{
				ViewState["DefaultValue"] = value;
				OnParameterChanged();
			}
		}
	}

	[WebCategory("Parameter")]
	[DefaultValue("Input")]
	[WebSysDescription("Parameter's direction.")]
	public ParameterDirection Direction
	{
		get
		{
			return (ParameterDirection)ViewState.GetInt("Direction", 1);
		}
		set
		{
			if (Direction != value)
			{
				ViewState["Direction"] = value;
				OnParameterChanged();
			}
		}
	}

	[WebCategory("Parameter")]
	[DefaultValue("")]
	[WebSysDescription("Parameter's name.")]
	public string Name
	{
		get
		{
			if (ViewState["Name"] is string result)
			{
				return result;
			}
			return string.Empty;
		}
		set
		{
			if (Name != value)
			{
				ViewState["Name"] = value;
				OnParameterChanged();
			}
		}
	}

	[WebCategory("Parameter")]
	[DefaultValue(true)]
	[WebSysDescription("Checks whether an empty string is treated as a null value.")]
	public bool ConvertEmptyStringToNull
	{
		get
		{
			return ViewState.GetBool("ConvertEmptyStringToNull", def: true);
		}
		set
		{
			if (ConvertEmptyStringToNull != value)
			{
				ViewState["ConvertEmptyStringToNull"] = value;
				OnParameterChanged();
			}
		}
	}

	[WebCategory("Parameter")]
	[DefaultValue(DbType.Object)]
	[WebSysDescription("Parameter's DbType.")]
	public DbType DbType
	{
		get
		{
			object obj = ViewState["DbType"];
			if (obj == null)
			{
				return DbType.Object;
			}
			return (DbType)obj;
		}
		set
		{
			if (DbType != value)
			{
				ViewState["DbType"] = value;
				OnParameterChanged();
			}
		}
	}

	[DefaultValue(0)]
	public int Size
	{
		get
		{
			return ViewState.GetInt("Size", 0);
		}
		set
		{
			if (Size != value)
			{
				ViewState["Size"] = value;
				OnParameterChanged();
			}
		}
	}

	[WebCategory("Parameter")]
	[DefaultValue(TypeCode.Empty)]
	[WebSysDescription("Represents type of the parameter.")]
	public TypeCode Type
	{
		get
		{
			return (TypeCode)ViewState.GetInt("Type", 0);
		}
		set
		{
			if (Type != value)
			{
				ViewState["Type"] = value;
				OnParameterChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected StateBag ViewState
	{
		get
		{
			if (viewState == null)
			{
				viewState = new StateBag();
				if (IsTrackingViewState)
				{
					viewState.TrackViewState();
				}
			}
			return viewState;
		}
	}

	protected bool IsTrackingViewState => isTrackingViewState;

	public Parameter()
	{
	}

	protected Parameter(Parameter original)
	{
		if (original == null)
		{
			throw new NullReferenceException(".NET emulation");
		}
		DefaultValue = original.DefaultValue;
		Direction = original.Direction;
		ConvertEmptyStringToNull = original.ConvertEmptyStringToNull;
		Type = original.Type;
		Name = original.Name;
	}

	public Parameter(string name)
	{
		Name = name;
	}

	public Parameter(string name, TypeCode type)
		: this(name)
	{
		Type = type;
	}

	public Parameter(string name, TypeCode type, string defaultValue)
		: this(name, type)
	{
		DefaultValue = defaultValue;
	}

	public Parameter(string name, DbType dbType)
		: this(name)
	{
		DbType = dbType;
	}

	public Parameter(string name, DbType dbType, string defaultValue)
		: this(name, dbType)
	{
		DefaultValue = defaultValue;
	}

	public static TypeCode ConvertDbTypeToTypeCode(DbType dbType)
	{
		switch (dbType)
		{
		case DbType.AnsiString:
		case DbType.String:
		case DbType.AnsiStringFixedLength:
		case DbType.StringFixedLength:
			return TypeCode.String;
		case DbType.Binary:
		case DbType.Guid:
		case DbType.Object:
		case DbType.Xml:
		case DbType.DateTimeOffset:
			return TypeCode.Object;
		case DbType.Byte:
			return TypeCode.Byte;
		case DbType.Boolean:
			return TypeCode.Boolean;
		case DbType.Currency:
		case DbType.Decimal:
		case DbType.VarNumeric:
			return TypeCode.Decimal;
		case DbType.Date:
		case DbType.DateTime:
		case DbType.Time:
		case DbType.DateTime2:
			return TypeCode.DateTime;
		case DbType.Double:
			return TypeCode.Double;
		case DbType.Int16:
			return TypeCode.Int16;
		case DbType.Int32:
			return TypeCode.Int32;
		case DbType.Int64:
			return TypeCode.Int64;
		case DbType.SByte:
			return TypeCode.SByte;
		case DbType.Single:
			return TypeCode.Single;
		case DbType.UInt16:
			return TypeCode.UInt16;
		case DbType.UInt32:
			return TypeCode.UInt32;
		case DbType.UInt64:
			return TypeCode.UInt64;
		default:
			return TypeCode.Object;
		}
	}

	public static DbType ConvertTypeCodeToDbType(TypeCode typeCode)
	{
		switch (typeCode)
		{
		case TypeCode.Empty:
		case TypeCode.Object:
		case TypeCode.DBNull:
			return DbType.Object;
		case TypeCode.Boolean:
			return DbType.Boolean;
		case TypeCode.Char:
			return DbType.StringFixedLength;
		case TypeCode.SByte:
			return DbType.SByte;
		case TypeCode.Byte:
			return DbType.Byte;
		case TypeCode.Int16:
			return DbType.Int16;
		case TypeCode.UInt16:
			return DbType.UInt16;
		case TypeCode.Int32:
			return DbType.Int32;
		case TypeCode.UInt32:
			return DbType.UInt32;
		case TypeCode.Int64:
			return DbType.Int64;
		case TypeCode.UInt64:
			return DbType.UInt64;
		case TypeCode.Single:
			return DbType.Single;
		case TypeCode.Double:
			return DbType.Double;
		case TypeCode.Decimal:
			return DbType.Decimal;
		case TypeCode.DateTime:
			return DbType.DateTime;
		case TypeCode.String:
			return DbType.String;
		default:
			return DbType.Object;
		}
	}

	public DbType GetDatabaseType()
	{
		if (DbType != DbType.Object)
		{
			throw new InvalidOperationException("The DbType property is already set to a value other than DbType.Object.");
		}
		return ConvertTypeCodeToDbType(Type);
	}

	protected virtual Parameter Clone()
	{
		return new Parameter(this);
	}

	protected void OnParameterChanged()
	{
		if (_owner != null)
		{
			_owner.CallOnParameterChanged();
		}
	}

	protected virtual void LoadViewState(object savedState)
	{
		ViewState.LoadViewState(savedState);
	}

	protected virtual object SaveViewState()
	{
		return ViewState.SaveViewState();
	}

	protected virtual void TrackViewState()
	{
		isTrackingViewState = true;
		if (viewState != null)
		{
			viewState.TrackViewState();
		}
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	void IStateManager.LoadViewState(object savedState)
	{
		LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	public override string ToString()
	{
		return Name;
	}

	protected internal virtual object Evaluate(HttpContext context, Control control)
	{
		return null;
	}

	internal void UpdateValue(HttpContext context, Control control)
	{
		object objA = ViewState["ParameterValue"];
		object obj = Evaluate(context, control);
		if (!object.Equals(objA, obj))
		{
			ViewState["ParameterValue"] = obj;
			OnParameterChanged();
		}
	}

	internal object GetValue(HttpContext context, Control control)
	{
		UpdateValue(context, control);
		object obj = ConvertValue(ViewState["ParameterValue"]);
		if (obj == null)
		{
			obj = ConvertValue(DefaultValue);
		}
		return obj;
	}

	internal object ConvertValue(object val)
	{
		if (val == null)
		{
			return null;
		}
		if (ConvertEmptyStringToNull && val.Equals(string.Empty))
		{
			return null;
		}
		if (Type == TypeCode.Empty)
		{
			return val;
		}
		return Convert.ChangeType(val, Type);
	}

	protected internal virtual void SetDirty()
	{
		ViewState.SetDirty(dirty: true);
	}

	internal void SetOwnerCollection(ParameterCollection own)
	{
		_owner = own;
	}
}
