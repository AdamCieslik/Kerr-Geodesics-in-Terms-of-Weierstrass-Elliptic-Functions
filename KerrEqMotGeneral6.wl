(* ::Package:: *)

BeginPackage["KerrEqMotGeneral`"];


Fancylog::usage = "Fancylog[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns the value of function \!\(\*
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
It is necessary for integrals I1 and I7 because it corrects numerical errors resulting from Mathematica's way of calculating \!\(\*
StyleBox[\"Log\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"(\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\"z\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\")\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)\!\(\*
StyleBox[\".\",\nFontFamily->\"Times New Roman\",\nFontWeight->\"Regular\"]\)
";


f::usage = "f[\[Xi], \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the value of function 
		\!\(\*
StyleBox[\"f\",\nFontSlant->\"Italic\"]\)\!\(\*
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


df::usage = "df[p, r, \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]] returns the total derivative of the \!\(\*
StyleBox[\"p\",\nFontSlant->\"Italic\"]\) order at \!\(\*
StyleBox[\"r\",\nFontSlant->\"Italic\"]\) from f[\[Xi], \[CurlyEpsilon], \[Kappa], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]], i.e.\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[FractionBox[
RowBox[{SuperscriptBox[\"d\", \"p\"], \"f\", 
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


\[Xi]::usage = " \[Xi][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\), \!\(\*SubscriptBox[\(\[Xi]\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha], \[Delta]}] returns the value of the radial distance from the center of the coordinate system depending on the Mino time and initial 
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


\[Theta]::usage = " \[Theta][s,{\!\(\*SubscriptBox[\(\[Epsilon]\), \(\[Theta]\)]\), \!\(\*SubscriptBox[\(\[Theta]\), \(0\)]\), \!\(\*SubscriptBox[\(s\), \(0\)]\), \[CurlyEpsilon], \[Lambda], \!\(\*SubscriptBox[\(\[Lambda]\), \(z\)]\), \[Alpha]}]  returns the value of the angle -\!\(\*FractionBox[\(\[Pi]\), \(2\)]\) \[LessEqual] \[Theta] \[LessEqual] \!\(\*FractionBox[\(\[Pi]\), \(2\)]\)  depending on the Mino time and initial parameters:
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
StyleBox[SubscriptBox[\"s\", \"0\"],\nFontSlant->\"Italic\"]\) - initial Mino time;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Lambda]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass  \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 


";


I1::usage = "I1[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(dx\), \(\[WeierstrassP] \((x)\)\\\  - \\\ \[WeierstrassP] \((y)\)\)]\)\[DifferentialD]x,
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function. 
 ";


I2::usage = "I2[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(dx\), SuperscriptBox[\((\[WeierstrassP] \((x)\)\\\  - \\\ \[WeierstrassP] \((y)\))\), \(2\)]]\)\[DifferentialD]x,
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I7::usage = "I7[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \((x)\)\), \(\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((y)\)\)]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


I11::usage = "I11[x,y,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \*SuperscriptBox[\((x)\), \(2\)]\), \(\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((y)\)\)]\)\[DifferentialD]x
where  \[WeierstrassP](x) and \[WeierstrassP](y) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


K1::usage = "K1[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(1\), \(\((\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((y)\))\) \((\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((z)\))\)\)]\)\[DifferentialD]x
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


K2::usage = "K2[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \((x)\)\), \(\((\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((y)\))\) \((\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((z)\))\)\)]\)\[DifferentialD]x
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function.
 ";


K3::usage = "K3[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
	\[Integral]\!\(\*FractionBox[\(\(\\\ \)\(\[WeierstrassP]' \((x)\)\)\), \(\((\[WeierstrassP] \((x)\) - \[WeierstrassP] \((y)\))\) \((\[WeierstrassP] \((x)\) - \[WeierstrassP] \((z)\))\)\)]\) \[DifferentialD]x
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \[WeierstrassP]'(x) = \!\(\*FractionBox[\(\[DifferentialD]\), \(\[DifferentialD]x\)]\)\[WeierstrassP](x), \!\(\*SubscriptBox[\(g\), \(2\)]\) and \!\(\*SubscriptBox[\(g\), \(3\)]\) are invariants of the Weierstrass elliptic function.
 ";


K7::usage = "K7[x,y,z,{\!\(\*SubscriptBox[\(g\), \(2\)]\),\!\(\*SubscriptBox[\(g\), \(3\)]\)}] returns a value of the elliptic integral
\[Integral]\!\(\*FractionBox[\(\[WeierstrassP] \*SuperscriptBox[\((x)\), \(2\)]\), \(\((\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((y)\))\) \((\[WeierstrassP] \((x)\) - \\\ \[WeierstrassP] \((z)\))\)\)]\)\[DifferentialD]x
\[Integral]\!\(\*FractionBox[\(dx\), SuperscriptBox[\((\[WeierstrassP] \((x)\)\\\  - \\\ \[WeierstrassP] \((y)\))\), \(2\)]]\)\[DifferentialD]x,
where  \[WeierstrassP](x), \[WeierstrassP](y) and \[WeierstrassP](z) are a Weierstrass elliptic \[WeierstrassP] function, \!\(\*
StyleBox[SubscriptBox[\"g\", \"2\"],\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[SubscriptBox[\"g\", \"3\"],\nFontSlant->\"Italic\"]\) are invariants of the Weierstrass elliptic function. 
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


\[CurlyPhi]::usage = " \[CurlyPhi][s,{\[Epsilon]r,\[Xi]0,\[Epsilon]\[Theta],\[Theta]0,s0,\[CurlyEpsilon], \[Lambda], \[Lambda]z, \[Alpha]}] returns the value of the azimuthal angle 0 \[LessEqual] \[CurlyPhi] \[LessEqual] 2\[Pi]  depending on the Mino time and initial parameters:
	- \!\(\*
StyleBox[SubscriptBox[\"\[Epsilon]\", \"r\"],\nFontSlant->\"Italic\"]\)- direction of motion: for motion inward of the coordinate system \!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\)=-1, for motion outward of the coordinate system \!\(\*SubscriptBox[\(\[Epsilon]\), \(r\)]\)=-1;
	- \!\(\*
StyleBox[SubscriptBox[\"\[CurlyPhi]\", \"0\"],\nFontSlant->\"Italic\"]\) - initial angle;
	- \!\(\*
StyleBox[SubscriptBox[\"s\", \"0\"],\nFontSlant->\"Italic\"]\) - initial Mino time;
	- \!\(\*
StyleBox[\"\[CurlyEpsilon]\",\nFontSlant->\"Italic\"]\) - value of the conserved energy;
	- \!\(\*
StyleBox[\"\[Lambda]\",\nFontSlant->\"Italic\"]\) - value of the Carter constant;
	- \!\(\*
StyleBox[SubscriptBox[\"\[Lambda]\", \"z\"],\nFontSlant->\"Italic\"]\) - value of the conserved alangular momentum;
	- \!\(\*
StyleBox[\"\[Alpha]\",\nFontSlant->\"Italic\"]\) - value of the angular momentum per black hole mass \[Alpha]=\!\(\*FractionBox[\(J\), \(M\)]\); 


";


Begin["`Private`"];


Fancylog[x_,y_,{g2_,g3_}]:=
	Module[{dx,dy,temp,temp0,faza, old, new,tempOld},
		dx=1/40;  (* This is a step that can be reduced to increase computational speed, but at the expense of accuracy in some places *) 
		dy=Pi/4;
		faza=0;
		s=0;
		temp0=Arg[WeierstrassSigma[s-y,{g2,g3}]/WeierstrassSigma[s+y,{g2,g3}]];
		Label[begin];
		If[x>=0,
			For[s=0,s<=x-dx,s=s+dx,
				temp=Arg[WeierstrassSigma[s-y,{g2,g3}]/WeierstrassSigma[s+y,{g2,g3}]];
				faza=faza+If[temp<-Pi+dy&&temp0>Pi-dy,1,0];
				faza=faza+If[temp>Pi-dy&&temp0<-Pi+dy,-1,0];
				temp0=temp;
				];
			old=temp0+ 2Pi faza;
			temp=Arg[WeierstrassSigma[x-y,{g2,g3}]/WeierstrassSigma[x+y,{g2,g3}]];
			faza=faza+If[temp<-Pi+dy&&temp0>Pi-dy,1,0];
			faza=faza+If[temp>Pi-dy&&temp0<-Pi+dy,-1,0];
			new= temp+ 2Pi faza,
			(* A case for x<0 *)
			For[s=0,s>=x+dx,s=s-dx,
				temp=Arg[WeierstrassSigma[s-y,{g2,g3}]/WeierstrassSigma[s+y,{g2,g3}]];
				faza=faza+If[temp<-Pi+dy&&temp0>Pi-dy,1,0];
				faza=faza+If[temp>Pi-dy&&temp0<-Pi+dy,-1,0];
				temp0=temp;
				];
			old=temp0+ 2Pi faza;
			temp=Arg[WeierstrassSigma[x-y,{g2,g3}]/WeierstrassSigma[x+y,{g2,g3}]];
			faza=faza+If[temp<-Pi+dy&&temp0>Pi-dy,1,0];
			faza=faza+If[temp>Pi-dy&&temp0<-Pi+dy,-1,0];
			new= temp+ 2Pi faza;
			];
		If[Abs[Im[new-old]]>0.1, 
			dx= dx/10; Goto[begin],
			Goto[end]
			];
		Label[end];
		Log[Abs[WeierstrassSigma[x-y,{g2,g3}]/WeierstrassSigma[x+y,{g2,g3}]]]+(Arg[WeierstrassSigma[x-y,{g2,g3}]/WeierstrassSigma[x+y,{g2,g3}]]+ 2Pi faza) I
]



I1[x_,y_,{g2_,g3_}]:= 
	1/WeierstrassPPrime[y,{g2,g3}]*(2*WeierstrassZeta[y,{g2,g3}]*x + Fancylog[x,y,{g2,g3}])


I2[x_,y_,{g2_,g3_}]:= 
	Log[WeierstrassP[x,{g2,g3}]-WeierstrassP[y,{g2,g3}]]


I7[x_,y_,{g2_,g3_}]:= 
	x+ WeierstrassP[y,{g2,g3}]/WeierstrassPPrime[y,{g2,g3}]*(2*WeierstrassZeta[y,{g2,g3}]*x + Fancylog[x,y,{g2,g3}])



I11[x_,y_,{g2_,g3_}]:= 
	WeierstrassP[y,{g2,g3}]*I7[x,y,{g2,g3}]- WeierstrassZeta[x,{g2,g3}]


K1[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])(I1[x,y,{g2,g3}]-I1[x,z,{g2,g3}])


K2[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I7[x,y,{g2,g3}]-I7[x,z,{g2,g3}])


K3[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I2[x,y,{g2,g3}]-I2[x,z,{g2,g3}])


K7[x_,y_,z_,{g2_,g3_}]:=
	1/(WeierstrassP[y,{g2,g3}]-WeierstrassP[z,{g2,g3}])*(I11[x,y,{g2,g3}]-I11[x,z,{g2,g3}])


f[r_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:= 
	Module[{a0,a1,a2,a3,a4},
		a0 = (\[CurlyEpsilon]^2 - \[Delta]); 
		a1 =1/2\[Delta]; 
		a2 =-1/6*(\[Delta]*\[Alpha]^2+ \[Kappa] - 2*(\[Alpha]*\[CurlyEpsilon])^2 +2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z); 
		a3 = 1/2*\[Kappa]; 
		a4 = \[Alpha]^4*\[CurlyEpsilon]^2 - \[Alpha]^2*\[Kappa] - 2*\[Alpha]^3*\[CurlyEpsilon]*\[Lambda]z + \[Alpha]^2*\[Lambda]z^2;
		a0*r^4 + 4*a1*r^3 + 6*a2*r^2 + 4*a3*r + a4
		]


df[p_,x_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_]:=
	D[f[r,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]],{r,p}]/.r->x


\[Xi][s_,{\[Epsilon]r_,x0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_,\[Delta]_}]:=
	Module[{a0,a1,a2,a3,a4,g2,g3},
		a0 = (\[CurlyEpsilon]^2 - \[Delta]); 
		a1 =1/2\[Delta]; 
		a2 =-1/6*(\[Delta]*\[Alpha]^2+ \[Kappa] - 2*(\[Alpha]*\[CurlyEpsilon])^2 +2*\[Alpha]*\[CurlyEpsilon]*\[Lambda]z); 
		a3 = 1/2*\[Kappa]; 
		a4 = \[Alpha]^4*\[CurlyEpsilon]^2 - \[Alpha]^2*\[Kappa] - 2*\[Alpha]^3*\[CurlyEpsilon]*\[Lambda]z + \[Alpha]^2*\[Lambda]z^2;
		g2 = a0*a4-4*a1*a3+3*a2^2;
		g3 = a0*a2*a4+2*a1*a2*a3-a2^3-a0*a3^2-a1^2*a4;
		x0 + (-Sign[\[Epsilon]r]*Sqrt[f[x0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]]* WeierstrassPPrime[s,{g2,g3}]+1/2*df[1,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]]*(WeierstrassP[s,{g2,g3}]-1/24 df[2,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])+1/24 f[x0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*df[3,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])/(2*(WeierstrassP[s,{g2,g3}]-1/24 df[2,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])^2-1/48*f[x0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*df[4,x0,\[CurlyEpsilon],\[Kappa],\[Lambda]z,\[Alpha],\[Delta]])//Chop
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
	ArcCos[\[Mu][s,{\[Epsilon]\[Theta]*Sign[Cos[\[Theta]0]],Cos[\[Theta]0],\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}]]


h[x_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_, \[Epsilon]h_]:= 
	Module[{\[Xi]H,c0,c1,c2,c3,c4},
		\[Xi]H = 1 + \[Epsilon]h*Sqrt[1-\[Alpha]^2]; (* Subscript[\[Epsilon], h] a sign that determines whether we are on the inner or outer horizon *)
		c0 = \[Alpha]^4*\[CurlyEpsilon]^2 - 2\[Alpha]^3*\[Lambda]z*\[CurlyEpsilon] + \[Alpha]^2 (-\[Xi]H^2(\[Delta]-2*\[CurlyEpsilon]^2)- \[Kappa] + \[Lambda]z^2) - 2\[Alpha]*\[Lambda]z*\[Xi]H^2*\[CurlyEpsilon] + \[Xi]H^3 (\[Xi]H*\[CurlyEpsilon]^2 - \[Delta](\[Xi]H - 2)) - \[Kappa]*(\[Xi]H - 2)*\[Xi]H; 
		c1 = 1/2 (\[Xi]H(-\[Alpha]^2*\[Delta] + 2\[Alpha]^2*\[CurlyEpsilon]^2 - 2\[Alpha]*\[Lambda]z*\[CurlyEpsilon] + \[Xi]H(-2*\[Delta]*\[Xi]H + 3\[Delta] + 2*\[Xi]H*\[CurlyEpsilon]^2)) - \[Kappa]*(\[Xi]H - 1));
		c2 = 1/6 (-\[Alpha]^2(\[Delta] - 2\[CurlyEpsilon]^2) - \[Kappa] - 2\[Alpha]*\[CurlyEpsilon]*\[Lambda]z + 6(\[Delta] - \[Delta]*\[Xi]H + \[CurlyEpsilon]^2*\[Xi]H)*\[Xi]H);
		c3 = \[Delta]*(1/2 - \[Xi]H) + \[CurlyEpsilon]^2*\[Xi]H; 
		c4 = \[CurlyEpsilon]^2 - \[Delta];
		c0*x^4+4*c1*x^3+6*c2*x^2+4*c3*x+c4
		]


dh[p_,x_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_, \[Epsilon]h_]:= 
	D[h[r,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], \[Epsilon]h],{r,p}]/.r->x


NH[s_,{\[Epsilon]r_,\[Xi]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_, \[Epsilon]h_}]:=
	Module[{\[Xi]H, C1, C2, C3, C4, C5, PP, PM, g2, g3, u0, pp ,pm ,n2,K10,K20,K30},
		\[Xi]H = 1 + \[Epsilon]h Sqrt[1-\[Alpha]^2]; 
		u0 = 1/(\[Xi]0-\[Xi]H);
		C1 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h]*dh[3,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h] - 1/96 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h]*dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], \[Epsilon]h] ;
		C2 = 1/4 * dh[1,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h];
		C3 = 1/2*\[Epsilon]r*Sqrt[h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h]];
		C4 = 1/24 * dh[2,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], \[Epsilon]h];
		C5 = 1/48 * h[u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta], \[Epsilon]h]*dh[4,u0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta],\[Epsilon]h];
		PP = C4 + Sqrt[C5/2];
		PM = C4 - Sqrt[C5/2];
		g2 = 1/12 (\[Alpha]^4 (\[Delta]^2-16 \[Delta] \[CurlyEpsilon]^2+16 \[CurlyEpsilon]^4)+\[Kappa] (-12 \[Delta]+\[Kappa])+4 \[Alpha]^3 \[CurlyEpsilon] (7 \[Delta]-8 \[CurlyEpsilon]^2) \[Lambda]z+4 \[Alpha] \[CurlyEpsilon] \[Kappa] \[Lambda]z+2 \[Alpha]^2 (\[Delta] (7 \[Kappa]-6 \[Lambda]z^2)+8 \[CurlyEpsilon]^2 (-\[Kappa]+\[Lambda]z^2)));
		g3 = 1/216 (\[Alpha]^6 (\[Delta]-2 \[CurlyEpsilon]^2) (\[Delta]^2+32 \[Delta] \[CurlyEpsilon]^2-32 \[CurlyEpsilon]^4)+\[Kappa]^2 (36 \[Delta]-54 \[CurlyEpsilon]^2+\[Kappa])-6 \[Alpha]^5 \[CurlyEpsilon] (11 \[Delta]^2-44 \[Delta] \[CurlyEpsilon]^2+32 \[CurlyEpsilon]^4) \[Lambda]z+6 \[Alpha] \[CurlyEpsilon] \[Kappa] (-6 \[Delta]+\[Kappa]) \[Lambda]z+3 \[Alpha]^2 (\[Kappa] (12 \[Delta] (\[Delta]+\[CurlyEpsilon]^2)-11 \[Delta] \[Kappa]+10 \[CurlyEpsilon]^2 \[Kappa])-2 (9 \[Delta]^2-6 \[Delta] \[Kappa]+4 \[CurlyEpsilon]^2 \[Kappa]) \[Lambda]z^2)+4 \[Alpha]^3 \[CurlyEpsilon] \[Lambda]z (27 \[Delta]^2+2 \[CurlyEpsilon]^2 (15 \[Kappa]-8 \[Lambda]z^2)+\[Delta] (-33 \[Kappa]+18 \[Lambda]z^2))-3 \[Alpha]^4 (\[Delta]^2 (18 \[CurlyEpsilon]^2+11 \[Kappa]-12 \[Lambda]z^2)+32 \[CurlyEpsilon]^4 (\[Kappa]-2 \[Lambda]z^2)+4 \[Delta] \[CurlyEpsilon]^2 (-11 \[Kappa]+20 \[Lambda]z^2)));
		pp = InverseWeierstrassP[C4+Sqrt[C5/2],{g2,g3}];
		pm = InverseWeierstrassP[C4-Sqrt[C5/2],{g2,g3}];
		(* values of integrals K1, K2, K3 for x=0   *)
		K10 = (I*Pi)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])*(1/WeierstrassPPrime[pp,{g2,g3}]-1/WeierstrassPPrime[pm,{g2,g3}]);
		K20 = (I*Pi)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])*(WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}]);
		K30 = 0;
		If[s>=0, 
			u0*s+C1*(K1[s,pp,pm,{g2,g3}]-K10)+ C2*(K2[s,pp,pm,{g2,g3}]-K20)+C3*(K3[s,pp,pm,{g2,g3}]-K30)//Chop,
			-(u0*s+C1*(K1[s,pp,pm,{g2,g3}]+K10)+ C2*(K2[s,pp,pm,{g2,g3}]+K20)+C3*(K30-K3[s,pp,pm,{g2,g3}]))//Chop
			]
		]


I\[Xi][s_,{\[Epsilon]r_,\[Xi]0_,\[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:=
	Module[{\[Xi]Hp,\[Xi]Hm,NHp,NHm,NHp0,NHm0},
		\[Xi]Hp = 1 + Sqrt[1-\[Alpha]^2];
		\[Xi]Hm = 1 - Sqrt[1-\[Alpha]^2];
		NHp = NH[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], 1}];
		NHm = NH[s,{\[Epsilon]r,\[Xi]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta], -1}];
		(\[Alpha]*\[CurlyEpsilon])/(\[Xi]Hp-\[Xi]Hm) ((\[Xi]Hp-\[Xi]Hm)*s+(\[Xi]Hp^2+\[Alpha]^2-(\[Alpha]*\[Lambda]z)/\[CurlyEpsilon])NHp - (\[Xi]Hm^2+\[Alpha]^2-(\[Alpha]*\[Lambda]z)/\[CurlyEpsilon])NHm)
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
	Module[{D1, D2, D3, D4, D5, PP, PM, g2, g3, q0, pp ,pm ,n2,K10,K20,K30},
		q0 = 1/(Sin[\[Theta]0]^2);
		D1 = 1/48 * w[q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dw[3,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]] - 1/96 * dw[1,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]*dw[2,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]] ;
		D2 = 1/4 * dw[1,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		D3 = 1/2 * \[Epsilon]\[Theta] * Sqrt[w[q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]]];
		D4 = 1/24 * dw[2,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		D5 = 1/48 * w[q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha],\[Delta]]*dw[4,q0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]];
		PP = D4 + Sqrt[D5/2];
		PM = D4 - Sqrt[D5/2];
		g2 = 4/3 (\[Alpha]^2 (-2 \[Delta]+\[CurlyEpsilon]^2)+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^2-4 \[Alpha]^2 (-\[Delta]+\[CurlyEpsilon]^2) (-\[Alpha]^2 \[Delta]+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2);
		g3 =  4 \[Alpha]^4 (\[Delta]-\[CurlyEpsilon]^2)^2 \[Lambda]z^2+8/27 (\[Alpha]^2 (-2 \[Delta]+\[CurlyEpsilon]^2)+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z)^3+4/3 \[Alpha]^2 (-\[Delta]+\[CurlyEpsilon]^2) (-\[Alpha]^2 \[Delta]+\[Kappa]+2 \[Alpha] \[CurlyEpsilon] \[Lambda]z+\[Lambda]z^2) (-\[Kappa]+\[Alpha] (2 \[Alpha] \[Delta]-\[Alpha] \[CurlyEpsilon]^2-2 \[CurlyEpsilon] \[Lambda]z));
		pp = InverseWeierstrassP[D4+Sqrt[D5/2],{g2,g3}];
		pm = InverseWeierstrassP[D4-Sqrt[D5/2],{g2,g3}];
		(* values of integrals K1, K2, K3 for x=0   *)
		K10 = (I*Pi)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])*(1/WeierstrassPPrime[pp,{g2,g3}]-1/WeierstrassPPrime[pm,{g2,g3}]);
		K20 = (I*Pi)/(WeierstrassP[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}])*(WeierstrassP[pp,{g2,g3}]/WeierstrassPPrime[pp,{g2,g3}]-WeierstrassP[pm,{g2,g3}]/WeierstrassPPrime[pm,{g2,g3}]);
		K30 = 0;
		If[s>=0,
			\[Lambda]z(q0*s+D1*(K1[s,pp,pm,{g2,g3}]-K10)+ D2*(K2[s,pp,pm,{g2,g3}]-K20)+D3*(K3[s,pp,pm,{g2,g3}]-K30)),
			-(\[Lambda]z(q0*s+D1*(K1[s,pp,pm,{g2,g3}]+K10)+ D2*(K2[s,pp,pm,{g2,g3}]+K20)+D3*(K30-K3[s,pp,pm,{g2,g3}])))
			]
		]


\[CurlyPhi][s_,{\[CurlyPhi]0_, \[Epsilon]r_, \[Xi]0_, \[Epsilon]\[Theta]_, \[Theta]0_, \[CurlyEpsilon]_, \[Kappa]_, \[Lambda]z_, \[Alpha]_, \[Delta]_}]:= 
	If[s>=0,
		\[CurlyPhi]0 + I\[Xi][s,{\[Epsilon]r,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + I\[Theta][s,{\[Epsilon]\[Theta], \[Theta]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] - \[Alpha]*\[CurlyEpsilon]*s//Re,
		-(\[CurlyPhi]0 + I\[Xi][s,{\[Epsilon]r,\[Xi]0,\[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] + I\[Theta][s,{\[Epsilon]\[Theta], \[Theta]0, \[CurlyEpsilon], \[Kappa], \[Lambda]z, \[Alpha], \[Delta]}] - \[Alpha]*\[CurlyEpsilon]*s//Re)
		]


End[];


EndPackage[];
