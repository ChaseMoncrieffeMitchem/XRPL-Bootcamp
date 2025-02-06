module.exports = {
    transform: {
      '^.+\\.ts?$': 'ts-jest',
    },
    testEnvironment: 'node',
    testRegex: '.*/(src|tests)/.*\\.(test|spec)?\\.(ts|js)$',
    moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],
    roots: ['/src', '/tests'],
  };