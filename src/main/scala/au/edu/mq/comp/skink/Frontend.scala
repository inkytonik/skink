/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
 * Franck Cassez, Anthony M. Sloane, Matthew Roberts.
 *
 * Skink is free software: you can redistribute it and/or modify it  under
 * the terms of the  GNU Lesser General Public License as published by the
 * Free Software Foundation,  either version 3 of the License, or (at your
 * option) any later version.
 *
 * Skink is distributed  in the hope  that it will  be useful, but WITHOUT
 * ANY WARRANTY;  without  even the implied   warranty  of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Skink.  (See files COPYING and  COPYING.LESSER.)  If not, see
 * <http://www.gnu.org/licenses/>.
 */

package au.edu.mq.comp.skink

/**
 * Interface for Skink frontends.
 */
trait Frontend {

    import au.edu.mq.comp.skink.ir.IR
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}

    /**
     * The name of this frontend.
     */
    def name : String

    /**
     * Build IR from the given source or complain by returning
     * error messages explaining what went wrong.
     */
    def buildIR(source : Source, positions : Positions) : Either[IR, Messages]

}
