using System.Collections.Generic;
using UnityEngine;

public class DefaultConverter : Converter
{
	private static ProjectConverter converter;

	private static Pos zero;

	private static Gps zeroGps;

	public Gps getZeroGps()
	{
		return zeroGps;
	}

	public DefaultConverter(Gps gps)
	{
		zeroGps = new Gps(gps);
		converter = ProjectConverter.createWgs84(gps.longitude);
		zero = converter.gpsToGauss(gps);
	}

	public Pos gpsToGauss(Gps gps)
	{
		return converter.gpsToGauss(gps).translate(0.0 - zero.x, 0.0 - zero.y);
	}

	public Gps gaussToGps(Pos pos)
	{
		return converter.gaussToGps(new Pos(pos).translate(zero));
	}

	public Vector3 gpsToVector3(Gps gps)
	{
		if (gps == null)
		{
			return Vector3.zero;
		}
		Pos pos = converter.gpsToGauss(gps).translate(0.0 - zero.x, 0.0 - zero.y);
		return Java2UnityVec3(pos);
	}

	public Gps Vector3ToGps(Vector3 vec)
	{
		Pos pos = Unity2JavaVec3(vec);
		return converter.gaussToGps(new Pos(pos).translate(zero));
	}

	public List<Vector3> gpsToVector3(List<Gps> gps)
	{
		List<Vector3> list = new List<Vector3>();
		foreach (Gps gp in gps)
		{
			Vector3 item = gpsToVector3(gp);
			list.Add(item);
		}
		return list;
	}

	public List<Gps> Vector3ToGps(List<Vector3> vec)
	{
		List<Gps> list = new List<Gps>();
		foreach (Vector3 item2 in vec)
		{
			Pos pos = Unity2JavaVec3(item2);
			Gps item = converter.gaussToGps(new Pos(pos).translate(zero));
			list.Add(item);
		}
		return list;
	}

	public static Vector3 Java2UnityVec3(Pos pos)
	{
		Vector3 result = Vector3.zero;
		result.y = (float)pos.z / 100f;
		result.x = (float)pos.y / 100f;
		result.z = (float)pos.x / 100f;
		return result;
	}

	public static Pos Unity2JavaVec3(Vector3 unityVec)
	{
		Pos pos = new Pos();
		pos.z = unityVec.y * 100f;
		pos.y = unityVec.x * 100f;
		pos.x = unityVec.z * 100f;
		return pos;
	}

	public static float GetHeight()
	{
		return (float)(zero.z / 100.0);
	}
}
