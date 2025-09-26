# Company Landing Page

A modern, responsive landing page built with Next.js, TypeScript, and Tailwind CSS to introduce your company and showcase your services.

## Features

- ✨ **Responsive Design**: Optimized for all devices (mobile, tablet, desktop)
- 🎨 **Modern UI**: Clean and professional design with Tailwind CSS
- ⚡ **Fast Performance**: Built with Next.js for optimal performance
- 📱 **Mobile-First**: Designed with mobile users in mind
- 🔧 **TypeScript**: Type-safe development experience
- 🎯 **SEO Friendly**: Optimized for search engines

## Sections Included

1. **Navigation Bar** - Fixed header with responsive menu
2. **Hero Section** - Compelling introduction with call-to-action buttons
3. **About Us** - Company story and values
4. **Services** - Showcase of your key services/offerings
5. **Contact** - Contact information and contact form
6. **Footer** - Social links and company information

## Getting Started

### Prerequisites

- Node.js 18+ 
- npm or yarn

### Installation

1. Clone the repository or navigate to your project folder
2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm run dev
   ```

4. Open [http://localhost:3000](http://localhost:3001) in your browser

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run start` - Start production server
- `npm run lint` - Run ESLint

## Customization

### Company Information

Edit the following files to customize your company information:

- `src/app/page.tsx` - Main landing page content
- `src/app/layout.tsx` - Page metadata and title

### Styling

The project uses Tailwind CSS for styling. You can:

- Modify colors in `tailwind.config.js`
- Add custom styles in `src/app/globals.css`
- Update component classes directly in `src/app/page.tsx`

### Content Sections

Each section is clearly marked in `src/app/page.tsx`:

- **Navigation**: Update company name and menu items
- **Hero**: Modify headline, description, and CTA buttons
- **About**: Replace with your company story
- **Services**: Update service offerings and descriptions
- **Contact**: Add your actual contact information
- **Footer**: Update social links and copyright

## Responsive Breakpoints

The design is fully responsive with breakpoints:

- Mobile: `< 768px`
- Tablet: `768px - 1024px`
- Desktop: `> 1024px`

## Technology Stack

- **Framework**: Next.js 15.5.4
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **Icons**: Heroicons (SVG)
- **Fonts**: Inter (Google Fonts)

## Deployment

The project can be deployed to various platforms:

- **Vercel** (recommended): `npm run build` and deploy
- **Netlify**: Build command: `npm run build`, Publish directory: `.next`
- **Any hosting service**: Build with `npm run build` and serve the `.next` folder

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## License

This project is open source and available under the [MIT License](LICENSE).
