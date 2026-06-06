import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'

function App() {
  const [count, setCount] = useState(0)

  return <>
    <div class="container">
      <div class="logos">
        <a href="https://vitejs.dev" target="_blank">
          <img src={viteLogo} class="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} class="logo" alt="React logo" />
        </a>
      </div>
      <h1>"Vite + React"</h1>
      <div class="card">
        <button class="counter" onClick={() => setCount((count) => count + 1)}>
          "count is " {count}
        </button>
        <p>
          "Edit " <code>"src/App.tsrx"</code> " and save to test HMR"
        </p>
      </div>
    </div>
    
    <style>
      .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 2rem;
      }

      .logos {
        display: flex;
        gap: 2rem;
        margin-bottom: 1rem;
      }

      .logo {
        width: 64px;
        height: 64px;
      }

      .card {
        padding: 1.5rem;
        border: 1px solid #ccc;
        border-radius: 8px;
        text-align: center;
      }

      .counter {
        padding: 0.5rem 1.5rem;
        font-size: 1rem;
        cursor: pointer;
        border-radius: 4px;
        border: 1px solid #888;
        margin-bottom: 1rem;
      }
    </style>
  </>;
}

export default App
