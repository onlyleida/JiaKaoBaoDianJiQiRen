using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3SingleLine : K3Data
{
	public Gps start;

	public Gps end;

	public List<Gps> lineList;

	public bool isDashed;

	public bool isCurve;

	public int dashLength = 40;

	public int dashInterval = 60;

	public int lineColor;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps> { start, end };
		if (lineList != null)
		{
			foreach (Gps line in lineList)
			{
				list.Add(line);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
