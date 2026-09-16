import { env } from 'cloudflare:workers';
export function bindings(){const e=env as unknown as {DB?:D1Database;BUCKET?:R2Bucket;BROKER_EMAILS?:string};if(!e.DB)throw new Error('The private workspace is temporarily unavailable. Please try again.');return {...e,DB:e.DB};}
export function isBroker(email:string){return (bindings().BROKER_EMAILS||'').split(',').map(x=>x.trim().toLowerCase()).filter(Boolean).includes(email.toLowerCase());}
export const modes=['Buy','Sell','Rent','Give for Rent'];
export const statuses=['Submitted','Under review','Matching','Site visit','Negotiation','Agreement','Closed','Withdrawn'];
export const uid=()=>crypto.randomUUID();
export const now=()=>new Date().toISOString();
export const text=(v:unknown,max=1000)=>typeof v==='string'?v.trim().slice(0,max):'';
