

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos {
    
    struct Todo {
       string text;
       bool completed;

    }

    // An array of two structs
    Todo[] public  todos;


    function create(string calldata _text) public {
        // 3 ways initilize structs
        // 1- calling its like a function
        todos.push(Todo(_text, false));

        // key value maaping
        todos.push(Todo(
            {
                text: _text,
                completed : false
            }
        ));

        // initilize an empty struct and then update it

        Todo memory todo;
        todo.text = _text;
        todo.completed = true;
        todos.push(todo);

    }

    // solidity automatically create a getter for todos so
     function get(uint _index) public view returns (string memory text, bool completed){
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
     }

     function update(uint _index, string calldata _text) public{
        Todo storage todo = todos[_index];
        todo.text = _text;

     }

     function tooggleCompletes (uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
     }
}