import { useState } from "react";

type ApiPost = {
  id: number;
  userId: number;
  title: string;
  body: string;
};

function PostRow({ post }: { post: ApiPost }) {
  return <li
    class="group flex items-baseline gap-6 py-4 border-b border-gray-100 last:border-none"
  >
    <span class="text-sm text-gray-400 w-20 shrink-0 tabular-nums">
      {"User " + post.userId}
    </span>
    <a
      href={"/" + post.id}
      class="text-gray-900 hover:text-black font-medium hover:underline underline-offset-2 grow capitalize"
    >
      {post.title}
    </a>
    if (post.userId <= 3) {
      <span
        class="text-xs font-medium px-2 py-0.5 rounded-full bg-green-100 text-green-700"
      >
        "Featured"
      </span>
    } else if (post.userId <= 7) {
      <span
        class="text-xs font-medium px-2 py-0.5 rounded-full bg-sky-100 text-sky-700"
      >
        "Popular"
      </span>
    } else {
      <span
        class="text-xs font-medium px-2 py-0.5 rounded-full bg-gray-100 text-gray-400"
      >
        "Story"
      </span>
    }
  </li>;
}

async function AsyncPosts({ query }: { query: string }) {
  return <>
    const res = await fetch(
      "https://jsonplaceholder.typicode.com/posts?_limit=20",
    );
    const all: ApiPost[] = await res.json();
    const items = all.filter(
      (p) => p.title.toLowerCase().includes(query.toLowerCase()),
    );
    if (items.length === 0) {
      <p class="text-sm text-gray-400 py-8 text-center">"No articles found."</p>
    } else {
      <ul>
        for (const post of items; key post.id) {
          <PostRow {post} />
        }
      </ul>
    }
  </>;
}

function App() {
  const [query, setQuery] = useState("");

  return <>
    <div class="min-h-screen bg-white">
      <main class="max-w-2xl mx-auto px-6 py-16">
        <header class="mb-10">
          <h1 class="text-2xl font-bold tracking-tight text-gray-900 mb-3">
            "blog.dev"
          </h1>
          <p class="text-gray-500 text-sm leading-relaxed">
            "Writing on software, the web, and things I find interesting."
          </p>
        </header>
        <input
          type="text"
          placeholder="Search articles..."
          value={query}
          onChange={(e) => setQuery(e.currentTarget.value)}
          class="w-full mb-8 px-4 py-2 text-sm border border-gray-200 rounded-lg outline-none focus:border-gray-400 transition-colors"
        />
        try {
          <AsyncPosts {query} />
        } pending {
          <p class="text-sm text-gray-400 animate-pulse">"Loading posts..."</p>
        } catch (_e) {
          <p class="text-sm text-red-400">"Failed to load posts."</p>
        }
      </main>
    </div>
  </>;
}

export default App
