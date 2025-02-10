using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CraftCamp : Interactable
{
    public GameObject actModel;
    [SerializeField]
    private GameObject player;
    void Awake()
    {
        promptMessage = "Craft Campfire";
    }
    protected override void Interact()
    {
        if (player.GetComponent<PlayerInventory>().stoneCount >= 1 && player.GetComponent<PlayerInventory>().woodCount >= 1)
        {
            actModel.SetActive(true);
            player.GetComponent<PlayerInventory>().stoneCount--;
            player.GetComponent<PlayerInventory>().woodCount--;
            Destroy(this.gameObject);
        }
    }
}
