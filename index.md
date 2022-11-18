<img src="assets/woojong_koh_profile.jpeg" align="right" style="width:30%">

Hi, I'm Woojong.

I'm interested in Large Language Models and other NLP models. I built a webapp called [SumUp](https://sumup.page/) that summarizes a web article with AI-generated Q&As and discussion using GPT-3. Please take a look!

I was an Entrepreneur in Residence at [Hashed](https://www.hashed.com) from October 2021 to Apirl 2022. I worked on web3 and crypto projects. Prior to joining Hashed, I was a software engineer at [Waymo](https://waymo.com), formerly known as the Google self-driving car project, working on vision-based detection and classification for self-driving cars using various machine learning techniques.[^1] 

[CV](./assets/wjkoh-cv-public.pdf) \| [Google Scholar](https://scholar.google.com/citations?user=Mz6M9j0AAAAJ&hl=en) \| [LinkedIn](https://www.linkedin.com/in/wjkoh)

## Recent news
- Launched [SumUp](https://sumup.page/), a web app that makes articles easier to understand using AI. Based on GPT-3, the app provides short summary, AI-generated Q&As, discussion between AIs, comments, and so on. The V2 is on the way.
- Launched [Pass the Baton](https://baton.art/), an NFT[^2] art project with purpose, on November 18th, 2021. The project creates a sustainable platform for giving on the blockchain. The NFTs are [ERC-721](https://ethereum.org/en/developers/docs/standards/tokens/erc-721/) tokens on [Ethereum](https://ethereum.org/en/). See more at https://baton.art.

## Press
* XREAL - [구글 웨이모 엔지니어가 #Hashed에 간 이유 - Hashed EIR 고우종을 만나다.](https://www.xreal.info/24642ad7-40b3-41a8-8aff-b8f639568d20)
* 한국경제 - [박사 학위·구글 모두 버리고…30대 청년의 '과감한 선택' [황정수의 인(人) 실리콘밸리]](https://www.hankyung.com/it/article/202110021249i)
* 한국경제 - [고우종 前 엔지니어 "세상 바꿀 아이템 찾으러 구글 박차고 나왔죠"](https://www.hankyung.com/economy/article/2021100568691) ([PDF](assets/the_korea_economic_daily_20211006_A032.pdf))
* 김단테 - [테슬라와 차원이 다른 자율주행 능력? 웨이모 초기멤버가 알려드림](https://youtu.be/20wE2yRRTuw)

## Work experience
{% assign pages = site.pages | where: "work_experience", true -%}
{%- for page in pages -%}
 * [{{ page.title }}]({{ page.url }})
{% endfor %}

* Entrepreneur in Residence, [Hashed](https://www.hashed.com), Oct 2021 - present
* Software Engineer, [Waymo LLC](http://waymo.com), May 2016 - Jun 2021  

## Education
* Ph.D. student, Computer Science,  Aug. 2012 - May 2016 (on leave)  
University of California, Berkeley
* M.S., Computer Science, May 2016 ([thesis](https://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-5.html))  
University of California, Berkeley
* B.S., Computer Science and Engineering, Feb. 2012  
[Seoul National University](http://en.snu.ac.kr), Seoul, South Korea

## Publications
{% include_relative publications.md %}

## Course projects
{% assign pages = site.pages | where: "course_project", true | sort: "date" | reverse -%}
{%- for page in pages -%}
 * [{{ page.title }} ({{ page.date | date: "%b %Y" }})]({{ page.url }})
{% endfor %}

## Showcase
{% for image in site.static_files -%}
{%- if image.path contains "/showcase/" -%}
<a href="{{ image.path }}"><img src="{{ image.path }}" style="width:33%"></a>
{%- endif -%}
{%- endfor %}

[^1]: See [my old profile](http://wjkoh.wikidot.com) for more info.
[^2]: Non-fungible token.
