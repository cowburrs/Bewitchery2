using Godot;
using System;

public partial class Player : CharacterBody2D
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        reset();
        special();
    }

    public override void _PhysicsProcess(double delta)
    {
        move();
    }

    private void special()
    {
        if (Input.IsActionPressed("Special"))
        {
            GD.Print("Special");
        }
    }

    private void reset()
    {

        if (Input.IsActionJustPressed("Reset"))
        {
            GetTree().ReloadCurrentScene();
            GD.Print("Reset");
        }
    }
    private int moveAndCollidePushable(Vector2 v)
    {
        int steps = 0;
        while (TestMove(GlobalTransform, v) == false)
        {
            Position += v;
            steps++;
        }
        return steps;
    }
    private void move()
    {
        byte keysPressedVertical = (byte)((Input.IsActionJustPressed("Up") || Input.IsActionJustPressed("Down") ? 1 : 0));
        byte keysPressedHorizontal = (byte)((Input.IsActionJustPressed("Left") || Input.IsActionJustPressed("Right") ? 1 : 0));
        if (keysPressedHorizontal + keysPressedVertical != 2)
        {
            if (Input.IsActionJustPressed("Up"))
            {
                moveAndCollidePushable(new Vector2(0, -32));

            }
            if (Input.IsActionJustPressed("Down"))
                moveAndCollidePushable(new Vector2(0, 32));
            {
            }
            if (Input.IsActionJustPressed("Left"))
                moveAndCollidePushable(new Vector2(-32, 0));
            {
            }
            if (Input.IsActionJustPressed("Right"))
            {
                moveAndCollidePushable(new Vector2(32, 0));
            }
        }
    }
}
