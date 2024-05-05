(module
  ;; First we define a type with no parameters and no results.
  (type $no_args_no_rets_t (func (param) (result)))

  ;; Then we declare that we want to import a function named "env" "say_hello" with
  ;; that type signature.
  (import "env" "say_helllo" (func $say_helllo (type $no_args_no_rets_t)))

  ;; Finally we create an entrypoint that calls our imported function.
  (func $run (type $no_args_no_rets_t)
    (call $say_helllo))
  ;; And mark it as an exported function named "run".
  (export "run" (func $run)))
