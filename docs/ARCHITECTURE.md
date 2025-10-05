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
