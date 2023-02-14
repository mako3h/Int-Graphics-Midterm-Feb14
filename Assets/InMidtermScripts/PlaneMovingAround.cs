using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaneMovingAround : MonoBehaviour
{
    public float rotSpeed = 10.0f; //speed
    public Vector3 midPoint = Vector3.zero; //creating midpoint xyz in the inspector

    void Update()
    {
        transform.RotateAround(midPoint, Vector3.up, rotSpeed * Time.deltaTime); //by adding the midpoint, I can create a spot for the plane for consistently rotate around
    }
}
