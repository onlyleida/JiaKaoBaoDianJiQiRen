using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2BaZi : K2Data
{
	public List<Gps> leftInnerPoints;

	public List<Gps> leftOutPoints;

	public List<Gps> rightInnerPoints;

	public List<Gps> rightOutPoints;

	public int innerLineType;

	public int outLineType;

	public bool isClock;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps>();
		if (leftInnerPoints != null)
		{
			foreach (Gps leftInnerPoint in leftInnerPoints)
			{
				list.Add(leftInnerPoint);
			}
		}
		if (leftOutPoints != null)
		{
			foreach (Gps leftOutPoint in leftOutPoints)
			{
				list.Add(leftOutPoint);
			}
		}
		if (rightInnerPoints != null)
		{
			foreach (Gps rightInnerPoint in rightInnerPoints)
			{
				list.Add(rightInnerPoint);
			}
		}
		if (rightOutPoints != null)
		{
			foreach (Gps rightOutPoint in rightOutPoints)
			{
				list.Add(rightOutPoint);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
