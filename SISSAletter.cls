\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SISSAletter}[2023/12/27 v1.0 SISSA Letterhead]

% Class options
\def\@@ptsize{11pt}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{13.2pt}{\def\@@ptsize{13.2pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


\def\@@mainfont{LiberationSans}
\DeclareOption{Arial}{\def\@@mainfont{Arial}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Load required packages
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{calc}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage[abspath]{currfile}

% \RequirePackage{showframe} % for debugging
% \renewcommand*\ShowFrameColor{\color{red}}

% Class definition
% \LoadClass[a4paper,\@@ptsize]{article} % 13.2pt is not supported by article class
\LoadClass[a4paper,11pt]{article}

% Class modifications
% Add your custom class modifications here
\RequirePackage{hyperref} % Must be loaded after \LoadClass
\RequirePackage{geometry} % Must be loaded after \LoadClass
\geometry{
  a4paper,
  total={140mm,200mm},
  left=50mm,
  top=54mm,
  noheadfoot
}

\RequirePackage{fontspec}
\RequirePackage{anyfontsize}

\newcommand\foo[1]{#1}
\IfFontExistsTF{\@@mainfont}{\setmainfont{\@@mainfont}}{
  \ClassWarning{SISSAletter}{Font \foo{\@@mainfont} not found, using LiberationSans instead}
  \setmainfont{LiberationSans}[
    Path = fonts/,
    Ligatures = TeX,
    Extension = .ttf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-BoldItalic
  ]}

\pagestyle{fancy}
\fancyhf{}

\fancyhead{}
\fancyfoot{}

\newlength{\SISSANameWidth}
\setlength{\SISSANameWidth}{25mm}
\fancyhead[L]{\begin{textblock*}{\SISSANameWidth}(10mm, 10mm)
    \includegraphics[clip, trim=0mm 0mm 0mm 0mm, width=\SISSANameWidth]{sissa_name.pdf}
  \end{textblock*}
}

\newlength{\SISSALogoWidth}
\setlength{\SISSALogoWidth}{23mm}
% SISSA Logo appears only once on the first page, therefore it is moved to \AtBeginDocument hook
% \fancyfoot[C]{
%   \begin{textblock*}{23mm}(\paperwidth/2-\SISSALogoWidth/2, \paperheight-\SISSALogoWidth-10mm)
%     \includegraphics[clip, trim=0mm 26mm 0mm 0mm, width=\SISSALogoWidth]{sissa_logo.pdf}
%   \end{textblock*}
% }

\newlength{\FromInfoWidth}
\setlength{\FromInfoWidth}{50mm}
\fancyfoot[L]{
  \begin{textblock*}{\FromInfoWidth}(8mm, \paperheight-25mm-9mm)
    \FromInfo
  \end{textblock*}
}

\renewcommand{\headrulewidth}{0mm}
\renewcommand{\footrulewidth}{0mm}

\renewcommand{\baselinestretch}{0.95}

\setlength{\parindent}{0pt}

\newlength{\ToInfoWidth}
\setlength{\ToInfoWidth}{51mm}
\AtBeginDocument{
  \begin{textblock*}{23mm}(\paperwidth/2-\SISSALogoWidth/2, \paperheight-\SISSALogoWidth-10mm)
    \includegraphics[clip, trim=0mm 26mm 0mm 0mm, width=\SISSALogoWidth]{sissa_logo.pdf}
  \end{textblock*}
  \begin{minipage}{\textwidth}
    \begin{minipage}[t]{\textwidth-\ToInfoWidth\relax}
      \vspace{0pt}
      \Protocol
    \end{minipage}\hfill
    \begin{minipage}[t]{\ToInfoWidth\relax}
      \vspace{0pt}
      \ToInfo
    \end{minipage}
  \end{minipage}
  \bigskip \\
  \PlaceAndDate
  \bigskip \\
}


% Class commands
% Add your custom class commands here

\newcommand{\FromName}{OFFICE NAME}
\newcommand{\FromAddress}{Via Bonomea, 265\\34136 Trieste - Italy}
\newcommand{\FromTelephone}{\href{tel:+390403787111}{+39~0403787111}}
\newcommand{\FromEmail}{\href{mailto:info@sissa.it}{info@sissa.it}}
\newcommand{\FromWWW}{\href{https://sissa.it}{sissa.it}}

\newcommand{\FromInfo}{
  \hspace*{2mm}\rule[0mm]{25mm}{1mm}
  \fontsize{7.5pt}{9pt}\selectfont
  \begin{tabular}{l}
    \vspace{0mm}              \\
    \textbf{\FromName} % TOFIX: \FromName does not support two lines
    \vspace{3mm}              \\
    \FromAddress              \\
    \textbf{T} \FromTelephone \\
    \textbf{E} \FromEmail     \\
    \FromWWW
  \end{tabular}
}

\newcommand{\ToName}{Spett.le \\ Mario Rossi}
\newcommand{\ToAddress}{Via Garibalidi, 13 \\ 20120 Milano}
\newcommand{\ToInfo}{\begin{tabular}{l}
    \ToName \\
    \ToAddress
  \end{tabular}}

\newcommand{\PlaceAndDate}{Trieste, 29 maggio 2019}

\newcommand{\Protocol}{Prot. n. 12345}

% Class environments
% Add your custom class environments here

\endinput
