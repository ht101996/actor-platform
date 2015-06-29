package im.actor.server.api.http

import com.typesafe.config.Config

case class HttpApiConfig(baseUrl: String, interface: String, port: Int, staticFilesDirectory: String)

object HttpApiConfig {
  def fromConfig(config: Config): HttpApiConfig =
    HttpApiConfig(
      config.getString("base-uri"),
      config.getString("interface"),
      config.getInt("port"),
      config.getString("static-files-directory")
    )
}
