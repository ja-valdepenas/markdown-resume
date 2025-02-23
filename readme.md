# Markdown Resume Project

This project provides a simple, elegant way to create and maintain your résumé using Markdown. By pairing **Pandoc** (to convert from Markdown to HTML) and **Puppeteer** (to produce a polished PDF), you can produce a professional résumé that passes **Applicant Tracking Systems (ATS)** more successfully than many Canva or Word templates.

---

## Why Use a Markdown Resume?

1. **ATS-Friendly**  
   Applicant Tracking Systems often struggle to parse overly styled or graphical résumés. Markdown files, once converted to HTML or PDF, maintain clean, structured text that most ATS software can easily read—helping ensure your information is highlighted correctly.

2. **Version Control & Simplified Editing**  
   Because Markdown is plain text, you can track changes via Git and edit on any device or editor. There’s no risk of losing formatting like in Word or other drag-and-drop editors.

3. **Consistent Styling**  
   The CSS stylesheet (`resume-stylesheet.css`) cleanly separates design from content. You can adjust font sizes, spacing, or colors as needed. It produces a crisp look suitable for both digital and printed copies.

4. **Better Than Canva/Word Templates**  
   - **Lightweight**: No heavy design overhead or formatting anomalies.  
   - **Flexible**: Instantly switch or tweak your résumé’s layout and styling without reformatting text.  
   - **Plain Text**: More easily read and indexed by ATS, which means you have a better chance of recruiters seeing your details.

---

## Technical Requirements

- **Node.js**: version 20 or later.
- **Pandoc**: a universal document converter  
  - **macOS**:
    ```bash
    brew install pandoc
    ```
  - **Windows**:
    Download from [pandoc.org/installing](https://pandoc.org/installing.html) or use [Chocolatey](https://chocolatey.org/) if preferred.
- **Puppeteer**: a Node.js library for rendering HTML to PDF  
  - Install via:
    ```bash
    npm install puppeteer
    ```
  - Or with Yarn/Pnpm if you prefer.

---

## Using the Project

1. **Edit the Markdown File**  
   - The primary résumé content resides in `resume.md`. Customize headings, job descriptions, skills, etc.
   - If you want more or better styling options for your résumé, you can use advanced Markdown syntax. Check out:
     - [Basic Markdown Syntax](https://www.markdownguide.org/basic-syntax/)  
     - [Extended Markdown Syntax](https://www.markdownguide.org/extended-syntax/)  
     - [Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet/)  

2. **Convert Markdown to HTML**  
   ```bash
   pandoc resume.md -f markdown -t html -c resume-stylesheet.css -s -o resume.html
   ```
   - **Explanation**: Pandoc reads `resume.md`, applies your CSS (`resume-stylesheet.css`), and outputs a formatted `resume.html`.
   - **Preview**: Open `resume.html` in a web browser to see your changes.

3. **Refresh on Changes**  
   - Whenever you edit `resume.md`, just re-run the Pandoc command and refresh your browser to see updates.

4. **Generate the PDF**  
   ```bash
   node generate-pdf.js
   ```
   - Puppeteer opens `resume.html` in a headless browser and prints it to `resume.pdf`.

5. **Copying the PDF**  
   - **macOS**:
     ```bash
     cp resume.pdf "$HOME/Documents/"
     ```
     Copies the PDF to your Documents folder.
   - **Windows** (Command Prompt):
     ```cmd
     copy resume.pdf "%USERPROFILE%\Desktop"
     ```
   - **Windows** (PowerShell):
     ```powershell
     Copy-Item resume.pdf "$env:USERPROFILE\Desktop\resume.pdf"
     ```

---

## Tips for Tailoring Your Résumé

1. **Adjust Your Title**  
   Change your professional title (e.g., “Software Engineer,” “Product Manager”) to match the position you’re applying for. ATS systems and recruiters often look for specific role titles in your résumé.

2. **Multiple Résumés with Git**  
   - **Fork this repo** and create separate branches for each position or company.  
   - Each branch can hold a unique, customized version of your résumé.

3. **Leverage AI for Résumé Refinement**  
   Here are some prompts you can use with your AI of choice:

   - **Keyword Optimization**  
     > *How can I optimize my resume to increase its chances of passing through ATS when applying for [specific role] in [industry], focusing on integrating industry-specific keywords and phrases relevant to [specific area of expertise]? Here’s my current resume: [paste resume here].*

   - **Targeted Rewrite**  
     > *Rewrite my resume with a strategic focus on keyword optimization to maximize ATS compatibility for a [job position] at [company]. Incorporate key terms/phrases from the following job description: [paste job description here]. Integrate them seamlessly into my current resume: [paste resume here]. Ensure the resume’s structure and language align with ATS best practices while maintaining readability for human recruiters.*

---

## Prompts to Help Prepare for Interviews

Once your résumé is ready, you can also use AI to prepare for interviews. Below are a few example prompts:

1. **Common Interview Questions**  
   > *Based on my resume for a [specific job role], what are some common interview questions I should prepare for? Here’s my resume: [paste resume here].*

2. **Strategic Responses**  
   > *Based on the content of my resume for a [specific job role], what strategic responses should I prepare for common interview questions, particularly those related to [specific area of expertise or concern]? Here’s my resume: [paste resume here].*

3. **Key Talking Points**  
   > *Based on my resume for a [specific job role], identify key talking points and potential interview questions I should prepare for, especially around [specific experiences or skills]. Provide guidance on how to articulate my achievements in [specific project or role] during interviews.*

These prompts can help you focus on the exact areas that recruiters and hiring managers are likely to explore, ensuring you’re ready with solid, persuasive answers.

---

## Credits

Inspired and adapted from:
- [dphuang2’s Markdown Resume Repo](https://github.com/dphuang2/dphuang2.github.io/tree/main/markdown-resume)
- [Dylan Huang’s blog post](https://dylanhuang.com/blog/simple-markdown-resume/)

They laid the groundwork for making a Markdown-based résumé workflow both quick to maintain and highly ATS-friendly.