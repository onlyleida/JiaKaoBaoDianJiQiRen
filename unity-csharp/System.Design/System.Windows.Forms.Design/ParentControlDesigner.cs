using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Windows.Forms.Design.Behavior;
using Unity;

namespace System.Windows.Forms.Design;

public class ParentControlDesigner : ControlDesigner
{
	private bool _defaultDrawGrid;

	private bool _defaultSnapToGrid;

	private Size _defaultGridSize;

	private bool _drawGrid;

	private bool _snapToGrid;

	private Size _gridSize;

	private Point _mouseDownPoint = Point.Empty;

	protected virtual Point DefaultControlLocation => new Point(0, 0);

	protected override bool EnableDragRect => true;

	protected virtual bool DrawGrid
	{
		get
		{
			return _drawGrid;
		}
		set
		{
			_drawGrid = value;
			if (!value)
			{
				SetValue(Component, "SnapToGrid", false);
			}
			PopulateGridProperties();
		}
	}

	private bool SnapToGrid
	{
		get
		{
			return _snapToGrid;
		}
		set
		{
			_snapToGrid = value;
			PopulateGridProperties();
		}
	}

	protected Size GridSize
	{
		get
		{
			return _gridSize;
		}
		set
		{
			_gridSize = value;
			PopulateGridProperties();
		}
	}

	[System.MonoTODO]
	protected virtual bool AllowControlLasso => false;

	[System.MonoTODO]
	protected virtual bool AllowGenericDragBox => false;

	[System.MonoTODO]
	protected internal virtual bool AllowSetChildIndexOnDrop => false;

	[System.MonoTODO]
	public override IList SnapLines => new object[0];

