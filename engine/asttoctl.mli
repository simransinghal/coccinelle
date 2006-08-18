type cocci_predicate = Lib_engine.predicate * string Ast_ctl.modif
type formula =
    (cocci_predicate,string, Wrapper_ctl.info) Ast_ctl.generic_ctl

val asttoctl :
    Ast_cocci.top_level list -> Free_vars.free_table ->
      (Ast_cocci.statement -> string list) -> string list ->
      formula list

val pp_cocci_predicate : cocci_predicate -> unit

val cocci_predicate_to_string : cocci_predicate -> string
