#include <iostream>
#include <TinyLib.h>
#include <nlohmann/json.hpp>
#include "include/glad/glad.h"



int main(){
    PrintHello();

    std::cout << "JSON Lib Version:" << NLOHMANN_JSON_VERSION_MAJOR << "."
              << NLOHMANN_JSON_VERSION_MINOR << "."
              << NLOHMANN_JSON_VERSION_PATCH << "\n";
    return 0;
}