	[System.MonoTODO]
	protected ToolboxItem MouseDragTool => null;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		Control.AllowDrop = true;
		_defaultDrawGrid = true;
		_defaultSnapToGrid = true;
		_defaultGridSize = new Size(8, 8);
		if (Control.Parent != null)
		{
			ParentControlDesigner parentControlDesignerOf = GetParentControlDesignerOf(Control.Parent);
			if (parentControlDesignerOf != null)
			{
				_defaultDrawGrid = (bool)GetValue(parentControlDesignerOf.Component, "DrawGrid");
				_defaultSnapToGrid = (bool)GetValue(parentControlDesignerOf.Component, "SnapToGrid");
				_defaultGridSize = (Size)GetValue(parentControlDesignerOf.Component, "GridSize");
			}
		}
		else if (GetService(typeof(IDesignerOptionService)) is IDesignerOptionService designerOptionService)
		{
			object obj = null;
			obj = designerOptionService.GetOptionValue("WindowsFormsDesigner\\General", "DrawGrid");
			if (obj is bool)
			{
				_defaultDrawGrid = (bool)obj;
			}
			obj = designerOptionService.GetOptionValue("WindowsFormsDesigner\\General", "SnapToGrid");
			if (obj is bool)
			{
				_defaultSnapToGrid = (bool)obj;
			}
			obj = designerOptionService.GetOptionValue("WindowsFormsDesigner\\General", "GridSize");
			if (obj is Size)
			{
				_defaultGridSize = (Size)obj;
			}
		}
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentRemoving += OnComponentRemoving;
			componentChangeService.ComponentRemoved += OnComponentRemoved;
		}
		_drawGrid = _defaultDrawGrid;
		_snapToGrid = _defaultSnapToGrid;
		_gridSize = _defaultGridSize;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			EnableDragDrop(value: false);
			OnMouseDragEnd(cancel: true);
		}
		base.Dispose(disposing);
	}

	protected static void InvokeCreateTool(ParentControlDesigner toInvoke, ToolboxItem tool)
	{
		toInvoke?.CreateTool(tool);
	}

	protected void CreateTool(ToolboxItem tool)
	{
		CreateToolCore(tool, DefaultControlLocation.X, DefaultControlLocation.Y, 0, 0, hasLocation: true, hasSize: false);
	}

	protected void CreateTool(ToolboxItem tool, Point location)
	{
		CreateToolCore(tool, location.X, location.Y, 0, 0, hasLocation: true, hasSize: false);
	}

	protected void CreateTool(ToolboxItem tool, Rectangle bounds)
	{
		CreateToolCore(tool, bounds.X, bounds.Y, bounds.Width, bounds.Width, hasLocation: true, hasSize: true);
	}

	protected virtual IComponent[] CreateToolCore(ToolboxItem tool, int x, int y, int width, int height, bool hasLocation, bool hasSize)
	{
		if (tool == null)
		{
			throw new ArgumentNullException("tool");
		}
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		DesignerTransaction designerTransaction = designerHost.CreateTransaction("Create components in tool '" + tool.DisplayName + "'");
		IComponent[] array = tool.CreateComponents(designerHost);
		IComponent[] array2 = array;
		foreach (IComponent component in array2)
		{
			if (!(designerHost.GetDesigner(component) is ControlDesigner controlDesigner))
			{
				continue;
			}
			if (!CanParent(controlDesigner))
			{
				designerHost.DestroyComponent(component);
			}
			else if (component is Control component2)
			{
				Control.SuspendLayout();
				TypeDescriptor.GetProperties(component2)["Parent"].SetValue(component2, Control);
				Control.SuspendLayout();
				if (hasLocation)
				{
					SetValue(component, "Location", SnapPointToGrid(new Point(x, y)));
				}
				else
				{
					SetValue(component, "Location", SnapPointToGrid(DefaultControlLocation));
				}
				if (hasSize)
				{
					SetValue(component, "Size", new Size(width, height));
				}
				Control.Refresh();
			}
		}
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SetSelectedComponents(array, SelectionTypes.Replace);
		}
		designerTransaction.Commit();
		return array;
	}

	public virtual bool CanParent(Control control)
	{
		if (control != null)
		{
			return !control.Contains(Control);
		}
		return false;
	}

	public virtual bool CanParent(ControlDesigner controlDesigner)
	{
		return CanParent(controlDesigner.Control);
	}

	protected override void OnDragDrop(DragEventArgs de)
	{
		if (GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService)
		{
			Point point = SnapPointToGrid(Control.PointToClient(new Point(de.X, de.Y)));
			iUISelectionService.DragDrop(cancel: false, Control, point.X, point.Y);
		}
	}

	protected override void OnDragEnter(DragEventArgs de)
	{
		Control.Refresh();
	}

	protected override void OnDragLeave(EventArgs e)
	{
		Control.Refresh();
	}

	protected override void OnDragOver(DragEventArgs de)
	{
		if (GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService)
		{
			Point point = SnapPointToGrid(Control.PointToClient(new Point(de.X, de.Y)));
			iUISelectionService.DragOver(Control, point.X, point.Y);
		}
		de.Effect = DragDropEffects.Move;
	}

	private void OnComponentRemoving(object sender, ComponentEventArgs args)
	{
		IComponentChangeService componentChangeService = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		if (args.Component is Control control && control.Parent == Control)
		{
			componentChangeService?.OnComponentChanging(args.Component, TypeDescriptor.GetProperties(args.Component)["Parent"]);
		}
	}

	private void OnComponentRemoved(object sender, ComponentEventArgs args)
	{
		IComponentChangeService componentChangeService = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		if (args.Component is Control control && control.Parent == Control && componentChangeService != null)
		{
			control.Parent = null;
			componentChangeService.OnComponentChanged(args.Component, TypeDescriptor.GetProperties(args.Component)["Parent"], Control, null);
		}
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		properties["DrawGrid"] = TypeDescriptor.CreateProperty(typeof(ParentControlDesigner), "DrawGrid", typeof(bool), BrowsableAttribute.Yes, DesignOnlyAttribute.Yes, new DescriptionAttribute("Indicates whether or not to draw the positioning grid."), CategoryAttribute.Design);
		properties["SnapToGrid"] = TypeDescriptor.CreateProperty(typeof(ParentControlDesigner), "SnapToGrid", typeof(bool), BrowsableAttribute.Yes, DesignOnlyAttribute.Yes, new DescriptionAttribute("Determines if controls should snap to the positioning grid."), CategoryAttribute.Design);
		properties["GridSize"] = TypeDescriptor.CreateProperty(typeof(ParentControlDesigner), "GridSize", typeof(Size), BrowsableAttribute.Yes, DesignOnlyAttribute.Yes, new DescriptionAttribute("Determines the size of the positioning grid."), CategoryAttribute.Design);
	}

	private void PopulateGridProperties()
	{
		Control.Invalidate(invalidateChildren: false);
		if (Control == null)
		{
			return;
		}
		ParentControlDesigner parentControlDesigner = null;
		foreach (Control control in Control.Controls)
		{
			GetParentControlDesignerOf(control)?.OnParentGridPropertiesChanged(this);
		}
	}

	private void OnParentGridPropertiesChanged(ParentControlDesigner parentDesigner)
	{
		SetValue(Component, "DrawGrid", (bool)GetValue(parentDesigner.Component, "DrawGrid"));
		SetValue(Component, "SnapToGrid", (bool)GetValue(parentDesigner.Component, "SnapToGrid"));
		SetValue(Component, "GridSize", (Size)GetValue(parentDesigner.Component, "GridSize"));
		_defaultDrawGrid = (bool)GetValue(parentDesigner.Component, "DrawGrid");
		_defaultSnapToGrid = (bool)GetValue(parentDesigner.Component, "SnapToGrid");
		_defaultGridSize = (Size)GetValue(parentDesigner.Component, "GridSize");
		PopulateGridProperties();
	}

	private ParentControlDesigner GetParentControlDesignerOf(Control control)
	{
		if (control != null && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			ParentControlDesigner parentControlDesigner = null;
			if (designerHost.GetDesigner(Control.Parent) is ParentControlDesigner result)
			{
				return result;
			}
		}
		return null;
	}

	private bool ShouldSerializeDrawGrid()
	{
		return DrawGrid != _defaultDrawGrid;
	}

	private void ResetDrawGrid()
	{
		DrawGrid = _defaultDrawGrid;
	}

	private bool ShouldSerializeSnapToGrid()
	{
		return _drawGrid != _defaultDrawGrid;
	}

	private void ResetSnapToGrid()
	{
		SnapToGrid = _defaultSnapToGrid;
	}

	private bool ShouldSerializeGridSize()
	{
		return GridSize != _defaultGridSize;
	}

	private void ResetGridSize()
	{
		GridSize = _defaultGridSize;
	}

	protected override void OnMouseDragBegin(int x, int y)
	{
		if (GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService)
		{
			Point point = new Point(x, y);
			IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
			if (MouseButtonDown == MouseButtons.Middle && designerHost != null && designerHost.RootComponent != Control)
			{
				point = Control.Parent.PointToClient(Control.PointToScreen(new Point(x, y)));
				Control.AllowDrop = false;
				iUISelectionService.DragBegin();
			}
			else
			{
				iUISelectionService.MouseDragBegin(Control, point.X, point.Y);
			}
		}
	}

	protected override void OnMouseDragMove(int x, int y)
	{
		if (GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService)
		{
			Point point = new Point(x, y);
			if (!iUISelectionService.SelectionInProgress)
			{
				point = SnapPointToGrid(new Point(x, y));
			}
			iUISelectionService.MouseDragMove(point.X, point.Y);
		}
	}

	protected override void OnMouseDragEnd(bool cancel)
	{
		if (!(GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService))
		{
			return;
		}
		IToolboxService toolboxService = GetService(typeof(IToolboxService)) as IToolboxService;
		if (!cancel && toolboxService != null && toolboxService.GetSelectedToolboxItem() != null)
		{
			if (iUISelectionService.SelectionInProgress)
			{
				bool hasSize = iUISelectionService.SelectionBounds.Width > 0 && iUISelectionService.SelectionBounds.Height > 0;
				CreateToolCore(toolboxService.GetSelectedToolboxItem(), iUISelectionService.SelectionBounds.X, iUISelectionService.SelectionBounds.Y, iUISelectionService.SelectionBounds.Width, iUISelectionService.SelectionBounds.Height, hasLocation: true, hasSize);
				toolboxService.SelectedToolboxItemUsed();
				cancel = true;
			}
			else if (!iUISelectionService.SelectionInProgress && !iUISelectionService.ResizeInProgress && !iUISelectionService.DragDropInProgress)
			{
				CreateTool(toolboxService.GetSelectedToolboxItem(), _mouseDownPoint);
				toolboxService.SelectedToolboxItemUsed();
				cancel = true;
			}
		}
		if (iUISelectionService.SelectionInProgress || iUISelectionService.ResizeInProgress)
		{
			iUISelectionService.MouseDragEnd(cancel);
		}
	}

	protected override void OnDragComplete(DragEventArgs de)
	{
		base.OnDragComplete(de);
	}

	internal override void OnMouseDown(int x, int y)
	{
		_mouseDownPoint.X = x;
		_mouseDownPoint.Y = y;
		base.OnMouseDown(x, y);
	}

	internal override void OnMouseUp()
	{
		base.OnMouseUp();
		if (!Control.AllowDrop)
		{
			Control.AllowDrop = true;
		}
		_mouseDownPoint = Point.Empty;
	}

	internal override void OnMouseMove(int x, int y)
	{
		if (GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService)
		{
			iUISelectionService.SetCursor(x, y);
		}
		base.OnMouseMove(x, y);
	}

	private Point SnapPointToGrid(Point location)
	{
		Rectangle bounds = Control.Bounds;
		Size size = (Size)GetValue(Component, "GridSize");
		if ((bool)GetValue(Component, "SnapToGrid"))
		{
			int num = location.X + (size.Width - location.X % size.Width);
			if (num > bounds.Width)
			{
				num = bounds.Width - size.Width;
			}
			location.X = num;
			int num2 = location.Y + (size.Height - location.Y % size.Height);
			if (num2 > bounds.Height)
			{
				num2 = bounds.Height - size.Height;
			}
			location.Y = num2;
		}
		return location;
	}

	protected override void OnSetCursor()
	{
		if (Control != null)
		{
			if (GetService(typeof(IToolboxService)) is IToolboxService toolboxService)
			{
				toolboxService.SetCursor();
			}
			else
			{
				base.OnSetCursor();
			}
		}
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		base.OnPaintAdornments(pe);
		bool flag;
		try
		{
			flag = (bool)GetValue(Component, "DrawGrid");
		}
		catch
		{
			flag = DrawGrid;
		}
		Size pixelsBetweenDots;
		try
		{
			pixelsBetweenDots = (Size)GetValue(Component, "GridSize");
		}
		catch
		{
			pixelsBetweenDots = GridSize;
		}
		if (flag)
		{
			GraphicsState gstate = pe.Graphics.Save();
			pe.Graphics.TranslateTransform(Control.ClientRectangle.X, Control.ClientRectangle.Y);
			ControlPaint.DrawGrid(pe.Graphics, Control.ClientRectangle, pixelsBetweenDots, Control.BackColor);
			pe.Graphics.Restore(gstate);
		}
		if (GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService)
		{
			iUISelectionService.PaintAdornments(Control, pe.Graphics);
		}
	}

	protected Control GetControl(object component)
	{
		if (component is IComponent { Site: not null } component2 && component2.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.GetDesigner(component2) is ControlDesigner controlDesigner)
		{
			return controlDesigner.Control;
		}
		return null;
	}

	[System.MonoTODO]
	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		base.InitializeNewComponent(defaultValues);
	}

	[System.MonoTODO]
	protected void AddPaddingSnapLines(ref ArrayList snapLines)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual Control GetParentForComponent(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override ControlBodyGlyph GetControlGlyph(GlyphSelectionType selectionType)
	{
		return base.GetControlGlyph(selectionType);
	}

	[System.MonoTODO]
	public override GlyphCollection GetGlyphs(GlyphSelectionType selectionType)
	{
		return base.GetGlyphs(selectionType);
	}

	[System.MonoTODO]
	protected Rectangle GetUpdatedRect(Rectangle originalRect, Rectangle dragRect, bool updateSize)
	{
		throw new NotImplementedException();
	}

	protected internal virtual bool CanAddComponent(IComponent component)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
