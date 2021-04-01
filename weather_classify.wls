#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*(*set directory for importing file*)*)
(*SetDirectory[NotebookDirectory[]];*)
(*myImport=Import["weather.xlsx",{"Data",1}] [[2;;]];*)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)
(*(*transform into a list*)*)


(* ::Input:: *)
(*myData=Thread[myImport[[1;;,1;;-2]]->myImport[[1;;,-1]]];*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*pick 80% of sample data from myData and 20% for evaluating*)*)


(* ::Input:: *)
(*sampleSize=IntegerPart[Length@myData*0.8];*)
(*myDataTrain=RandomSample[myData,sampleSize];*)
(*myDataTest=Complement[myData,myDataTrain];*)


(* ::Input:: *)
(**)
(**)


(* ::Input:: *)
(*(*auto train*)*)


(* ::Input:: *)
(*myClassify=Classify[myDataTrain]*)


(* ::Input:: *)
(*(*accuracy test*)*)
(*myAccuracy=ClassifierMeasurements[myClassify,myDataTest];*)
(*myAccuracy["Report"]*)
(*myAccuracy/@{"ResidualPlot"}*)


(* ::Input:: *)
(*(*save model *)*)
(*SetDirectory[NotebookDirectory[]];*)
(*DumpSave["classify_weather.mx",myClassify];*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Get["classify_weather.mx",myClassify];*)
(*importProductionXLSX=SystemDialogInput["FileOpen",{NotebookDirectory[]<>"data\\",{"Data files"->{"*.xlsx"}}}];*)
(*BatchSpecimens=Import[importProductionXLSX,{"Data",1}] [[2;;]];*)
(*pResult=myClassify[BatchSpecimens]*)


(* ::Input:: *)
(*etDirectory[NotebookDirectory[]];*)
(*exportXLSX=SystemDialogInput["FileOpen",{NotebookDirectory[]<>"data\\",{"Data files"->{"*.xlsx"}}}];*)
(*exportResult=Append[BatchSpecimens[[#]],pResult[[#]]]&/@Range[Length[BatchSpecimens]];*)
(*Export[exportXLSX,exportResult];*)
