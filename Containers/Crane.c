#include "Crane.h"
#include <stdio.h>
#include <unistd.h>

void raise_container(int container_id) {
    printf("raising container....\n");
    sleep(10);
    printf("done.\n");
}

void lower_container(int container_id) {
    printf("lowering container....\n");
    sleep(10);
    printf("done.\n");
}