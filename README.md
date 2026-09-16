# KING BRO — Private Property Concierge

A cinematic responsive private brokerage website for Kerala. This is a private review deployment, not a public customer launch.

## Implemented
- Responsive single-screen desktop hero, 2×2 mobile service cards, controlled parallax, hover shine, gold illumination, reduced-motion support.
- Buy / Sell / Rent / Give for Rent private request wizard. Seller/landlord location is optional.
- Dispatch-owned ChatGPT authentication; no simulated passwords or OTP.
- Server-side D1 records for requests, events, appointments, profile, support, matches, commissions and audit history.
- Private R2 uploads with server-side ownership checks, size/type/signature checks and attachment-only downloads.
- Customer request tracking, appointments, documents, support and account preferences.
- Broker email allowlist, status updates, internal-only staff notes, manual matching, appointment confirmation, support replies and commission ledger.
- Browser print/save PDF for an individual private request. This is not an automatic generated-report service.
- Web app manifest for a standalone mobile experience; native APK and install behavior are not verified.

## Configuration
Logical D1/R2 bindings and Site identity are in `.openai/hosting.json`. Runtime `BROKER_EMAILS` is a comma-separated list of verified brokerage account emails, set through the hosting environment. Never accept a client-supplied broker role.

The current review is owner-private. Broader customer access requires a deliberate release decision.

## Verification completed
- TypeScript no-emit check.
- Local compiled API integration suite: `node tests/portal-integration.cjs`, using real SQLite and isolated R2/test identity adapters. This verifies validation, ownership, query behavior, persistence and broker-only operations; it does not test real ChatGPT sign-in or production Cloudflare storage.
- Desktop homepage and request drawer browser inspection.
- 390 × 844 mobile iframe viewport inspection, including full lion face framing and 2×2 actions.
- Seller flow advances without location in the browser.

## Public launch work still required
- Agree on and integrate public customer authentication/email OTP and recovery. Current sign-in uses ChatGPT.
- Reconcile with the existing `api.kingbro.in` backend and existing customer records; this review does not migrate or connect to that backend.
- Verify real signed-in owner/broker journeys on the deployed private site, uploads and actual storage.
- Configure customer/broker notifications and operational delivery. Support replies and updates are currently in-app only.
- Native Flutter APK and Windows software are outside this web build.
- Embedded interactive map picker is not implemented; private Google Maps/OpenStreetMap pin links are accepted.
- Final brokerage legal terms, retention policy, operational backup/restore and public release review.
- Document antivirus/content scanning is not implemented. Do not treat basic signature checks as malware scanning.

Use the existing pnpm lockfile and the bundled Sites build scripts. Keep `.env` values, local test databases and generated build directories out of source control.

## South India update

Kerala, Tamil Nadu and Karnataka can be selected on Home and in requests. Existing requests default to Kerala through additive migration 0001. Structured private details include district/city, owner address/PIN (optional), bedrooms, bathrooms, parking, furnishing, availability, alternate phone, language and preferred contact/time. Main phone remains required. Photos support local preview/removal before submission and authenticated inline viewing after upload; PDFs remain downloads. Both image and document downloads enforce request ownership or broker authorization.

Validation: 45 local SQLite/API assertions, TypeScript and production build; browser checks for state selection, owner forms, photo selection/preview and responsive layout. These checks do not establish hosted authentication end-to-end or public-launch readiness. Reference-board automatic matching scores, automatic PDF generation, native Android application and Oracle deployment are not implemented; existing manual matching and browser print-to-PDF remain.
