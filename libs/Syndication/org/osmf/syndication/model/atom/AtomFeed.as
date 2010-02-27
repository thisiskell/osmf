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
package org.osmf.syndication.model.atom
{
	import __AS3__.vec.Vector;
	
	import org.osmf.syndication.model.Feed;
	
	/**
	 * This class represents the feed element
	 * in an Atom 1.0 feed.
	 **/
	public class AtomFeed extends Feed
	{
		/**
		 * Constructor.
		 **/
		public function AtomFeed()
		{
			super();
		}
		
		/**
		 * The title of the feed.
		 **/
		public function get title():AtomText
		{
			return _title;
		}
		
		public function set title(value:AtomText):void
		{
			_title = value;
		}
		
		/**
		 * Identifies the feed using a universally unique and
		 * permanent URI.
		 **/
		public function get id():String
		{
			return _id;
		}
		
		public function set id(value:String):void
		{
			_id = value;
		}

		/**
		 * Indicates the last time the feed was modified
		 * in a significant way.
		 **/
		public function get updated():String
		{
			return _updated;
		}
		
		public function set updated(value:String):void
		{
			_updated = value;
		}
		
		/**
		 * The author(s) of the feed.
		 **/
		public function get authors():Vector.<AtomPerson>
		{
			return _authors;
		}
		
		public function set authors(values:Vector.<AtomPerson>):void
		{
			_authors = values;
		}
		
		/**
		 * Indentifies a related Web page.
		 **/
		public function get link():AtomLink
		{
			return _link;
		}
		
		public function set link(value:AtomLink):void
		{
			_link = value;
		}
		
		/**
		 * Categories the feed belongs to.
		 **/
		public function get categories():Vector.<AtomCategory>
		{
			return _categories;
		}
		
		public function set categories(values:Vector.<AtomCategory>):void
		{
			_categories = values;
		}
		
		/**
		 * Contributors to the feed.
		 **/
		public function get contributors():Vector.<AtomPerson>
		{
			return _contributors;
		}
		
		public function set contributors(values:Vector.<AtomPerson>):void
		{
			_contributors = values;
		}
		
		/**
		 * The software used to generate the feed.
		 **/
		public function get generator():AtomGenerator
		{
			return _generator;
		}
		
		public function set generator(value:AtomGenerator):void
		{
			_generator = value;
		}
		
		/**
		 * URL of a small image which provides iconic visual 
		 * identification for the feed. 
		 **/
		public function get icon():String
		{
			return _icon;
		}
		
		public function set icon(value:String):void
		{
			_icon = value;
		}

		/**
		 * URL of a logo.
		 **/
		public function get logo():String
		{
			return _logo;
		}
		
		public function set logo(value:String):void
		{
			_logo = value;
		}
		
		/**
		 * Information about rights, such as
		 * copyrights.
		 **/
		public function get rights():AtomText
		{
			return _rights;
		}
		
		public function set rights(value:AtomText):void
		{
			_rights = value;
		}

		/**
		 * A human readable description or subtitle for 
		 * the feed.
		 **/
		public function get subtitle():AtomText
		{
			return _subtitle;
		}
		
		public function set subtitle(value:AtomText):void
		{
			_subtitle = value;
		}
		
		private var _title:AtomText;
		private var _id:String;
		private var _updated:String;
		private var _authors:Vector.<AtomPerson>;
		private var _link:AtomLink;
		private var _categories:Vector.<AtomCategory>;
		private var _contributors:Vector.<AtomPerson>;
		private var _generator:AtomGenerator;
		private var _icon:String;
		private var _logo:String;
		private var _rights:AtomText;
		private var _subtitle:AtomText;
	}
}
