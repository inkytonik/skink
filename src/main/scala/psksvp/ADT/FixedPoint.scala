package psksvp.ADT

import scala.annotation.tailrec

/**
  * Created by psksvp on 26/5/17.
  */
class FixedPoint[T](equalp:(T, T)=>Boolean)(step:T => T)
{
  def apply(current:T):T =
  {
    @tailrec
    def run(current:T):T=
    {
      val next = step(current)
      if (equalp(next, current))
        current
      else
        run(next)
    }

    run(current)
  }
}

object FixedPoint
{
  def apply[T](equalp:(T, T)=>Boolean)(step:T => T) = new FixedPoint[T](equalp)(step)
}
