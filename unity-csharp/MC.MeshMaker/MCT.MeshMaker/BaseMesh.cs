using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class BaseMesh : MeshMaker
{
	public DTxBaseData catchData;

	public List<Vector3> vertices;

	public List<int> triangles;

	public List<Vector2> uvs;

	public virtual void Create(DTxBaseData data)
	{
		Create(Vector3.zero);
		catchData = data;
		Make(catchData);
	}

	public virtual void Make(DTxBaseData data)
	{
		if (gameObject.GetComponent<MeshFilter>() == null)
		{
			gameObject.AddComponent<MeshFilter>();
		}
		if (gameObject.GetComponent<MeshRenderer>() == null)
		{
			gameObject.AddComponent<MeshRenderer>();
		}
		vertices = GetVertices();
		triangles = GetTriangles();
		uvs = GetUVs();
		if (gameObject.GetComponent<MeshFilter>().mesh == null)
		{
			Mesh mesh = new Mesh();
			mesh.vertices = vertices.ToArray();
			mesh.triangles = triangles.ToArray();
			mesh.uv = uvs.ToArray();
			mesh.RecalculateBounds();
			mesh.RecalculateNormals();
			mesh.RecalculateTangents();
			mesh.name = "mesh";
			gameObject.GetComponent<MeshFilter>().mesh = mesh;
		}
		else
		{
			gameObject.GetComponent<MeshFilter>().mesh.vertices = vertices.ToArray();
			gameObject.GetComponent<MeshFilter>().mesh.triangles = triangles.ToArray();
			gameObject.GetComponent<MeshFilter>().mesh.uv = uvs.ToArray();
			gameObject.GetComponent<MeshFilter>().mesh.RecalculateBounds();
			gameObject.GetComponent<MeshFilter>().mesh.RecalculateNormals();
			gameObject.GetComponent<MeshFilter>().mesh.RecalculateTangents();
		}
	}

	public virtual List<Vector3> GetVertices()
	{
		Debug.LogError("未重写函数GetVertices");
		return new List<Vector3>();
	}

	public virtual List<int> GetTriangles()
	{
		Debug.LogError("未重写函数GetTriangles");
		return new List<int>();
	}

	public virtual List<Vector2> GetUVs()
	{
		Debug.LogError("未重写函数GetUVs");
		return new List<Vector2>();
	}

	public virtual void SetMaterial(Material material)
	{
		gameObject.GetComponent<MeshRenderer>().material = material;
	}

	public virtual void SetMaterial(Material material, bool changeScale)
	{
		gameObject.GetComponent<MeshRenderer>().material = material;
	}
}
