(* ::Package:: *)

BeginPackage["KerrEqOfMotGeneral`"];


(* 
Author: Adam Cieslik
Contact: adamdariuszcieslik@gmail.com
Date: 12.05.2023
*)


FancylogN::usage = " Fancylog[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns the value of function \!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\",\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\) where
\!\(\*StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"=\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{
RowBox[{\"WeierstrassSigma\", \"[\", 
RowBox[{
RowBox[{\"x\", \"-\", \"y\"}], \",\", 
RowBox[{\"{\", 
RowBox[{SubscriptBox[\"g\", \"2\"], \",\", SubscriptBox[\"g\", \"3\"]}], \"}\"}]}], \"]\"}], \" \"}], 
RowBox[{
RowBox[{\"WeierstrassSigma\", \"[\", 
RowBox[{
RowBox[{\"x\", \"+\", \"y\"}], \",\", 
RowBox[{\"{\", 
RowBox[{SubscriptBox[\"g\", \"2\"], \",\", SubscriptBox[\"g\", \"3\"]}], \"}\"}]}], \"]\"}], \" \"}]],\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)
with \!\(\*
StyleBox[\"arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\) instead of \!\(\*
StyleBox[\"Arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\), where \!\(\*
StyleBox[\"arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"=\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"{\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"Arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"+\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"2\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"\[Pi]n\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"|\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"n\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"\[Element]\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"\[DoubleStruckCapitalZ]\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"}\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\), i. e.  
	\!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"=\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"|\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"|\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"+\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"i\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\".\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)
In this definition, we use the NIntegrate function to compute Log(z). We use it to calculate the constant c in a function of Fancylog
";


Fancylog::usage = "FancylogN[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns the value of function \!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\",\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\) where
\!\(\*StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"=\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{
RowBox[{\"WeierstrassSigma\", \"[\", 
RowBox[{
RowBox[{\"x\", \"-\", \"y\"}], \",\", 
RowBox[{\"{\", 
RowBox[{SubscriptBox[\"g\", \"2\"], \",\", SubscriptBox[\"g\", \"3\"]}], \"}\"}]}], \"]\"}], \" \"}], 
RowBox[{
RowBox[{\"WeierstrassSigma\", \"[\", 
RowBox[{
RowBox[{\"x\", \"+\", \"y\"}], \",\", 
RowBox[{\"{\", 
RowBox[{SubscriptBox[\"g\", \"2\"], \",\", SubscriptBox[\"g\", \"3\"]}], \"}\"}]}], \"]\"}], \" \"}]],\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)
with \!\(\*
StyleBox[\"arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\) instead of \!\(\*
StyleBox[\"Arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\), where \!\(\*
StyleBox[\"arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"=\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"{\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"Arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"+\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"2\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"\[Pi]n\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"|\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"n\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"\[Element]\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"\[DoubleStruckCapitalZ]\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"}\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\), i. e.  
	\!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"=\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"|\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"|\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"+\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"i\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\" \",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"arg\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\".\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)
It is necessary for integrals \!\(\*SubscriptBox[\(I\), \(1\)]\) and \!\(\*SubscriptBox[\(I\), \(7\)]\) because it corrects numerical errors resulting from Mathematica's way of calculating \!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\".\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)
";


R::usage = "R[\[Xi], \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the value of function 
		\!\(\*
StyleBox[\"R\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"(\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"\[Xi]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\")\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"=\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"a\", \"0\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SuperscriptBox[\"\[Xi]\", \"4\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"4\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"a\", \"1\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SuperscriptBox[\"\[Xi]\", \"3\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"6\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"a\", \"2\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SuperscriptBox[\"\[Xi]\", \"2\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"4\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"a\", \"3\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"\[Xi]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"a\", \"4\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)
where for the Kerr metric:
	- \!\(\*SubscriptBox[\(a\), \(0\)]\) = \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) - \[Delta],
	- \!\(\*SubscriptBox[\(a\), \(1\)]\) = \!\(\*FractionBox[\(1\), \(2\)]\)\[Delta],
	- \!\(\*SubscriptBox[\(a\), \(2\)]\) =  -\!\(\*FractionBox[\(1\), \(6\)]\)(\!\(\*SuperscriptBox[\(\[Delta]\[Alpha]\), \(2\)]\)+\[Kappa]-2\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)+2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\)),
	- \!\(\*SubscriptBox[\(a\), \(3\)]\) = \!\(\*FractionBox[\(1\), \(2\)]\)\[Kappa],
	- \!\(\*SubscriptBox[\(a\), \(4\)]\) =  \!\(\*SuperscriptBox[\(\[Alpha]\), \(4\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)-\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\[Kappa]-2\!\(\*SuperscriptBox[\(\[Alpha]\), \(3\)]\)\!\(\*SubscriptBox[\(\[CurlyEpsilon]\[Lambda]\), \(z\)]\)+\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\!\(\*SuperscriptBox[SubscriptBox[\(\[Lambda]\), \(z\)], \(2\)]\),

and \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per black hole mass  respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
 ";


dR::usage = "dR[p, r, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the total derivative of the \!\(\*
StyleBox[\"p\",\nFontSlant->\"Italic\"]\) order at \!\(\*
StyleBox[\"r\",\nFontSlant->\"Italic\"]\) from R[\[Xi], \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]], i.e.\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{SuperscriptBox[\"d\", \"p\"], \"R\", 
RowBox[{\"(\", \"\[Xi]\", \")\"}]}], SuperscriptBox[\"d\[Xi]\", 
RowBox[{\" \", \"p\"}]]],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"|\", 
RowBox[{\"\[Xi]\", \"->\", \"r\"}]],\nFontSlant->\"Italic\"]\).
Variables \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per  black hole mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


\[Xi]::usage = " \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns the value of the radial distance from the center of the coordinate system depending on the Mino time and initial dimensionless
parameters:
	- \!\(\*
StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


g::usage = "g[\[Mu], \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the value of function 
		\!\(\*
StyleBox[\"g\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"(\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"\[Mu]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\")\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"=\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*SubscriptBox[\(b\), \(0\)]\)\!\(\*
StyleBox[SuperscriptBox[\"\[Mu]\", \"4\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"4\",\nFontSlant->\"Italic\"]\)\!\(\*SubscriptBox[\(b\), \(1\)]\)\!\(\*
StyleBox[SuperscriptBox[\"\[Mu]\", \"3\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"6\",\nFontSlant->\"Italic\"]\)\!\(\*SubscriptBox[\(b\), \(2\)]\)\!\(\*
StyleBox[SuperscriptBox[\"\[Mu]\", \"2\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"4\",\nFontSlant->\"Italic\"]\)\!\(\*SubscriptBox[\(b\), \(3\)]\)\!\(\*
StyleBox[\"\[Mu]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*SubscriptBox[\(b\), \(4\)]\),
where for the Kerr metric:
	- \!\(\*SubscriptBox[\(b\), \(0\)]\) = \!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)(\[Delta] - \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)),
	- \!\(\*SubscriptBox[\(b\), \(1\)]\) = 0,
	- \!\(\*SubscriptBox[\(b\), \(2\)]\) = \!\(\*FractionBox[\(1\), \(6\)]\)(-\!\(\*SuperscriptBox[\(\[Delta]\[Alpha]\), \(2\)]\) + 2\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)-\[Kappa]-2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\)),
	- \!\(\*SubscriptBox[\(b\), \(3\)]\) = 0,
	- \!\(\*SubscriptBox[\(b\), \(4\)]\) = -\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)+\[Kappa]+2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\)-\!\(\*SuperscriptBox[SubscriptBox[\(\[Lambda]\), \(z\)], \(2\)]\),
and \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\) , \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per black hole mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


dg::usage = "dg[p, \[Mu], \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the total derivative of the \!\(\*
StyleBox[\"p\",\nFontSlant->\"Italic\"]\) order at \!\(\*
StyleBox[\"r\",\nFontSlant->\"Italic\"]\) from g[\[Mu], \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]], i.e.\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{SuperscriptBox[\"d\", \"p\"], \"g\", 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[\"dx\", 
RowBox[{\" \", \"p\"}]]],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"|\", 
RowBox[{\"x\", \"->\", \"\[Mu]\"}]],\nFontSlant->\"Italic\"]\).
Variables \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\) , \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per black hole mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


\[Mu]::usage = " \[Mu][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Mu]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns the value of the function \!\(\*
StyleBox[\"\[Mu]\",\nFontSlant->\"Italic\"]\) related to angle \[Theta] through the relation
	\[Mu] = Cos[\[Theta]].
It depends on the Mino time and initial parameters:
	- \!\(\*
StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
StyleBox[SubscriptBox[\"\[Mu]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial \!\(\*
StyleBox[\"\[Mu]\",\nFontSlant->\"Italic\"]\) value;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


\[Theta]::usage = " \[Theta][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}]  returns the value of the polar angle -\!\(\*FractionBox[\(\[Pi]\), \(2\)]\) \[LessEqual] \[Theta] \[LessEqual] \!\(\*FractionBox[\(\[Pi]\), \(2\)]\)  depending on the Mino time and initial parameters:
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)


";


\[Theta]max::usage = " \[Theta]max[\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]] returns the maximal value of angle \[Theta] depending on the Mino time and initial parameters:
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)

";


\[Theta]min::usage = "  \[Theta]min[\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]] returns the minimal value of angle \[Theta] depending on the Mino time and initial parameters:
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


I1::usage = "I1[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[\"1\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function. 
 ";


I2::usage = "I2[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I3::usage = "I3[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[\"1\", SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I4::usage = "I4[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I5::usage = "I5[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}], 
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I6::usage = "I6[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}], 
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I7::usage = "I7[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I8::usage = "I8[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I9::usage = "I9[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I10::usage = "I10[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"3\"], 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I11::usage = "I11[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I12::usage = "I12[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I13::usage = "I13[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"3\"], SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I14::usage = "I14[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\",\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I15::usage = "I15[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(1\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(3\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I16::usage = "I16[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP]' \((x)\)\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(3\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I17::usage = "I17[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \((x)\)\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(3\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I18::usage = "I18[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \*SuperscriptBox[\((x)\), \(2\)]\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(3\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
";


I19::usage = "I19[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(1\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(4\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I20::usage = "I20[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \((x)\)\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(4\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I21::usage = "I21[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP]' \((x)\)\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(4\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I22::usage = "I22[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \((x)\) \[WeierstrassP]' \((x)\)\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(4\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I23::usage = "I23[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \*SuperscriptBox[\((x)\), \(2\)]\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(4\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I24::usage = "I24[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \*SuperscriptBox[\((x)\), \(3\)]\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(4\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I25::usage = "I25[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP]' \*SuperscriptBox[\((x)\), \(2\)]\), SuperscriptBox[\([\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\)]\), \(4\)]]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
";


K1::usage = "K1[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[\"1\", 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


K2::usage = "K2[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


K3::usage = "K3[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


K4::usage = "K4[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}], 
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


K5::usage = "K5[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


K6::usage = "K6[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


L1::usage = "L1[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[\"1\", SuperscriptBox[
RowBox[{\"{\", 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}], \"}\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


L2::usage = "L2[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[
RowBox[{\"{\", 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}], \"}\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


L3::usage = "L3[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[
RowBox[{\"{\", 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}], \"}\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


L4::usage = "L4[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}], 
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[
RowBox[{\"{\", 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}], \"}\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


L5::usage = "L5[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], SuperscriptBox[
RowBox[{\"{\", 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}], \"}\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


L6::usage = "L6[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\!\(\*
StyleBox[\"\[Integral]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[FractionBox[SuperscriptBox[
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", \"'\"}], 
RowBox[{\"(\", \"x\", \")\"}]}], \"]\"}], \"2\"], SuperscriptBox[
RowBox[{\"{\", 
RowBox[{
RowBox[{\"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"y\", \")\"}]}]}], \"]\"}], \"[\", 
RowBox[{
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"x\", \")\"}]}], \"-\", 
RowBox[{\"\[WeierstrassP]\", 
RowBox[{\"(\", \"z\", \")\"}]}]}], \"]\"}], \"}\"}], \"2\"]], \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"\[DifferentialD]\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)\!\(\*
StyleBox[\"x\", \"InformationUsageText\",\nStripOnInput->False,\nLineSpacing->{1.5, 1.5, 3.}]\)
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


h::usage = "h[\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta], \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)] returns the value of function 
		\!\(\*
StyleBox[\"h\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"(\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\)\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\")\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"=\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"c\", \"0\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SuperscriptBox[\"\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\)\", \"4\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"4\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"c\", \"1\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SuperscriptBox[\"\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\)\", \"3\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"6\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"c\", \"2\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SuperscriptBox[\"\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\)\", \"2\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"4\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"c\", \"3\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\)\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"+\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"c\", \"4\"],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)
where for the Kerr metric:
	- \!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\) (s) = \!\(\*FractionBox[\(1\), \(\[Xi] \((s)\)\\\  - \\\ \*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)]\), 
	- \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\) = 1 + \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)\!\(\*SqrtBox[\(1\\\  - \\\ \*SuperscriptBox[\(\[Alpha]\), \(2\)]\)]\) - position of black hole horizons , \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)= 1 for \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(+\)]\) and \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)=-1 for \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(-\)]\)
	- \!\(\*SubscriptBox[\(c\), \(0\)]\) = \!\(\*SuperscriptBox[\(\[Alpha]\), \(4\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) - 2\!\(\*SuperscriptBox[\(\[Alpha]\), \(3\)]\)\!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\)\[CurlyEpsilon] + \!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)[-(\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)\!\(\*SuperscriptBox[\()\), \(2\)]\)(\[Delta]-2\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\))- \[Kappa] + \!\(\*SubsuperscriptBox[\(\[Lambda]\), \(z\), \(2\)]\)] - 2\!\(\*SubscriptBox[\(\[Alpha]\[Lambda]\), \(z\)]\)(\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)\!\(\*SuperscriptBox[\()\), \(2\)]\)\[CurlyEpsilon] + (\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)\!\(\*SuperscriptBox[\()\), \(3\)]\)[\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) - \[Delta](\!\(\*SubsuperscriptBox[\(\[Xi]\), \(\(H\)\(\\\ \)\), \(\[PlusMinus]\)]\)- 2)] - \[Kappa](\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\) - 2)\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\),
	- \!\(\*SubscriptBox[\(c\), \(1\)]\) = \!\(\*FractionBox[\(1\), \(2\)]\){\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)[-\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\[Delta] + 2\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) - 2\!\(\*SubscriptBox[\(\[Alpha]\[Lambda]\), \(z\)]\)\[CurlyEpsilon] + \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)(-2\!\(\*SubsuperscriptBox[\(\[Delta]\[Xi]\), \(H\), \(\[PlusMinus]\)]\) + 3\[Delta] + 2\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\))] - \[Kappa](\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\) - 1)},
	- \!\(\*SubscriptBox[\(c\), \(2\)]\) = \!\(\*FractionBox[\(1\), \(6\)]\)[-\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)(\[Delta] - 2\!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)) - \[Kappa] - 2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\) + 6(\[Delta] - \!\(\*SubsuperscriptBox[\(\[Delta]\[Xi]\), \(H\), \(\[PlusMinus]\)]\) + \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\))\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)],
	- \!\(\*SubscriptBox[\(c\), \(3\)]\) = \[Delta](1/2 - \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)) + \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)\!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\),
	- \!\(\*SubscriptBox[\(c\), \(4\)]\) = \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) - \[Delta],

and \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per black hole mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
 ";


dh::usage = "dh[p, \!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the total derivative of the \!\(\*
StyleBox[\"p\",\nFontSlant->\"Italic\"]\) order at \!\(\*
StyleBox[\"r\",\nFontSlant->\"Italic\"]\) from h[\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]], i.e.\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{SuperscriptBox[\"d\", \"p\"], \"h\", 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[\"dx\", 
RowBox[{\" \", \"p\"}]]],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"|\", 
RowBox[{\"x\", \"->\", \"\!\(\*SubscriptBox[\(u\), \(\[PlusMinus]\)]\)\"}]],\nFontSlant->\"Italic\"]\).
Variables \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\) , \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per black hole mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


NH::usage = "NH[s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta], \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(0\), \(s\)]\)\!\(\*FractionBox[\(1\), \(\[Xi] \((\*OverscriptBox[\(s\), \(_\)])\)\\\  - \\\ \*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\)]\)\[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]
	- \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\) = 1 + \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)\!\(\*SqrtBox[\(1\\\  - \\\ \*SuperscriptBox[\(\[Alpha]\), \(2\)]\)]\) - position of black hole horizons , \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)= 1 for \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(+\)]\) (the outer horizon) and \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)=-1 for \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(-\)]\) (the inner horizon)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


I\[Xi]::usage = "I\[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}]returns a value of the integral
	\[Alpha]\!\(\*SubsuperscriptBox[\(\[Integral]\), \(0\), \(s\)]\)\!\(\*FractionBox[\(\([\*SuperscriptBox[\(\[Xi]\), \(2\)] \((\*OverscriptBox[\(s\), \(_\)])\)\\\  + \\\ \*SuperscriptBox[\(\[Alpha]\), \(2\)]]\) \[CurlyEpsilon]\\\  - \\\ \*SubscriptBox[\(\[Alpha]\[Lambda]\), \(z\)]\), \(\*SuperscriptBox[\(\[Xi]\), \(2\)] \((\*OverscriptBox[\(s\), \(_\)])\)\\\  - \\\ 2  \[Xi] \((\*OverscriptBox[\(s\), \(_\)])\) + \*SuperscriptBox[\(\[Alpha]\), \(2\)]\)]\)\[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}]
	- \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(\[PlusMinus]\)]\) = 1 + \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)\!\(\*SqrtBox[\(1\\\  - \\\ \*SuperscriptBox[\(\[Alpha]\), \(2\)]\)]\) - position of black hole horizons , \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)= 1 for \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(+\)]\) (the outer horizon) and \!\(\*SubscriptBox[\(\[Epsilon]\), \(h\)]\)=-1 for \!\(\*SubsuperscriptBox[\(\[Xi]\), \(H\), \(-\)]\) (the inner horizon)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


w::usage = "w[q, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the value of function 
		w(q) = \!\(\*SubscriptBox[\(d\), \(0\)]\)\!\(\*SuperscriptBox[\(q\), \(4\)]\) + 4\!\(\*SubscriptBox[\(d\), \(1\)]\)\!\(\*SuperscriptBox[\(q\), \(3\)]\) + 6\!\(\*SubscriptBox[\(d\), \(2\)]\)\!\(\*SuperscriptBox[\(q\), \(2\)]\) + 4\!\(\*SubscriptBox[\(d\), \(3\)]\)q + \!\(\*SubscriptBox[\(d\), \(4\)]\),
where for the Kerr metric:
	- q(s) = \!\(\*FractionBox[\(1\), \(\*SuperscriptBox[\(sin\), \(2\)] \[Theta] \((s)\)\)]\),
	- \!\(\*SubscriptBox[\(d\), \(0\)]\) = -4\!\(\*SubsuperscriptBox[\(\[Lambda]\), \(z\), \(2\)]\),
	- \!\(\*SubscriptBox[\(d\), \(1\)]\) = -\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\[Delta] + \[Kappa] + 2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\) + \!\(\*SubsuperscriptBox[\(\[Lambda]\), \(z\), \(2\)]\),
	- \!\(\*SubscriptBox[\(d\), \(2\)]\) = \!\(\*FractionBox[\(2\), \(3\)]\)[\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)(2\[Delta] - \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)) - \[Kappa] - 2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\)],
	- \!\(\*SubscriptBox[\(d\), \(3\)]\) = \!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)(-\[Delta] + \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)),
	- \!\(\*SubscriptBox[\(d\), \(4\)]\) = 0, 
and \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per black hole mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
 ";


dw::usage = "dw[p, q, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the total derivative of the \!\(\*
StyleBox[\"p\",\nFontSlant->\"Italic\"]\) order at \!\(\*
StyleBox[\"r\",\nFontSlant->\"Italic\"]\) from w[q, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]], i.e.\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{SuperscriptBox[\"d\", \"p\"], \"w\", 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[\"dx\", 
RowBox[{\" \", \"p\"}]]],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"|\", 
RowBox[{\"x\", \"->\", q}]],\nFontSlant->\"Italic\"]\).
Variables \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\) , \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum black hole per mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


I\[Theta]::usage = "I\[Theta][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\),\!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\)\!\(\*SubsuperscriptBox[\(\[Integral]\), \(0\), \(s\)]\)\!\(\*FractionBox[\(1\), \(\*SuperscriptBox[\(sin\), \(2\)] \[Theta] \((\*OverscriptBox[\(s\), \(_\)])\)\)]\)\[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Theta](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the altitude given by function \[Theta][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


\[CurlyPhi]::usage = " \[CurlyPhi][s,{\!\(\*SubscriptBox[\(\[CurlyPhi]\), \(0\)]\),\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\),\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\),\!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\),\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] returns the value of the azimuthal angle 0 \[LessEqual] \[CurlyPhi] \[LessEqual] 2\[Pi]  depending on the Mino time and initial parameters:
	- \!\(\*
StyleBox[SubscriptBox[\"\[CurlyPhi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial angle;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


N1::usage = "N1[s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(0\), \(s\)]\) \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\))  \[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


N2::usage = "N2[s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(0\), \(s\)]\) \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)\!\(\*SuperscriptBox[\()\), \(2\)]\)  \[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


N3::usage = "N3[s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(0\), \(s\)]\) (\[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) - \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\)\!\(\*SuperscriptBox[\()\), \(2\)]\)  \[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


N4::usage = "N4[s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(o\), \(s\)]\)\!\(\*FractionBox[\(1\), \(\[Xi] \((\*OverscriptBox[\(s\), \(_\)])\) - 1\)]\)\[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where wfor the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


N5::usage = "N5[s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(o\), \(s\)]\)\!\(\*FractionBox[\(1\), SuperscriptBox[\(\([\)\(\[Xi] \((\*OverscriptBox[\(s\), \(_\)])\) - 1\)\(]\)\), \(2\)]]\)\[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


N6::usage = "N6[s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\),\!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(o\), \(s\)]\)[\!\(\*FractionBox[\(1\), \(\[Xi] \((\*OverscriptBox[\(s\), \(_\)])\) - 1\)]\) - \!\(\*FractionBox[\(1\), \(\*SubscriptBox[\(\[Xi]\), \(0\)] - 1\)]\)\!\(\*SuperscriptBox[\(]\), \(2\)]\)\[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Xi](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the radial distance given by function \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


v::usage = "v[z, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the value of function 
		v(z) = \!\(\*SubscriptBox[\(e\), \(0\)]\)\!\(\*SuperscriptBox[\(z\), \(4\)]\) + 4\!\(\*SubscriptBox[\(e\), \(1\)]\)\!\(\*SuperscriptBox[\(z\), \(3\)]\) + 6\!\(\*SubscriptBox[\(e\), \(2\)]\)\!\(\*SuperscriptBox[\(z\), \(2\)]\) + 4\!\(\*SubscriptBox[\(e\), \(3\)]\)z + \!\(\*SubscriptBox[\(e\), \(4\)]\),
where for the Kerr metric:
	- z(s) = \!\(\*SuperscriptBox[\(sin\), \(2\)]\)\[Theta](s) ,
	- \!\(\*SubscriptBox[\(e\), \(0\)]\) = 0,
	- \!\(\*SubscriptBox[\(e\), \(1\)]\) = \!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)(-\[Delta] + \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)),
	- \!\(\*SubscriptBox[\(e\), \(2\)]\) = \!\(\*FractionBox[\(2\), \(3\)]\)[\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)(2\[Delta] - \!\(\*SuperscriptBox[\(\[CurlyEpsilon]\), \(2\)]\)) - \[Kappa] - 2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\)],
	- \!\(\*SubscriptBox[\(e\), \(3\)]\) = -\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)\[Delta] + \[Kappa] + 2\!\(\*SubscriptBox[\(\[Alpha]\[CurlyEpsilon]\[Lambda]\), \(z\)]\) + \!\(\*SubsuperscriptBox[\(\[Lambda]\), \(z\), \(2\)]\),
	- \!\(\*SubscriptBox[\(e\), \(4\)]\) = -4\!\(\*SubsuperscriptBox[\(\[Lambda]\), \(z\), \(2\)]\),
and \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum per black hole mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
 ";


dv::usage = "dv[p, z, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the total derivative of the \!\(\*
StyleBox[\"p\",\nFontSlant->\"Italic\"]\) order at \!\(\*
StyleBox[\"r\",\nFontSlant->\"Italic\"]\) from v[z, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]], i.e.\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{SuperscriptBox[\"d\", \"p\"], \"v\", 
RowBox[{\"(\", \"x\", \")\"}]}], SuperscriptBox[\"dx\", 
RowBox[{\" \", \"p\"}]]],\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[SubscriptBox[\"|\", 
RowBox[{\"x\", \"->\", z}]],\nFontSlant->\"Italic\"]\).
Variables \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\) , \[Alpha]  are values of conserved energy, Carter constant, conserved alangular momentum and angular momentum black hole per mass respectively. The symbol \[Delta] is responsible for the type of geodesic: 
	\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


J\[Theta]::usage = "J\[Theta][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\),\!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns a value of the integral
	\!\(\*SubsuperscriptBox[\(\[Integral]\), \(0\), \(s\)]\) \!\(\*SuperscriptBox[\(sin\), \(2\)]\)\[Theta](s) \[DifferentialD]\!\(\*OverscriptBox[\(s\), \(_\)]\),
where for the Kerr metric: 
	- \[Theta](\!\(\*OverscriptBox[\(s\), \(_\)]\)) is the altitude given by function \[Theta][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}]
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
	StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
	StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
	StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
	{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
";


\[CapitalTau]::usage = " \[CapitalTau][s,{\!\(\*SubscriptBox[\(\[CapitalTau]\), \(\(0\)\(,\)\(\\\ \)\)]\)\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns the value of the coordinate time depending on the Mino time and initial parameters:
	- \!\(\*
StyleBox[SubscriptBox[\"\[CapitalTau]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial time;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)

";


tild\[Tau]::usage = " tild\[Tau][s,{\!\(\*SubscriptBox[\(tild\[Tau]\), \(0\)]\),\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns the value of the affine parameter depending on the Mino time and initial parameters:
	- \!\(\*
StyleBox[SubscriptBox[\"tild\[Tau]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial time;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ outward\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(r\)] = \(-1\)\), \(for\\\ motion\\\ inward\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Xi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial radial position;
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Epsilon]\", \"\[Theta]\"],\nFontSlant->\"Italic\"]\)- direction of initial motion:
		\!\(\*TagBox[GridBox[{
	{\(\[Piecewise]\), GridBox[{
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\(=\)\(1\)\(\\\ \)\), \(\(for\\\ motion\\\ towards\\\ the\\\ south\\\ pole\\\ of\\\ the\\\ coordinate\\\ system\)\(,\)\)},
	{\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)] = \(-1\)\), \(for\\\ motion\\\ towards\\\ the\\\ north\\\ pole\\\ of\\\ the\\\ coordinate\\\ \(\(system\)\(.\)\)\)}
	},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
	},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
	\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)
	- \!\(\*
	StyleBox[SubscriptBox[\"\[Theta]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial altitude position;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Kappa]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 
	- \[Delta] - symbol responsible for the type of geodesic: 
		\!\(\*TagBox[GridBox[{
{\(\[Piecewise]\), GridBox[{
{\(\(\[Delta]\)\(=\)\(1\)\(\\\ \)\), \(\(for\\\ time - like\\\ geodesics\)\(,\)\)},
{\(\[Delta] = 0\), \(for\\\ null\\\ \(\(geodesic\)\(.\)\)\)}
},\nAllowedDimensions->{2, Automatic},\nEditable->True,\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}},\nSelectable->True]}
},\nGridBoxAlignment->{\"Columns\" -> {{Left}}, \"Rows\" -> {{Baseline}}},\nGridBoxItemSize->{\"Columns\" -> {{Automatic}}, \"Rows\" -> {{1.}}},\nGridBoxSpacings->{\"Columns\" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, \"Rows\" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}}],
\"Piecewise\",\nDeleteWithContents->True,\nEditable->False,\nSelectWithContents->True,\nSelectable->False,\nStripWrapperBoxes->True]\)

";


Begin["`Private`"];


FancylogN[x_,y_,{g2_,g3_}]:=
	Module[{value,dx,dy,temp,temp0,faza, old, new,tempOld}, 
		value=Log[WeierstrassSigma[x-y,{g2,g3}]/WeierstrassSigma[x+y,{g2,g3}]]//Chop;
		If[Im[value]==0,
			value,
				NIntegrate[WeierstrassZeta[s-y,{g2,g3}]-WeierstrassZeta[s+y,{g2,g3}],{s,0,x}]//Chop
			]
		]



Fancylog[x_,y_,{g2_,g3_}]:=
	Module[{w,eta,sigmatilde1,sigmatilde2,nn,c,L0,w2,i},
		w=WeierstrassHalfPeriods[{g2,g3}][[1]];
		eta=WeierstrassZeta[w,{g2,g3}];
		sigmatilde1=WeierstrassSigma[x-y,{g2,g3}] Exp[-eta(x-y)^2/(2 w)];
		sigmatilde2=WeierstrassSigma[x+y,{g2,g3}]Exp[-eta(x+y)^2/(2w)];
		c=FancylogN[w,y,{g2,g3}]-FancylogN[10^-10,y,{g2,g3}];
		nn=-w/(Pi)*(Im[c]/w+Im[(2eta*y)/w]);
		Log[(sigmatilde1/sigmatilde2)Exp[ nn Pi I (x/w-1)]]-nn Pi I (x/w-1)-2 eta x y/w 		
	]



I1[x_,y_,{g2_,g3_}]:= 
	1/WeierstrassPPrime[y,{g2,g3}]*(2*WeierstrassZeta[y,{g2,g3}]*x + Fancylog[x,y,{g2,g3}])


I2[x_,y_,{g2_,g3_}]:= 
	Log[WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}]]


I3[x_,y_,{g2_,g3_}]:= 
	Module[{r,ddP},
		ddP=6*WeierstrassP[y,{g2,g3}]^2 - g2/2;
		-(ddP/WeierstrassPPrime[y,{g2,g3}]^3)*Fancylog[x,y,{g2,g3}]-1/WeierstrassPPrime[y,{g2,g3}]^2 (WeierstrassZeta[x+y,{g2,g3}] + WeierstrassZeta[x-y,{g2,g3}]+(2*WeierstrassP[y,{g2,g3}] + (2*ddP*WeierstrassZeta[y,{g2,g3}])/WeierstrassPPrime[y,{g2,g3}])*x)	
		]


I4[x_,y_,{g2_,g3_}]:= 
	-1/(WeierstrassP[x,{g2,g3}]- WeierstrassP[y,{g2,g3}])


I5[x_,y_,{g2_,g3_}]:= 
	WeierstrassP[y,{g2,g3}]*Log[WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}]] + WeierstrassP[x,{g2,g3}]


I6[x_,y_,{g2_,g3_}]:= 
	Log[WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}]] -  WeierstrassP[y,{g2,g3}]/(WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}])


I7[x_,y_,{g2_,g3_}]:= 
	x+ WeierstrassP[y,{g2,g3}]/WeierstrassPPrime[y,{g2,g3}]*(2*WeierstrassZeta[y,{g2,g3}]*x + Fancylog[x,y,{g2,g3}])



I8[x_,y_,{g2_,g3_}]:= 
	I1[x,y,{g2,g3}] +  WeierstrassP[y,{g2,g3}]*I3[x,y,{g2,g3}]


I9[x_,y_,{g2_,g3_}]:= 
	WeierstrassP[y,{g2,g3}]*I7[x,y,{g2,g3}] - WeierstrassZeta[x,{g2,g3}]


I10[x_,y_,{g2_,g3_}]:= 
	WeierstrassP[y,{g2,g3}]*I9[x,y,{g2,g3}] - 1/6*WeierstrassPPrime[x,{g2,g3}] + g2/12*x


I11[x_,y_,{g2_,g3_}]:= 
	4*I10[x,y,{g2,g3}] - g2*I7[x,y,{g2,g3}] - g3*I1[x,y,{g2,g3}]


I12[x_,y_,{g2_,g3_}]:= 
	I7[x,y,{g2,g3}] + WeierstrassP[y,{g2,g3}]*I8[x,y,{g2,g3}]


I13[x_,y_,{g2_,g3_}]:= 
	I9[x,y,{g2,g3}] + WeierstrassP[y,{g2,g3}]*I12[x,y,{g2,g3}]


I14[x_,y_,{g2_,g3_}]:= 
	4*I13[x,y,{g2,g3}] - g2*I8[x,y,{g2,g3}] - g3*I3[x,y,{g2,g3}]


I15[x_,y_,{g2_,g3_}]:= 
	Module[{ddP},
		ddP=6*WeierstrassP[y,{g2,g3}]^2 - g2/2;
		1/2*1/WeierstrassPPrime[y,{g2,g3}]^3*(WeierstrassP[x+y,{g2,g3}]-WeierstrassP[x-y,{g2,g3}]-2WeierstrassPPrime[y,{g2,g3}]*x-12*WeierstrassP[y,{g2,g3}]*WeierstrassPPrime[y,{g2,g3}]*I1[x,y,{g2,g3}]-3*ddP*WeierstrassPPrime[y,{g2,g3}]*I3[x,y,{g2,g3}])
	]


I16[x_,y_,{g2_,g3_}]:= 
	-( 1/2)*1/(WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}])^2


I17[x_,y_,{g2_,g3_}]:= 
	I3[x,y,{g2,g3}] + WeierstrassP[y,{g2,g3}]*I15[x,y,{g2,g3}]


I18[x_,y_,{g2_,g3_}]:= 
	I8[x,y,{g2,g3}] + WeierstrassP[y,{g2,g3}]*I17[x,y,{g2,g3}]


I19[x_,y_,{g2_,g3_}]:= 
	Module[{ddP,ddddP},
		ddP=6*WeierstrassP[y,{g2,g3}]^2 - g2/2;
		ddddP=12*(WeierstrassPPrime[y,{g2,g3}]^2 + WeierstrassP[y,{g2,g3}]*ddP);
		1/6*1/WeierstrassPPrime[y,{g2,g3}]^4*(WeierstrassPPrime[x-y,{g2,g3}]+WeierstrassPPrime[x+y,{g2,g3}]-2ddP*x-ddddP*I1[x,y,{g2,g3}]-2(3/2*ddP^2+24*WeierstrassP[y,{g2,g3}]*WeierstrassPPrime[y,{g2,g3}]^2)*I3[x,y,{g2,g3}]-12*ddP*WeierstrassP[y,{g2,g3}]^2*I15[x,y,{g2,g3}])
	]


I20[x_,y_,{g2_,g3_}]:= 
	I15[x,y,{g2,g3}]+WeierstrassP[y,{g2,g3}]*I19[x,y,{g2,g3}]


I21[x_,y_,{g2_,g3_}]:= 
	-( 1/3)*1/(WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}])^3


I22[x_,y_,{g2_,g3_}]:= 
	-((3*WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}])/(6*(WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}])^3))


I23[x_,y_,{g2_,g3_}]:= 
	I17[x,y,{g2,g3}]+WeierstrassP[y,{g2,g3}]*I20[x,y,{g2,g3}]


I24[x_,y_,{g2_,g3_}]:= 
	I18[x,y,{g2,g3}]+WeierstrassP[y,{g2,g3}]*I23[x,y,{g2,g3}]


I25[x_,y_,{g2_,g3_}]:= 
	4*I24[x,y,{g2,g3}] - g2*I20[x,y,{g2,g3}] - g3*I19[x,y,{g2,g3}]


K1[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])(I1[x,y,{g2,g3}]-I1[x,z,{g2,g3}])


K2[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I7[x,y,{g2,g3}]-I7[x,z,{g2,g3}])


K3[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I2[x,y,{g2,g3}]-I2[x,z,{g2,g3}])


K4[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I5[x,y,{g2,g3}]-I5[x,z,{g2,g3}])


K5[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I9[x,y,{g2,g3}]-I9[x,z,{g2,g3}])


K6[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I11[x,y,{g2,g3}]-I11[x,z,{g2,g3}])


L1[x_,y_,z_,{g2_,g3_}]:=
	(I3[x,y,{g2,g3}]+I3[x,z,{g2,g3}] - 2*K1[x,y,z,{g2,g3}])/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])^2


L2[x_,y_,z_,{g2_,g3_}]:=
	(I8[x,y,{g2,g3}]+I8[x,z,{g2,g3}] - 2*K2[x,y,z,{g2,g3}])/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])^2


L3[x_,y_,z_,{g2_,g3_}]:=
	(I4[x,y,{g2,g3}]+I4[x,z,{g2,g3}] - 2*K3[x,y,z,{g2,g3}])/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])^2


L4[x_,y_,z_,{g2_,g3_}]:=
	(I6[x,y,{g2,g3}]+I6[x,z,{g2,g3}] - 2*K4[x,y,z,{g2,g3}])/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])^2


L5[x_,y_,z_,{g2_,g3_}]:=
	(I12[x,y,{g2,g3}] + I12[x,z,{g2,g3}] - 2*K5[x,y,z,{g2,g3}])/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])^2


L6[x_,y_,z_,{g2_,g3_}]:=
	(I14[x,y,{g2,g3}] + I14[x,z,{g2,g3}] - 2*K6[x,y,z,{g2,g3}])/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])^2


R[r_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	Module[{a0,a1,a2,a3,a4},
		a0 = (\[CurlyEpsilon]^2 - \[Delta]); 
		a1 =1/2\[Delta]; 
		a2 =-1/6*(\[Delta]*\[Alpha]^2+ \[Kappa] - 2*(\[Alpha]*\[CurlyEpsilon])^2 +2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z); 
		a3 = 1/2*\[Kappa]; 
		a4 = \[Alpha]^4*\[CurlyEpsilon]^2 - \[Alpha]^2*\[Kappa] - 2*\[Alpha]^3*\[CurlyEpsilon]*\[Lambda]z + \[Alpha]^2*\[Lambda]z^2;
		a0*r^4 + 4*a1*r^3 + 6*a2*r^2 + 4*a3*r + a4
		]


dR[p_,x_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:=
	D[R[r,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]],{r,p}]/.r->x


\[Xi][s_,{\[Epsilon]r_,x0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_,\[Delta]_}]:=
	Module[{a0,a1,a2,a3,a4,g2,g3},
		a0 = (\[CurlyEpsilon]^2 - \[Delta]); 
		a1 =1/2\[Delta]; 
		a2 =-1/6*(\[Delta]*\[Alpha]^2+ \[Kappa] - 2*(\[Alpha]*\[CurlyEpsilon])^2 +2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z); 
		a3 = 1/2*\[Kappa]; 
		a4 = \[Alpha]^4*\[CurlyEpsilon]^2 - \[Alpha]^2*\[Kappa] - 2*\[Alpha]^3*\[CurlyEpsilon]*\[Lambda]z + \[Alpha]^2*\[Lambda]z^2;
		g2 = a0*a4-4*a1*a3+3*a2^2;
		g3 = a0*a2*a4+2*a1*a2*a3-a2^3-a0*a3^2-a1^2*a4;
		x0 + (-Sign[\[Epsilon]r]*Sqrt[R[x0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]]* WeierstrassPPrime[s,{g2,g3}]+1/2*dR[1,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]]*(WeierstrassP[s,{g2,g3}]-1/24 dR[2,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])+1/24 R[x0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*dR[3,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])/(2*(WeierstrassP[s,{g2,g3}]-1/24 dR[2,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])^2-1/48*R[x0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*dR[4,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])//Chop
		]


g[r_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	Module[{b0,b1,b2,b3,b4},
		b0 = \[Alpha]^2 (\[Delta] - \[CurlyEpsilon]^2); 
		b1 = 0; 
		b2 = 1/6*(-\[Delta]*\[Alpha]^2 + 2*(\[Alpha]*\[CurlyEpsilon])^2 - \[Kappa] - 2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z); 
		b3 = 0; 
		b4 = -\[Alpha]^2*\[CurlyEpsilon]^2 + \[Kappa] + 2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z - \[Lambda]z^2;
		b0*r^4 + 4*b1*r^3 + 6*b2*r^2 + 4*b3*r + b4
		]


dg[p_,x_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	D[g[r,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]],{r,p}]/.r->x


\[Mu][s_,{\[Epsilon]\[Theta]_,\[Mu]0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{b0,b1,b2,b3,b4,g2,g3},
		b0 = \[Alpha]^2 (\[Delta] - \[CurlyEpsilon]^2); 
		b1 = 0; 
		b2 = 1/6*(-\[Delta]*\[Alpha]^2 + 2*(\[Alpha]*\[CurlyEpsilon])^2 - \[Kappa] - 2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z); 
		b3 = 0; 
		b4 = -\[Alpha]^2*\[CurlyEpsilon]^2 + \[Kappa] + 2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z - \[Lambda]z^2;
		g2 = b0*b4-4*b1*b3+3*b2^2;
		g3 = b0*b2*b4+2*b1*b2*b3-b2^3-b0*b3^2-b1^2 * b4;
		\[Mu]0 + (Sign[\[Epsilon]\[Theta]]*Sqrt[g[\[Mu]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]]* WeierstrassPPrime[s,{g2,g3}]+1/2*dg[1,\[Mu]0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]]*(WeierstrassP[s,{g2,g3}]-1/24 dg[2,\[Mu]0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])+1/24 g[\[Mu]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dg[3,\[Mu]0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])/(2*(WeierstrassP[s,{g2,g3}]-1/24 dg[2,\[Mu]0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])^2 -1/48*g[\[Mu]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*dg[4,\[Mu]0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]] )//Chop
		]


\[Theta][s_,{\[Epsilon]\[Theta]_,\[Theta]0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:= 
	ArcCos[\[Mu][s,{\[Epsilon]\[Theta],Cos[\[Theta]0],\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]]
	


\[Theta]max[\[Epsilon]\[Theta]_,\[Theta]0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	Module[{min\[Mu]},
		min\[Mu]=FindMinimum[\[Mu][x,{\[Epsilon]\[Theta]*Sign[Cos[\[Theta]0]],Cos[\[Theta]0],\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}],{x,0.1}][[1]];
		ArcCos[min\[Mu]]
	]


\[Theta]min[\[Epsilon]\[Theta]_,\[Theta]0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	Module[{max\[Mu]},
		max\[Mu]=FindMaximum[\[Mu][x,{\[Epsilon]\[Theta]*Sign[Cos[\[Theta]0]],Cos[\[Theta]0],\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}],{x,0.1}][[1]];
		ArcCos[max\[Mu]]
	]


h[x_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_, \[Epsilon]h_]:= 
	Module[{\[Xi]H,c0,c1,c2,c3,c4},
		If[Abs[\[Alpha]]!=1,
			\[Xi]H = 1 + \[Epsilon]h*Sqrt[1-\[Alpha]^2]; (* Subscript[\[Epsilon], h] a sign that determines whether we are on the inner or outer horizon *)
			c0 = \[Alpha]^4*\[CurlyEpsilon]^2 - 2\[Alpha]^3*\[Lambda]z*\[CurlyEpsilon] + \[Alpha]^2 (-\[Xi]H^2(\[Delta]-2*\[CurlyEpsilon]^2)- \[Kappa] + \[Lambda]z^2) - 2\[Alpha]*\[Lambda]z*\[Xi]H^2*\[CurlyEpsilon] + \[Xi]H^3 (\[Xi]H*\[CurlyEpsilon]^2 - \[Delta](\[Xi]H - 2)) - \[Kappa]*(\[Xi]H - 2)*\[Xi]H; 
			c1 = 1/2 (\[Xi]H(-\[Alpha]^2*\[Delta] + 2\[Alpha]^2*\[CurlyEpsilon]^2 - 2\[Alpha]*\[Lambda]z*\[CurlyEpsilon] + \[Xi]H(-2*\[Delta]*\[Xi]H + 3\[Delta] + 2*\[Xi]H*\[CurlyEpsilon]^2)) - \[Kappa]*(\[Xi]H - 1));
			c2 = 1/6 (-\[Alpha]^2(\[Delta] - 2\[CurlyEpsilon]^2) - \[Kappa] - 2\[Alpha]*\[CurlyEpsilon]*\[Lambda]z + 6(\[Delta] - \[Delta]*\[Xi]H + \[CurlyEpsilon]^2*\[Xi]H)*\[Xi]H);
			c3 = \[Delta]*(1/2 - \[Xi]H) + \[CurlyEpsilon]^2*\[Xi]H; 
			c4 = \[CurlyEpsilon]^2 - \[Delta];
			c0*x^4+4*c1*x^3+6*c2*x^2+4*c3*x+c4,
				c0 = 4\[CurlyEpsilon]^2 - 4*\[Alpha]*\[Lambda]z*\[CurlyEpsilon] + \[Lambda]z^2 ; 
				c1 = 2\[CurlyEpsilon]^2 - \[Alpha]*\[CurlyEpsilon]*\[Lambda]z;
				c2 = 1/6 (-\[Delta]  + 8*\[CurlyEpsilon]^2  - \[Kappa] - 2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z);
				c3 = -1/2*\[Delta] + \[CurlyEpsilon]^2; 
				c4 = \[CurlyEpsilon]^2 - \[Delta];
				c0*x^4+4*c1*x^3+6*c2*x^2+4*c3*x+c4
			]
		]


dh[p_,x_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_, \[Epsilon]h_]:= 
	D[h[r,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], \[Epsilon]h],{r,p}]/.r->x


NH[s_,{\[Epsilon]r_,\[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_, \[Epsilon]h_}]:=
	Module[{\[Xi]H, A1, A2, A3, A4, A5, PP, PM, g2, g3, u0, pp ,pm ,ddPy, ddPz,signLogy,signLogz, I10y, I10z, I70y, I70z, K10, K20, K30,solp,p3,ddP,signLog,I100,I30,I40,I80},
		\[Xi]H = 1 + \[Epsilon]h Sqrt[1-\[Alpha]^2]; 
		u0 = 1/(\[Xi]0-\[Xi]H);
		A1 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h]*dh[3,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h] - 1/96 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h]*dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], \[Epsilon]h] ;
		A2 = 1/4 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h];
		A3 = 1/2*\[Epsilon]r*Sqrt[h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h]];
		A4 = 1/24 * dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], \[Epsilon]h];
		A5 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], \[Epsilon]h]*dh[4,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h];
		PP = A4 + Sqrt[A5/2];
		PM = A4 - Sqrt[A5/2];
		g2 = 1/12 (\[Alpha]^4 (\[Delta]^2-16 \[Delta] \[CurlyEpsilon]^2+16 \[CurlyEpsilon]^4)+\[Kappa] (-12 \[Delta]+\[Kappa])+4 \[Alpha]^3 \[CurlyEpsilon] (7 \[Delta]-8 \[CurlyEpsilon]^2) \[Lambda]z+4 \[Alpha] \[CurlyEpsilon] \[Kappa] \[Lambda]z+2 \[Alpha]^2 (\[Delta] (7 \[Kappa]-6 \[Lambda]z^2)+8 \[CurlyEpsilon]^2 (-\[Kappa]+\[Lambda]z^2)));
		g3 = 1/216 (\[Alpha]^6 (\[Delta]-2 \[CurlyEpsilon]^2) (\[Delta]^2+32 \[Delta] \[CurlyEpsilon]^2-32 \[CurlyEpsilon]^4)+\[Kappa]^2 (36 \[Delta]-54 \[CurlyEpsilon]^2+\[Kappa])-6 \[Alpha]^5 \[CurlyEpsilon] (11 \[Delta]^2-44 \[Delta] \[CurlyEpsilon]^2+32 \[CurlyEpsilon]^4) \[Lambda]z+6 \[Alpha] \[CurlyEpsilon] \[Kappa] (-6 \[Delta]+\[Kappa]) \[Lambda]z+3 \[Alpha]^2 (\[Kappa] (12 \[Delta] (\[Delta]+\[CurlyEpsilon]^2)-11 \[Delta] \[Kappa]+10 \[CurlyEpsilon]^2 \[Kappa])-2 (9 \[Delta]^2-6 \[Delta] \[Kappa]+4 \[CurlyEpsilon]^2 \[Kappa]) \[Lambda]z^2)+4 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z (27 \[Delta]^2+2 \[CurlyEpsilon]^2 (15 \[Kappa]-8 \[Lambda]z^2)+\[Delta] (-33 \[Kappa]+18 \[Lambda]z^2))-3 \[Alpha]^4 (\[Delta]^2 (18 \[CurlyEpsilon]^2+11 \[Kappa]-12 \[Lambda]z^2)+32 \[CurlyEpsilon]^4 (\[Kappa]-2 \[Lambda]z^2)+4 \[Delta] \[CurlyEpsilon]^2 (-11 \[Kappa]+20 \[Lambda]z^2)));
		(* We need to consider two cases here because for A5=0 the nature of the last integrals will change, it is described in the appendix to the work *)
		If[A5!=0,
			(* Here we have to be careful because, for some values, Mathematica returns InverseWeierstrassP, not as a numeric value, and then we have to calculate it numerically (this is the simplest method)*)
			If[NumberQ[InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}]],
					pp = InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==A4+Sqrt[A5/2],x]//Flatten;
					pp = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];	
			If[NumberQ[InverseWeierstrassP[A4-Sqrt[A5/2],{g2,g3}]],
					pm = InverseWeierstrassP[A4-Sqrt[A5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==A4-Sqrt[A5/2],x]//Flatten;
					pm = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];
			ddPy = 6*WeierstrassP[pp,{g2,g3}]^2 - g2/2; 
			ddPz = 6*WeierstrassP[pm,{g2,g3}]^2 - g2/2;
			(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
		    (* Signe of Log *)
			If[Abs[I*Pi 1/WeierstrassPPrime[pp,{g2,g3}] - I1[10^-6,pp,{g2,g3}]]<0.01,
					signLogy=1,
						signLogy=-1
					];  
			If[Abs[I*Pi 1/WeierstrassPPrime[pm,{g2,g3}] - I1[10^-6,pm,{g2,g3}]]<0.01,
					signLogz=1,
						signLogz=-1
					]; 	    
			I10y = signLogy*I*Pi 1/WeierstrassPPrime[pp,{g2,g3}];
			I10z = signLogz*I*Pi 1/WeierstrassPPrime[pm,{g2,g3}];																	
			I70y =  signLogy*I*Pi WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}];
			I70z =  signLogz*I*Pi WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}];	
			(* values of integrals K1, K2, K3 for x=0   *)		
			K10 = (I10y - I10z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K20 = (I70y - I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K30 = 0;	
			(* final result *)		
			u0*s+A1*(K1[s,pp,pm,{g2,g3}]-K10)+ A2*(K2[s,pp,pm,{g2,g3}]-K20)+A3*(K3[s,pp,pm,{g2,g3}]-K30)//Re,	
				If[NumberQ[InverseWeierstrassP[A4,{g2,g3}]],
					p3 = InverseWeierstrassP[A4,{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==A4,x]//Flatten;
					p3 = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
					];
				ddP = 6*WeierstrassP[p3,{g2,g3}]^2 - g2/2; 
				(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
				(* Signe of Log *)			
				If[Abs[I*Pi 1/WeierstrassPPrime[p3,{g2,g3}] - I1[10^-6,p3,{g2,g3}]]<0.01,
					signLog=1,
						signLog=-1
					];
				I100 = signLog*I*Pi 1/WeierstrassPPrime[p3,{g2,g3}];	
				I30 = -signLog*I*Pi ddP/WeierstrassPPrime[p3,{g2,g3}]^3;
				I40 = 0;
				I80 = I100 + WeierstrassP[p3,{g2,g3}]I30;
				(* final result *)		
				u0*s+A1*(I3[s,p3,{g2,g3}]-I30)+ A2*(I8[s,p3,{g2,g3}]-I80)+A3*(I4[s,p3,{g2,g3}]-I40)//Re
			]	
		]


I\[Xi][s_,{\[Epsilon]r_,\[Xi]0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{\[Xi]Hp,\[Xi]Hm,NHp,NHm,NHp0,NHm0},	
		(* We need to add a simple condition on angular momentum here to guard against Mathematica's numerical errors resulting from direct 0/0 division *)	
		If[\[Alpha]!=0,
			If[\[Alpha]!=1,
				\[Xi]Hp = 1 + Sqrt[1-\[Alpha]^2];
				\[Xi]Hm = 1 - Sqrt[1-\[Alpha]^2];
				NHp = NH[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], 1}];
				NHm = NH[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], -1}];
				(* final result *)
				(\[Alpha]*\[CurlyEpsilon])/(\[Xi]Hp-\[Xi]Hm) ((\[Xi]Hp-\[Xi]Hm)*s+(\[Xi]Hp^2+\[Alpha]^2-(\[Alpha]*\[Lambda]z)/\[CurlyEpsilon])NHp - (\[Xi]Hm^2+\[Alpha]^2-(\[Alpha]*\[Lambda]z)/\[CurlyEpsilon])NHm),
					(* Case extreme Kerr *)
					\[Alpha]*\[CurlyEpsilon]*s + 2*\[Alpha]*\[CurlyEpsilon]*N4[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + (2*\[Alpha]*\[CurlyEpsilon] - \[CurlyEpsilon]*\[Lambda]z)*N5[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]
				],
				0
			]	
		]


w[x_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	Module[{d0,d1,d2,d3,d4},
		d0 =  -4*\[Lambda]z^2; 
		d1 = -\[Alpha]^2*\[Delta] + \[Kappa] + 2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z + \[Lambda]z^2;
		d2 = 2/3 (\[Alpha]^2*(2*\[Delta] - \[CurlyEpsilon]^2) -\[Kappa] - 2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z);
		d3 = \[Alpha]^2*(-\[Delta] + \[CurlyEpsilon]^2); 
		d4 = 0;
		d0*x^4+4*d1*x^3+6*d2*x^2+4*d3*x+d4
		]


dw[p_,x_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	D[w[r,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]],{r,p}]/.r->x


I\[Theta][s_,{\[Epsilon]\[Theta]_, \[Theta]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{B1, B2, B3, B4, B5, PP, PM, g2, g3, q0, pp, pm, ddPy, ddPz,signLogy,signLogz, I10y, I10z, I70y, I70z, K10, K20, K30, \[Epsilon]\[Mu],solp,p3,ddP,signLog,I100,I30, I40, I80,\[CapitalTheta]},
		\[Epsilon]\[Mu] = Sign[Cos[\[Theta]0]];
		q0 = 1/(Sin[\[Theta]0]^2);
		B1 = 1/48 * w[q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dw[3,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]] - 1/96 * dw[1,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dw[2,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]] ;
		B2 = 1/4 * dw[1,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		B3 = 1/2 *\[Epsilon]\[Mu] * \[Epsilon]\[Theta] * Sqrt[w[q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]];
		B4 = 1/24 * dw[2,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		B5 = 1/48 * w[q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*dw[4,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		PP = B4 + Sqrt[B5/2];
		PM = B4 - Sqrt[B5/2];
		g2 = 4/3 (\[Alpha]^2 (-2 \[Delta]+\[CurlyEpsilon]^2)+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^2-4 \[Alpha]^2 (-\[Delta]+\[CurlyEpsilon]^2) (-\[Alpha]^2 \[Delta]+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		g3 =  4 \[Alpha]^4 (\[Delta]-\[CurlyEpsilon]^2)^2 \[Lambda]z^2+8/27 (\[Alpha]^2 (-2 \[Delta]+\[CurlyEpsilon]^2)+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^3+4/3 \[Alpha]^2 (-\[Delta]+\[CurlyEpsilon]^2) (-\[Alpha]^2 \[Delta]+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2) (-\[Kappa]+\[Alpha] (2 \[Alpha] \[Delta]-\[Alpha] \[CurlyEpsilon]^2-2 \[CurlyEpsilon] \[Lambda]z));
		(* first derivative of \[Theta](s),i.e. (d\[Theta]/ds)=Subscript[\[Epsilon], \[Theta]]Sqrt[\[CapitalTheta]]*)
		\[CapitalTheta]=\[Kappa]-\[Delta]*\[Alpha]^2*Cos[\[Theta]0]^2-1/Sin[\[Theta]0]^2 (\[Lambda]z - \[Alpha]*\[CurlyEpsilon]*Sin[\[Theta]0]^2);
		If[\[CapitalTheta]!=0 && \[Theta]0!=Pi/2 (* we consider two cases: general trajectories and in the equatorial plane in order to speed up calculations for the equatorial trajectory *),
			(* We need to consider two cases here because for A5=0 the nature of the last integrals will change, it is described in the appendix to the work *)
			If[B5!=0,
				(* Here we have to be careful because, for some values, Mathematica returns InverseWeierstrassP, not as a numeric value, and then we have to calculate it numerically (this is the simplest method) *)
				If[NumberQ[InverseWeierstrassP[B4+Sqrt[B5/2],{g2,g3}]],
						pp = InverseWeierstrassP[B4+Sqrt[B5/2],{g2,g3}],
							solp=NSolve[WeierstrassP[x,{g2,g3}]==B4+Sqrt[B5/2],x]//Flatten;
							pp = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
					];	
				If[NumberQ[InverseWeierstrassP[B4-Sqrt[B5/2],{g2,g3}]],
						pm = InverseWeierstrassP[B4-Sqrt[B5/2],{g2,g3}],
							solp=NSolve[WeierstrassP[x,{g2,g3}]==B4-Sqrt[B5/2],x]//Flatten;
							pm = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
					];
				ddPy = 6*WeierstrassP[pp,{g2,g3}]^2 - g2/2; 
				ddPz = 6*WeierstrassP[pm,{g2,g3}]^2 - g2/2;
				(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
			    (* Signe of Log *)
				If[Abs[I*Pi 1/WeierstrassPPrime[pp,{g2,g3}] - I1[10^-6,pp,{g2,g3}]]<0.01,
						signLogy=1,
							signLogy=-1
					];  
				If[Abs[I*Pi 1/WeierstrassPPrime[pm,{g2,g3}] - I1[10^-6,pm,{g2,g3}]]<0.01,
					signLogz=1,
							signLogz=-1
					]; 	    
				I10y = signLogy*I*Pi 1/WeierstrassPPrime[pp,{g2,g3}];
				I10z = signLogz*I*Pi 1/WeierstrassPPrime[pm,{g2,g3}];																	
				I70y =  signLogy*I*Pi WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}];
				I70z =  signLogz*I*Pi WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}];	
				(* values of integrals K1, K2, K3 for x=0   *)		
				K10 = (I10y - I10z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
				K20 = (I70y - I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
				K30 = 0;	
				(* final result *)		
				\[Lambda]z(q0*s+B1*(K1[s,pp,pm,{g2,g3}]-K10)+ B2*(K2[s,pp,pm,{g2,g3}]-K20)+B3*(K3[s,pp,pm,{g2,g3}]-K30)),
					If[NumberQ[InverseWeierstrassP[B4,{g2,g3}]],
						p3 = InverseWeierstrassP[B4,{g2,g3}],
						solp=NSolve[WeierstrassP[x,{g2,g3}]==B4,x]//Flatten;
						B3 = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
					];
					ddP = 6*WeierstrassP[p3,{g2,g3}]^2 - g2/2; 
					(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
					(* Signe of Log *)			
					If[Abs[I*Pi 1/WeierstrassPPrime[p3,{g2,g3}] - I1[10^-6,p3,{g2,g3}]]<0.01,
						signLog=1,
							signLog=-1
						];
					I100 = signLog*I*Pi 1/WeierstrassPPrime[p3,{g2,g3}];	
					I30 = -signLog*I*Pi ddP/WeierstrassPPrime[p3,{g2,g3}]^3;
					I40 = 0;
					I80 = I100 + WeierstrassP[p3,{g2,g3}]I30;
					(* final result *)		
					\[Lambda]z(q0*s+B1*(I3[s,p3,{g2,g3}]-I30)+ B2*(I8[s,p3,{g2,g3}]-I80)+B3*(I4[s,p3,{g2,g3}]-I40))
			],
				
				(* the case of a trajectory in the equatorial plane *)
				\[Lambda]z*s
			] 
		]


\[CurlyPhi][s_,{\[CurlyPhi]0_, \[Epsilon]r_, \[Xi]0_, \[Epsilon]\[Theta]_, \[Theta]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:= 
		\[CurlyPhi]0 + I\[Xi][s,{\[Epsilon]r,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + I\[Theta][s,{\[Epsilon]\[Theta], \[Theta]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] - \[Alpha]*\[CurlyEpsilon]*s//Re


N1[s_,{\[Epsilon]r_, \[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{C1, C2, C3, C4, C5, PP, PM, g2, g3, q0, pp, pm, ddPy, ddPz, signLogy, signLogz, I10y, I10z, I70y, I70z, K10, K20, K30,p3, ddP,signLog,I100,I30,I40,I80,solp},
		C1 = 1/48 * R[\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dR[3,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]] - 1/96 * dR[1,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dR[2,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]] ;
		C2 = 1/4 * dR[1,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		C3 = -1/2 * \[Epsilon]r * Sqrt[R[\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]];
		C4 = 1/24 * dR[2,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		C5 = 1/48 * R[\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*dR[4,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		PP = C4 + Sqrt[C5/2];
		PM = C4 - Sqrt[C5/2];
		g2 = -\[Delta] \[Kappa]+1/12 (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^2+(-\[Delta]+\[CurlyEpsilon]^2) (\[Alpha]^4 \[CurlyEpsilon]^2-\[Alpha]^2 \[Kappa]-2 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z+\[Alpha]^2 \[Lambda]z^2);
		g3 =  -(1/4) (-\[Delta]+\[CurlyEpsilon]^2) \[Kappa]^2+1/12 \[Delta] \[Kappa] (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)-1/216 (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^3-1/4 \[Delta]^2 (\[Alpha]^4 \[CurlyEpsilon]^2-\[Alpha]^2 \[Kappa]-2 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z+\[Alpha]^2 \[Lambda]z^2)+1/6 (-\[Delta]+\[CurlyEpsilon]^2) (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z) (\[Alpha]^4 \[CurlyEpsilon]^2-\[Alpha]^2 \[Kappa]-2 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z+\[Alpha]^2 \[Lambda]z^2);
		(* We need to consider two cases here because for C5=0 the nature of the last integrals will change, it is described in the appendix to the work *)
		If[C5!=0,
			(* Here we have to be careful because, for some values, Mathematica returns InverseWeierstrassP, not as a numeric value, and then we have to calculate it numerically (this is the simplest method) *)
			If[NumberQ[InverseWeierstrassP[C4+Sqrt[C5/2],{g2,g3}]],
				pp = InverseWeierstrassP[C4+Sqrt[C5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==C4+Sqrt[C5/2],x]//Flatten;
					pp = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];	
			If[NumberQ[InverseWeierstrassP[C4-Sqrt[C5/2],{g2,g3}]],
				pm = InverseWeierstrassP[C4-Sqrt[C5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==C4-Sqrt[C5/2],x]//Flatten;
					pm = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];
			ddPy = 6*WeierstrassP[pp,{g2,g3}]^2 - g2/2; 
			ddPz = 6*WeierstrassP[pm,{g2,g3}]^2 - g2/2;
			(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
			(* Signe of Log *)
			If[Abs[I*Pi 1/WeierstrassPPrime[pp,{g2,g3}] - I1[10^-6,pp,{g2,g3}]]<0.01,
				signLogy=1,
					signLogy=-1
				];  
			If[Abs[I*Pi 1/WeierstrassPPrime[pm,{g2,g3}] - I1[10^-6,pm,{g2,g3}]]<0.01,
				signLogz=1,
					signLogz=-1
				]; 	    
			I10y = signLogy*I*Pi 1/WeierstrassPPrime[pp,{g2,g3}];
			I10z = signLogz*I*Pi 1/WeierstrassPPrime[pm,{g2,g3}];																	
			I70y =  signLogy*I*Pi WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}];
			I70z =  signLogz*I*Pi WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}];	
			(* values of integrals K1, K2, K3 for x=0   *)		
			K10 = (I10y - I10z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K20 = (I70y - I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K30 = 0;	
			(* final result *)		
			\[Xi]0*s+C1*(K1[s,pp,pm,{g2,g3}]-K10)+ C2*(K2[s,pp,pm,{g2,g3}]-K20)+C3*(K3[s,pp,pm,{g2,g3}]-K30)//Re,
				(* case for \[CurlyEpsilon]=\[Delta] *)
				If[NumberQ[InverseWeierstrassP[C4,{g2,g3}]],
				p3 = InverseWeierstrassP[C4,{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==C4,x]//Flatten;
						p3 = solp[[1]][[2]]/.{C[1]->0, C[2]->2}
					];	
				ddP = 6*WeierstrassP[p3,{g2,g3}]^2 - g2/2; 
				(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
				(* Signe of Log *)			
				If[Abs[I*Pi 1/WeierstrassPPrime[p3,{g2,g3}] - I1[10^-6,p3,{g2,g3}]]<0.01,
					signLog=1,
						signLog=-1
					];
				I100 = signLog*I*Pi 1/WeierstrassPPrime[p3,{g2,g3}];	
				I30 = -signLog*I*Pi ddP/WeierstrassPPrime[p3,{g2,g3}]^3;
				I40 = 0;
				I80 = I100 + WeierstrassP[p3,{g2,g3}]I30;
				(* final result *)		
				\[Xi]0*s+C1*(I3[s,p3,{g2,g3}]-I30)+ C2*(I8[s,p3,{g2,g3}]-I80)+C3*(I4[s,p3,{g2,g3}]-I40)//Re
			]	
		]


N3[s_,{\[Epsilon]r_, \[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{C1, C2, C3, C4, C5, PP, PM, g2, g3, q0, pp, pm, ddPy, ddPz, signLogy, signLogz, I10y, I10z, I20y, I20z, I30y, I30z, I70y, I70z,I80y, I80z,I120y, I120z,I140y, I140z, K10, K20, K30, K50,K60,L10,L20,L30,L40,L50,L60, p3, ddP,ddddP,signLog ,I100,I30,I80,I150,I170,I180,I190,I200,I210,I220,I230,I240,I250,solp},
		C1 = 1/48 * R[\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dR[3,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]] - 1/96 * dR[1,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dR[2,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]] ;
		C2 = 1/4 * dR[1,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		C3 = -1/2 * \[Epsilon]r * Sqrt[R[\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]];
		C4 = 1/24 * dR[2,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		C5 = 1/48 * R[\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*dR[4,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		PP = C4 + Sqrt[C5/2];
		PM = C4 - Sqrt[C5/2];
		g2 = -\[Delta] \[Kappa]+1/12 (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^2+(-\[Delta]+\[CurlyEpsilon]^2) (\[Alpha]^4 \[CurlyEpsilon]^2-\[Alpha]^2 \[Kappa]-2 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z+\[Alpha]^2 \[Lambda]z^2);
		g3 =  -(1/4) (-\[Delta]+\[CurlyEpsilon]^2) \[Kappa]^2+1/12 \[Delta] \[Kappa] (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)-1/216 (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^3-1/4 \[Delta]^2 (\[Alpha]^4 \[CurlyEpsilon]^2-\[Alpha]^2 \[Kappa]-2 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z+\[Alpha]^2 \[Lambda]z^2)+1/6 (-\[Delta]+\[CurlyEpsilon]^2) (-\[Alpha]^2 \[Delta]+2 \[Alpha]^2 \[CurlyEpsilon]^2-\[Kappa]-2 \[Alpha] \[CurlyEpsilon] \[Lambda]z) (\[Alpha]^4 \[CurlyEpsilon]^2-\[Alpha]^2 \[Kappa]-2 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z+\[Alpha]^2 \[Lambda]z^2);
		(* We need to consider two cases here where we will have to deal with other integrals *)
		If[C5!=0,
			(* Here we have to be careful because, for some values, Mathematica returns InverseWeierstrassP, not as a numeric value, and then we have to calculate it numerically (this is the simplest method) *)
			If[NumberQ[InverseWeierstrassP[C4+Sqrt[C5/2],{g2,g3}]],
				pp = InverseWeierstrassP[C4+Sqrt[C5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==C4+Sqrt[C5/2],x]//Flatten;
					pp = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];	
			If[NumberQ[InverseWeierstrassP[C4-Sqrt[C5/2],{g2,g3}]],
				pm = InverseWeierstrassP[C4-Sqrt[C5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==C4-Sqrt[C5/2],x]//Flatten;
					pm = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];
			ddPy = 6*WeierstrassP[pp,{g2,g3}]^2 - g2/2; 
			ddPz = 6*WeierstrassP[pm,{g2,g3}]^2 - g2/2;
			(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
		    (* Signe of Log *)
			If[Abs[I*Pi 1/WeierstrassPPrime[pp,{g2,g3}] - I1[10^-6,pp,{g2,g3}]]<0.01,
				signLogy=1,
				signLogy=-1
				];  
			If[Abs[I*Pi 1/WeierstrassPPrime[pm,{g2,g3}] - I1[10^-6,pm,{g2,g3}]]<0.01,
				signLogz=1,
				signLogz=-1
				]; 	    
			I10y = signLogy*I*Pi 1/WeierstrassPPrime[pp,{g2,g3}];
			I10z = signLogz*I*Pi 1/WeierstrassPPrime[pm,{g2,g3}];				
			I30y = -signLogy*I*Pi ddPy/WeierstrassPPrime[pp,{g2,g3}]^3;
			I30z = -signLogz*I*Pi ddPz/WeierstrassPPrime[pm,{g2,g3}]^3;													
			I70y =  signLogy*I*Pi WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}];
			I70z =  signLogz*I*Pi WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}];
			I80y = I10y + WeierstrassP[pp,{g2,g3}]I30y;
			I80z = I10z + WeierstrassP[pm,{g2,g3}]I30z;
			I120y = I70y + WeierstrassP[pp,{g2,g3}]I80y;
			I120z = I70z + WeierstrassP[pm,{g2,g3}]I80z;
			I140y = (4*(WeierstrassP[pp,{g2,g3}])^2-g2)*I80y + 8*WeierstrassP[pp,{g2,g3}]*I70y - g3*I30y; (*it is without -4\[Zeta](0) because it will reduce withe thesame element in K6(0) during subtraction  in L6(0)  *) 						
			I140z = (4*(WeierstrassP[pm,{g2,g3}])^2-g2)*I80z + 8*WeierstrassP[pm,{g2,g3}]*I70z - g3*I30z; (*it is without -4\[Zeta](0) because it will reduce withe thesame element in K6(0) during subtraction  in L6(0)  *) 								
			K10 = (I10y - I10z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K20 = (I70y - I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K30 = 0;
			K50 = (WeierstrassP[pp,{g2,g3}]*I70y - WeierstrassP[pm,{g2,g3}]*I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);	
			K60 = (4*(WeierstrassP[pp,{g2,g3}]^2*I70y-WeierstrassP[pm,{g2,g3}]^2*I70z)-g2(I70y-I70z)-g3(I10y-I10z))/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);(*it is without -4\[Zeta](0) because it will reduce withe thesame element in I140(0) during subtraction  in L6(0)  *) 
			(* values of integrals L1, L2, L3, L4, L5, L6 for x=0  *)
			L10 = (I30y + I30z -2K10)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2 ;
			L20 = (I80y + I80z -2K20)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2;
			L30 = 0;
			L40 = 0;
			L50 = (I120y + I120z -2K50)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2;
			L60 = (I140y + I140z -2K60)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2;
			(* final result *)
			C1^2*(L1[s,pp,pm,{g2,g3}]-L10)+2C1*C2*(L2[s,pp,pm,{g2,g3}]-L20) +2C1*C3*(L3[s,pp,pm,{g2,g3}]-L30) +2C2*C3*(L4[s,pp,pm,{g2,g3}]-L40) +C2^2*(L5[s,pp,pm,{g2,g3}]-L50) +C3^2*(L6[s,pp,pm,{g2,g3}]-L60)//Re,
				(* case for \[CurlyEpsilon]=\[Delta] *)
				If[NumberQ[InverseWeierstrassP[C4,{g2,g3}]],
					p3 = InverseWeierstrassP[C4,{g2,g3}],
						solp=NSolve[WeierstrassP[x,{g2,g3}]==C4,x]//Flatten;
						p3 = solp[[1]][[2]]/.{C[1]->0, C[2]->2}
					];	
				ddP = 6*WeierstrassP[p3,{g2,g3}]^2 - g2/2; 
				ddddP=12*(WeierstrassPPrime[p3,{g2,g3}]^2 + WeierstrassP[p3,{g2,g3}]*ddP);
				(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
				(* Signe of Log *)			
				If[Abs[I*Pi 1/WeierstrassPPrime[p3,{g2,g3}] - I1[10^-6,p3,{g2,g3}]]<0.01,
					signLog=1,
						signLog=-1
					];
				I100 = signLog*I*Pi 1/WeierstrassPPrime[p3,{g2,g3}];
				I30 = -signLog*I*Pi ddP/WeierstrassPPrime[p3,{g2,g3}]^3;
				I80 = I100 + WeierstrassP[p3,{g2,g3}]I30;				
				I150 = 1/(2*(WeierstrassPPrime[p3,{g2,g3}])^3)*(-12*WeierstrassP[p3,{g2,g3}]*WeierstrassPPrime[p3,{g2,g3}]I100 - 3*WeierstrassPPrime[p3,{g2,g3}]*ddP *I30);					
				I170 = I30 + WeierstrassP[p3,{g2,g3}]*I150;
				I180 = I80 + WeierstrassP[p3,{g2,g3}]*I170;
				I190 = 1/(6*(WeierstrassPPrime[p3,{g2,g3}])^4)*(-ddddP*I100-2(3/2*ddP^2+24*WeierstrassP[p3,{g2,g3}]*WeierstrassPPrime[p3,{g2,g3}]^2)*I30-12*ddP*WeierstrassP[p3,{g2,g3}]^2*I150);
				I200 = I150 + WeierstrassP[p3,{g2,g3}]*I190;
				I210 = 0;
				I220 = 0;
				I230 = I170 + WeierstrassP[p3,{g2,g3}]*I200;
				I240 = I180 + WeierstrassP[p3,{g2,g3}]*I230;
				I250 = 4*I240 - g2*I200 - g3*I190;
				(* final result *)		
				C1^2*(I19[s,p3,{g2,g3}]-I190)+2C1*C2*(I20[s,p3,{g2,g3}]-I200) +2C1*C3*(I21[s,p3,{g2,g3}]-I210) +2C2*C3*(I22[s,p3,{g2,g3}]-I220) +C2^2*(I23[s,p3,{g2,g3}]-I230) +C3^2*(I25[s,p3,{g2,g3}]-I250)
			]	 
		]


N2[s_,{\[Epsilon]r_, \[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=\[Xi]0^2*s + 2*\[Xi]0 ( N1[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] - \[Xi]0*s )+ N3[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]


N4[s_,{\[Epsilon]r_,\[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{\[Xi]H, A1, A2, A3, A4, A5, PP, PM, g2, g3, u0, pp ,pm ,ddPy, ddPz,signLogy,signLogz, I10y, I10z, I70y, I70z, K10, K20, K30,p3, ddP,signLog,I100,I30,I40,I80,solp},
		u0 = 1/(\[Xi]0-1);
		A1 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],1]*dh[3,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],1] - 1/96 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],1]*dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], 1] ;
		A2 = 1/4 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],1];
		A3 = 1/2*\[Epsilon]r*Sqrt[h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],1]];
		A4 = 1/24 * dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], 1];
		A5 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], 1]*dh[4,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],1];
		PP = A4 + Sqrt[A5/2];
		PM = A4 - Sqrt[A5/2];
		g2 = 2 \[CurlyEpsilon] (\[Delta]-2 \[CurlyEpsilon]^2) (2 \[CurlyEpsilon]-\[Alpha] \[Lambda]z)+1/12 (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^2+(-\[Delta]+\[CurlyEpsilon]^2) (4 \[CurlyEpsilon]^2-4 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		g3 = \[CurlyEpsilon]^2 (\[Delta]-\[CurlyEpsilon]^2) (-2 \[CurlyEpsilon]+\[Alpha] \[Lambda]z)^2+1/6 \[CurlyEpsilon] (\[Delta]-2 \[CurlyEpsilon]^2) (2 \[CurlyEpsilon]-\[Alpha] \[Lambda]z) (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)+1/216 (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^3-1/4 (\[Delta]-2 \[CurlyEpsilon]^2)^2 (4 \[CurlyEpsilon]^2-4 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2)+1/6 (\[Delta]-\[CurlyEpsilon]^2) (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z) (4 \[CurlyEpsilon]^2-4 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		(* We need to consider two cases here where we will have to deal with other integrals *)
		If[A5!=0,
			(* Here we have to be careful because, for some values, Mathematica returns InverseWeierstrassP, not as a numeric value, and then we have to calculate it numerically (this is the simplest method) *)
			If[NumberQ[InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}]],
				pp = InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==A4+Sqrt[A5/2],x]//Flatten;
					pp = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];	
			If[NumberQ[InverseWeierstrassP[A4-Sqrt[A5/2],{g2,g3}]],
				pm = InverseWeierstrassP[A4-Sqrt[A5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==A4-Sqrt[A5/2],x]//Flatten;
					pm = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];
			ddPy = 6*WeierstrassP[pp,{g2,g3}]^2 - g2/2; 
			ddPz = 6*WeierstrassP[pm,{g2,g3}]^2 - g2/2;
			(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
			(* Signe of Log *)
			If[Abs[I*Pi 1/WeierstrassPPrime[pp,{g2,g3}] - I1[10^-6,pp,{g2,g3}]]<0.01,
				signLogy=1,
					signLogy=-1
				];  
			If[Abs[I*Pi 1/WeierstrassPPrime[pm,{g2,g3}] - I1[10^-6,pm,{g2,g3}]]<0.01,
				signLogz=1,
					signLogz=-1
				]; 	    
			I10y = signLogy*I*Pi 1/WeierstrassPPrime[pp,{g2,g3}];
			I10z = signLogz*I*Pi 1/WeierstrassPPrime[pm,{g2,g3}];																	
			I70y =  signLogy*I*Pi WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}];
			I70z =  signLogz*I*Pi WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}];	
			(* values of integrals K1, K2, K3 for x=0   *)		
			K10 = (I10y - I10z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K20 = (I70y - I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K30 = 0;	
			(* final result *)		
			u0*s+A1*(K1[s,pp,pm,{g2,g3}]-K10)+ A2*(K2[s,pp,pm,{g2,g3}]-K20)+A3*(K3[s,pp,pm,{g2,g3}]-K30)//Re,
				(* case for \[CurlyEpsilon]=\[Delta] *)
				If[NumberQ[InverseWeierstrassP[A4,{g2,g3}]],
					p3 = InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}],
						solp=NSolve[WeierstrassP[x,{g2,g3}]==A4,x]//Flatten;
						p3 = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
					];
				ddP = 6*WeierstrassP[p3,{g2,g3}]^2 - g2/2; 
				(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
				(* Signe of Log *)			
				If[Abs[I*Pi 1/WeierstrassPPrime[p3,{g2,g3}] - I1[10^-6,p3,{g2,g3}]]<0.01,
					signLog=1,
						signLog=-1
					];
				I100 = signLog*I*Pi 1/WeierstrassPPrime[p3,{g2,g3}];	
				I30 = -signLog*I*Pi ddP/WeierstrassPPrime[p3,{g2,g3}]^3;
				I40 = 0;
				I80 = I100 + WeierstrassP[p3,{g2,g3}]I30;
				(* final result *)		
				u0*s+A1*(I3[s,p3,{g2,g3}]-I30)+ A2*(I8[s,p3,{g2,g3}]-I80)+A3*(I4[s,p3,{g2,g3}]-I40)//Re
			]	
		]


N6[s_,{\[Epsilon]r_, \[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{u0,A1, A2, A3, A4, A5, PP, PM, g2, g3, q0, pp, pm, ddPy, ddPz, signLogy, signLogz, I10y, I10z, I20y, I20z, I30y, I30z, I70y, I70z,I80y, I80z,I120y, I120z,I140y, I140z, K10, K20, K30, K50,K60,L10,L20,L30,L40,L50,L60, p3, ddP,ddddP,signLog ,I100,I30,I80,I150,I170,I180,I190,I200,I210,I220,I230,I240,I250,solp},
		u0 = 1/(\[Xi]0-1);
		A1 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],0]*dh[3,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],0] - 1/96 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],0]*dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], 0] ;
		A2 = 1/4 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],0];
		A3 = 1/2*\[Epsilon]r*Sqrt[h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],0]];
		A4 = 1/24 * dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], 0];
		A5 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], 0]*dh[4,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],0];
		PP = A4 + Sqrt[A5/2];
		PM = A4 - Sqrt[A5/2];
		g2 = 2 \[CurlyEpsilon] (\[Delta]-2 \[CurlyEpsilon]^2) (2 \[CurlyEpsilon]-\[Alpha] \[Lambda]z)+1/12 (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^2+(-\[Delta]+\[CurlyEpsilon]^2) (4 \[CurlyEpsilon]^2-4 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		g3 = \[CurlyEpsilon]^2 (\[Delta]-\[CurlyEpsilon]^2) (-2 \[CurlyEpsilon]+\[Alpha] \[Lambda]z)^2+1/6 \[CurlyEpsilon] (\[Delta]-2 \[CurlyEpsilon]^2) (2 \[CurlyEpsilon]-\[Alpha] \[Lambda]z) (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)+1/216 (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^3-1/4 (\[Delta]-2 \[CurlyEpsilon]^2)^2 (4 \[CurlyEpsilon]^2-4 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2)+1/6 (\[Delta]-\[CurlyEpsilon]^2) (\[Delta]-8 \[CurlyEpsilon]^2+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z) (4 \[CurlyEpsilon]^2-4 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		(* We need to consider two cases here where we will have to deal with other integrals *)
		If[A5!=0,
			(* Here we have to be careful because, for some values, Mathematica returns InverseWeierstrassP, not as a numeric value, and then we have to calculate it numerically (this is the simplest method) *)
			If[NumberQ[InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}]],
				pp = InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==A4+Sqrt[A5/2],x]//Flatten;
					pp = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];	
			If[NumberQ[InverseWeierstrassP[A4-Sqrt[A5/2],{g2,g3}]],
				pm = InverseWeierstrassP[A4-Sqrt[A5/2],{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==A4-Sqrt[A5/2],x]//Flatten;
					pm = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];
			ddPy = 6*WeierstrassP[pp,{g2,g3}]^2 - g2/2; 
			ddPz = 6*WeierstrassP[pm,{g2,g3}]^2 - g2/2;
			(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
		    (* Signe of Log *)
			If[Abs[I*Pi 1/WeierstrassPPrime[pp,{g2,g3}] - I1[10^-6,pp,{g2,g3}]]<0.01,
				signLogy=1,
				signLogy=-1
				];  
			If[Abs[I*Pi 1/WeierstrassPPrime[pm,{g2,g3}] - I1[10^-6,pm,{g2,g3}]]<0.01,
				signLogz=1,
				signLogz=-1
				]; 	    
			I10y = signLogy*I*Pi 1/WeierstrassPPrime[pp,{g2,g3}];
			I10z = signLogz*I*Pi 1/WeierstrassPPrime[pm,{g2,g3}];				
			I30y = -signLogy*I*Pi ddPy/WeierstrassPPrime[pp,{g2,g3}]^3;
			I30z = -signLogz*I*Pi ddPz/WeierstrassPPrime[pm,{g2,g3}]^3;													
			I70y =  signLogy*I*Pi WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}];
			I70z =  signLogz*I*Pi WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}];
			I80y = I10y + WeierstrassP[pp,{g2,g3}]I30y;
			I80z = I10z + WeierstrassP[pm,{g2,g3}]I30z;
			I120y = I70y + WeierstrassP[pp,{g2,g3}]I80y;
			I120z = I70z + WeierstrassP[pm,{g2,g3}]I80z;
			I140y = (4*(WeierstrassP[pp,{g2,g3}])^2-g2)*I80y + 8*WeierstrassP[pp,{g2,g3}]*I70y - g3*I30y; (*it is without -4\[Zeta](0) because it will reduce withe thesame element in K6(0) during subtraction  in L6(0)  *) 						
			I140z = (4*(WeierstrassP[pm,{g2,g3}])^2-g2)*I80z + 8*WeierstrassP[pm,{g2,g3}]*I70z - g3*I30z; (*it is without -4\[Zeta](0) because it will reduce withe thesame element in K6(0) during subtraction  in L6(0)  *) 								
			K10 = (I10y - I10z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K20 = (I70y - I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);
			K30 = 0;
			K50 = (WeierstrassP[pp,{g2,g3}]*I70y - WeierstrassP[pm,{g2,g3}]*I70z)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);	
			K60 = (4*(WeierstrassP[pp,{g2,g3}]^2*I70y-WeierstrassP[pm,{g2,g3}]^2*I70z)-g2(I70y-I70z)-g3(I10y-I10z))/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]);(*it is without -4\[Zeta](0) because it will reduce withe thesame element in I140(0) during subtraction  in L6(0)  *) 
			(* values of integrals L1, L2, L3, L4, L5, L6 for x=0  *)
			L10 = (I30y + I30z -2K10)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2 ;
			L20 = (I80y + I80z -2K20)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2;
			L30 = 0;
			L40 = 0;
			L50 = (I120y + I120z -2K50)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2;
			L60 = (I140y + I140z -2K60)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])^2;
			(* final result *)
			A1^2*(L1[s,pp,pm,{g2,g3}]-L10)+2A1*A2*(L2[s,pp,pm,{g2,g3}]-L20) +2A1*A3*(L3[s,pp,pm,{g2,g3}]-L30) +2A2*A3*(L4[s,pp,pm,{g2,g3}]-L40) +A2^2*(L5[s,pp,pm,{g2,g3}]-L50) +A3^2*(L6[s,pp,pm,{g2,g3}]-L60)//Re,
				(* case for \[CurlyEpsilon]=\[Delta] *)
				If[NumberQ[InverseWeierstrassP[A4,{g2,g3}]],
					p3 = InverseWeierstrassP[A4+Sqrt[A5/2],{g2,g3}],
						solp=NSolve[WeierstrassP[x,{g2,g3}]==A4,x]//Flatten;
						p3 = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
					];
				ddP = 6*WeierstrassP[p3,{g2,g3}]^2 - g2/2; 
				ddddP=12*(WeierstrassPPrime[p3,{g2,g3}]^2 + WeierstrassP[p3,{g2,g3}]*ddP);
				(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
				(* Signe of Log *)			
				If[Abs[I*Pi 1/WeierstrassPPrime[p3,{g2,g3}] - I1[10^-6,p3,{g2,g3}]]<0.01,
					signLog=1,
						signLog=-1
					];
				I100 = signLog*I*Pi 1/WeierstrassPPrime[p3,{g2,g3}];
				I30 = -signLog*I*Pi ddP/WeierstrassPPrime[p3,{g2,g3}]^3;
				I80 = I100 + WeierstrassP[p3,{g2,g3}]I30;				
				I150 = 1/(2*(WeierstrassPPrime[p3,{g2,g3}])^3)*(-12*WeierstrassP[p3,{g2,g3}]*WeierstrassPPrime[p3,{g2,g3}]I100 - 3*WeierstrassPPrime[p3,{g2,g3}]*ddP *I30);					
				I170 = I30 + WeierstrassP[p3,{g2,g3}]*I150;
				I180 = I80 + WeierstrassP[p3,{g2,g3}]*I170;
				I190 = 1/(6*(WeierstrassPPrime[p3,{g2,g3}])^4)*(-ddddP*I100-2(3/2*ddP^2+24*WeierstrassP[p3,{g2,g3}]*WeierstrassPPrime[p3,{g2,g3}]^2)*I30-12*ddP*WeierstrassP[p3,{g2,g3}]^2*I150);
				I200 = I150 + WeierstrassP[p3,{g2,g3}]*I190;
				I210 = 0;
				I220 = 0;
				I230 = I170 + WeierstrassP[p3,{g2,g3}]*I200;
				I240 = I180 + WeierstrassP[p3,{g2,g3}]*I230;
				I250 = 4*I240 - g2*I200 - g3*I190;
				(* final result *)		
				A1^2*(I19[s,p3,{g2,g3}]-I190)+2A1*A2*(I20[s,p3,{g2,g3}]-I200) +2A1*A3*(I21[s,p3,{g2,g3}]-I210) +2A2*A3*(I22[s,p3,{g2,g3}]-I220) +A2^2*(I23[s,p3,{g2,g3}]-I230) +A3^2*(I25[s,p3,{g2,g3}]-I250)
			]	 
		]


N5[s_,{\[Epsilon]r_, \[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=Module[{u0},
	u0 = 1/(\[Xi]0-1);
	u0^2*s + 2*u0 ( N4[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] - u0*s )+ N6[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]
	]


v[x_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	Module[{e0,e1,e2,e3,e4},
		e0 = 0; 
		e1 = 1/4*(-4 \[Alpha]^2 \[Delta]+4 \[Alpha]^2 \[CurlyEpsilon]^2);
		e2 = 1/6*(8 \[Alpha]^2 \[Delta]-4 \[Alpha]^2 \[CurlyEpsilon]^2-4 \[Kappa]-8 \[Alpha] \[CurlyEpsilon] \[Lambda]z);
		e3 = 1/4*(-4 \[Alpha]^2 \[Delta]+4 \[Kappa]+8 \[Alpha] \[CurlyEpsilon] \[Lambda]z+4 \[Lambda]z^2); 
		e4 = -4 \[Lambda]z^2;
		e0*x^4+4*e1*x^3+6*e2*x^2+4*e3*x+e4
		]


dv[p_,x_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	D[v[r,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]],{r,p}]/.r->x


J\[Theta][s_,{\[Epsilon]\[Theta]_, \[Theta]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{e1,e2,e3,e4,c1,c2,\[Eta],u0,D1, D2, D3, D4, PP, g2, g3, z0, pp ,solp ,n2,I10,I30,I80,I40,ddP,\[Epsilon]\[Mu],\[CapitalTheta]},
		\[Epsilon]\[Mu] = Sign[Cos[\[Theta]0]];
		z0 = Sin[\[Theta]0]^2;
		e1 = 1/4*(-4 \[Alpha]^2 \[Delta]+4 \[Alpha]^2 \[CurlyEpsilon]^2);
		e2 = 1/6*(8 \[Alpha]^2 \[Delta]-4 \[Alpha]^2 \[CurlyEpsilon]^2-4 \[Kappa]-8 \[Alpha] \[CurlyEpsilon] \[Lambda]z);
		e3 = 1/4*(-4 \[Alpha]^2 \[Delta]+4 \[Kappa]+8 \[Alpha] \[CurlyEpsilon] \[Lambda]z+4 \[Lambda]z^2); 
		e4 = -4 \[Lambda]z^2;
		D1 = 1/48 * v[z0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dv[3,z0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]] - 1/96 * dv[1,z0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dv[2,z0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]] ;
		D2 = 1/4 * dv[1,z0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		D3 = -1/2 *\[Epsilon]\[Mu]* \[Epsilon]\[Theta] * Sqrt[v[z0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]];
		D4 = 1/24 * dv[2,z0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		PP = D4;
		g2 = 4/3 (\[Alpha]^2 (-2 \[Delta]+\[CurlyEpsilon]^2)+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^2-4 \[Alpha]^2 (-\[Delta]+\[CurlyEpsilon]^2) (-\[Alpha]^2 \[Delta]+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		g3 = 4 \[Alpha]^4 (\[Delta]-\[CurlyEpsilon]^2)^2 \[Lambda]z^2+8/27 (\[Alpha]^2 (-2 \[Delta]+\[CurlyEpsilon]^2)+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^3+1/3 \[Alpha]^2 (-\[Delta]+\[CurlyEpsilon]^2) (\[Alpha]^2 (8 \[Delta]-4 \[CurlyEpsilon]^2)-4 \[Kappa]-8 \[Alpha] \[CurlyEpsilon] \[Lambda]z) (-\[Alpha]^2 \[Delta]+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		(* first derivative of \[Theta](s),i.e. (d\[Theta]/ds)=Subscript[\[Epsilon], \[Theta]]Sqrt[\[CapitalTheta]]*)
		\[CapitalTheta]=\[Kappa]-\[Delta]*\[Alpha]^2*Cos[\[Theta]0]^2-1/Sin[\[Theta]0]^2 (\[Lambda]z - \[Alpha]*\[CurlyEpsilon]*Sin[\[Theta]0]^2);
		If[\[CapitalTheta]!=0 && \[Theta]0!=Pi/2 (* we consider two cases: general trajectories and in the equatorial plane in order to speed up calculations for the equatorial trajectory *),
			If[NumberQ[InverseWeierstrassP[D4,{g2,g3}]],
				pp = InverseWeierstrassP[D4,{g2,g3}],
					solp=NSolve[WeierstrassP[x,{g2,g3}]==D4,x]//Flatten;
					pp = solp[[1]][[2]]/.{C[1]->0, C[2]->2}	
				];	
			(* values of integrals K1, K2, K3 for x=0   *)
			ddP=6*WeierstrassP[pp,{g2,g3}]^2 - g2/2; 
			(* Here we must be careful with choosing a sign of Log(-1) because it is equal. \[PlusMinus]i\[Pi]. *)
			I10 = If[Abs[I*Pi 1/WeierstrassPPrime[pp,{g2,g3}] - I1[10^-6,pp,{g2,g3}]]<0.01,
					I*Pi 1/WeierstrassPPrime[pp,{g2,g3}],
						-I*Pi 1/WeierstrassPPrime[pp,{g2,g3}]
					];
			I30 = If[Abs[I*Pi ddP/WeierstrassPPrime[pp,{g2,g3}]^3 - I3[10^-6,pp,{g2,g3}]]<0.01,
					I*Pi ddP/WeierstrassPPrime[pp,{g2,g3}]^3,
						-I*Pi ddP/WeierstrassPPrime[pp,{g2,g3}]^3
					];
			I80 = I10 + WeierstrassP[pp,{g2,g3}]*I30;  
			I40 = 0;
			(* final result *)	
			z0*s+D1*(I3[s,pp,{g2,g3}]-I30)+ D2*(I8[s,pp,{g2,g3}]-I80)+D3*(I4[s,pp,{g2,g3}]-I40)//Re,
				(* the case of a trajectory in the equatorial plane *)
				s
			]
		]


\[CapitalTau][s_,{\[CapitalTau]0_, \[Epsilon]r_, \[Xi]0_, \[Epsilon]\[Theta]_, \[Theta]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:= Module[{Ap,Am,NHp,NHm},
		(* We need to add a simple condition on angular momentum here to guard against Mathematica's numerical errors resulting from direct 0/0 division *)
		If[\[Alpha]!=0,
			If[Abs[\[Alpha]]!=1, 
				Ap=(2(-\[Alpha]^2+2Sqrt[1-\[Alpha]^2] + 2)\[CurlyEpsilon] - \[Alpha](Sqrt[1-\[Alpha]^2] +1)*\[Lambda]z)/Sqrt[1-\[Alpha]^2];
				Am=(2(+\[Alpha]^2+2Sqrt[1-\[Alpha]^2] - 2)\[CurlyEpsilon] - \[Alpha](Sqrt[1-\[Alpha]^2] -1)*\[Lambda]z)/Sqrt[1-\[Alpha]^2];
				NHp = NH[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], 1}];
				NHm = NH[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], -1}];
				(* final result *)		
				\[CapitalTau]0 +((4+\[Alpha]^2)\[CurlyEpsilon] - \[Alpha]*\[Lambda]z)s + 2*\[CurlyEpsilon]*N1[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]+\[CurlyEpsilon]*N2[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + Ap*NHp + Am*NHm + \[Alpha]*\[Lambda]z*s - \[Alpha]^2*\[CurlyEpsilon]*J\[Theta][s,{\[Epsilon]\[Theta], \[Theta]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]//Re,
					(* Final result for extremal Kerr *)
					(5*\[CurlyEpsilon]-\[Alpha]*\[Lambda]z)*s + 2*\[CurlyEpsilon]*N1[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + \[CurlyEpsilon]*N2[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]+ (8*\[CurlyEpsilon] - 2 *\[Alpha]*\[Lambda]z)*N4[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] +(4*\[CurlyEpsilon] - 2*\[Alpha]*\[Lambda]z)*N5[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + \[Alpha]*\[Lambda]z*s - \[Alpha]^2*\[CurlyEpsilon]*J\[Theta][s,{\[Epsilon]\[Theta], \[Theta]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]//Re
				],
				Ap= 8*\[CurlyEpsilon];
				NHp = NH[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], 1}];
				(* final result *)		
				\[CapitalTau]0 +4*\[CurlyEpsilon]*s + 2*\[CurlyEpsilon]*N1[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]+\[CurlyEpsilon]*N2[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + Ap*NHp //Re
			]
		]


tild\[Tau][s_,{tild\[Tau]0_, \[Epsilon]r_, \[Xi]0_, \[Epsilon]\[Theta]_, \[Theta]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	(* We need to add a simple condition on angular momentum here to guard against Mathematica's numerical errors resulting from direct 0/0 division *)
	If[\[Alpha]!=0,
		tild\[Tau]0+N2[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]+\[Alpha]^2*(s-J\[Theta][s,{\[Epsilon]\[Theta], \[Theta]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}])//Re,
			tild\[Tau]0+N2[s,{\[Epsilon]r, \[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]
		]


End[];


EndPackage[];
