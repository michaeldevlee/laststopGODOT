using Godot;
using System;

public class Player : RigidBody2D
{
    [Export] public float fallSpeed;
    [Export] public Vector2 movementSpeed;

public Vector2 velocity = new Vector2();
   [Export] private int jumpSpeed;

   [Export] private int gravity;

    [Export] private bool isJumping;

    public RigidBody2D interactableBody;




    public override void _Ready()
    {
        


        
        {

        }
    }


 public override void _Process(float delta)
  {

  


        if(Input.IsActionPressed("ui_right"))
          {
              GD.Print("pressing right");
              LinearVelocity = movementSpeed*delta*1000;
          }
          else if(Input.IsActionPressed("ui_left"))
          {
              LinearVelocity = -movementSpeed*delta*1000;
          }
          else
          {
              //LinearVelocity = new Vector2(0,);
          }

    if (Input.IsActionJustReleased("Jump") && velocity.y < 0.2)
          {
              velocity.y = -jumpSpeed*delta;
              GD.Print("stop jump accel");

          }
      if (Input.IsActionPressed("Jump"))
      {
          

          
          
        
          
      }
      
  }
  
}
