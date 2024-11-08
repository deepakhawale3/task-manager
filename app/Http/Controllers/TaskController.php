<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tasks = Task::paginate(10);

        return response()->json($tasks);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate title and description
        $validatedData = $request->validate([
            'title' => 'required|string',
            'description' => 'nullable|string',
        ]);

        // Manually check if the title length is greater than 255 characters
        if (strlen($request->title) > 255) {
            return response()->json([
                'message' => 'The title may not be greater than 255 characters.',
                'errors' => [
                    'title' => ['The title may not be greater than 255 characters.']
                ]
            ], 422); // Unprocessable Entity status code
        }

        // Create a new task with the validated data
        $task = Task::create($validatedData);

        // Return the created task as a JSON response
        return response()->json($task, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Manually fetch the task by ID
        $task = Task::find($id);

        // Check if the task is found
        if (!$task) {
            return response()->json(['message' => 'Task does not exist.'], 404);
        }

        // Check if the task is already completed
        if ($task->is_completed) {
            return response()->json(['message' => 'Task is already completed.'], 400);
        }

        // Mark the task as completed
        $task->is_completed = true;
        $task->save();

        return response()->json($task);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        // Manually fetch the task by ID
        $task = Task::find($id);

        // Check if the task exists
        if (!$task) {
            return response()->json(['message' => 'Task does not exist.'], 404);
        }

        // Delete the task
        $task->delete();

        return response()->json(['message' => 'Task deleted successfully']);
    }
}
