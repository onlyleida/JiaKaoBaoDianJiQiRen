using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class ConnectionAreaMesh : OtherMesh
{
	public void Create(ConnectionAreaData data)
	{
		otherData = data;
		if (data.gps != null)
		{
			Create(gpsToVector3(data.gps) + Vector3.up * 0.01f, "ConnectionArea");
			CreateConvex(data);
		}
	}

	private void CreateConvex(ConnectionAreaData data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 205;
		Vector3 vector = gpsToVector3(data.gps);
		List<Vector3> points = new List<Vector3>
		{
			vector + Vector3.forward * 0.5f,
			vector + Vector3.right * 0.5f,
			vector - Vector3.forward * 0.5f,
			vector - Vector3.right * 0.5f
		};
		dTxBaseData.points = points;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.gameObject.AddComponent<MeshCollider>();
		baseMesh.transform.localPosition = Vector3.forward * 0.3f + Vector3.up * 0.1f;
		Material material = Resources.Load("base_other/Material/common_mat") as Material;
		if (material != null)
		{
			Color yellow = Color.yellow;
			yellow.a = 1f;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material = material;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetColor("_Color", yellow);
		}
	}

	public override Vector3 CenterPoint()
	{
		ConnectionAreaData connectionAreaData = (ConnectionAreaData)otherData;
		return gpsToVector3(connectionAreaData.gps);
	}
}
