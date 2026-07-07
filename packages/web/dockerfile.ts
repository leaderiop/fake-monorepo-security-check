// Discovery NEGATIVE: lowercase `dockerfile.ts` is a TypeScript source file and MUST NOT
// be picked up as a Docker manifest by the discovery globs.
export const buildImageTag = (name: string, version: string): string =>
  `${name}:${version}`;
