using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class ElectricFenceMesh : OtherMesh
{
	public void Create(ElectricFenceData data)
	{
		Create(gpsToVector3(data.gps[0]), "ElectricFence" + data.fenceType);
		otherData = data;
		CreateCube(data);
	}

	private void CreateCube(ElectricFenceData data)
	{
		Debug.Log("围栏宽度:" + data.fenceWidth);
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.points = new List<Vector3>(gpsToVector3(data.gps));
		dTxBaseData.height = 1.5f;
		dTxBaseData.width = 0.1f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.transform.localPosition = Vector3.zero;
		Material material = Resources.Load("base_other/Material/common_mat") as Material;
		if (material != null)
		{
			Color red = Color.red;
			red.a = 0.5f;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material = material;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetColor("_Color", red);
		}
	}

	public override Vector3 CenterPoint()
	{
		ElectricFenceData electricFenceData = (ElectricFenceData)otherData;
		return GetCenterPoint(gpsToVector3(electricFenceData.gps));
	}
}
