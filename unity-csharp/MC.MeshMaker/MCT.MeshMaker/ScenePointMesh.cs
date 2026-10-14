using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class ScenePointMesh : OtherMesh
{
	public void Create(ScenePointData data)
	{
		Create(gpsToVector3(data.gps[0]), "ScenePoint");
		otherData = data;
		CreateCube(data);
	}

	private void CreateCube(ScenePointData data)
	{
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
			Color green = Color.green;
			green.a = 0.5f;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material = material;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetColor("_Color", green);
		}
	}

	public override Vector3 CenterPoint()
	{
		ScenePointData scenePointData = (ScenePointData)otherData;
		return GetCenterPoint(gpsToVector3(scenePointData.gps));
	}
}
