---
title: Steven Deobald
---

###### [ [www.deobald.ca](https://www.deobald.ca) ] . [ steven@deobald.ca ] . [ +1 707 DEO BALD ] . [ `@deobald` ]

Reverse Chronology
------------------

**Founder and CEO, Endatabas** (2023-2024, Canada)

Starting in early 2023, I began work with my cofounder, Håkan, on Endatabas (Endb), the spiritual successor to XTDB 2.x.
We had clear PMF with XTDB but felt we needed a product with its own financing, roadmap, and vision separate from a consulting firm.

I worked to simplify the deliverables for Endb:
I removed bitemporality in favour of vastly simplified unitemporal indexes.
We collaborated to implement a highly simplified SQL grammar which supported native documents and dynamic data while retaining a dialect compatible with SQLite.
The internals of product management for Endb are too broad and nuanced to go into here, but I'm happy to discuss them.

Product Management and Engineering Management went hand-in-hand on Endb.
The architectural vision of Endb was largely Håkan's --- he had been researching the space of immutable, time-travelling, HTAP databases for over 6 years by 2023.
As we were looking to build a fully-functional PoC by the end of 2023, my role as an EM was to keep the project delivering on-time.
I reviewed every line of code that went into Endb.

Deciding on a business model (cloud-native) and working our angle on the market into our pitch deck was entirely my responsibility.
Our pitch was twofold: both to potential customers, as pre-sales, and to potential VCs.
See more below.

- Brand and marketing - [endatabas.com](https://www.endatabas.com)
- Investment memos, pitch decks - [pitch.endatabas.com](https://pitch.endatabas.com/)
- Documentation - [docs.endatabas.com](https://docs.endatabas.com/)

**Product Consultant, XTDB** (2020-2023, Remote)

My time at XTDB can be divided into two broad categories, each spanning roughly one year:

First, I helped them define a brand for the product that spanned both XTDB 1.x and XTDB 2.x, despite the fact that they were fundamentally different products.
Thoughout that time, I wrote extensively with explanatory essays on xtdb.com and ran a project to revamp that website, managing both developers, artists, and designers.
I spent a fair amount of time coaching DevRel, encouraging XTDB staff to spend less time helping individual users with bespoke problems and writing clearer documentation that would help a wider base of users.

Second, I spent much of the second year on market research.
We had decided to execute XTDB 2.x but because it was quite a divergence from the product we had in the market (XTDB 1.x) --- prioritizing SQL over datalog, switching to columnar, disaggregated storage, preferring the Postgres wire protocol over custom APIs, and eschewing static indexes for adaptive indexes driven by ML --- we needed to validate that it was actually a product CTOs were looking for.
I had dozens of conversations over the first 6 months of 2022, mostly with CTOs and Engineering Directors.

Packaging, distribution, the correct open source license (AGPL-3.0) and the legal frameworks surrounding it, and a serverless business model were all all tied together.
I successfully made this collective pitch, to move to a SaaS model of delivery on top of existing cloud billing frameworks, to the owners.
I spent the latter half of 2022 implementing this with the team and keeping them focused on the technical vision, prior to Håkan and I leaving to start Endatabas.

**Engineering Manager, Pariyatti** (2019-present, Volunteer, Remote)

I was approached in 2019 to lead a team to develop a mobile app which would incrementally replace or augment Pariyatti's existing brick-and-mortar store and web-based e-commerce offerings.

Pariyatti is a 501(c)3 non-profit based in Washington state.
I started this project by interviewing various consultancies who had the potential capacity to deliver the mobile app.
However, it quickly became apparent, based on Pariyatti's legacy e-commerce software, that the most difficult deliverable would actually be the web service that hosted all the data they wanted to provide to clients (mobile or otherwise).

Covid provided an opportunity to work on this project, leading a team of volunteers and guiding Pariyatti's staff (who are not software developers) though the process of the initial builds of both the service and the mobile app.
A lot of this work was exploratory.
We needed to decide on a mobile app framework that would support both iOS and Android.
Xamarin and ReactNative were both rejected early on; we eventually settled on Flutter and that choice has since proven a success.
The service required graph queries over deeply-linked and nested data, which was what caused my interest in the original XTDB (1.x), and led to my role there.

I still manage the volunteer efforts and advise Pariyatti staff on this project, 5+ years on.

**Founder and CEO, Nilenso Software** (2012-2018, India)

I founded Nilenso Software LLP in 2012.
The premise of Nilenso was that of a worker cooperative; this isn't legally possible (for a technology company) in India, so we structured Nilenso as an LLP where every employee is a legal partner --- it remains this way today.
As a worker coop, Nilenso's purpose is defined by the desires of its collective ownership.
The two primary goals of Nilenso as laid out in our first year were:
(1) to do deep and challenging technical work and
(2) to build software we felt mattered to society.

After laying the foundations of the business and a rough, self-directed trajectory for it, I set about trying to capture these goals for the company.
Our first boulder client was Staples Labs, in the US, which made heavy use of Clojure and the most important projects we built for them were a multivariate experimentation platform upon which all their ML algorithms were evaluated --- and an ML-based predictive service for delivery times.

Around 2015, I grew our business by bringing us into GoJek, one of the leading personal logistics companies in Southeast Asia.
There, Nilenso staff were challenged further not just to write large, distributed systems in Clojure (and other modern stacks) but to mentor other staff members and consultants.
Around this time, we were often leading teams across half a dozen projects at GoJek.

In 2017 and 2018, our first big "social" project was Simple.org --- a universal solution to hypertension in developing markets like Bangladesh and Ethiopia.
Financed by the Gates Foundation and well-supported by a strong, international non-profit, this work enabled us to build some groundbreaking offline-first ("local-first") software that was also open source and broadly life-saving, without compromising on our billing rate.

We had a number of other clients over these years, but these were some of our largest.
Over this time, I managed client relationships, hired new staff, identified and let people go if they were mis-hires, sold new work, and ran our product initiatives.
I'm happy to discuss the details of the products we attempted, buyout offers we turned down, sales cycles I managed, and difficult hires and fires I had to oversee.
