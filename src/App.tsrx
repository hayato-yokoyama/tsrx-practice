import { useState, useEffect } from "react";

type Post = {
  slug: string;
  title: string;
  date: string;
};

const posts: Post[] = [
  {
    slug: "inference-scaling-spirit",
    title: "Inference Scaling and the Spirit of Experimentation",
    date: "Dec 2024",
  },
  {
    slug: "next-js-app-router",
    title: "Next.js App Router: The Good, The Bad, The Ugly",
    date: "Jun 2024",
  },
  {
    slug: "the-deployment-age",
    title: "The Deployment Age",
    date: "Nov 2023",
  },
  {
    slug: "making-sense-of-rsc",
    title: "Making Sense of React Server Components",
    date: "Mar 2023",
  },
  {
    slug: "monorepos-are-changing",
    title: "Monorepos are Changing How Teams Build Software",
    date: "Aug 2022",
  },
  {
    slug: "speculation-and-speed",
    title: "Speculation and Speed: How Browsers Get Fast",
    date: "Jan 2022",
  },
  {
    slug: "why-i-blog",
    title: "Why I Blog",
    date: "Jul 2021",
  },
];

function PostBadge({ date }: { date: string }) {
  const year = parseInt(date.split(" ")[1]);
  return <>
    if (year >= 2024) {
      <span
        class="text-xs font-medium px-2 py-0.5 rounded-full bg-green-100 text-green-700"
      >
        "New"
      </span>
    } else if (year >= 2023) {
      <span
        class="text-xs font-medium px-2 py-0.5 rounded-full bg-sky-100 text-sky-700"
      >
        "Recent"
      </span>
    } else {
      <span
        class="text-xs font-medium px-2 py-0.5 rounded-full bg-gray-100 text-gray-400"
      >
        "Archive"
      </span>
    }
  </>;
}

function PostRow({ post }: { post: Post }) {
  return <li
    class="group flex items-baseline gap-6 py-4 border-b border-gray-100 last:border-none"
  >
    <span class="text-sm text-gray-400 w-20 shrink-0 tabular-nums">
      {post.date}
    </span>
    <a
      href={"/" + post.slug}
      class="text-gray-900 hover:text-black font-medium hover:underline underline-offset-2 grow"
    >
      {post.title}
    </a>
    <PostBadge date={post.date} />
  </li>;
}

function App() {
  const [query, setQuery] = useState("");

  const filtered = posts.filter(
    (p) => p.title.toLowerCase().includes(query.toLowerCase()),
  );

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
        <ul>
          if (filtered.length === 0) {
            <p class="text-sm text-gray-400 py-8 text-center">
              "No articles found."
            </p>
          } else {
            for (const post of filtered; key post.slug) {
              useEffect(() => {
                console.log("rendered: " + post.slug);
              }, [post.slug]);
              <PostRow {post} />
            }
          }
        </ul>
      </main>
    </div>
  </>;
}

export default App
