using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2ChunHuaLu : B2Data
{
	public List<Gps> rightPoints;

	public List<Gps> leftPoints;

	public List<Gps> middlePoints;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps>();
		if (rightPoints != null)
		{
			foreach (Gps rightPoint in rightPoints)
			{
				list.Add(rightPoint);
			}
		}
		if (leftPoints != null)
		{
			foreach (Gps leftPoint in leftPoints)
			{
				list.Add(leftPoint);
			}
		}
		if (middlePoints != null)
		{
			foreach (Gps middlePoint in middlePoints)
			{
				list.Add(middlePoint);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
