require('../src/jasmine-spec-reporter.js')
jasmine.getEnv().reporter.subReporters_ = [] # remove jasmine-node default reporter
jasmine.getEnv().addReporter(new jasmine.SpecReporter())

describe 'first suite', ->
  it 'should be ok', ->
    expect(true).toBe(true)
  
  it 'should be ok', ->
    expect(true).toBe(true)
  
  it 'should failed', ->
    expect(true).toBe(false)

  it 'should be ok', ->
    expect(true).toBe(true)


describe 'second suite', ->
  it 'should failed', ->
    expect(true).toBe(false)

  it 'should be ok', ->
    expect(true).toBe(true)
  
  describe 'first child suite', ->
    describe 'first grandchild suite', ->
      it 'should failed', ->
        expect(true).toBe(false)
        expect(true).toBe(false)
        expect(true).toBe(true)

      it 'should failed', ->
        expect(true).toBe(false)

      it 'should be ok', ->
        expect(true).toBe(true)
      

    describe 'second grandchild suite', ->
      it 'should failed', ->
        expect(true).toBe(false)

      it 'should be ok', ->
        expect(true).toBe(true)