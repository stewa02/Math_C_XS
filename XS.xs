#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <math.h>

MODULE = Math::XS PACKAGE = Math::XS

PROTOTYPES: ENABLED

SV *
new(const char *class, double zahl)
    CODE:
        HV *hash = newHV();
        hv_store(hash, "zahl", strlen("zahl"), newSVnv(zahl), 0);

        SV *const self = newRV_noinc((SV *)hash);

        RETVAL = sv_bless(self, gv_stashpv(class, 0));
    OUTPUT:
        RETVAL

double
cos(SV *self)
    CODE:
        HV *self_hv = MUTABLE_HV(SvRV(self));
        SV **callback_ptr = hv_fetchs(self_hv, "zahl", 0);
        SV *zahl = *callback_ptr;
        double x = SvNV(zahl);
        RETVAL = cos(x);
    OUTPUT:
        RETVAL

double
sin(SV *self)
    CODE:
        HV *self_hv = MUTABLE_HV(SvRV(self));
        SV **callback_ptr = hv_fetchs(self_hv, "zahl", 0);
        SV *zahl = *callback_ptr;
        double x = SvNV(zahl);
        RETVAL = sin(x);
    OUTPUT:
        RETVAL

double
floor(SV *self) 
    CODE:
        HV *self_hv = MUTABLE_HV(SvRV(self));
        SV **callback_ptr = hv_fetchs(self_hv, "zahl", 0);
        SV *zahl = *callback_ptr;
        double x = SvNV(zahl); 
        RETVAL = floor(x);
    OUTPUT:
        RETVAL

double
ceil(SV *self) 
    CODE:
        HV *self_hv = MUTABLE_HV(SvRV(self));
        SV **callback_ptr = hv_fetchs(self_hv, "zahl", 0);
        SV *zahl = *callback_ptr;
        double x = SvNV(zahl); 
        RETVAL = ceil(x);
    OUTPUT:
        RETVAL
