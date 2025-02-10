using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UseWeapon : MonoBehaviour
{
    private GameObject selected;
    public GameObject pistol;
    public GameObject rifle; 

    void Awake()
    {
        if (selected == null)
        {
            selected = pistol;
        }
    }
   
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            selected = pistol;
        } else if (Input.GetKeyDown(KeyCode.Alpha2)) { selected = rifle; }
        if (selected.GetComponent<Weapon>() != null) {
            if (Input.GetMouseButtonDown(0))
            {
                selected.GetComponent<Weapon>().BaseShoot(); 
            }
        }
    }
}
