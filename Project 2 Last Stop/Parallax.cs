  using Godot;
using System;

public class Parallax : ParallaxBackground
{
    [Export]
      public float scrollSpeed= 0.5f;
      
     
    public override void _Ready()
    {

        
        
    }
 public override void _PhysicsProcess(float delta)
 {

ScrollBaseOffset += new Vector2 (scrollSpeed,0);

     
 }
}
