using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TakeDamage : MonoBehaviour
{
    public Material ToonRampTakeDam; //creating a public mat (this holds the new red ramp pattern)
    Material ToonRampMat;  //this is the original pattern that I created
    Renderer ToonMatRenderer; //stores the renderer component

     void Start()
    {
        ToonMatRenderer = GetComponent<Renderer>(); //gets renderer component of the object and store it in objectRenderer
        ToonRampMat = ToonMatRenderer.material; //this stores the starting mat as the original mat (the original ramp pattern)
    }

     void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1)) //see if button 1 is pressed
        {
            StartCoroutine(ChangeMaterial()); //if it is, begin the coroutine below
        }
    }

    private IEnumerator ChangeMaterial()
    {
        ToonMatRenderer.material = ToonRampTakeDam; //switch to the red ramp pattern
        yield return new WaitForSeconds(3f); //wait 3 sec
        ToonMatRenderer.material = ToonRampMat; //switch back to the original ramp pattern
    }
}