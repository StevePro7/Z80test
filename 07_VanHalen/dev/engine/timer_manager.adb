M:timer_manager
F:G$engine_delay_manager_load$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Ltimer_manager.engine_delay_manager_load$delay$1$3({2}SI:U),B,1,4
S:Ltimer_manager.engine_delay_manager_load$dObj$1$4({2}DG,STtag_struct_delay_object:S),R,0,0,[]
F:G$engine_delay_manager_update$0$0({2}DF,SC:U),Z,0,0,0,0,0
S:Ltimer_manager.engine_delay_manager_update$dObj$1$5({2}DG,STtag_struct_delay_object:S),R,0,0,[]
S:Ltimer_manager.engine_delay_manager_update$test$1$5({1}SC:U),R,0,0,[b]
F:G$engine_reset_manager_load$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Ltimer_manager.engine_reset_manager_load$delay$1$7({2}SI:U),B,1,4
S:Ltimer_manager.engine_reset_manager_load$ro$1$8({2}DG,STtag_struct_reset_object:S),R,0,0,[]
F:G$engine_reset_manager_update$0$0({2}DF,SC:U),Z,0,0,0,0,0
S:Ltimer_manager.engine_reset_manager_update$ro$1$9({2}DG,STtag_struct_reset_object:S),R,0,0,[]
S:Ltimer_manager.engine_reset_manager_update$test$1$9({1}SC:U),R,0,0,[b]
F:G$engine_reset_manager_reset$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Ltimer_manager.engine_reset_manager_reset$ro$1$11({2}DG,STtag_struct_reset_object:S),R,0,0,[]
T:Ftimer_manager$tag_struct_delay_object[({0}S:S$delay_value$0$0({2}SI:U),Z,0,0)({2}S:S$delay_timer$0$0({2}SI:U),Z,0,0)]
T:Ftimer_manager$tag_struct_reset_object[({0}S:S$reset_value$0$0({2}SI:U),Z,0,0)({2}S:S$reset_timer$0$0({2}SI:U),Z,0,0)]
S:G$global_delay_object$0$0({4}STtag_struct_delay_object:S),E,0,0
S:G$global_reset_object$0$0({4}STtag_struct_reset_object:S),E,0,0