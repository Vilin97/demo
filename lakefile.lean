import Lake
open Lake DSL

package «demo» where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩ -- pretty-prints `fun a ↦ b`
  ]
  -- add any additional package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «Demo» where
  -- add any library configuration options here

require LatexInLean from git "https://github.com/kcaze/LatexInLean.git"@"main"
