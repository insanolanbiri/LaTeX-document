\LoadClass[12pt, a4paper, twoside]{memoir}

% ----- Paketler -----
% default: pdf(La)TeX
\usepackage[turkish]{babel}
\usepackage[T1]{fontenc} % font encoding
\usepackage[utf8]{inputenc} % input encoding
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{mathptmx}	% Times fontu
\usepackage{etoolbox} % for \patchcmd
\usepackage{xcolor}
\usepackage{emptypage}
\usepackage{url}
\usepackage{lipsum}
\usepackage{setspace}
\usepackage{hyperref}
\usepackage{graphicx}
\usepackage[acronym, toc]{glossaries}
\usepackage[autostyle]{csquotes}
\usepackage{fancyvrb,shortvrb}
\usepackage[ruled,vlined]{algorithm2e}
% \usepackage{times} % eski times paketi, bunun yerine mathptmx kullan
% \usepackage[fontsize=12pt]{scrextend}	
\usepackage{pdflscape} % yatık sayfa gerekirse
\usepackage[version=3]{mhchem} % kimya formülleri için

% ----- Şekil ve Çizelge İsimlendirmeleri -----
\usepackage{boxhandler} 												

\captiontitlefont{\normalfont} % açıklama başlık fontu
\precaption{\raggedright} % açıklama nosu için
\captiondelim{\space} % newline
\captionstyle{\centerlastline} % for title
\setlength{\belowcaptionskip}{\onelineskip}

\renewcommand{\tablename}{Çizelge}

% ----- Sayfa Sonları -----
\brokenpenalty=10000 % Sayfalar/sütunlar arasında kesik kelime yok

\doublehyphendemerits=10000 % Ard arda kesilmiş kelime yok
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000
% Kesik kelime olmasın değer 10000 olursa
\righthyphenmin=72
% \exhyphenpenalty 10000 % Kesik kelimenin olduğu satırın yakınlarında da başka kesik kelime olmasın
\brokenpenalty=10000 % Sayfalar/sütunlar arasında kesik kelime yok
\widowpenalty=10000 % Sayfanın altında widows yok
\clubpenalty=10000 % Sayfanın üstünde orphan yok
\interfootnotelinepenalty=10000 % Footnote'ları hiç bölme
\raggedbottom	% sayfa sonları

% ----- Paragraf Düzeni -----
\setlength{\parskip}{\baselineskip} % parskip yani iki paragraf arası meseafe normal satırlar arası mesafe

\setlength{\parindent}{1.25cm} % paragrafın ilk satırı 1.25cm içeriden başlar

\indentafterchapter % bölümden sonraki paragrafta da boşluk ver
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue

% ----- Bölüm Düzeni -----
% \renewcommand{\thesection}{\thechapter\arabic{section}.}
\makechapterstyle{bolum}{%
    \renewcommand{\afterchaptertitle}{\par\nobreak\vskip \baselineskip} % başlıktan sonra 2 satır bırak
    \renewcommand{\chaptitlefont}{\centering\normalfont\large\bfseries}
    \renewcommand{\chapnumfont}{\centering\normalfont\large\bfseries}
    \renewcommand*{\chapnamefont}{\chaptitlefont\MakeUppercase}
    \renewcommand{\printchaptertitle}{\chaptitlefont\MakeUppercase} % başlıkları büyük harf yap
    % \renewcommand*{\printchaptername}{\chapnumfont\MakeUppercase}
    % \renewcommand*{\chapternamenum}{}
    \renewcommand*{\chapnumfont}{\chaptitlefont}
    % \renewcommand{\printchapternum}{\chapnumfont \thechapter . \space}
    % \renewcommand*{\afterchapternum}{}
    % \afterchaptertitle
    % \renewcommand{\cftchapteraftersnum}{.}
    % \renewcommand{\cftsectionaftersnum}{.}
    % \renewcommand{\cftsubsectionaftersnum}{.}
    % \renewcommand{\cftsubsubsectionaftersnum}{.}
    % \renewcommand{\subsubsecheadstyle}{\noindent\bfseries\underline}
}

\chapterstyle{bolum}
\pagestyle{chapter}

\setsecheadstyle{\normalfont\bfseries}
\setsubsecheadstyle{\normalfont\bfseries}

% ----- Resimler -----
%\setlength{\textfloatsep}{2\baselineskip}
\setlength{\floatsep}{3\onelineskip}
 \setlength{\intextsep}{2\onelineskip}
\setlength{\textfloatsep}{2\onelineskip}
 \setlength{\dblfloatsep}{2\onelineskip}
 \setlength{\dbltextfloatsep}{2\onelineskip}

% ----- Türkçe i/İ ı/I karakterleri -----
\addto\extrasturkish{
  \uccode`i=\string"9D \uccode\string"19 = `I
  \lccode\string"9D=`i \lccode`I=\string"19 }
\addto\noextrasturkish{
  \uccode`i=`I \lccode`I=`i }
