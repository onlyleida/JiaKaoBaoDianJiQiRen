using System.ComponentModel;
using System.Runtime.InteropServices;

namespace System.Drawing.Drawing2D;

public sealed class LinearGradientBrush : Brush
{
	private RectangleF rectangle;

	public Blend Blend
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetLineBlendCount(NativeBrush, out var count));
			float[] array = new float[count];
			float[] positions = new float[count];
			GDIPlus.CheckStatus(GDIPlus.GdipGetLineBlend(NativeBrush, array, positions, count));
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
			GDIPlus.CheckStatus(GDIPlus.GdipSetLineBlend(NativeBrush, factors, positions, num));
		}
	}

	[MonoTODO("The GammaCorrection value is ignored when using libgdiplus.")]
	public bool GammaCorrection
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetLineGammaCorrection(NativeBrush, out var useGammaCorrection));
			return useGammaCorrection;
		}
		set
		{
			GDIPlus.CheckStatus(GDIPlus.GdipSetLineGammaCorrection(NativeBrush, value));
		}
	}

	public ColorBlend InterpolationColors
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetLinePresetBlendCount(NativeBrush, out var count));
			int[] array = new int[count];
			float[] positions = new float[count];
			GDIPlus.CheckStatus(GDIPlus.GdipGetLinePresetBlend(NativeBrush, array, positions, count));
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
			if (value == null)
			{
				throw new ArgumentException("InterpolationColors is null");
			}
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
			GDIPlus.CheckStatus(GDIPlus.GdipSetLinePresetBlend(NativeBrush, array, positions, num));
		}
	}

	public Color[] LinearColors
	{
		get
		{
			int[] array = new int[2];
			GDIPlus.CheckStatus(GDIPlus.GdipGetLineColors(NativeBrush, array));
			return new Color[2]
			{
				Color.FromArgb(array[0]),
				Color.FromArgb(array[1])
			};
		}
		set
		{
			GDIPlus.CheckStatus(GDIPlus.GdipSetLineColors(NativeBrush, value[0].ToArgb(), value[1].ToArgb()));
		}
	}

	public RectangleF Rectangle => rectangle;

	public Matrix Transform
	{
		get
		{
			Matrix matrix = new Matrix();
			GDIPlus.CheckStatus(GDIPlus.GdipGetLineTransform(NativeBrush, matrix.nativeMatrix));
			return matrix;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("Transform");
			}
			GDIPlus.CheckStatus(GDIPlus.GdipSetLineTransform(NativeBrush, value.nativeMatrix));
		}
	}

	public WrapMode WrapMode
	{
		get
		{
			GDIPlus.CheckStatus(GDIPlus.GdipGetLineWrapMode(NativeBrush, out var wrapMode));
			return wrapMode;
		}
		set
		{
			if (value < WrapMode.Tile || value > WrapMode.Clamp)
			{
				throw new InvalidEnumArgumentException("WrapMode");
			}
			GDIPlus.CheckStatus(GDIPlus.GdipSetLineWrapMode(NativeBrush, value));
		}
	}

	internal LinearGradientBrush(IntPtr native)
	{
		Status status = GDIPlus.GdipGetLineRect(native, out rectangle);
		SetNativeBrush(native);
		GDIPlus.CheckStatus(status);
	}

	public LinearGradientBrush(Point point1, Point point2, Color color1, Color color2)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipCreateLineBrushI(ref point1, ref point2, color1.ToArgb(), color2.ToArgb(), WrapMode.Tile, out var brush));
		SetNativeBrush(brush);
		GDIPlus.CheckStatus(GDIPlus.GdipGetLineRect(brush, out rectangle));
	}

	public LinearGradientBrush(PointF point1, PointF point2, Color color1, Color color2)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipCreateLineBrush(ref point1, ref point2, color1.ToArgb(), color2.ToArgb(), WrapMode.Tile, out var brush));
		SetNativeBrush(brush);
		GDIPlus.CheckStatus(GDIPlus.GdipGetLineRect(brush, out rectangle));
	}

	public LinearGradientBrush(Rectangle rect, Color color1, Color color2, LinearGradientMode linearGradientMode)
	{
		if (linearGradientMode < LinearGradientMode.Horizontal || linearGradientMode > LinearGradientMode.BackwardDiagonal)
		{
			throw new InvalidEnumArgumentException("linearGradientMode", (int)linearGradientMode, typeof(LinearGradientMode));
		}
		if (rect.Width == 0 || rect.Height == 0)
		{
			throw new ArgumentException($"Rectangle '{rect.ToString()}' cannot have a width or height equal to 0.");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipCreateLineBrushFromRectI(ref rect, color1.ToArgb(), color2.ToArgb(), linearGradientMode, WrapMode.Tile, out var brush));
		SetNativeBrush(brush);
		rectangle = rect;
	}

	public LinearGradientBrush(Rectangle rect, Color color1, Color color2, float angle)
		: this(rect, color1, color2, angle, isAngleScaleable: false)
	{
	}

	public LinearGradientBrush(RectangleF rect, Color color1, Color color2, LinearGradientMode linearGradientMode)
	{
		if (linearGradientMode < LinearGradientMode.Horizontal || linearGradientMode > LinearGradientMode.BackwardDiagonal)
		{
			throw new InvalidEnumArgumentException("linearGradientMode", (int)linearGradientMode, typeof(LinearGradientMode));
		}
		if ((double)rect.Width == 0.0 || (double)rect.Height == 0.0)
		{
			throw new ArgumentException($"Rectangle '{rect.ToString()}' cannot have a width or height equal to 0.");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipCreateLineBrushFromRect(ref rect, color1.ToArgb(), color2.ToArgb(), linearGradientMode, WrapMode.Tile, out var brush));
		SetNativeBrush(brush);
		rectangle = rect;
	}

	public LinearGradientBrush(RectangleF rect, Color color1, Color color2, float angle)
		: this(rect, color1, color2, angle, isAngleScaleable: false)
	{
	}

	public LinearGradientBrush(Rectangle rect, Color color1, Color color2, float angle, bool isAngleScaleable)
	{
		if (rect.Width == 0 || rect.Height == 0)
		{
			throw new ArgumentException($"Rectangle '{rect.ToString()}' cannot have a width or height equal to 0.");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipCreateLineBrushFromRectWithAngleI(ref rect, color1.ToArgb(), color2.ToArgb(), angle, isAngleScaleable, WrapMode.Tile, out var brush));
		SetNativeBrush(brush);
		rectangle = rect;
	}

	public LinearGradientBrush(RectangleF rect, Color color1, Color color2, float angle, bool isAngleScaleable)
	{
		if (rect.Width == 0f || rect.Height == 0f)
		{
			throw new ArgumentException($"Rectangle '{rect.ToString()}' cannot have a width or height equal to 0.");
		}
		GDIPlus.CheckStatus(GDIPlus.GdipCreateLineBrushFromRectWithAngle(ref rect, color1.ToArgb(), color2.ToArgb(), angle, isAngleScaleable, WrapMode.Tile, out var brush));
		SetNativeBrush(brush);
		rectangle = rect;
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
		GDIPlus.CheckStatus(GDIPlus.GdipMultiplyLineTransform(NativeBrush, matrix.nativeMatrix, order));
	}

	public void ResetTransform()
	{
		GDIPlus.CheckStatus(GDIPlus.GdipResetLineTransform(NativeBrush));
	}

	public void RotateTransform(float angle)
	{
		RotateTransform(angle, MatrixOrder.Prepend);
	}

	public void RotateTransform(float angle, MatrixOrder order)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipRotateLineTransform(NativeBrush, angle, order));
	}

	public void ScaleTransform(float sx, float sy)
	{
		ScaleTransform(sx, sy, MatrixOrder.Prepend);
	}

	public void ScaleTransform(float sx, float sy, MatrixOrder order)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipScaleLineTransform(NativeBrush, sx, sy, order));
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
		GDIPlus.CheckStatus(GDIPlus.GdipSetLineLinearBlend(NativeBrush, focus, scale));
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
		GDIPlus.CheckStatus(GDIPlus.GdipSetLineSigmaBlend(NativeBrush, focus, scale));
	}

	public void TranslateTransform(float dx, float dy)
	{
		TranslateTransform(dx, dy, MatrixOrder.Prepend);
	}

	public void TranslateTransform(float dx, float dy, MatrixOrder order)
	{
		GDIPlus.CheckStatus(GDIPlus.GdipTranslateLineTransform(NativeBrush, dx, dy, order));
	}

	public override object Clone()
	{
		GDIPlus.CheckStatus((Status)GDIPlus.GdipCloneBrush(new HandleRef(this, NativeBrush), out var clonedBrush));
		return new LinearGradientBrush(clonedBrush);
	}
}
