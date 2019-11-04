# `list(enum)`
Retrieves an array or map of the key-value pairs enumerated by `enum`.

## Use-case
If you want to get the Func Object from a class method, this is a good option.  
`Cls.OwnMethods()` returns an enumerator, and `Cls.%MethodName%` accesses the
_properties_ of `Cls`, not the methods.  
This function allows you to do `list(Cls.OwnMethods())[MethodName]`
to get the corresponding method's Func Object.

There may be other use-cases too.

## Limitations
* If an enum has been used to point to the first X items,
those items will be omitted from the resulting map or array.
* If an array was pointed to, which had gaps (e.g. `[1, 2, 3, , 5]`),
`list` will return a map instead of an array.