# Support Engineer Writing Challenge

## Meta

The Sprite API docs: https://docs.sprites.dev/api/ ... redirect to https://docs.sprites.dev/api/v0.0.1-rc30/ which currently 404s. In the ticket response below, I'm assuming users handle `SIGTERM`. I couldn't find any specific docs for `HandleSuspend`.

For the Community Forum Response, I can't see anything in the Sprite docs that might indicate whether there's a way to check proxy logs. Maybe users aren't given that kind of access to proxies? But there's a possibility the forum user's problem is that their Sprite is perceived unhealthy by the proxy and so the proxy refuses to connect to it. I'd have to speak to a Fly coworker to know how a user could diagnose this.

## Customer Ticket Response

Hi Sam,

Your Sprite will need to flush to disk before the Sprite sleeps. It's possible a larger instance is actually holding onto the kernel write buffer longer than your older, smaller instance and it's not flushed in time. Partial writes could be causing the "malformed disk image" errors and unflushed dirty pages would explain the missing files, so it's possible these issues are related.

A couple things to check:

* Can you try adding an explicit `sync` call after your transaction commits to explicitly flush? (ex. `os.sync()` in python)
* Can you ensure that your worker gracefully closes the SQLite connection when it detects `SIGTERM` (suspend)?

If those don't help:

* Please send over the Sprite ID
* Can you confirm if the queue is on the Sprite or another machine?
* What does the process of marking a job completed look like?

Thanks!
-steven

## Troubleshooting Steps

1. I'm not familiar with Sprites, so I asked an LLM about Sprites and skimmed the docs. If I were actually supporting Fly.io users, I would want to know Fly's systems inside and out so both of these were a little artificial.
2. If I were Sam, I would want to hear a direct, developer-focused response that folds in all of the information s/he provided. Between the corrupt SQLite dbs, missing files, and "reverted" jobs, and the appearance of the problem on the larger instance, it's hard to imagine this isn't a page flush issue. The Sprite docs talk about Sprites going cold before they suspend, so I'm a little hesitant to jump on this, but getting Sam to try a full `sync` is cheap and might solve their problem immediately (and get them thinking about how Sprites suspend, for other use cases).
3. It might be getting into the weeds too quickly, but I did want to confirm with Sam that their queue is actually on the same machine, since that was never explicit. If it's _not_, that means the job reset is probably a separate issue and the third question gets ahead of of that possibility (and will also provide a little insight into Sam's thought process).

## Community Forum Response

Hi there! We don't have any known outages at the moment. Could I get you to try a few things?

* Is your DNS for your public URL is pointing to Fly's public proxy (`<name>.sprites.app`)?
* Is your URL auth public and the relevant port forwarded to 3000?
  * https://docs.sprites.dev/working-with-sprites/#networking-urls-and-port-forwarding
* Is your app bound to 0.0.0.0? (Listening on 127.0.0.1 will work for `localhost` but not publicly.)

## DM to a Product Engineer

Hey Don! I pinged on the internal forum yesterday but I don't think you saw it:

https://discourse.fly.io/t/broken-pagination/34700

We have an urgent issue with MadeUpCompany: they run 2500 apps but the Billing UI is only showing them the first 100 apps so they're unable to bill their downstream customers. I see there was a PR merged for this 2 weeks ago that prevents the old crash but it seems like pagination is broken in some cases:

https://github.com/superfly/billing/pull/176

I wrote a script you can run in dev to reproduce the issue:

https://github.com/superfly/billing/blob/pagination-cutoff-repro/bin/create-2500-apps.rb

I've also run it in the sandbox env if you want to impersonate my user and take a look at it quickly:

https://sandbox.fly.io/dashboard/steven-cutoff/billing/

Taking a quick look at the code, it seems like the unit test is actually just backward for pagination display (the db query is correct), so hopefully it's a relatively quick fix. The bug has been there for a couple years so I think it just never surfaced back when the UI crashed before:

https://github.com/superfly/billing/blob/main/test/pagination_test.ts#L123
https://github.com/superfly/billing/blob/main/src/pagination.ts#L32

Some of their downstream customers aren't spending much, but they have a few large customers that are buried in the hidden pages. MadeUpCompany is a $100,000/mo account already and growing, so it would be good if we can resolve this for them quickly. They need to bill their customers by May 16.

Here's MadeUpName's contact info if you want to reach out to them directly:

* madeupname@madeupcompany.com
* +1-123-454-6789

Let me know if there's anything I can do to help!
