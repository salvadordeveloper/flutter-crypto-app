#!/bin/bash

# start the app and write the uri to a file
#flutter run --vmservice-out-file="test_driver/uri.txt"


flutter drive --driver=test_driver/integration_test.dart --target=integration_test/main_test.dart