/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2019
 * Programming Languages and Verification Research Group
 * Macquarie University
 *
 * Skink is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Skink is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * See COPYING and COPYING.LESSER for full license terms.
 * More information at http://www.gnu.org/licenses.
 */

package au.edu.mq.comp.skink

/**
 * Skink logger factory.
 */
object LoggerFactory {

    def getLogger(clazz : Class[_], config : SkinkConfig, suffix : String = "") =
        new Logger(clazz, config, suffix)

}

/**
 * Skink logger. As per underlying logging framework but also adds
 * Monto log products if Skink is running in server mode.
 */
class Logger(clazz : Class[_], config : SkinkConfig, suffix : String = "") {

    import com.typesafe.scalalogging.{Logger => ScalaLogger}
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Source}
    import org.slf4j.{LoggerFactory => ScalaLoggerFactory}

    val name = s"logs|${clazz.getName}${suffix}"
    val logger = ScalaLogger(ScalaLoggerFactory.getLogger(name))

    def debug(source : Source, msg : String) {
        logger.debug(msg)
        publishLog(source, msg)
    }

    def error(source : Source, msg : String) {
        logger.error(msg)
        publishLog(source, msg)
    }

    def info(source : Source, msg : String) {
        logger.info(msg)
        publishLog(source, msg)
    }

    def warn(source : Source, msg : String) {
        logger.warn(msg)
        publishLog(source, msg)
    }

    def publishLog(source : Source, msg : String) {
        if (config.server())
            config.driver.publishProductStr(source, name, "txt", s"$msg\n", true)
    }

    def clear(source : Source) {
        if (config.server())
            publishLog(source, name)
    }

    def logfile(source : Source, title : String, filename : String) {
        debug(source, s"\n* $title\n\n")
        debug(source, FileSource(filename).content)
    }

}
