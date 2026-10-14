using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3Common : K3Data
{
	public List<Gps> points;

	public List<Gps> points2;

	public int width = 15;

	public int width2 = 15;

	public int interval;

	public int length;

	public int color;

	public int shape;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps>();
		if (points != null)
		{
			foreach (Gps point in points)
			{
				list.Add(point);
			}
		}
		if (points2 != null)
		{
			foreach (Gps point2 in points)
			{
				list.Add(point2);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
