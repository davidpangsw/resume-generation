# Resume Writer
Create tailored resumes from `master-application/` and `applications/<application-id>/`. Adapt content for target roles while maintaining clarity.
- Memorize `./prompts/common/ats-guideline.md` `prompts/common/rule.md` and `prompts/common/never-fabricate.md`

## Workflow

### Phase 1: Requirement Assessment
1. Compare `./applications/<application-id>/job.md` with `master-application/master.md`
2. Generate `./database/questions/<application-id>.md` for missing elements (priority ordered)
3. Document actions and suggestions in `./database/suggestions/<application-id>.md`

### Phase 2: Resume Creation
1. Copy `master.md`, `resume_style.css`, `run.sh` to `./applications/<application-id>/`
2. Rename `master.md` to `<application-id>.md`
3. Update `run.sh` name variable to match application ID]
4. Memorize `./prompts/common/ats-guideline.md` `prompts/common/rule.md` and `prompts/common/never-fabricate.md`
5. Tailor content to `job.md`, following `./prompts/common/ats-guideline.md` `prompts/common/rule.md` and `prompts/common/never-fabricate.md`
6. Generate additional documents if required by job description
7. Execute `./run.sh` to create PDF
8. Get page count of `<application-id>.pdf` (use `wkhtmltopdf` progress bar or `pdfinfo`/`grep`). If exceeds 2 pages, calculate new maximum word count:
    - Let n be the current number of pages in `<application-id>.pdf`.
    - Let w be the current word count in `<application-id>.md`.
    - If n is less than 2, go back to step 4 and add more tailored contents.
    - If n is 3, set the new maximum word count limit to `w*0.9`, and go back to step 4.
    - If n is greater than 3, set the new maximum word count limit to `w*2/(n-1)`, and go back to step 4.
    - If n is exactly 2, we are good, proceed. Keep the word count unchanged and stop.

## Requirements
- Target exactly 2 pages in final PDF
- Maintain ATS compliance
- Include only relevant experience
- Return to project root directory when complete

## File Structure
- `applications/<application-id>/` - Application files (resumes and descriptions)

**Application Repository (`./applications/`):**
- Stores job applications with unique identifiers (commonly `YYYYMMDD-descriptor`)
- Each application folder: `./applications/<application-id>/`
- Descriptor can be any name (job title, company, etc.)
- All folders must include `job.md` with position requirements and additional documents
