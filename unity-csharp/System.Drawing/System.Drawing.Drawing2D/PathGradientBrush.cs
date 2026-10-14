using System.ComponentModel;
using System.Runtime.InteropServices;

namespace System.Drawing.Drawing2D;

[MonoTODO("libgdiplus/cairo doesn't support path gradients - unless it can be mapped to a radial gradient")]
public sealed class PathGradientBrush : Brush
{
	public Blend Blend
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientBlendCount(NativeBrush, out var count));
			float[] array = new float[count];
			float[] positions = new float[count];
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientBlend(NativeBrush, array, positions, count));
			return new Blend
			{
				Factors = array,
				Positions = positions
			};
		}
		set
		{
			float[] factors = value.Factors;
			float[] positions = value.Positions;
			int num = factors.Length;
			if (num == 0 || positions.Length == 0)
			{
				throw new ArgumentException("Invalid Blend object. It should have at least 2 elements in each of the factors and positions arrays.");
			}
			if (num != positions.Length)
			{
				throw new ArgumentException("Invalid Blend object. It should contain the same number of factors and positions values.");
			}
			if (positions[0] != 0f)
			{
				throw new ArgumentException("Invalid Blend object. The positions array must have 0.0 as its first element.");
			}
			if (positions[num - 1] != 1f)
			{
				throw new ArgumentException("Invalid Blend object. The positions array must have 1.0 as its last element.");
			}
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientBlend(NativeBrush, factors, positions, num));
		}
	}

	public Color CenterColor
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientCenterColor(NativeBrush, out var color));
			return Color.FromArgb(color);
		}
		set
		{
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientCenterColor(NativeBrush, value.ToArgb()));
		}
	}

	public PointF CenterPoint
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientCenterPoint(NativeBrush, out var point));
			return point;
		}
		set
		{
			PointF point = value;
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientCenterPoint(NativeBrush, ref point));
		}
	}

	public PointF FocusScales
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientFocusScales(NativeBrush, out var xScale, out var yScale));
			return new PointF(xScale, yScale);
		}
		set
		{
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientFocusScales(NativeBrush, value.X, value.Y));
		}
	}

	public ColorBlend InterpolationColors
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientPresetBlendCount(NativeBrush, out var count));
			if (count < 1)
			{
				count = 1;
			}
			int[] array = new int[count];
			float[] positions = new float[count];
			if (count > 1)
			{
				GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientPresetBlend(NativeBrush, array, positions, count));
			}
			ColorBlend colorBlend = new ColorBlend();
			Color[] array2 = new Color[count];
			for (int i = 0; i < count; i++)
			{
				array2[i] = Color.FromArgb(array[i]);
			}
			colorBlend.Colors = array2;
			colorBlend.Positions = positions;
			return colorBlend;
		}
		set
		{
			Color[] colors = value.Colors;
			float[] positions = value.Positions;
			int num = colors.Length;
			if (num == 0 || positions.Length == 0)
			{
				throw new ArgumentException("Invalid ColorBlend object. It should have at least 2 elements in each of the colors and positions arrays.");
			}
			if (num != positions.Length)
			{
				throw new ArgumentException("Invalid ColorBlend object. It should contain the same number of positions and color values.");
			}
			if (positions[0] != 0f)
			{
				throw new ArgumentException("Invalid ColorBlend object. The positions array must have 0.0 as its first element.");
			}
			if (positions[num - 1] != 1f)
			{
				throw new ArgumentException("Invalid ColorBlend object. The positions array must have 1.0 as its last element.");
			}
			int[] array = new int[colors.Length];
			for (int i = 0; i < colors.Length; i++)
			{
				array[i] = colors[i].ToArgb();
			}
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientPresetBlend(NativeBrush, array, positions, num));
		}
	}

	public RectangleF Rectangle
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientRect(NativeBrush, out var rect));
			return rect;
		}
	}

	public Color[] SurroundColors
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientSurroundColorCount(NativeBrush, out var count));
			int[] array = new int[count];
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientSurroundColorsWithCount(NativeBrush, array, ref count));
			Color[] array2 = new Color[count];
			for (int i = 0; i < count; i++)
			{
				array2[i] = Color.FromArgb(array[i]);
			}
			return array2;
		}
		set
		{
			int count = value.Length;
			int[] array = new int[count];
			for (int i = 0; i < count; i++)
			{
				array[i] = value[i].ToArgb();
			}
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientSurroundColorsWithCount(NativeBrush, array, ref count));
		}
	}

	public Matrix Transform
	{
		get
		{
			Matrix matrix = new Matrix();
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientTransform(NativeBrush, matrix.nativeMatrix));
			return matrix;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("Transform");
			}
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientTransform(NativeBrush, value.nativeMatrix));
		}
	}

	public WrapMode WrapMode
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetPathGradientWrapMode(NativeBrush, out var wrapMode));
			return wrapMode;
		}
		set
		{
			if (value < WrapMode.Tile || value > WrapMode.Clamp)
			{
				throw new InvalidEnumArgumentException("WrapMode");
			}
			GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientWrapMode(NativeBrush, value));
		}
	}

	internal PathGradientBrush(IntPtr native)
	{
		SetNativeBrush(native);
	}

	public PathGradientBrush(GraphicsPath path)
	{
		if (path == null)
		{
			throw new ArgumentNullException("path");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipCreatePathGradientFromPath(path.nativePath, out var brush));
		SetNativeBrush(brush);
	}

	public PathGradientBrush(Point[] points)
		: this(points, WrapMode.Clamp)
	{
	}

	public PathGradientBrush(PointF[] points)
		: this(points, WrapMode.Clamp)
	{
	}

	public PathGradientBrush(Point[] points, WrapMode wrapMode)
	{
		if (points == null)
		{
			throw new ArgumentNullException("points");
		}
		if (wrapMode < WrapMode.Tile || wrapMode > WrapMode.Clamp)
		{
			throw new InvalidEnumArgumentException("WrapMode");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipCreatePathGradientI(points, points.Length, wrapMode, out var brush));
		SetNativeBrush(brush);
	}

	public PathGradientBrush(PointF[] points, WrapMode wrapMode)
	{
		if (points == null)
		{
			throw new ArgumentNullException("points");
		}
		if (wrapMode < WrapMode.Tile || wrapMode > WrapMode.Clamp)
		{
			throw new InvalidEnumArgumentException("WrapMode");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipCreatePathGradient(points, points.Length, wrapMode, out var brush));
		SetNativeBrush(brush);
	}

	public void MultiplyTransform(Matrix matrix)
	{
		MultiplyTransform(matrix, MatrixOrder.Prepend);
	}

	public void MultiplyTransform(Matrix matrix, MatrixOrder order)
	{
		if (matrix == null)
		{
			throw new ArgumentNullException("matrix");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipMultiplyPathGradientTransform(NativeBrush, matrix.nativeMatrix, order));
	}

	public void ResetTransform()
	{
		GDIPlus.CheckStatus(GDIPlus.GdipResetPathGradientTransform(NativeBrush));
	}

	public void RotateTransform(float angle)
	{
		RotateTransform(angle, MatrixOrder.Prepend);
	}

	public void RotateTransform(float angle, MatrixOrder order)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipRotatePathGradientTransform(NativeBrush, angle, order));
	}

	public void ScaleTransform(float sx, float sy)
	{
		ScaleTransform(sx, sy, MatrixOrder.Prepend);
	}

	public void ScaleTransform(float sx, float sy, MatrixOrder order)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipScalePathGradientTransform(NativeBrush, sx, sy, order));
	}

	public void SetBlendTriangularShape(float focus)
	{
		SetBlendTriangularShape(focus, 1f);
	}

	public void SetBlendTriangularShape(float focus, float scale)
	{
		if (focus < 0f || focus > 1f || scale < 0f || scale > 1f)
		{
			throw new ArgumentException("Invalid parameter passed.");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientLinearBlend(NativeBrush, focus, scale));
	}

	public void SetSigmaBellShape(float focus)
	{
		SetSigmaBellShape(focus, 1f);
	}

	public void SetSigmaBellShape(float focus, float scale)
	{
		if (focus < 0f || focus > 1f || scale < 0f || scale > 1f)
		{
			throw new ArgumentException("Invalid parameter passed.");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipSetPathGradientSigmaBlend(NativeBrush, focus, scale));
	}

	public void TranslateTransform(float dx, float dy)
	{
		TranslateTransform(dx, dy, MatrixOrder.Prepend);
	}

	public void TranslateTransform(float dx, float dy, MatrixOrder order)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipTranslatePathGradientTransform(NativeBrush, dx, dy, order));
	}

	public override object Clone()
	{
		GDIPlus.CheckStatus((Status)GDIPlus.GdipCloneBrush(new HandleRef(this, NativeBrush), out var clonedBrush));
		return new PathGradientBrush(clonedBrush);
	}
}
