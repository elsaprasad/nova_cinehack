# Film Production Management System

**Team Members:**
- Name 1 (Full Stack Developer) - email@example.com / @github-handle
- Name 2 (Backend Developer) - email@example.com / @github-handle
- Name 3 (Frontend Developer) - email@example.com / @github-handle

## Elevator Pitch
A comprehensive film production management system that streamlines script analysis, scene management, and budget planning using AI-powered automation.

## Live Demo
- URL / IP: `http://YOUR_IP:PORT`
- Endpoints: see `deployment/ENDPOINTS.md`
- Local network consent: By submitting this project, we consent to event organizers and judges accessing the listed local endpoints while connected to the event Wi-Fi for evaluation purposes.

## Quick Start (Local)

1. Clone the repository:
```bash
git clone https://github.com/your-org/your-repo.git
cd your-repo
```

2. Create `.env` from `.env.example` and set required variables.

3. Open `src/index.html` in your browser or serve it:
```bash
# Using Python
python -m http.server 8000 -d src/

# Using Node.js
npx serve src/
```

4. Open http://localhost:8000

## Environment Variables

Create a `.env` file with:
- `SUPABASE_URL` — Supabase project URL
- `SUPABASE_KEY` — Supabase anon key
- `GEMINI_API_KEY` — Google Gemini API key

## Tests
```bash
# Install dependencies (if applicable)
npm install

# Run tests
npm test
```

## Known Limitations
- Script analysis limited to 15,000 characters
- Budget tracking requires manual scene selection
- Some features may require active internet connection

## License
MIT License - see LICENSE file for details

## Deployment & Endpoints
See `deployment/ENDPOINTS.md` for detailed service endpoint information.
