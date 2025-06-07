\documentclass[11pt, a4paper, fleqn]{article}
\usepackage{cp2425t}
\makeindex

%================= lhs2tex=====================================================%
%include polycode.fmt
%format (div (x)(y)) = x "\div " y
%format succ = "\succ "
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const (f)) = "\underline{" f "}"
%format TLTree = "\mathsf{TLTree}"
%format (Seq (a)) = "{" a "}^{*}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (lcbr3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textbf{NB}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format inLTree = "\mathsf{in}"
%format inFTree = "\mathsf{in}"
%format outFTree = "\mathsf{out}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format l2 = "l_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format LTree = "{\LTree}"
%format FTree = "{\FTree}"
%format inNat = "\mathsf{in}"
%format (cata (f)) = "\llparenthesis\, " f "\,\rrparenthesis"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataList (g)) = "\llparenthesis\, " g "\,\rrparenthesis"
%format (cataLTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataRose (x)) = "\llparenthesis\, " x "\,\rrparenthesis_\textit{\tiny R}"
%format (ana (g)) = "\ana{" g "}"
%format (anaList (g)) = "\anaList{" g "}"
%format (anaLTree (g)) = "\lanabracket\," g "\,\ranabracket"
%format (anaRose (g)) = "\lanabracket\," g "\,\ranabracket_\textit{\tiny R}"
%format (hylo (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket"
%format (hyloRose (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket_\textit{\tiny R}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " to_\Q "
%format fromRational = " from_\Q "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix"
%format `ominus` = "\mathbin{\ominus}"
%format % = "\mathbin{/}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"
%format delta = "\Delta "
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format ++ = "\mathbin{+\!\!+}"
%format Integer  = "\mathbb{Z}"
%format (Cp.cond (p) (f) (g)) = "\mcond{" p "}{" f "}{" g "}"
%format (square (x)) = x "^2"
%format mapAccumL = "\mapAccumL "
%format mapAccumR = "\mapAccumR "

%format (cataTree (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny T}}"
%format (cataForest (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny F}}"
%format (anaTree (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny T}}"
%format (anaForest (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny F}}"
%format (hyloTree (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny T}}"
%format (hyloForest (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny F}}"
%format inTree = "\mathsf{in}_{Tree}"
%format inForest = "\mathsf{in}_{Forest}"
%format outTree = "\mathsf{out}_{Tree}"
%format outForest = "\mathsf{out}_{Forest}"

%format (cata' (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis"
%format (ana' (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket"
%format (hylo' (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket"
%format sigma = "\sigma "
%format alpha = "\alpha "
%format x0 = "x_0 "	
%format h0 = "h_0 "	
%format x1 = "x_1 "	
%format x2 = "x_2 "	
%format x3 = "x_3 "	
%format x4 = "x_4 "	
%format test1 = "test_{1} "	
%format test2a = "test_{2a} "	
%format test2b = "test_{2b} "	
%format test2c = "test_{2c} "
%format outid = "\mathsf{out}_{id}"	
%format inid = "\mathsf{in}_{id}"	
%------------------------------------------------------------------------------%


%====== DEFINIR GRUPO E ELEMENTOS =============================================%

\group{G15}
\studentA{108473}{André Filipe Dourado Pinheiro}
\studentB{105532}{Killian Alexandre Ferreira Oliveira}
\studentC{108398}{Pedro Dong Mo}

%==============================================================================%

\begin{document}

\sffamily
\setlength{\parindent}{0em}
\emergencystretch 3em
\renewcommand{\baselinestretch}{1.25} 
\input{Cover}
\pagestyle{pagestyle}
\setlength{\parindent}{1em}
\newgeometry{left=25mm,right=20mm,top=25mm,bottom=25mm}

\section*{Preâmbulo}

Na UC de \CP\ pretende-se ensinar a progra\-mação de computadores como uma
disciplina científica. Para isso parte-se de um repertório de \emph{combinadores}
que formam uma álgebra da programação (conjunto de leis universais e seus
corolários) e usam-se esses combinadores para construir programas
\emph{composicionalmente}, isto é, agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm esta disciplina,
opta-se pela aplicação deste método à programação em \Haskell\ (sem prejuízo
da sua aplicação a outras linguagens funcionais). Assim, o presente trabalho
prático coloca os alunos perante problemas concretos que deverão ser implementados
em \Haskell. Há ainda um outro objectivo: o de ensinar a documentar programas,
a validá-los e a produzir textos técnico-científicos de qualidade.

Antes de abordarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao \emph{software} a instalar, etc.

Valoriza-se a escrita de \emph{pouco} código que corresponda a soluções simples
e elegantes que utilizem os combinadores de ordem superior estudados na disciplina.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac,odds)
import Nat hiding (aux)
import LTree hiding (alpha)
import FTree
import Exp
-- import Probability
import Data.List hiding (find,transpose)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Data.Matrix
import Control.Concurrent

main = undefined
\end{code}
%endif

\Problema
Esta questão aborda um problema que é conhecido pela designação '\emph{Container
With Most Water}' e que se formula facilmente através do exemplo da figura
seguinte:

	\histogramaA \label{fig:histogramaA}

\noindent A figura mostra a sequência de números
\begin{code}
hghts = [1,8,6,2,5,4,8,3,7]
\end{code}
representada sob a forma de um histograma. O que se pretende é obter a maior
área rectangular delimitada por duas barras do histograma, área essa marcada
a azul na figura. (A ``metáfora'' \emph{container with most water} sugere que
as barras selecionadas delimitam um \emph{container} com água.)

Pretende-se definida como um catamorfismo, anamorfismo ou hilomorfismo uma
função em \Haskell
\begin{code}
mostwater :: [Int] -> Int
\end{code}
que deverá dar essa área.
(No exemplo acima tem-se |mostwater [1,8,6,2,5,4,8,3,7] = 49|.)
A resolução desta questão deverá ser acompanhada de diagramas elucidativos.

\Problema

Um dos problemas prementes da Computação na actualidade é conseguir, por
engenharia reversa, interpretar as redes neuronais (\NN{RN}) geradas
artificialmente sob a forma de algoritmos compreensíveis por humanos.

Já foram dados passos que, nesse sentido, explicam vários padrões de \NN{RN}s
em termos de combinadores funcionais \cite{Co15}. Em particular, já se mostrou
como as {\RNN}s (\emph{Recurrent Neural Networks}) podem ser vistas como
instâncias de \emph{accumulating maps}, que em \Haskell\ correspondem às
funções |mapAccumR| e |mapAccumL|, conforme o sentido em que a acumulação
se verifica (cf.\ figura \ref{fig:RNNAsMapAccumR}).

\RNNAsMapAccumR

A \RNN\ que a figura \ref{fig:RNNAsMapAccumR} mostra diz-se \emph{'one-to-one'}
\cite{Ka15}. Há contudo padrões de {\RNN}s mais gerais: por exemplo, o padrão
\emph{'many-to-one'} que se mostra na figura \ref{fig:RNNs} extraída
de  \cite{Ka15}.

Se |mapAccumR| e |mapAccumL| juntam |maps| com |folds|, pretendemos agora
combinadores que a isso acrescentem |filter|, por forma a selecionar que
etapas da computação geram ou não \emph{outputs} --- obtendo-se assim o efeito
\emph{'many-to-one'}. Ter-se-á, para esse efeito:

\begin{code}
mapAccumRfilter :: ((a,s) -> Bool) -> ((a, s) -> (c, s)) -> ([a], s) -> ([c], s)
mapAccumLfilter :: ((a,s) -> Bool) -> ((a, s) -> (c, s)) -> ([a], s) -> ([c], s)
\end{code}

Pretendem-se as implementações de |mapAccumRfilter| e |mapAccumLfilter| sob a forma de ana / cata ou hilomorfismos em \Haskell, acompanhadas por diagramas.

Como caso de uso, sugere-se o que se dá no anexo \ref{sec:karpathy} que, inspirado em \cite{Ka15}, recorre à biblioteca \DataMatrix.

\Problema

\begin{center}
\fbox{A fornecer na segunda edição deste enunciado}
\end{center}

\Problema

\begin{center}
\fbox{A fornecer na segunda edição deste enunciado}
\end{center}

\RNNs

\newpage
\part*{Anexos}

\appendix

\section{Natureza do trabalho a realizar}
\label{sec:documentacao}
Este trabalho teórico-prático deve ser realizado por grupos de 3 alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em \textbf{todos}
os exercícios do trabalho, para assim poderem responder a qualquer questão
colocada na \emph{defesa oral} do relatório.

Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita ``\litp{literária}'' \cite{Kn92}, cujo
princípio base é o seguinte:
%
\begin{quote}\em
	Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o \textbf{código fonte} e a \textbf{documentação} de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2425t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2425t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no \MaterialPedagogico\
desta disciplina des\-com\-pactando o ficheiro \texttt{cp2425t.zip}.

Como se mostra no esquema abaixo, de um único ficheiro (|lhs|)
gera-se um PDF ou faz-se a interpretação do código \Haskell\ que ele inclui:

	\esquema

Vê-se assim que, para além do \GHCi, serão necessários os executáveis \PdfLatex\ e
\LhsToTeX. Para facilitar a instalação e evitar problemas de versões e
conflitos com sistemas operativos, é recomendado o uso do \Docker\ tal como
a seguir se descreve.

\section{Docker} \label{sec:docker}

Recomenda-se o uso do \container\ cuja imagem é gerada pelo \Docker\ a partir do ficheiro
\texttt{Dockerfile} que se encontra na diretoria que resulta de descompactar
\texttt{cp2425t.zip}. Este \container\ deverá ser usado na execução
do \GHCi\ e dos comandos relativos ao \Latex. (Ver também a \texttt{Makefile}
que é disponibilizada.)

Após \href{https://docs.docker.com/engine/install/}{instalar o Docker} e
descarregar o referido zip com o código fonte do trabalho,
basta executar os seguintes comandos:
\begin{Verbatim}[fontsize=\small]
    $ docker build -t cp2425t .
    $ docker run -v ${PWD}:/cp2425t -it cp2425t
\end{Verbatim}
\textbf{NB}: O objetivo é que o container\ seja usado \emph{apenas} 
para executar o \GHCi\ e os comandos relativos ao \Latex.
Deste modo, é criado um \textit{volume} (cf.\ a opção \texttt{-v \$\{PWD\}:/cp2425t}) 
que permite que a diretoria em que se encontra na sua máquina local 
e a diretoria \texttt{/cp2425t} no \container\ sejam partilhadas.

Pretende-se então que visualize/edite os ficheiros na sua máquina local e que
os compile no \container, executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2425t.lhs > cp2425t.tex
    $ pdflatex cp2425t
\end{Verbatim}
\LhsToTeX\ é o pre-processador que faz ``pretty printing'' de código \Haskell\
em \Latex\ e que faz parte já do \container. Alternativamente, basta executar
\begin{Verbatim}[fontsize=\small]
    $ make
\end{Verbatim}
para obter o mesmo efeito que acima.

Por outro lado, o mesmo ficheiro \texttt{cp2425t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2425t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2425t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\section{Em que consiste o TP}

Em que consiste, então, o \emph{relatório} a que se referiu acima?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2425t.aux
    $ makeindex cp2425t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou. (Como já se disse, pode fazê-lo
correndo simplesmente \texttt{make} no \container.)

No anexo \ref{sec:codigo} disponibiliza-se algum código \Haskell\ relativo
aos problemas que são colocados. Esse anexo deverá ser consultado e analisado
à medida que isso for necessário.

Deve ser feito uso da \litp{programação literária} para documentar bem o código que se
desenvolver, em particular fazendo diagramas explicativos do que foi feito e
tal como se explica no anexo \ref{sec:diagramas} que se segue.

\section{Como exprimir cálculos e diagramas em LaTeX/lhs2TeX} \label{sec:diagramas}

Como primeiro exemplo, estudar o texto fonte (\lhstotex{lhs}) do que está a ler\footnote{
Procure e.g.\ por \texttt{"sec:diagramas"}.} onde se obtém o efeito seguinte:\footnote{Exemplos
tirados de \cite{Ol05}.}
\begin{eqnarray*}
\start
|
	id = split f g
|
\just\equiv{ universal property }
|
     lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )
|
\just\equiv{ identity }
|
     lcbr(
          p1 = f
     )(
          p2 = g
     )
|
\qed
\end{eqnarray*}
Os diagramas podem ser produzidos recorrendo à \emph{package} \Xymatrix, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{Código fornecido}\label{sec:codigo}
Teste relativo à figura da página \pageref{fig:histogramaA}:
\begin{code}
test1 = mostwater hghts
\end{code}

\subsection*{Problema 2}\label{sec:karpathy}

\RNNcharseq

Testes relativos a |mapAccumLfilter| e |mapAccumRfilter| em geral (comparar os \emph{outputs})

\begin{code}
test2a = mapAccumLfilter ((>10).p1) f (odds 12,0)
test2b = mapAccumRfilter ((>10).p1) f (odds 12,0)
\end{code}
onde:
\begin{code}
odds n = map ((1+).(2*)) [0..n-1]
f(a,s) = (s,a+s)
\end{code}
Teste 
\begin{code}
test2c = mapAccumLfilter true step ([x1,x2,x3,x4],h0)
\end{code}
baseado no exemplo de Karpathy \cite{Ka15} que a figura \ref{fig:RNNcharseq} mostra, usando os dados seguintes:
\begin{itemize}
\item	Estado inicial:
\begin{code}
h0 = fromList 3 1 [1.0,1.0,1,0]
\end{code}
\item \emph{Step function}:
\begin{code}
step(x,h) = (alpha(wy * h), alpha(wh * h + wx * x))
\end{code}
\item Função de activação:
\begin{code}
alpha= fmap sigma where sigma x = (tanh x + 1) / 2
\end{code}
\item \emph{Input layer}:
\begin{code}
inp = [x1,x2,x3,x4]
x1 = fromList 4 1 [1.0,0,0,0]
x2 = fromList 4 1 [0,1.0,0,0]
x3 = fromList 4 1 [0,0,1.0,0]
x4 = x3
\end{code}
\item Matrizes exemplo:
\begin{code}
wh = fromList 3 3 [0.4,-0.2,1.6,-3.1,1.4,0.1,5.4,-2.7,0.1]
wy = fromList 4 3 [2.1,1.1,0.8,1.3,-6.4,-3.4,-2.7,-3.8,-1.3,-0.5,-0.9,-0.4]
wx = fromLists  [[0.0,-51.9,0.0,0.0],[0.0,26.6,0.0,0.0],[-16.7,-5.5,-0.1,0.1]]
\end{code}
\end{itemize}
\textbf{NB}: Podem ser definidos e usados outros dados em função das experiências que se queiram fazer.

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}
Os alunos devem colocar neste anexo as suas soluções para os exercícios
propostos, de acordo com o ``layout'' que se fornece.
Não podem ser alterados os nomes ou tipos das funções dadas, mas pode ser
adicionado texto ao anexo, bem como diagramas e/ou outras funções auxiliares
que sejam necessárias.

\noindent
\textbf{Importante}: Não pode ser alterado o texto deste ficheiro fora deste anexo.

\subsection*{Problema 1}

Vamos utilizar a estratégia de \textit{divide and conquer}, isto é, vamos construir um anamorfismo que devolve uma lista com as maiores áreas possíveis e um catamorfismo para obter a maior dessas áreas.

Para fazer isto de forma otimal, começemos por calcular a área com base no primeiro e último elemento 
de uma lista não vazia $l$.

Sendo assim, o cálculo da área é dado pela função: 

\begin{code}
area l = (min (head l) (last l)) * ((length l) - 1)
\end{code}

A seguir, descartamos o menor elemento entre primeiro e último elemento da lista, de forma a encontrar um valor maior. Para isso temos dois casos:
\begin{enumerate}
	\item Se $\text{head } l \geq \text{last } l$, então isto significa que calculámos a água armazenada para o recipiente de altura $\text{last} l$, por isso descartamos o $\text{last} l$. 

	\item Se $\text{head } l < \text{last } l$, então isto significa que calculámos a água armazenada para o recipiente de altura $\text{head } l$, por isso descartamos o $\text{head } l$. 
\end{enumerate}

Recursivamente, isto pode ser escrito como 

\begin{eqnarray*}
\start
|
	 lcbr(
          bestAreas [] = []
     )(
          bestAreas l = (area l):(if head l < last l then bestAreas (tail l) else bestAreas (init l)) 
     )      
|
\end{eqnarray*}

Tornando esta definição point-free, temos

\begin{eqnarray*}
\start
|
	 lcbr(
          bestAreas [] = []
     )(
          bestAreas l = i2 (area l):(if head l < last l then bestAreas (tail l) else bestAreas (init l)) 
     )    
|
\just\equiv{ definição pointwise, 72, 73}
|
	 lcbr(
        bestAreas.nil = nil
     )(
        bestAreas.id = cons.(split area (cond (uncurry (<).(split head last)) (bestAreas.tail) (bestAreas.init))) 
     )
|
\just\equiv{ 1ª Lei de fusão do condicional }
|
	 lcbr(
        bestAreas.nil = nil
     )(
        bestAreas.id = cons.(split area (bestAreas.(cond (uncurry (<).(split head last)) tail init))) 
     )
|
\just\equiv{ Eq+, Fusão+}
|
    bestAreas.(either nil id) = (either (nil) (cons.(split area (bestAreas.(cond (uncurry (<).(split head last)) tail init)))))
|
\just\equiv{ definição do isomorfimo |inid = either nil id| e Absorção-+}
|
    bestAreas.inid = (either nil cons).(id + (split area (bestAreas.(cond (uncurry (<).(split head last)) tail init))))
|
\just\equiv{ isomorfimo |inid|/|outid| e definição do isomorfimo |in = either nil cons|}
|
    bestAreas = in.(id + (split area (bestAreas.(cond (uncurry (<).(split head last)) tail init)))).outid
|
\just\equiv{Absorção-x, funtor-+}
|
    bestAreas = in.(id + (id >< bestAreas)).(id + (split area (cond (uncurry (<).(split head last)) tail init))).outid
|
\just\equiv{Universal-ana}
|
    bestAreas = ana ((id + (split area (cond (uncurry (<).(split head last)) tail init))).outid)
|
\qed
\end{eqnarray*}

Portanto, o \textit{divide} desse anamorfismo é |(id + (split area (cond (uncurry (<).(split head last)) tail init))).out|.
Resultando assim no diagrama do anamorfismo

\begin{eqnarray*}
\xymatrix{
    |Seq(Nat0)|
           \ar[d]_-{|bestAreas = ana divide|}
           \ar[r]_-{|divide|}
&
	|1 + Nat0 >< Seq(Nat0)|
           \ar[d]^{|id + id >< bestAreas|}
\\
     |Seq(Nat0)|
&
     |1+Nat0 >< Seq(Nat0)|
           \ar[l]^-{|in|}
}
\end{eqnarray*}


Além disso, já vimos nas aulas que o catamorfismo de listas

\begin{code}
maxList = cata (either zero (uncurry max))
\end{code}

em que |conquer = either zero (uncurry max)|, é responsável por obter o maior valor numa lista de números não negativos,
podendo ser representado pelo seguinte diagrama

\begin{eqnarray*}
\xymatrix{
    |Seq(Nat0)|
           \ar[d]_-{|maxList = cata conquer|}
           \ar[r]_-{|out|}
&
	|1 + Nat0 >< Seq(Nat0)|
           \ar[d]^{|id + (id >< maxList)|}
\\
    |Nat0|
&
    |1+Nat0 >< Nat0|
           \ar[l]^-{|conquer|}
}
\end{eqnarray*}

Para evitar conflito entre os tipos \textit{Int} e \textit{Integer}, modificamos o conquer para 

\begin{code}
conquer = (either zero ((uncurry max).(fromIntegral >< fromIntegral))) 
\end{code}


Portanto, temos

\begin{code}
mostwater = hylo conquer divide
divide = (id + (split area (cond (uncurry (<).(split head last)) tail init))).outid
conquer = (either zero ((uncurry max).(fromIntegral >< fromIntegral))) 
area l = (min (head l) (last l)) * ((length l) - 1)
outid [] = i1 () 
outid (h:t) = i2 (h:t)
\end{code}

Com diagrama final 

\begin{eqnarray*}
\xymatrix{
    |Seq(Nat0)|
           \ar[d]_-{|ana divide|}
           \ar[r]_-{|outid|}
&
    |1 + (Nat0 >< Seq(Nat0))|
           \ar[d]^-{|id + (id >< divide)|}
\\
     |Seq(Nat0)|
           \ar[d]_-{|cata conquer|}
&
     |1+(Nat0 >< Seq(Nat0))|
           \ar[l]^-{|in|}
           \ar[d]^-{|id + id >< conquer|}
\\
     |Nat0|
&
     |1+Nat0 >< Nat0|
           \ar[l]^-{|conquer|}
}
\end{eqnarray*}

\subsection*{Problema 2}

\begin{code}
mapAccumRfilter p f = undefined

mapAccumLfilter p f = undefined
\end{code}

%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2425t}

%----------------- Fim do documento -------------------------------------------%
\end{document}
