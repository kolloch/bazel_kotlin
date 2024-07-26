###
# Build
###

_BAZEL_TOOLS = {
    "buildifier": "@buildifier_prebuilt//:buildifier",
    "buildozer": "@buildifier_prebuilt//:buildozer",
}

###
# Language-specific tools
###

_JDK_TOOLS_LIST = [
    "jar",
    "javac",
    "jcmd",
    "jconsole",
    "jps",
    "jshell",
    "jstack",
]

# JAVABASE/JAVA injected by JDK toolchain
_JDK_TOOLS = {name: "$(JAVABASE)/bin/{}".format(name) for name in _JDK_TOOLS_LIST}
_JDK_TOOLS["java"] = "$(JAVA)"

_JS_TOOLS = {
    "pnpm": "//env:pnpm",
    "node": "$(NODE_PATH)",
}

DEV_TOOLS = {}
DEV_TOOLS.update(_BAZEL_TOOLS)
DEV_TOOLS.update(_JDK_TOOLS)
