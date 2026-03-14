#set document(title: "Resume - Woojong Koh", author: "Woojong Koh")
#set page(paper: "us-letter", margin: (x: 0.8in, y: 0.8in), numbering: "1")
#set text(size: 10pt)
#set par(justify: true)

#let section(title) = {
  v(1em)
  text(weight: "bold", size: 12pt, title)
  v(-0.5em)
  line(length: 100%, stroke: 0.5pt)
  v(0.2em)
}

#let item(title, date, subtitle, location, body) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", title), text(weight: "bold", date)
  )
  v(-0.6em)
  grid(
    columns: (1fr, auto),
    text(style: "italic", subtitle), text(style: "italic", location)
  )
  v(0.2em)
  body
  v(0.5em)
}

#align(center)[
  #text(size: 20pt, weight: "bold")[Woojong Koh] 
  #v(0.3em)
  #link("mailto:wjkoh@cwrk.ai")[wjkoh\@cwrk.ai] | #link("https://wjkoh.com")[wjkoh.com] | #link("https://github.com/wjkoh")[github.com/wjkoh] | #link("https://linkedin.com/in/wjkoh")[linkedin.com/in/wjkoh]
]

#section("Profile")

CEO and Founder of Cowork AI, focusing on building Agentic AI and LLM-driven trading systems for US equities and cryptocurrencies. Previously an Entrepreneur in Residence at Hashed exploring web3 projects, and a Software Engineer at Waymo deploying vision-based machine learning systems directly to the autonomous fleet.

#section("Experience")

#item([#link("https://cwrk.ai/")[Cowork AI, Inc.]], "Nov 2022 – Present", "CEO & Founder", "Seoul, South Korea", [
  - Founded Cowork AI to build Agentic AI and LLM-driven trading systems for US equities and cryptocurrencies.
  - Launched the *Fred MCP Server*, an integration layer that seamlessly connects foundation models to real-time financial feeds, technical indicators, and alternative data like Reddit and Truth Social.
  - Supplied the Fred MCP Server to Kakaopay Securities, powering Korea's first AI mobile trading feature that autonomously researches and explains the causes behind sudden stock price movements.
  - Deployed *Project Hayes*, an autonomous Agentic Trading system actively powering Cowork AI's proprietary trading by monetizing 2nd and 3rd-order market effects ("Information Diffusion") using Knowledge Graphs, RAG, and Chain-of-Thought reasoning.
  - Released *Fred RAG Agent*, an enterprise-grade, on-premise Agentic RAG solution for financial and accounting firms to securely query proprietary documents alongside live market data.
])

#item([#link("https://www.hashed.com/")[Hashed]], "Oct 2021 – Mar 2022", "Entrepreneur in Residence", "Seoul, South Korea", [
  - Explored and developed web3 and crypto projects.
  - Launched #link("https://baton.art/")[*Pass the Baton*], an ERC-721 NFT art project on Ethereum designed as a sustainable platform for charitable giving.
  - Operated as a two-person development team, personally architecting and writing half of the production Solidity smart contracts.
])

#item([#link("https://waymo.com/")[Waymo LLC]], "May 2016 – Jun 2021", "Software Engineer", "Mountain View, CA", [
  - Deployed vision-based detection systems to the self-driving fleet, unblocking new driving areas by classifying unique, dynamic traffic signals (e.g., time-based/LED school zone signs, temporary construction signs).
  - Co-invented and patented a machine learning system for autonomous vehicles to detect, classify, and respond to unfamiliar traffic signs in real-time (#link("https://patents.google.com/patent/US20240054772A1")[US Patent 10,928,828]).
])

#item([#link("https://company.nexon.com/en/")[Nexon Corp.]], "Sep 2006 – Apr 2009", "Software Engineer (Alternative Military Service)", "Seoul, South Korea", [
  - Full-stack developer for *MapleStory*, a blockbuster 2D side-scrolling MMORPG with over 100M subscribers worldwide.
  - Developed a C++/DirectX 3D game client, an IOCP-based highly-concurrent game server, and managed large-scale databases using Transact-SQL.
  - Participated in the development of a new 3D MMORPG utilizing Unreal Engine 2.5.
])

#section("Education")

#item([#link("https://www.berkeley.edu/")[University of California, Berkeley]], "Aug 2012 – May 2016", "Ph.D. Candidate (On Leave) in Computer Science", "Berkeley, CA", [
  - Completed all coursework and preliminary examinations; currently on leave.
])

#item([#link("https://www.berkeley.edu/")[University of California, Berkeley]], "May 2016", "M.S. in Computer Science", "Berkeley, CA", [
  - Thesis: #link("http://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-5.html")[_View-Dependent Adaptive Cloth Simulation_]
])

#item([#link("https://www.snu.ac.kr/")[Seoul National University]], "Feb 2012", "B.S. in Computer Science and Engineering", "Seoul, South Korea", [
  - Graduated *summa cum laude*.
])

#section("Technical Skills")

- *Agentic AI & Protocols:* Multi-Agent Systems (MAS), MCP, A2A, Google ADK, Gemini CLI, RAG, Knowledge Graphs.
- *ML & Infrastructure:* vLLM, llama.cpp, PyTorch, TensorFlow, Vertex AI, Vector Databases (pgvector, SQLite-vector).
- *Software & Cloud:* Go, Python, C++, Solidity, gRPC, ConnectRPC, Docker, Nix, PostgreSQL, SQLite, Alpaca API, GCP (Cloud Run, GCE), HTMX, Alpine.js.

#section("Selected Publications")

- #link("http://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-5.html")[*View-Dependent Adaptive Cloth Simulation*]. Woojong Koh. Master's Thesis, EECS Department, University of California, Berkeley, Technical Report No. UCB/EECS-2016-5, January 2016.
- #link("https://doi.org/10.1109/TVCG.2015.2446482")[*View-Dependent Adaptive Cloth Simulation with Buckling Compensation*]. Woojong Koh, Rahul Narain, and James F. O'Brien. IEEE Transactions on Visualization and Computer Graphics (TVCG), October 2015.
- *View-Dependent Adaptive Cloth Simulation*. Woojong Koh, Rahul Narain, and James F. O'Brien. ACM SIGGRAPH/Eurographics Symposium on Computer Animation (SCA), July 2014.
- #link("https://doi.org/10.1145/2461912.2462020")[*Near-exhaustive Precomputation of Secondary Cloth Effects*]. Doyub Kim, Woojong Koh, Rahul Narain, Kayvon Fatahalian, Adrien Treuille, and James F. O'Brien. ACM SIGGRAPH 2013, July 2013.
