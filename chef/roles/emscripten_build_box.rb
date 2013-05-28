name "emscripten_build_box"
description "installs emscripten plus dependencies (nodejs, llmv-3.2, clang-3.2)"
run_list "recipe[nodejs]", "recipe[java::openjdk]"
