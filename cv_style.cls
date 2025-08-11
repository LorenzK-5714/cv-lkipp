% -------------------------------------------------------------------
% Title: CV
% Updated: August 11, 2025
%
% CV LaTeX template originally created by Christopher Keyes
% (https://github.com/c-keyes)
%
% Extensively modified by Lorenz Kipp to customize layout, 
% style, and content.
% -------------------------------------------------------------------

\LoadClass[10pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_style}[Oct 2018 custom cv class]
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{pgffor}
\RequirePackage{pbox}
\RequirePackage{geometry}

% lengths and orientation
\setlength{\parindent}{0ex} % Remove indent
\setlength{\parskip}{0ex}
\geometry{letterpaper, portrait, margin=1in}


% format of section headings
\titleformat{\section}
    {\large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

    
% \titlespacing*{\section}{0pt}{1.6ex}{2.5ex}
\titlespacing*{\section}{0pt}{2.2ex}{3.0ex}


% format subsection headings
\titleformat{\subsection}
    {\bfseries\raggedright}
    {}{0em}
    {}

% Command to produce contact information
%	#1 institution
%	#2 department
%	#3 building/address
%	#4 email
%	#5 website
\newcommand{\contact}[5]{
    #1\\ %institution
    #2\\ %dept
    #3\\ %building
    \vspace{1em} 
    #4 \\ %email
    #5 \\ %website
}

% Command to produce your name, nice and big
\newcommand{\name}[1]{
    {\LARGE\scshape{#1}} \vspace{1em}
}

% Command to produce a talk:
%	#1 talk title
%	#2 seminar title
%	#3 host location
%	#4 date
\newcommand{\talk}[4]{
	\textit{#1}. #2, #3, #4.
}

% Command to produce a paper:
%	#1 (optional) joint authors
% 	#2 title
%	#3 status - in preparation, submitted, accepted by..., to appear in..., etc.
%	#4 Anything else, e.g. links
\newcommand{\paper}[4][\@nil]{%
  \def\tmp{#1}%
  
   \ifx\tmp\@nnil
       \textbf{#2}. #3. #4
    \else
       \textbf{#2} (joint with #1). #3. #4
    \fi
}
    
    