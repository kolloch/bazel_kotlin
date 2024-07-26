package net.eigenvalue.example.lib

import io.kotest.core.spec.style.FunSpec
import io.kotest.matchers.string.shouldHaveLength

class SomeTest : FunSpec({
    test("sometest") {
        "sam".shouldHaveLength(3)
    }
})