include(ExternalProject)

# Add an external project to build gmock
EXTERNALPROJECT_ADD(
    gmock
    PREFIX "${PROJECT_BINARY_DIR}"
    URL "file://${VENDOR_DIRECTORY}/gmock-1.7.0.zip"
    URL_MD5 "073b984d8798ea1594f5e44d85b20d66"
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND ""
)

# Set some useful variables based on the source directory
EXTERNALPROJECT_GET_PROPERTY(gmock SOURCE_DIR)
set(GMOCK_INCLUDE_DIRS "${SOURCE_DIR}/include" "${SOURCE_DIR}/gtest/include")
set(GMOCK_LIBRARIES "${SOURCE_DIR}/libgmock.a" "${SOURCE_DIR}/libgmock_main.a")
