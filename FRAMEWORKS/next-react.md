# NEXT JS & REACT

React but especially in context of NextJS meta-framework

---

## COMPONENTS

- declare interactive components outside of the parent component so that they can be used in other components freely
- ORDER OF OPERATIONS:
  - hooks for the parent
  - PARENT: hooks run
  - PARENT: html components loaded
  - CHILDREN: hooks run
  - CHILDREN: html components loaded
  - CHILDREN: useEffect run
  - PARENT: useEffect run

---

## STORES

- special states
- different way of handling state

## STATE

- can trigger changes in DOM
- best to keep local as much  as possible

## PROPS

- best to use for static components - ex: displaying only

---

## HOOKS

### useRef

- much like useState but does not update the DOM when it changes
- can also be used to expose references to elements within your component to higher components - ex: focus to input element

#### useImperativeHandler

- can be used to expose only the parts of a component that you want to

---

## LESSONS

- use tested libraries for faster development and tested features
