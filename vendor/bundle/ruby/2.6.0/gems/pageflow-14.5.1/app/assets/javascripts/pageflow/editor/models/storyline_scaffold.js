pageflow.StorylineScaffold = pageflow.Scaffold.extend({
  build: function() {
    this.storyline = this.parent.buildStoryline(this.options.storylineAttributes);
    this.chapter = this.storyline.buildChapter();

    if (this.options.depth === 'page') {
      this.page = this.chapter.buildPage();
    }

    pageflow.editor.trigger('scaffold:storyline', this.storyline);

    return this.storyline;
  },

  load: function(response) {
    this.storyline.set(response.storyline);
    this.chapter.set(response.chapter);

    if (this.page) {
      this.page.set(response.page);
    }
  }
});