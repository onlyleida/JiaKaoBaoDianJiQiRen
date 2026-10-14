using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class GpsMaskAreaMesh : OtherMesh
{
	public void Create(GpsMaskAreaData data)
	{
		otherData = data;
		if (data.gps != null && data.gps.Count != 0)
		{
			Create(gpsToVector3(data.gps[0]) + Vector3.up * 0.01f, "GpsMaskArea");
			CreateConvex(data);
		}
	}

	private void CreateConvex(GpsMaskAreaData data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 205;
		dTxBaseData.points = new List<Vector3>(gpsToVector3(data.gps));
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.gameObject.AddComponent<MeshCollider>();
		baseMesh.transform.localPosition = Vector3.zero;
		Material material = Resources.Load("base_other/Material/common_mat") as Material;
		if (material != null)
		{
			Color green = Color.green;
			green.a = 0.5f;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material = material;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetColor("_Color", green);
		}
	}

	public override Vector3 CenterPoint()
	{
		GpsMaskAreaData gpsMaskAreaData = (GpsMaskAreaData)otherData;
		return GetCenterPoint(gpsToVector3(gpsMaskAreaData.gps));
	}
}
