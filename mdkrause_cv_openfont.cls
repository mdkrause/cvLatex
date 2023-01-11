% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{graphicx}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
%\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{2b2b2b} %{6A6A6A}
\definecolor{subheadings}{HTML}{2b2b2b}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-Regular}
%\usepackage[T1]{fontenc}
%\usepackage{libertine}


% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Project command
\newcommand{\project}[1]{
\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% \ExternalLink (I added)
\usepackage[hidelinks]{hyperref}
\usepackage{tikz}
\newcommand{\ExternalLink}{%
	\tikz[x=1.2ex, y=1.2ex, baseline=-0.05ex]{% 
		\begin{scope}[x=1ex, y=1ex]
			\clip (-0.1,-0.1) 
			--++ (-0, 1.2) 
			--++ (0.6, 0) 
			--++ (0, -0.6) 
			--++ (0.6, 0) 
			--++ (0, -1);
			\path[draw, 
			line width = 0.5, 
			rounded corners=0.5] 
			(0,0) rectangle (1,1);
		\end{scope}
		\path[draw, line width = 0.5] (0.5, 0.5) 
		-- (1, 1);
		\path[draw, line width = 0.5] (0.6, 1) 
		-- (1, 1) -- (1, 0.6);
	}
}

% Linkedin logo, ficou uma bosta
\newcommand{\Lin}{\protect\includegraphics[height=2.8ex,keepaspectratio]{logos/lin.jpeg}} %by J.R. Lobry

% Fb logo, ficou uma bosta
\newcommand{\Fb}{\protect\includegraphics[height=2.8ex,keepaspectratio]{logos/face.png}} %by J.R. Lobry

% About me Google, ficou uma bosta
\newcommand{\AmG}{\protect\includegraphics[height=2.8ex,keepaspectratio]{logos/g.png}} %by J.R. Lobry
