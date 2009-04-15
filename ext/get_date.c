#include <time.h>
#include <stdio.h>
#include "ruby.h"

VALUE _parse(VALUE, VALUE);
VALUE c_get_date;

void Init_get_date()
{
	c_get_date = rb_define_class("GetDate", rb_cObject);
	rb_define_singleton_method(c_get_date, "parse", _parse, 1);
}

VALUE 
_parse(VALUE self, VALUE str){
	char *cstr = STR2CSTR(str);
	struct tm * parsed = getdate(cstr);
	
	if(parsed == NULL) {
		return Qnil;
	} else {
		return INT2NUM(mktime(parsed));
	}
}