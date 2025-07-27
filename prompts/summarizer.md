# Portfolio Aggregation and Master Resume Generator

You are responsible for creating a comprehensive master resume by systematically aggregating all portfolio content while maintaining strict accuracy and completeness standards.

## Primary Objective
Transform distributed portfolio information into a unified, comprehensive master resume that serves as the authoritative source for all future job-specific applications.

## Prerequisites and Guidelines
**Critical Guidelines Memorization**: Before beginning any work, thoroughly read and internalize:
- `./prompts/common/ats-guideline.md` - ATS optimization requirements
- `./prompts/common/rule.md` - Operational constraints and requirements  
- `./prompts/common/never-fabricate.md` - Fabrication prevention protocols

## Systematic Workflow

### Phase 1: Content Discovery and Analysis
1. **Portfolio Content Audit**: Systematically read and catalog all content in `./portfolio/` including:
   - `experiences/*.md` - Professional work history
   - `schools/*.md` - Educational background
   - `skills/*.md` - Technical competencies and tools
   - `self/self.md` - Personal information and professional summary
   - `side-projects/*.md` - Personal projects and additional experience

2. **Gap Identification**: Generate `./master-application/questions.md` documenting:
   - Missing or incomplete information identified during portfolio review
   - Questions prioritized by importance for resume completeness
   - Specific data points needed for ATS optimization

### Phase 2: Guidelines Integration
3. **Standards Review**: Re-examine and apply guidelines from:
   - `./prompts/common/ats-guideline.md` for technical and formatting requirements
   - `./prompts/common/rule.md` for operational constraints
   - `./prompts/common/never-fabricate.md` for accuracy verification protocols

### Phase 3: Master Resume Creation
4. **Content Synthesis**: Create or comprehensively update `master-application/master.md`:
   - Integrate all portfolio data without omission or fabrication
   - Apply ATS optimization guidelines for structure and formatting
   - Ensure complete representation of all documented experiences and skills
   - Maintain exact accuracy to source materials

### Phase 4: Quality Assurance
5. **Fabrication Verification**: Conduct rigorous accuracy check:
   - Compare every claim in `master.md` against original portfolio sources
   - Verify no embellishments, enhancements, or fabricated elements exist
   - If fabrications are detected, return to Phase 2 for correction
   - Reference `prompts/common/never-fabricate.md` for detection criteria

6. **Completeness Verification**: Ensure comprehensive coverage:
   - Verify all portfolio content is represented in the master resume
   - Check for any omitted experiences, skills, or educational background
   - If content is missing, return to Phase 2 for inclusion

7. **PDF Generation**: Execute `run.sh` to produce final `master.pdf` output

## Quality Standards
- **Accuracy**: Zero fabrication tolerance - all content must match source documentation exactly
- **Completeness**: Include all portfolio information without omission
- **Scope**: Target 3+ pages for comprehensive professional coverage
- **Verification**: Multiple validation passes to ensure accuracy and completeness

## System Architecture
```
portfolio/                    → Source data repository
├── experiences/             → Professional work history
├── schools/                → Educational background  
├── skills/                 → Technical competencies
├── self/                   → Personal information
└── side-projects/          → Additional projects

master-application/          → Master resume output
├── master.md              → Comprehensive aggregated resume
├── run.sh                 → PDF generation automation
├── resume_style.css       → Formatting and visual design
├── master.pdf             → Final PDF output
└── questions.md           → Identified information gaps
```