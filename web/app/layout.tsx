import type {Metadata} from 'next';
import './globals.css';
export const metadata:Metadata={title:'KING BRO™ — Private Deals. Trusted Hands.',description:'Buy, sell and rent privately in Kerala. Your requirements, handled personally by our brokerage team.',manifest:'/manifest.webmanifest',icons:{icon:'/favicon.svg'}};
export default function RootLayout({children}:{children:React.ReactNode}){return <html lang="en"><body>{children}</body></html>}
