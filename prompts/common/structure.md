# Resume Generation System Architecture

## Directory Structure and File Organization

### Source Data Repository (`portfolio/`)
```
portfolio/
├── experiences/          → Professional work history database
│   └── *.md             → Individual job experience files (one per position)
├── schools/             → Educational background database  
│   └── *.md             → Educational institution files (one per school/program)
├── skills/              → Technical competency database
│   └── *.md             → Skill/technology files (one per major competency)
├── self/                → Personal information repository
│   └── self.md          → Contact information and professional summary
└── side-projects/       → Additional experience database
    └── *.md             → Personal project files (one per significant project)
```

### Master Application System (`master-application/`)
```
master-application/
├── master.md            → Comprehensive aggregated resume (all portfolio data)
├── run.sh              → Automated PDF generation script for master.pdf
├── resume_style.css    → Unified formatting and visual layout specifications
├── master.pdf          → Generated comprehensive PDF resume
└── questions.md        → Documented information gaps and portfolio questions
```

### Application Management System (`applications/`)
```
applications/
└── <application-id>/    → Job-specific application containers
    ├── <application-id>.md    → Tailored resume content
    ├── <application-id>.pdf   → Final application PDF
    ├── job.md                 → Target position requirements and specifications
    ├── run.sh                 → Modified PDF generation script
    ├── resume_style.css       → Formatting template (copied from master)
    └── [supplementary files]  → Cover letters, responses, additional documents
```

### Analysis and Strategy Database (`database/`)
```
database/
├── questions/           → Application gap analysis
│   └── <application-id>.md  → Missing qualifications and information needs
├── suggestions/         → Strategic recommendations
│   └── <application-id>.md  → Tailoring strategies and optimization guidance
└── feedback/           → External evaluation results
    ├── atsfriendly.md  → ATS optimization feedback
    ├── jobscan.md      → JobScan analysis results
    └── resumeworded.md → ResumeWorded evaluation feedback
```

## File Naming Conventions
- **Application IDs**: `YYYYMMDD-descriptor` format (e.g., `20250727-software-engineer`)
- **Experience Files**: Descriptive names reflecting job titles or companies
- **Skill Files**: Technology or competency names
- **Project Files**: Project names or descriptive identifiers

## Data Flow Architecture
1. **Portfolio** → Individual source files containing raw experience data
2. **Master Application** → Aggregated comprehensive resume from all portfolio sources  
3. **Applications** → Job-specific tailored resumes derived from master application
4. **Database** → Analysis, strategy, and feedback storage for optimization

## File Relationships
- All application resumes derive from `master-application/master.md`
- Master application aggregates all `portfolio/` content
- Database files provide analysis and strategy for specific applications
- PDF generation scripts maintain consistent formatting across all outputs
