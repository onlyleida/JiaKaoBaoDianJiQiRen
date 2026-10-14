using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3ShuangHuangMesh : K3SingleLineMesh
{
	private Vector3 line1Start;

	private Vector3 line1End;

	private List<Vector3> curveList1;

	private Vector3 line2Start;

	private Vector3 line2End;

	private List<Vector3> curveList2;

	private bool isCurve;

	public K3ShuangHuangMesh Create(K3ShuangHuang data)
	{
		string name = GetName(data.id, data.type);
		Create(data, data.line1Start, name);
		isCurve = data.isCurve;
		if (data.isCurve)
		{
			curveList1 = gpsToVector3(data.curveList1);
			curveList2 = gpsToVector3(data.curveList2);
			CreateCurve(data.curveList1);
			CreateCurve(data.curveList2);
		}
		else
		{
			line1Start = gpsToVector3(data.line1Start);
			line1End = gpsToVector3(data.line1End);
			line2Start = gpsToVector3(data.line2Start);
			line2End = gpsToVector3(data.line2End);
			CreateSingle(data.line1Start, data.line1End);
			CreateSingle(data.line2Start, data.line2End);
		}
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		if (isCurve)
		{
			float distance = GetDistance(point, curveList1, seal: false);
			float distance2 = GetDistance(point, curveList2, seal: false);
			return Mathf.Min(distance, distance2);
		}
		float distance3 = GetDistance(point, line1Start, line1End);
		float distance4 = GetDistance(point, line2Start, line2End);
		return Mathf.Min(distance3, distance4);
	}

	public override Vector3 CenterPoint()
	{
		K3ShuangHuang k3ShuangHuang = (K3ShuangHuang)k3Data;
		if (k3ShuangHuang.isCurve)
		{
			return gpsToVector3(k3ShuangHuang.curveList1[0]);
		}
		return gpsToVector3(k3ShuangHuang.line1Start);
	}

	public override void SetMat()
	{
		if (k3Data.mainMat == 0)
		{
			K3ShuangHuang k3ShuangHuang = (K3ShuangHuang)k3Data;
			if (k3ShuangHuang.isDashed)
			{
				k3Data.mainMat = 10;
			}
			else
			{
				k3Data.mainMat = 11;
			}
		}
		mainMaterial = MeshMakerManager.Instance.GetMaterial(k3Data.mainMat);
	}
}
