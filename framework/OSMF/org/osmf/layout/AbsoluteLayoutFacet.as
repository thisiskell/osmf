/*****************************************************
*  
*  Copyright 2009 Adobe Systems Incorporated.  All Rights Reserved.
*  
*****************************************************
*  The contents of this file are subject to the Mozilla Public License
*  Version 1.1 (the "License"); you may not use this file except in
*  compliance with the License. You may obtain a copy of the License at
*  http://www.mozilla.org/MPL/
*   
*  Software distributed under the License is distributed on an "AS IS"
*  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
*  License for the specific language governing rights and limitations
*  under the License.
*   
*  
*  The Initial Developer of the Original Code is Adobe Systems Incorporated.
*  Portions created by Adobe Systems Incorporated are Copyright (C) 2009 Adobe Systems 
*  Incorporated. All Rights Reserved. 
*  
*****************************************************/
package org.osmf.layout
{
	import org.osmf.events.FacetValueChangeEvent;
	import org.osmf.metadata.Facet;
	import org.osmf.metadata.IIdentifier;
	import org.osmf.metadata.MetadataNamespaces;
	import org.osmf.metadata.StringIdentifier;

	/**
	 * @private
	 *
	 *  Defines a metadata facet that defines x, y, width and height values.
	 * 
	 * On encountering this facet on a target, the default layout renderer
	 * will use the set values to position and size the target according to
	 * the absolute values set.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */	
	internal class AbsoluteLayoutFacet extends LayoutFacet
	{
		/**
		 * @private
		 * 
		 * Identifier for the facet's x property.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const X:StringIdentifier = new StringIdentifier("x");
		
		/**
		 * @private
		 * 
		 * Identifier for the facet's y property.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const Y:StringIdentifier = new StringIdentifier("y");
		
		/**
		 * @private
		 * 
		 * Identifier for the facet's width property.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const WIDTH:StringIdentifier = new StringIdentifier("width");
		
		/**
		 * @private
		 * 
		 * Identifier for the facet's height property.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const HEIGHT:StringIdentifier = new StringIdentifier("height");
		
		// Facet
		//
		
		/**
		 * @private
		 */
		override public function get namespaceURL():String
		{
			return MetadataNamespaces.ABSOLUTE_LAYOUT_PARAMETERS;
		}
		
		/**
		 * @private
		 */
		override public function getValue(identifier:IIdentifier):*
		{
			if (identifier == null)
			{
				return undefined;
			}
			else if (identifier.equals(X))
			{
				return x;
			}
			else if (identifier.equals(Y))
			{
				return y;
			}
			else if (identifier.equals(WIDTH))
			{
				return width;
			}
			else if (identifier.equals(HEIGHT))
			{
				return height;
			}
			else 
			{
				return undefined;
			}
		}
		
		// Public interface
		//
		
		/**
		 * @private
		 */		
		public function get x():Number
		{
			return _x;
		}
		public function set x(value:Number):void
		{
			if (_x != value)
			{
				var event:FacetValueChangeEvent
					= new FacetValueChangeEvent(FacetValueChangeEvent.VALUE_CHANGE, false, false, X, value, _x);
				
				_x = value;
						
				dispatchEvent(event);
			}
		}
		
		/**
		 * @private
		 */	
		public function get y():Number
		{
			return _y;
		}
		public function set y(value:Number):void
		{
			if (_y != value)
			{
				var event:FacetValueChangeEvent
					= new FacetValueChangeEvent(FacetValueChangeEvent.VALUE_CHANGE, false, false, Y, value, _y);
					
				_y = value;
						
				dispatchEvent(event);
			}
		}
		
		/**
		 * @private
		 */	
		public function get width():Number
		{
			return _width;
		}
		public function set width(value:Number):void
		{
			if (_width != value)
			{
				var event:FacetValueChangeEvent
					= new FacetValueChangeEvent(FacetValueChangeEvent.VALUE_CHANGE, false, false, WIDTH, value, _width);
					
				_width = value;
						
				dispatchEvent(event);
			}
		}
		
		/**
		 * @private
		 */	
		public function get height():Number
		{
			return _height;
		}
		public function set height(value:Number):void
		{
			if (_height != value)
			{
				var event:FacetValueChangeEvent
					= new FacetValueChangeEvent(FacetValueChangeEvent.VALUE_CHANGE, false, false, HEIGHT, value, _height);
					
				 _height = value;
						
				dispatchEvent(event);
			}
		}
		
		// Internals
		//
		
		private var _x:Number;
		private var _y:Number;
		private var _width:Number;
		private var _height:Number;
	}
}