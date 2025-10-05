#!/bin/bash

# Hackathon Repository Structure Setup Script
# Run this in your project root directory

echo "Creating hackathon repository structure..."

# Create directory structure
mkdir -p docs
mkdir -p deployment
mkdir -p src
mkdir -p scripts
mkdir -p tests
mkdir -p .github/workflows
mkdir -p assets

# Create README.md
cat > README.md << 'EOF'
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
EOF

# Create deployment/ENDPOINTS.md
cat > deployment/ENDPOINTS.md << 'EOF'
# Service Endpoints

## Public/Local Endpoints

| Service Name | Protocol | Host (IP or domain) | Port | Path / Example URL |
|--------------|----------|---------------------|------|-------------------|
| Web Frontend | http | YOUR_IP_HERE | 8000 | / => http://YOUR_IP:8000/ |
| Supabase API | https | teveaeieqejtofhasqae.supabase.co | 443 | /rest/v1 |
| Gemini API | https | generativelanguage.googleapis.com | 443 | /v1beta/models |

## How to Find Your IP

### On Linux/Mac:
```bash
curl -s https://ifconfig.me
```

### On Windows PowerShell:
```powershell
(Invoke-WebRequest -Uri "https://ifconfig.me").Content
```

### Check listening ports:
```bash
# Linux
sudo ss -tulpn | grep LISTEN

# Windows
netstat -ano | Select-String "LISTEN"
```

## Local Network Access
If hosting on local network, judges can access at: `http://192.168.X.X:PORT`

Replace YOUR_IP_HERE with your actual IP address after discovery.
EOF

# Create LICENSE
cat > LICENSE << 'EOF'
MIT License

Copyright (c) 2025 [Your Team Name]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

# Create CONTRIBUTING.md
cat > CONTRIBUTING.md << 'EOF'
# Contributing Guidelines

## How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Code Standards

- Write clean, readable code
- Comment complex logic
- Follow existing code style
- Test your changes before submitting

## Reporting Issues

Use GitHub Issues to report bugs or suggest features. Include:
- Clear description
- Steps to reproduce (for bugs)
- Expected vs actual behavior
- Screenshots if applicable
EOF

# Create CODE_OF_CONDUCT.md
cat > CODE_OF_CONDUCT.md << 'EOF'
# Code of Conduct

## Our Pledge

We pledge to make participation in our project a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, gender identity and expression, level of experience, nationality, personal appearance, race, religion, or sexual identity and orientation.

## Our Standards

Examples of behavior that contributes to a positive environment:
- Using welcoming and inclusive language
- Being respectful of differing viewpoints
- Gracefully accepting constructive criticism
- Focusing on what is best for the community

Examples of unacceptable behavior:
- Harassment or hate speech
- Trolling, insulting/derogatory comments
- Public or private harassment
- Publishing others' private information without permission
- Plagiarism or submitting non-original work without citation

## Enforcement

Violations may result in disqualification from the hackathon. Report issues to: cinehack.ai@gmail.com

## Attribution

This Code of Conduct is adapted from the Contributor Covenant, version 2.0.
EOF

# Create .env.example
cat > .env.example << 'EOF'
# Supabase Configuration
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_KEY=your-anon-key-here

# Gemini API Configuration
GEMINI_API_KEY=your-gemini-api-key-here

# Server Configuration
PORT=8000
EOF

# Create scripts/start.sh
cat > scripts/start.sh << 'EOF'
#!/bin/bash

echo "Starting Film Production Management System..."

# Check if .env exists
if [ ! -f .env ]; then
    echo "Error: .env file not found. Please copy .env.example to .env and configure it."
    exit 1
fi

# Start server
if command -v python3 &> /dev/null; then
    echo "Starting Python HTTP server on port 8000..."
    python3 -m http.server 8000 -d src/
elif command -v python &> /dev/null; then
    echo "Starting Python HTTP server on port 8000..."
    python -m http.server 8000 -d src/
else
    echo "Python not found. Please install Python or use another server."
    echo "Alternative: npx serve src/ -p 8000"
    exit 1
fi
EOF

chmod +x scripts/start.sh

# Create a simple test file
cat > tests/test_basic.js << 'EOF'
// Basic test example
// Replace with actual tests for your application

describe('Film Production Management System', () => {
    it('should load without errors', () => {
        // Add your tests here
        expect(true).toBe(true);
    });
});
EOF

# Create docs/ARCHITECTURE.md
cat > docs/ARCHITECTURE.md << 'EOF'
# System Architecture

## Overview
This document describes the architecture of the Film Production Management System.

## Components

### Frontend
- Single-page HTML application
- Vanilla JavaScript
- Supabase client for authentication and database

### Backend Services
- **Supabase**: Authentication, database, real-time updates
- **Google Gemini API**: AI-powered script analysis

## Data Flow
1. User uploads script file
2. Script sent to Gemini API for analysis
3. Scenes extracted and stored in Supabase
4. Budget tracking per scene
5. Real-time updates across team members

## Database Schema
See Supabase dashboard for table structures:
- `projects`: Project metadata
- `scenes`: Scene breakdowns
- `budget_tracking`: Budget items per scene
EOF

# Create .gitignore
cat > .gitignore << 'EOF'
# Environment variables
.env
.env.local

# Dependencies
node_modules/
npm-debug.log*

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# Build outputs
dist/
build/
*.log
EOF

# Create assets/README.md
cat > assets/README.md << 'EOF'
# Assets

## Contents
- `presentation.pdf` or `presentation.pptx` - Final presentation slides
- `demo.mp4` - Demo video (if live demo not available)
- `screenshots/` - Application screenshots
- `logo.png` - Project logo

## Requirements
- Presentation must be uploaded here and emailed to cinehack.ai@gmail.com
- Demo video must be at least 5 minutes showing key features
- Include screenshots of main workflows
EOF

mkdir -p assets/screenshots

# Move the HTML file to src
if [ -f "4.html" ]; then
    mv 4.html src/index.html
    echo "Moved 4.html to src/index.html"
fi

# Create GitHub Actions workflow (optional)
cat > .github/workflows/test.yml << 'EOF'
name: Run Tests

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '18'
    - name: Install dependencies
      run: npm install
    - name: Run tests
      run: npm test
EOF

# Create submission checklist
cat > SUBMISSION_CHECKLIST.md << 'EOF'
# Submission Checklist

Before final submission, ensure:

- [ ] README.md follows template and includes live demo info
- [ ] deployment/ENDPOINTS.md filled with actual IPs/ports
- [ ] Presentation uploaded to assets/presentation.pdf or .pptx
- [ ] Presentation emailed to cinehack.ai@gmail.com
- [ ] Demo accessible OR assets/demo.mp4 uploaded
- [ ] Tests run successfully
- [ ] LICENSE file included
- [ ] .env.example has all required variables
- [ ] GitHub repository link submitted via official form
- [ ] All team members listed in README with contact info
- [ ] Known limitations documented in README

## Final Steps
1. Test the demo from a different machine
2. Verify all endpoints are accessible
3. Practice 15-minute presentation
4. Prepare for 5-minute Q&A
EOF

echo ""
echo "✅ Repository structure created successfully!"
echo ""
echo "Next steps:"
echo "1. Update README.md with your team information"
echo "2. Find your IP and update deployment/ENDPOINTS.md"
echo "3. Add your API keys to .env (copy from .env.example)"
echo "4. Move your HTML file to src/ if not done automatically"
echo "5. Add presentation slides to assets/"
echo "6. Review SUBMISSION_CHECKLIST.md before submitting"
echo ""
echo "To start the application:"
echo "  ./scripts/start.sh"
echo ""