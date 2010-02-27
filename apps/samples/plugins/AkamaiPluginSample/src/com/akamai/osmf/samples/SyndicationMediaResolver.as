/*****************************************************
*  
*  Copyright 2009 Akamai Technologies, Inc.  All Rights Reserved.
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
*  The Initial Developer of the Original Code is Akamai Technologies, Inc.
*  Portions created by Akamai Technologies, Inc. are Copyright (C) 2009 Akamai 
*  Technologies, Inc. All Rights Reserved. 
*  
*****************************************************/
package com.akamai.osmf.samples
{
	import org.osmf.media.DefaultMediaFactory;
	import org.osmf.media.MediaElement;
	import org.osmf.media.MediaFactory;
	import org.osmf.media.URLResource;
	import org.osmf.metadata.Facet;
	import org.osmf.syndication.media.ISyndicationMediaResolver;
	import org.osmf.syndication.model.Entry;

	public class SyndicationMediaResolver implements ISyndicationMediaResolver
	{
		public function SyndicationMediaResolver(facet:Facet)
		{
			this.facet = facet;
		}

		public function createMediaElement(entry:Entry, mediaFactory:MediaFactory=null):MediaElement
		{
			var mediaElement:MediaElement;
			var factory:MediaFactory = mediaFactory;
			
			if (factory == null)
			{
				factory = new DefaultMediaFactory();
			}
			
			var resource:URLResource = new URLResource(entry.enclosure.url);
			
			if (facet)
			{
				resource.metadata.addFacet(facet);
			}
			
			mediaElement = factory.createMediaElement(resource);
			
			return mediaElement;
		}
		
		private var facet:Facet;
	}
}
