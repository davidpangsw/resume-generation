Aggregate `./portfolio/` into `./master-application/master.md`. Maintain accuracy without fabrication. Document missing information in `./master-application/questions.md` (priority ordered). 
- Memorize `./prompts/common/ats-guideline.md` `prompts/common/rule.md` and `prompts/common/never-fabricate.md`

## Workflow
1. Read all `portfolio/` content
2. Generate `./master-application/questions.md` for missing information
3. Memorize `./prompts/common/ats-guideline.md` `prompts/common/rule.md` and `prompts/common/never-fabricate.md`
4. Create/edit `master-application/master.md` with complete portfolio data per guidelines
5. Confirm no fabrication in `master.md` (if yes, return to step 3)
    - Read `prompts/common/never-fabricate.md`
    - Follow `prompts/common/never-fabricate.md`
6. Confirm all `portfolio/` content included (if no, return to step 3)
7. Execute `run.sh` for PDF output

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