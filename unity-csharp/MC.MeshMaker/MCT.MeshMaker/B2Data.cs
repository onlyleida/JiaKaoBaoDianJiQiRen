using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2Data
{
	public int stepId;

	public List<DTxCarData> carList = new List<DTxCarData>();

	public Gps start1;

	public Gps start2;

	public float lineWidth;

	public int realLineMat;

	public int dottedLineMat;

	public long time;

	public string name = "";

	public DTxSizeData GetSizeData()
	{
		DTxSizeData dTxSizeData = new DTxSizeData();
		List<Vector3> pointList = GetPointList();
		if (pointList != null)
		{
			foreach (Vector3 item in pointList)
			{
				if (item.x > dTxSizeData.maxX)
				{
					dTxSizeData.maxX = item.x;
				}
				if (item.z > dTxSizeData.maxZ)
				{
					dTxSizeData.maxZ = item.z;
				}
				if (item.x < dTxSizeData.minX)
				{
					dTxSizeData.minX = item.x;
				}
				if (item.z < dTxSizeData.minZ)
				{
					dTxSizeData.minZ = item.z;
				}
			}
			return dTxSizeData;
		}
		return null;
	}

	public virtual List<Vector3> GetPointList()
	{
		return null;
	}
}
