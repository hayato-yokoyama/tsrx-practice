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

function PostRow({ post }: { post: Post }) {
  return <li
    class="group flex items-baseline gap-6 py-4 border-b border-gray-100 last:border-none"
  >
    <span class="text-sm text-gray-400 w-20 shrink-0 tabular-nums">
      {post.date}
    </span>
    <a
      href={"/" + post.slug}
      class="text-gray-900 hover:text-black font-medium hover:underline underline-offset-2"
    >
      {post.title}
    </a>
  </li>;
}

function App() {
  return <>
    <div class="min-h-screen bg-white">
      <main class="max-w-2xl mx-auto px-6 py-16">
        <header class="mb-14">
          <h1 class="text-2xl font-bold tracking-tight text-gray-900 mb-3">
            "blog.dev"
          </h1>
          <p class="text-gray-500 text-sm leading-relaxed">
            "Writing on software, the web, and things I find interesting."
          </p>
        </header>
        <ul>
          for (const post of posts; key post.slug) {
            <PostRow {post} />
          }
        </ul>
      </main>
    </div>
  </>;
}

export default App
