using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3ShuangHuang : K3Data
{
	public Gps line1Start;

	public Gps line1End;

	public Gps line2Start;

	public Gps line2End;

	public List<Gps> curveList1;

	public List<Gps> curveList2;

	public bool isDashed;

	public bool isCurve;

	public int dashLength = 40;

	public int dashInterval = 60;

	public int lineColor;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps> { line1Start, line1End, line2Start, line2End };
		if (curveList1 != null)
		{
			foreach (Gps item in curveList1)
			{
				list.Add(item);
			}
		}
		if (curveList2 != null)
		{
			foreach (Gps item2 in curveList2)
			{
				list.Add(item2);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
