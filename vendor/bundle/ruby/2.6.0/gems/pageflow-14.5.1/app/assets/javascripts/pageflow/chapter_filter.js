pageflow.ChapterFilter = pageflow.Object.extend({
  initialize: function(entryData) {
    this.entry = entryData;
  },

  strategies: {
    non: function() {
      return false;
    },

    current_storyline: function(currentChapterId, otherChapterId) {
      return this.entry.getStorylineIdByChapterId(currentChapterId) ===
        this.entry.getStorylineIdByChapterId(otherChapterId);
    },

    inherit_from_parent: function(currentChapterId, otherChapterId) {
      return this.chapterVisibleFromChapter(this.entry.getParentChapterId(currentChapterId), otherChapterId);
    }
  },

  chapterVisibleFromPage: function(currentPagePermaId, chapterId) {
    var currentChapterId = this.entry.getChapterIdByPagePermaId(currentPagePermaId);
    return this.chapterVisibleFromChapter(currentChapterId, chapterId);
  },

  chapterVisibleFromChapter: function(currentChapterId, otherChapterId) {
    return this.getStrategy(currentChapterId)
      .call(this, currentChapterId, otherChapterId);
  },

  getStrategy: function(chapterId) {
    return this.strategies[this.getNavigationBarMode(chapterId)] ||
      this.strategies.current_storyline;
  },

  getNavigationBarMode: function(chapterId) {
    var storylineId = this.entry.getStorylineIdByChapterId(chapterId);
    return this.entry.getStorylineConfiguration(storylineId).navigation_bar_mode;
  }
});

pageflow.ChapterFilter.strategies = _(pageflow.ChapterFilter.prototype.strategies).keys();

pageflow.ChapterFilter.create = function() {
  return new pageflow.ChapterFilter(pageflow.entryData);
};