then_else.rb
============

OO ( or smalltalky? ) if/else statements and such.

Usage
-----

Say you have a method like #save that is going to return a true on success or false on failure. You can use traditional if/then:

```
    if( model.persist )
      # what to do if
      # it worked
    else
      # what to do if it didn't
    end
```

or you can go OO like this:

```
    model.persist.then {
      # what to do if
      # result was positive
      # maybe add notes or send an email
    }.else do
      # what to do if there was some problem
    }
```

which is the same as, if slightly more readable than:

```
    model.persist.then do
      # what to do if
      # result was positive
      # maybe add notes or send an email
    end.else do
      # it didn't work out. Handle that.
    end
```

Exceptional Reason Not To Do This
---------------------------------

One thing I should mention... there's no rescue or finally. You could implement that like this:


lambda{ thing }.success{ thing }.on_explosion { #whattodo }.but_if_it_goes_nuclear { kernel_panic }

which could probably be cleaned up... 

whenever {
  thing_that_might_explode
}.explodes do |err|
end

which is fun, but not implemented here. Yet.



Thanks
------
[@workmad3](https://github.com/workmad3)


References
----------
https://gist.github.com/workmad3/5c19ae87313eb2516c46

