using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInter : MonoBehaviour
{
    [SerializeField]
    private LayerMask mask;
    [SerializeField]
    private float distance;
    [SerializeField]
    private GameObject cam;
    private PlayerUI playerUI;
    void Start()
    {
        playerUI = GetComponent<PlayerUI>();
    }
    void Update()
    {
        playerUI.UpdateText(string.Empty);
       
        RaycastHit hit;
        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hit, distance, mask))
        {
            Interactable interactable = hit.collider.GetComponent<Interactable>();
            if (hit.collider.GetComponent<Interactable>() != null)
            {
                playerUI.UpdateText(interactable.promptMessage);
                if (Input.GetKeyDown(KeyCode.E))
                {
                    interactable.BaseInteract();
                    
                }              
            }
        }
    }
}
