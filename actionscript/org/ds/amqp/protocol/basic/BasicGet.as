/**
---------------------------------------------------------------------------

Copyright (c) 2009 Dan Simpson

Auto-Generated @ Thu Jul 16 13:43:16 -0700 2009.  Do not edit this file, extend it you must.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---------------------------------------------------------------------------
**/


package org.ds.amqp.protocol.basic
{
	import org.ds.amqp.datastructures.*;
	import org.ds.amqp.protocol.Method;
	import org.ds.amqp.transport.Buffer;
	
	public dynamic class BasicGet extends Method
	{
		public static var EVENT:String = "60/70";

		public var ticket                  :uint = 0;
		public var queue                   :String = "";
		public var noAck                   :Boolean = false;

		public function BasicGet() {
			_classId  = 60;
			_methodId = 70;
			
		}


		public override function writeArguments(buf:Buffer):void {

			buf.writeShortInt(this.ticket);
			buf.writeShortString(this.queue);
			buf.writeBit(this.noAck);
		}
		
		public override function readArguments(buf:Buffer):void {

			this.ticket           = buf.readShortInt();
			this.queue            = buf.readShortString();
			this.noAck            = buf.readBit();
		}
		
		public override function print():void {
			printObj("BasicGet", this);
		}
	}
}