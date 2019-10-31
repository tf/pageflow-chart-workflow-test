pageflow.FileTypesCollection = pageflow.Object.extend({
  initialize: function(fileTypes) {
    this._fileTypes = fileTypes;
  },

  findByUpload: function(upload) {
    var result = this.find(function(fileType) {
      return fileType.matchUpload(upload);
    });

    if (!result) {
      throw(new pageflow.UnmatchedUploadError(upload));
    }

    return result;
  },

  findByCollectionName: function(collectionName) {
    var result = this.find(function(fileType) {
      return fileType.collectionName === collectionName;
    });

    if (!result) {
      throw('Could not find file type by collection name "' + collectionName +'"');
    }

    return result;
  }
});

_.each(['each', 'map', 'reduce', 'first', 'find', 'contains', 'filter'], function(method) {
  pageflow.FileTypesCollection.prototype[method] = function() {
    var args = Array.prototype.slice.call(arguments);
    args.unshift(this._fileTypes);
    return _[method].apply(_, args);
  };
});
