package net.eigenvalue.example

import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import net.eigenvalue.example.lib.IncredibleApi

fun main() {
    embeddedServer(Netty, port = 8080) {
        routing {
            get("/") {
                call.respondText(IncredibleApi().giveMeIncredible())
            }
        }
    }.start(wait = true)
}