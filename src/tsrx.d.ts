import 'react';

declare module 'react' {
  interface HTMLAttributes<T> {
    class?: string | undefined;
  }
  interface SVGProps<T> {
    class?: string | undefined;
  }
}
