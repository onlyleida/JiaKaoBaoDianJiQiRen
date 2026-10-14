using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2YuanHuan : K2Data
{
	public List<Gps> innerPoints;

	public List<Gps> outPoints;

	public int innerLineType;

	public int outLineType;

	public bool isClock;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps>();
		if (innerPoints != null)
		{
			foreach (Gps innerPoint in innerPoints)
			{
				list.Add(innerPoint);
			}
		}
		if (outPoints != null)
		{
			foreach (Gps outPoint in outPoints)
			{
				list.Add(outPoint);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
