# idrusti

Idris and Rust related tutorials for umbrela.academy and idri.school


As mentioned before in the course introductions, we will be looking at **TIJKR** languages (Typescript, Idris, Julia, Kotlin, Rust). The last generation of languages that these 5 are succeeding were also not bad - just not good enough anymore.

 - _Javascript_ -> **Typescript**, 
 - _Haskell_ -> **Idris**, 
 - _Python_ -> **Julia**, 
 - _Java_ -> **Kotlin**, 
 - _C/C++_ -> **Rust**

Idris and Rust are special languages in this list because they both support some form of QTT (linear types, affine types, "substructural" types etc) and Rust might also support something quite close to dependent types like Idris does out of the box. But Rust is still not quite there, strictly speaking - see [RFC 2000](https://github.com/rust-lang/rfcs/pull/2000) and [The Pain of Real Linear Types in Rust](https://gankra.github.io/blah/linear-rust/#definitions-and-the-state-of-rust)

Apart from this repository, will also have 
- an Idris-to-Javascript repository where you can also see the corresponding Typescript translations of Idris codes (sometimes approximate translations). Perhaps we will call it something like **idscript**.
- an Idris-to-Haskell repository where we will explore why Haskell is a great place to learn functional programming and make improvements to make it more Idris-like. But be careful: if Haskell becomes good enough for the future, it becomes Idris. Perhaps we will call it something like **idskell**.
- a Python and Julia repository. This will be mainly about porting popular (small) libraries in python to julia and idris (ala HaskTorch from PyTorch but that's a huge one). Perhaps we will call it something like **julpy**.
- a GraalVM based multilingul repository. This will be where we use learn about Java to Kotlin transition best practices and learn to write a well-typed Idris interpreter for a neat subset of Clojure/LISP dialect. Perhaps we will call it something like **jakot** and have a git-submodule called **closer** respectively.
- a Rust repository reimplementing some famous Unix/\*nix-like utilities (for educational purposes - not production use) and some new web-based ones based on `curl`.  Perhaps we will call it something like **rusted**.
