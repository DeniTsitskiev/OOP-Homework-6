# CMake generated Testfile for 
# Source directory: /app
# Build directory: /app/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Laboratory_6_test_npc "/app/build/Laboratory_6_test_npc")
set_tests_properties(Laboratory_6_test_npc PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;53;add_test;/app/CMakeLists.txt;0;")
add_test(Laboratory_6_test_factory "/app/build/Laboratory_6_test_factory")
set_tests_properties(Laboratory_6_test_factory PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;58;add_test;/app/CMakeLists.txt;0;")
add_test(Laboratory_6_test_arena "/app/build/Laboratory_6_test_arena")
set_tests_properties(Laboratory_6_test_arena PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;63;add_test;/app/CMakeLists.txt;0;")
add_test(Laboratory_6_test_combat "/app/build/Laboratory_6_test_combat")
set_tests_properties(Laboratory_6_test_combat PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;68;add_test;/app/CMakeLists.txt;0;")
add_test(Laboratory_6_test_file_loading "/app/build/Laboratory_6_test_file_loading")
set_tests_properties(Laboratory_6_test_file_loading PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;73;add_test;/app/CMakeLists.txt;0;")
subdirs("_deps/googletest-build")
