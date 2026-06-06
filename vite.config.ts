import { defineConfig } from 'vite'
import tsrxReact from '@tsrx/vite-plugin-react'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [
    tailwindcss(),
    tsrxReact()
  ],
})
