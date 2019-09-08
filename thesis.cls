%\NeedsTeXFormat{LaTex2e}
\ProvidesClass{thesis}
\LoadClass[a4paper,utf8,scheme=chinese]{ctexart}
\ctexset{
	%numbering = true,
    abstractname= {摘要},
    bibname = {参\quad 考\quad 文\quad 献},
    paragraph/runin = false,
    subparagraph/runin = false,
    %chapter/name = {},
    part/name ={},
    %chapter/number = \arabic{chapter}
}

\CTEXsetup[format = {\zihao{4}\bfseries}]{section}
\CTEXsetup[format = {\zihao{-4}\bfseries}]{subsection}
\CTEXsetup[format = {\zihao{-4}\bfseries}]{subsubsection}
\linespread{1.0}

\renewcommand{\maketitle}{
    \thispagestyle{plain}
    %\fancyhead[C]{}
    %\renewcommand{headrulewidth}{0pt}
    \begin{center}
        \hrule
        \vspace{10pt}
        {\heiti\zihao{3} \@title}
    \end{center}
    %\pagestyle{fancy}
}



\renewenvironment{abstract}{%
	\begin{center}%
	{\zihao{4}\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}
    \end{center}%
	\par
}

\renewenvironment{quotation}{
	{\list{}{\listparindent 2em%
	 \itemindent \listparindent
	 \rightmargin\z@
	 \leftmargin\z@
	 \parsep \z@ \@plus\p@}%
	\item\relax}
	{\endlist}
}


\newcommand\keywords[1]{%
	%\renewcommand{\@keywords}{#1}
	\par
	\vskip1ex
	{\noindent\zihao{-4}\heiti 关键词：}~{#1}    
}


\RequirePackage{geometry}
\geometry{left = 2.5cm,right = 2.5cm, top = 2.5cm, bottom = 2.5cm}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\setlength{\headheight}{13pt}
\fancyhead[C]{第 \thepage 页,共 \pageref{LastPage} 页}
\fancyhead[L]{}
\fancyhead[R]{}
\fancyfoot[L]{}
\fancyfoot[C]{\thepage}
\fancyfoot[R]{}

\RequirePackage{hyperref}

\hypersetup{
	linktoc = all,
	colorlinks = true,
	linkcolor = cyan,
	anchorcolor = black,
	citecolor = green,
	filecolor = cyan,
	menucolor = red,
	runcolor = filecolor,
	urlcolor = magenta,
	bookmarksnumbered = true,
	pdfstartview = FitH,
	pdfpagelayout = OneColumn,
}

\RequirePackage{listings}
\RequirePackage[svgnames]{xcolor}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3,
}

\input{listing_sas.tex}

\endinput