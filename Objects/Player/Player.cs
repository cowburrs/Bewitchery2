using Godot;
using System;

public partial class Player : Node2D
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		if (Input.IsActionPressed("Up"))
		{
			GD.Print("Going Up");
			CharacterBody2D Player = GetNode<CharacterBody2D>("CharacterBody2D");
			Player.Velocity = new Vector2(0, -200); ;
			Player.MoveAndSlide();
		}
	}
}
