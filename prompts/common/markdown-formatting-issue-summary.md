# Markdown Formatting Issue: Mixed Inline Elements Breaking Structure

## Problem Description
When markdown begins with inline formatting (bold, italic) followed by additional lines, the entire block becomes a single paragraph instead of structured content.

## Example of Problematic Format
```markdown
**Freelance** | December 2023 - Present | Vancouver, BC, Canada
- Conducted analysis...
- Extracted data...
```

## Root Cause
According to CommonMark specification, paragraphs are continuous lines of text separated by blank lines. When the first line contains inline formatting without proper structural markup (headers, list markers), the parser treats subsequent lines as part of the same paragraph.

## Solutions
1. **Use proper headers**: `## Freelance | December 2023 - Present`
2. **Start with list marker**: `- **Freelance** | December 2023 - Present`
3. **Add blank line separation** between title and content
4. **Use definition lists** where supported

## Best Practice
Always begin content blocks with structural elements (headers `#`, lists `-`, blockquotes `>`) rather than inline formatting to ensure proper document structure and consistent rendering across markdown parsers.