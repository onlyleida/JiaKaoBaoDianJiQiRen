using System;
using System.ComponentModel;

namespace UnityEngine;

public enum EventType
{
	MouseDown = 0,
	MouseUp = 1,
	MouseMove = 2,
	MouseDrag = 3,
	KeyDown = 4,
	KeyUp = 5,
	ScrollWheel = 6,
	Repaint = 7,
	Layout = 8,
	DragUpdated = 9,
	DragPerform = 10,
	DragExited = 15,
	Ignore = 11,
	Used = 12,
	ValidateCommand = 13,
	ExecuteCommand = 14,
	ContextClick = 16,
	MouseEnterWindow = 20,
	MouseLeaveWindow = 21,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use MouseDown instead (UnityUpgradable) -> MouseDown", true)]
	mouseDown = MouseDown,
	[Obsolete("Use MouseUp instead (UnityUpgradable) -> MouseUp", true)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	mouseUp = MouseUp,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use MouseMove instead (UnityUpgradable) -> MouseMove", true)]
	mouseMove = MouseMove,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use MouseDrag instead (UnityUpgradable) -> MouseDrag", true)]
	mouseDrag = MouseDrag,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use KeyDown instead (UnityUpgradable) -> KeyDown", true)]
	keyDown = KeyDown,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use KeyUp instead (UnityUpgradable) -> KeyUp", true)]
	keyUp = KeyUp,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use ScrollWheel instead (UnityUpgradable) -> ScrollWheel", true)]
	scrollWheel = ScrollWheel,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use Repaint instead (UnityUpgradable) -> Repaint", true)]
	repaint = Repaint,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use Layout instead (UnityUpgradable) -> Layout", true)]
	layout = Layout,
	[Obsolete("Use DragUpdated instead (UnityUpgradable) -> DragUpdated", true)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	dragUpdated = DragUpdated,
	[Obsolete("Use DragPerform instead (UnityUpgradable) -> DragPerform", true)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	dragPerform = DragPerform,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use Ignore instead (UnityUpgradable) -> Ignore", true)]
	ignore = Ignore,
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("Use Used instead (UnityUpgradable) -> Used", true)]
	used = Used
}
