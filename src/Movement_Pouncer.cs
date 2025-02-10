using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement_Pouncer : MonoBehaviour
{
    public Transform target;
    private bool distance;
    private bool grounded;
    private bool readyToJump = true;
    int objMask = 1 << 11;
    int whatIsGround = 1<< 10;
    Rigidbody rb;
    
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;
    }

    // Update is called once per frame
    void Update()
    {
        grounded = Physics.Raycast(transform.position, Vector3.down, 2 * 0.5f + 0.2f, whatIsGround);
       if (grounded)
        {
            rb.drag = 1;
        }
       else if (!grounded)
        {
            rb.drag = 0;
        }
        distCheck();
        Vector3 directionToTarget = (target.position - transform.position).normalized;
        float distancetoTarget = Vector3.Distance(transform.position, target.position);


        if (!Physics.Raycast(transform.position, directionToTarget, distancetoTarget, objMask))
        {
            if (distance && readyToJump && grounded)
            {
                Jump();
            }
            else if (!distance)
            {
                Move();
            }
        }
    }
   

    void Move()
    {      
            transform.LookAt(target);
           transform.position = Vector3.MoveTowards(transform.position, target.position, 5* Time.deltaTime);   
    }
    void jumpCheck()
    {
        readyToJump = true;       
    }
    private bool distCheck ()
    {
       
        if (Vector3.Distance(transform.position, target.position) < 13 )
        {
            distance = true;
        }else { distance = false; }
        return distance;
       
    }
    void Jump()
    {
        transform.LookAt(target);
        rb.velocity = new Vector3(rb.velocity.x, 0f, rb.velocity.z);
        rb.AddForce(transform.up * 7, ForceMode.Impulse);
        rb.AddForce(transform.forward * 8, ForceMode.Impulse);
        readyToJump = false;
        Invoke(nameof(jumpCheck), Random.Range(2,5));
    }
}
