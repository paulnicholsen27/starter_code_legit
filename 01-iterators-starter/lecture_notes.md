- explain "Flipped Classroom":  We expect you to see the material before lecture (although not master)

- emphasize asking questions, feeling stupid, saying "I don't know".  Talk about Imposter Syndrome

- Coding along is difficult and may not be the best way to learn.  If you choose to, you can pull code at any time.

  - At this point, show how to clone down entire lecture repo.  Also discuss fork vs clone.  Walk them through it

- Video and code made available after lecture

- Programmers are lazy, by design

- Don't cut and paste, both for understanding and for muscle memory

- Don't do too much at once--tight feedback loop.  Success is often defined as a new error.


- Discuss `map` vs `each`, `select` vs `find`.  Do some examples with numbers and stuff.  Note that they all leave the original array unchanged

```rb
instructors = [
  {name: "Paul", role: "lead"},
  {name: "Jake", role: "TCF"},
  {name: "Melanie", role: "TCF"}
]
```
`map` for when you are returning an array of equal size

`each` returns the original array

Student Exercise:  
- # Define a method called get_names that takes an array of instructors and returns just their names.  Try it with `.each` and then `.map`

```rb

names = instructors.map do |instructor|
  instructor[:name]
end

names
```


`select` returns an array of all matching elements

`find` returns first

Student Exercise:  
- # Define a method called find(name) that takes an array of instructors and returns the instructor whose name matches the inputed parameter
- # Define a method called  find_all_starts_with_

- Define 'refactoring'