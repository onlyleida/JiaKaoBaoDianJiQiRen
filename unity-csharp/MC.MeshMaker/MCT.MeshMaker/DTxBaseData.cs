using System;
using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[Serializable]
public class DTxBaseData
{
	public int type;

	public float height;

	public float width;

	public int density = 10;

	public bool isAtLand = true;

	public List<Vector3> points = new List<Vector3>();

	public List<Vector3> points_ad = new List<Vector3>();

	public List<int> materials = new List<int>();

	public bool isOnlyUp = false;
}
