import sayName from '../src/index';

describe('sayName', () => {
  it('should say your name', () => {
    const talk = sayName('Test');
    expect(talk).toBe('Your name is Test!');
  });
});
