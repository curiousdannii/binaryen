(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$vd (func (param f64)))
 (type $FUNCSIG$ffjjdi (func (param f32 i64 i64 f64 i32) (result f32)))
 (import "env" "memory" (memory $0 1))
 (table 6 6 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $i $i_f $vd $ffjjdi $vd2)
 (export "stackSave" (func $stackSave))
 (export "stackAlloc" (func $stackAlloc))
 (export "stackRestore" (func $stackRestore))
 (export "i" (func $i))
 (export "i_f" (func $i_f))
 (export "vd" (func $vd))
 (export "ffjjdi" (func $ffjjdi))
 (export "vd2" (func $vd2))
 (export "main" (func $main))
 (export "dynCall_i" (func $dynCall_i))
 (export "dynCall_if" (func $dynCall_if))
 (export "dynCall_vd" (func $dynCall_vd))
 (func $i (; 0 ;) (type $FUNCSIG$i) (result i32)
  (i32.const 0)
 )
 (func $i_f (; 1 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  (i32.const 0)
 )
 (func $vd (; 2 ;) (type $FUNCSIG$vd) (param $0 f64)
 )
 (func $ffjjdi (; 3 ;) (type $FUNCSIG$ffjjdi) (param $0 f32) (param $1 i64) (param $2 i64) (param $3 f64) (param $4 i32) (result f32)
  (f32.const 0)
 )
 (func $vd2 (; 4 ;) (type $FUNCSIG$vd) (param $0 f64)
 )
 (func $main (; 5 ;) (result i32)
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 2)
  )
  (drop
   (i32.const 3)
  )
  (drop
   (i32.const 4)
  )
  (drop
   (i32.const 5)
  )
  (i32.const 0)
 )
 (func $stackSave (; 6 ;) (result i32)
  (i32.load offset=4
   (i32.const 0)
  )
 )
 (func $stackAlloc (; 7 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load offset=4
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.and
    (i32.sub
     (get_local $1)
     (get_local $0)
    )
    (i32.const -16)
   )
  )
  (get_local $1)
 )
 (func $stackRestore (; 8 ;) (param $0 i32)
  (i32.store offset=4
   (i32.const 0)
   (get_local $0)
  )
 )
 (func $__wasm_nullptr (; 9 ;) (type $FUNCSIG$v)
  (unreachable)
 )
 (func $dynCall_i (; 10 ;) (param $fptr i32) (result i32)
  (call_indirect (type $FUNCSIG$i)
   (get_local $fptr)
  )
 )
 (func $dynCall_if (; 11 ;) (param $fptr i32) (param $0 f32) (result i32)
  (call_indirect (type $FUNCSIG$if)
   (get_local $0)
   (get_local $fptr)
  )
 )
 (func $dynCall_vd (; 12 ;) (param $fptr i32) (param $0 f64)
  (call_indirect (type $FUNCSIG$vd)
   (get_local $0)
   (get_local $fptr)
  )
 )
)
;; METADATA: { "asmConsts": {},"staticBump": 12, "initializers": [] }
