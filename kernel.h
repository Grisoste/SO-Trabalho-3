
#pragma once

//include common e futuro
//#include "common.h"

//Manter o struct sbiret no kernel.h o common.h vai ser reservado para coisas genericas, como tipos de dados e funções como memset.
struct sbiret {
    long error;
    long value;
};