import { nodeResolve } from '@rollup/plugin-node-resolve';
import { terser } from 'rollup-plugin-terser';
import babel from '@rollup/plugin-babel';
import pkg from './package.json';

const input = ['src/index.js'];
const banner = `/*!
 * ${pkg.name} v${pkg.version}
 * (c) ${pkg.author}
 * Released under the ${pkg.license} License.
 */
`;

export default [
  {
    // UMD
    input,
    plugins: [
      nodeResolve(),
      babel({
        babelHelpers: 'bundled',
      }),
      terser(),
    ],
    output: {
      banner,
      file: `dist/${pkg.name}.min.js`,
      format: 'umd',
      name: 'myLibrary', // this is the name of the global object
      esModule: false,
      exports: 'named',
      sourcemap: true,
    },
  },

  // ESM and CJS
  {
    input,
    plugins: [nodeResolve()],
    output: [
      {
        banner,
        dir: 'dist/esm',
        format: 'esm',
        exports: 'named',
        sourcemap: true,
      },
      {
        banner,
        dir: 'dist/cjs',
        format: 'cjs',
        exports: 'named',
        sourcemap: true,
      },
    ],
  },
];
