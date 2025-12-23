\ProvidesClass{resume}[WJ Resume Class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{article} % Load the base class

%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\usepackage[parfill]{parskip} % Remove paragraph indentation

\usepackage{array} % Required for bold tabular columns

\usepackage{ifthen} % Required for ifthenelse statements

\usepackage{graphicx} % Required for including images

\pagestyle{empty} % Suppress headers and footers on all pages

\usepackage{amsmath}

\usepackage{hyperref}

\usepackage[normalem]{ulem}


%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
	top=0.6in, % Top margin
	bottom=0.6in, % Bottom margin
	left=0.75in, % Left margin
	right=0.75in, % Right margin
	%showframe, % Uncomment to show how the type block is set on the page
}


%----------------------------------------------------------------------------------------
%	MISC COMMANDS
%----------------------------------------------------------------------------------------

\newcommand{\ulhref}[2]{\href{#1}{\uline{#2}}}
\newcommand{\vertline}{$\lvert$ }
\newcommand{\gigantic}{\fontsize{40}{80}\selectfont}

\newcommand{\name}[1]{\renewcommand{\name}{#1}} % Defines the \name command to set the user's name


% \printname is used to output the user's name in a large size
\newcommand{\printname}{

\begin{center}
	\gigantic\bfseries\name
\end{center}
}

%----------------------------------------------------------------------------------------
%	OUTPUT THE NAME
%----------------------------------------------------------------------------------------

\let\ori@document=\document % Store the original \document command
\renewcommand{\document}{
	\ori@document  % Output the original \document command but add to it below
	\printname % Output the user's name
}


%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the major sections within the CV
\newenvironment{rSection}[1]{ % The single parameter is for the section title
	\medskip % Vertical whitespace
	\MakeUppercase{\textbf{#1}} % Section title
	\medskip % Vertical whitespace
	\hrule % Horizontal rule
	\begin{list}{}{ % List to indent the entire content of the section
		\setlength{\leftmargin}{0em} % Indent to the left of the list
	}
	\item[] % Empty list item to enable indentation
}{
	\end{list}
}

%----------------------------------------------------------------------------------------
%	SUBSECTIONS FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rWorksection}[3]{ % 3 parameters: company name, year(s) employed, job title
	\textbf{#1} \vertline \textbf{#3} \hfill \textbf{#2}
	
	\smallskip % Vertical whitespace
	\begin{list}{$\cdot$}{\leftmargin=1.0em} % \cdot used for bullets, no indentation

		\setlength{\itemsep}{-0.5em} \vspace{-0.5em} % Reduce vertical spacing between items in the list for a tighter look
}{
	\end{list}
	\vspace{0.5em} % Vertical whitespace after the end of the list
}

\newenvironment{rEdusection}[2]{ % 2 parameters: company name, year(s)
	\textbf{#1} \hfill \textbf{#2}
	
	\smallskip % Vertical whitespace
	\begin{list}{$\cdot$}{\leftmargin=1.0em} % \cdot used for bullets, no indentation
		\setlength{\itemsep}{-0.5em} \vspace{-0.5em} % Reduce vertical spacing between items in the list for a tighter look
}{
	\end{list}
	\vspace{0.5em} % Vertical whitespace after the end of the list
}

\newenvironment{rListsection}[0]{
\smallskip 
	\begin{list}{$\cdot$}{\leftmargin=1.0em}
		\setlength{\itemsep}{-0.5em} \vspace{-0.5em} 
}{
	\end{list}
	\vspace{0.5em} % Vertical whitespace after the end of the list
}

% Original Template:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV
% LaTeX Class
% Version 3.0 (December 17, 2022)
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
