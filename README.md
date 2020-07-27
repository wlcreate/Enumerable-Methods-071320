# Zoo Organization

In this project, you will be practicing the various enumerable methods available in Ruby. Please read the whole README before writing anything.

## Introduction
Today, you are in charge of maintaining some of the zoos in NYC and the animals in each of them. Your goal is to write in the code as they are listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`.

## Notes 

Here are some notes for you to keep in mind when building out this lab:

### Array

- `each`:
  - Block parameter: Single element of the array
  - Block: You can do whatever in the block 
  - Returns: The array you're iterating over
   
- `map`:
  - Block parameter: Single element of the array
  - Block: Last line needs to be how you want to transform the element
  - Returns: A new array filled with elements based on the last line of your block
  - Note: 
    - Will always return an array of the same length
  
- `select`:
  - Block parameter: Single element of the array
  - Block: Last line needs to be a condition 
  - Returns: A new array filled with elements satisfying the condition on the last line of your block
  - Note:
    - Will always return a sub-array of the original array
    - If nothing satisfies the condition, will return `[]`
    
- `find`:
  - Block parameter: Single element of the array
  - Block: Last line needs to be a condition 
  - Returns: The first element of the array satisfying the condition on the last line of your block
  - Note:
    - Will return one element of the original array
    - If nothing satisfies the condition, will return `nil`
    
### Hash
 
- `each`:
  - Block parameter: First is the key, second is the value
  - Block: You can do whatever in the block 
  - Returns: The hash you're iterating over
   
- `map`:
  - Block parameter: First is the key, second is the value
  - Block: Last line needs to be how you want to transform the element
  - Returns: A new array filled with elements based on the last line of your block
  - Note: 
    - Will always return an array of the same length as the hash's key-value pair
  
- `select`:
  - Block parameter: First is the key, second is the value
  - Block: Last line needs to be a condition 
  - Returns: A new hash filled with key-value pairs satisfying the condition on the last line of your block
  - Note:
    - Will always return a sub-hash of the original
    - If nothing satisfies the condition, will return `{}`
    
- `find`:
  - Block parameter: First is the key, second is the value
  - Block: Last line needs to be a condition 
  - Returns: The array of length two - the first element will be the key and the second element will be the value, satisfying the condition on the last line of your block
  - Note:
    - Will return an array of length 2
    - If nothing satisfies the condition, will return `nil`
