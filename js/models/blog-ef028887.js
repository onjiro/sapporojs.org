Sapporojs.Blog=Ember.Object.extend({isMatchedWith:function(t){var o=this.get("title"),e=this.get("text");return o.match(t)||e.match(t)}}),Sapporojs.Blog.reopenClass({_content:Ember.A(),_loaded:!1,load:function(t){var o=Sapporojs.Blog._content,e=Ember.ArrayPolyfills.forEach;e.call(t,function(t){var e=Sapporojs.Blog.create(t);o.pushObject(e)})},all:function(){return this._content}});