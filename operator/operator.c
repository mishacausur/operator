//
//  operator.c
//  operator
//
//  Created by Misha Causur on 28.02.2022.
//

#include <mach/mach_types.h>

kern_return_t operator_start(kmod_info_t * ki, void *d);
kern_return_t operator_stop(kmod_info_t *ki, void *d);

kern_return_t operator_start(kmod_info_t * ki, void *d)
{
    return KERN_SUCCESS;
}

kern_return_t operator_stop(kmod_info_t *ki, void *d)
{
    return KERN_SUCCESS;
}
