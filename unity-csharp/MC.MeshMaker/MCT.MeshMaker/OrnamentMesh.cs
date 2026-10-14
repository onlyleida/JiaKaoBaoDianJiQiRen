using UnityEngine;

namespace MCT.MeshMaker;

public class OrnamentMesh : OtherMesh
{
	public void Create(OrnamentData data)
	{
		Create(gpsToVector3(data.position), "Prefab-" + data.dataName);
		otherData = data;
		GameObject prefab = MeshMakerManager.Instance.GetPrefab(data.modelId);
		prefab.transform.SetParent(transform);
		prefab.transform.localPosition = Vector3.zero;
		prefab.transform.localScale = Vector3.one;
		prefab.transform.forward = Vector3.forward;
		transform.forward = data.forward;
		transform.localScale = data.scale;
	}

	public override Vector3 CenterPoint()
	{
		OrnamentData ornamentData = (OrnamentData)otherData;
		return gpsToVector3(ornamentData.position);
	}
}
