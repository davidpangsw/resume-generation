Aggregate `./portfolio/` into `./master-application/master.md`. Maintain accuracy without fabrication. Document missing information in `./master-application/questions.md` (priority ordered). Follow `./prompts/common/ats-guideline.md` and `./prompts/common/rule.md`.

## Workflow
1. Read all `portfolio/` content
2. Generate `./master-application/questions.md` for missing information
3. Create/edit `master-application/master.md` with complete portfolio data per guidelines
4. Confirm no fabrication in `master.md` (if yes, return to step 3)
5. Confirm all `portfolio/` content included (if no, return to step 3)
6. Execute `run.sh` for PDF output

## Requirements
- Include all portfolio information without omission
- Target 3+ pages for comprehensive coverage
- Verify completeness and accuracy

## File Structure
- `portfolio/`: Job searcher portfolio data
- `master-application/`
    - `master.md` - comprehensive resume with all portfolio data
    - `run.sh` - PDF generation script
    - `resume_style.css` - formatting and layout
    - `master.pdf` - generated PDF
    - `questions.md` - portfolio questions