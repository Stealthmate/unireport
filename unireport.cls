\LoadClass{article}
%% \NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unireport}[2020/04/24 Uni Report Class]

\RequirePackage{luatexja}
\RequirePackage{luatexja-fontspec}
\RequirePackage{indentfirst}
\RequirePackage{flafter}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{siunitx}

\setmainjfont{Noto Serif CJK JP}

\newcommand\myfont[2]{\fontsize{#1}{#2}\selectfont}

\def\titleFont{\myfont{30pt}{45pt}}
\def\subtitleFont{\myfont{20pt}{20pt}}
\def\sectionFont{\myfont{15pt}{15pt}}
\def\normalFont{\normalsize}

\addtolength{\textwidth}{\evensidemargin}
\addtolength{\textwidth}{\oddsidemargin}
\setlength{\oddsidemargin}{0mm}
\setlength{\evensidemargin}{0mm}
\addtolength{\textheight}{\topmargin}
\addtolength{\textheight}{\headheight}
\addtolength{\textheight}{\headsep}
\addtolength{\textheight}{2cm}
\setlength{\topmargin}{0mm}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}

\renewcommand{\figurename}{図}
\renewcommand{\tablename}{表}

\newcommand{\placefig}[3]{
  \begin{figure}
    \includegraphics[width=\textwidth]{#3}
    \caption{#1}
    \label{#2}
  \end{figure}
}

\newcommand{\placetable}[4]{
  \begin{table}[h]
    \centering
    \begin{tabular}{#1}
      #4
    \end{tabular}
    \caption{#2}
    \label{#3}
  \end{table}
}

\AtBeginDocument{
  \begin{center}
    {\titleFont \ATTRsubjectName\par}
    \vspace{5mm}
    {\subtitleFont \ATTRdocName\par}
    \vspace{5mm}
    {\def\arraystretch{1.5}\sectionFont
      \ATTRdate\par
      \vspace{5mm}
      \begin{tabular}{lll}
        \ATTRauthors
      \end{tabular}\par}
  \end{center}
  \vspace{10mm}
}
