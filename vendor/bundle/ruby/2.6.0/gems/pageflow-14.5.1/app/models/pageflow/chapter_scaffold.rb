module Pageflow
  class ChapterScaffold
    def initialize(chapter, options)
      @chapter = chapter
      @options = options
    end

    delegate :save!, to: :@chapter

    def build
      if @options[:depth] == 'page'
        @page = @chapter.pages.build(template: 'background_image')
      end

      self
    end

    def as_json(_ = {})
      {
        chapter: @chapter,
        page: @page
      }
    end

    def to_model
      @chapter
    end

    def self.build(storyline, attributes, options)
      new(storyline.chapters.build(attributes), options).build
    end
  end
end
