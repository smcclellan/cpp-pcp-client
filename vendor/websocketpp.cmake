INCLUDE(ExternalProject)

# Add an external project to build websocketpp
EXTERNALPROJECT_ADD(
    websocketpp
    PREFIX "${PROJECT_BINARY_DIR}"
    URL "file://${VENDOR_DIRECTORY}/websocketpp-0.3.0.tar.gz"
    URL_MD5 "094a3fd13c160e371f7aa8509556075b"
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND ""
)

EXTERNALPROJECT_GET_PROPERTY(websocketpp SOURCE_DIR)
SET(WEBSOCKETPP_INCLUDE_DIRS "${SOURCE_DIR}")
