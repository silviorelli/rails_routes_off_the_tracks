
  function posts_path(options){
    if(options && options.data) {
      var op_params = []
      for(var key in options.data){
        op_params.push([key, options.data[key]].join('='));
      }
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d12726760> + ' + ' + ' + ' + '?' + op_params.join('&');
    }else if(options && options.params) {
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d12726760> + ' + ' + ' + ' + ''
    }else {
      var params = options;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d12726760> + ' + ' + ' + ' + ''
    }
  }

  function new_post_path(options){
    if(options && options.data) {
      var op_params = []
      for(var key in options.data){
        op_params.push([key, options.data[key]].join('='));
      }
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d12351e78> + ' + ' + ' + ' + '?' + op_params.join('&');
    }else if(options && options.params) {
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d12351e78> + ' + ' + ' + ' + ''
    }else {
      var params = options;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d12351e78> + ' + ' + ' + ' + ''
    }
  }

  function edit_post_path(options){
    if(options && options.data) {
      var op_params = []
      for(var key in options.data){
        op_params.push([key, options.data[key]].join('='));
      }
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d1235a9b0> + ' + ' + ' + ' + '?' + op_params.join('&');
    }else if(options && options.params) {
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d1235a9b0> + ' + ' + ' + ' + ''
    }else {
      var params = options;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d1235a9b0> + ' + ' + ' + ' + ''
    }
  }

  function post_path(options){
    if(options && options.data) {
      var op_params = []
      for(var key in options.data){
        op_params.push([key, options.data[key]].join('='));
      }
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d141c7448> + ' + ' + ' + ' + '?' + op_params.join('&');
    }else if(options && options.params) {
      var params = options.params;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d141c7448> + ' + ' + ' + ' + ''
    }else {
      var params = options;
      return '#<Journey' + params.' + params.Path' + params.' + params.Pattern' + params.0x007f9d141c7448> + ' + ' + ' + ' + ''
    }
  }
