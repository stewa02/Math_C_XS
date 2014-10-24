#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <math.h>

MODULE=Math::C::XS PACKAGE=Math::C::XS

PROTOTYPES: ENABLED

SV *
new(const char *class, ...)
    CODE:
        HV *hash = newHV();

        if ((items - 1) % 2) 
            croak("Expected key-value pairs as arguments.");

        hv_store( 
            hash, 
            "Radians", strlen("Radians"), 
            newSViv(1),
            0
        );

        int i;
        for (i = 1; i < items; i += 2) {
            SV *key = ST(i);
            SV *value = newSVsv(ST(i + 1));

            hv_store_ent(hash, key, value, 0);
        }
        

        SV *const self = newRV_noinc((SV *)hash);

        RETVAL = sv_bless(self, gv_stashpv(class, 0));
    OUTPUT:
        RETVAL

double
cos(SV *arg)
    CODE: 
        SV *zahl;
        if (sv_isobject(arg)) {
            HV *self_hv = MUTABLE_HV(SvRV(arg));
            SV **callback_ptr = hv_fetchs(self_hv, "Number", 0);
            zahl = *callback_ptr;
        }
        else {
            zahl = newSVsv(arg);
        }

        double x = SvNV(zahl);
        RETVAL = cos(x);
    OUTPUT:
        RETVAL

double
acos(SV *arg)
    CODE:
        SV *zahl;
        if (sv_isobject(arg)) {
            HV *self_hv = MUTABLE_HV(SvRV(arg));
            SV **callback_ptr = hv_fetchs(self_hv, "Number", 0);
            zahl = *callback_ptr;
        }
        else {
            zahl = newSVsv(arg);
        }

        double x = SvNV(zahl);
        RETVAL = acos(x);
    OUTPUT:
        RETVAL


double
sin(SV *arg)
    CODE:
        SV *zahl;
        if (sv_isobject(arg)) {
            HV *self_hv = MUTABLE_HV(SvRV(arg));
            SV **callback_ptr = hv_fetchs(self_hv, "Number", 0);
            zahl = *callback_ptr;
        }
        else {
            zahl = newSVsv(arg);
        }

        double x = SvNV(zahl);
        RETVAL = sin(x);
    OUTPUT:
        RETVAL

double
asin(SV *arg)
    CODE:
        SV *zahl;
        if (sv_isobject(arg)) {
            HV *self_hv = MUTABLE_HV(SvRV(arg));
            SV **callback_ptr = hv_fetchs(self_hv, "Number", 0);
            zahl = *callback_ptr;
        }
        else {
            zahl = newSVsv(arg);
        }

        double x = SvNV(zahl);
        RETVAL = asin(x);
    OUTPUT:
        RETVAL


double
floor(SV *arg) 
    CODE:
        SV *zahl;
        if (sv_isobject(arg)) {
            HV *self_hv = MUTABLE_HV(SvRV(arg));
            SV **callback_ptr = hv_fetchs(self_hv, "Number", 0);
            zahl = *callback_ptr;
        }
        else {
            zahl = newSVsv(arg);
        }

        double x = SvNV(zahl); 
        RETVAL = floor(x);
    OUTPUT:
        RETVAL

double
ceil(SV *arg) 
    CODE:
        SV *zahl;
        if (sv_isobject(arg)) {
            HV *self_hv = MUTABLE_HV(SvRV(arg));
            SV **callback_ptr = hv_fetchs(self_hv, "Number", 0);
            zahl = *callback_ptr;
        }
        else {
            zahl = newSVsv(arg);
        }

        double x = SvNV(zahl); 
        RETVAL = ceil(x);
    OUTPUT:
        RETVAL
