using System;

namespace UnityEngine.Rendering;

public struct RasterState(CullMode cullingMode = CullMode.Back, int offsetUnits = 0, float offsetFactor = 0f, bool depthClip = true) : IEquatable<RasterState>
{
	public static readonly RasterState defaultValue = new RasterState(CullMode.Back, 0, 0f, true);

	private CullMode m_CullingMode = cullingMode;

	private int m_OffsetUnits = offsetUnits;

	private float m_OffsetFactor = offsetFactor;

	private byte m_DepthClip = Convert.ToByte(depthClip);

	private byte m_Padding1 = 0;

	private byte m_Padding2 = 0;

	private byte m_Padding3 = 0;

	public CullMode cullingMode
	{
		get
		{
			return m_CullingMode;
		}
		set
		{
			m_CullingMode = value;
		}
	}

	public bool depthClip
	{
		get
		{
			return Convert.ToBoolean(m_DepthClip);
		}
		set
		{
			m_DepthClip = Convert.ToByte(value);
		}
	}

	public int offsetUnits
	{
		get
		{
			return m_OffsetUnits;
		}
		set
		{
			m_OffsetUnits = value;
		}
	}

	public float offsetFactor
	{
		get
		{
			return m_OffsetFactor;
		}
		set
		{
			m_OffsetFactor = value;
		}
	}

	public bool Equals(RasterState other)
	{
		return m_CullingMode == other.m_CullingMode && m_OffsetUnits == other.m_OffsetUnits && m_OffsetFactor.Equals(other.m_OffsetFactor) && m_DepthClip == other.m_DepthClip;
	}

	public override bool Equals(object obj)
	{
		if (obj == null)
		{
			return false;
		}
		return obj is RasterState && Equals((RasterState)obj);
	}

	public override int GetHashCode()
	{
		int num = (int)m_CullingMode;
		num = (num * 397) ^ m_OffsetUnits;
		num = (num * 397) ^ m_OffsetFactor.GetHashCode();
		return (num * 397) ^ m_DepthClip.GetHashCode();
	}

	public static bool operator ==(RasterState left, RasterState right)
	{
		return left.Equals(right);
	}

	public static bool operator !=(RasterState left, RasterState right)
	{
		return !left.Equals(right);
	}
}
