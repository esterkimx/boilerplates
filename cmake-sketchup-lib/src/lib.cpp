#include <ruby.h>
#include "lib.hpp"

VALUE main_module = Qnil;

VALUE is_loaded(...) {
    return Qtrue;
}

extern "C" {
    EXPORT void CONCAT(Init_, MODULE_NAME)() {
        main_module = rb_define_module(STR(MODULE_NAME));
        rb_define_singleton_method(main_module, "loaded?", is_loaded, 0);
    }
}
