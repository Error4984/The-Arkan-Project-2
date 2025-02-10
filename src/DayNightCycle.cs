using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DayNightCycle : MonoBehaviour
{
    public float speed;
    public bool isDay;
  [SerializeField,Range(0,24)]  public float timeOfDay;


    void Start()
    {
        transform.eulerAngles = new Vector3(0,0,0);
        isDay = true;
    }

    // Update is called once per frame
    void Update()
    {
        timeOfDay += Time.deltaTime;
        timeOfDay %= 120; 
        if (timeOfDay < 60)
        {
           isDay = true;
        }
        else if (timeOfDay > 60)
        {
            isDay= false;
        }
       transform.Rotate(3*Time.deltaTime,0,0);
    }
}
