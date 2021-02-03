cd object
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 cursor_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 record_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 scroll_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 storage_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 timer_object.c
