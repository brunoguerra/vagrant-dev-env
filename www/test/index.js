var expect = require('chai').expect,
    www = require('..');

describe('www', function() {
  it('should say hello', function(done) {
    expect(www()).to.equal('Hello, world');
    done();
  });
});
