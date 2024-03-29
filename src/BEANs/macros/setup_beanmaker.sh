#!/bin/sh

setenv SCRAM_ARCH slc5_amd64_gcc462
scram project -s CMSSW CMSSW_5_3_8_patch1
cd CMSSW_5_3_8_patch1/src/
cmsenv

cvs co -d PhysicsTools/NtupleUtils UserCode/Bicocca/PhysicsTools/NtupleUtils
cvs co -d NtupleMaker -r HEAD UserCode/BEAN/NtupleMaker
cvs co -d ProductArea -r HEAD UserCode/BEAN/ProductArea
cvs co -d SusyAnalysis -r V01-02-02 SusyAnalysis/EventSelector/interface/uncorrectionTypeMET.h
cvs co -r V07-00-01    TopQuarkAnalysis/Configuration
cvs co -r V06-07-11-01 TopQuarkAnalysis/TopTools
cvs co -r V06-05-06-07 DataFormats/PatCandidates
cvs co -r V00-02-14    DataFormats/StdDictionaries
cvs co -r V00-00-70    FWCore/GuiBrowsers
cvs co -r V08-09-52    PhysicsTools/PatAlgos
cvs co -r V03-09-23    PhysicsTools/PatUtils
cvs co -r V00-03-15    CommonTools/ParticleFlow
cvs co -r V00-00-12    CommonTools/RecoUtils
cvs co -r V04-06-09    JetMETCorrections/Type1MET
cvs co -r V01-08-00    RecoBTag/SecondaryVertex
cvs co -r V00-00-08    RecoMET/METAnalyzers
cvs co -r V00-00-07    RecoMET/METFilters
cvs co -r V15-01-11    RecoParticleFlow/PFProducer
cvs co -r V02-02-00    RecoVertex/AdaptiveVertexFinder
cvs co -d Muon/MuonAnalysisTools UserCode/sixie/Muon/MuonAnalysisTools
cvs co -r V02-06-00    HiggsAnalysis/CombinedLimit 
cvs co -r V00-00-13 -d EGamma/EGammaAnalysisTools UserCode/EGamma/EGammaAnalysisTools
cd EGamma/EGammaAnalysisTools/data
cat download.url | xargs wget
cd -
cd EGamma/EGammaAnalysisTools/interface/
wget -r http://nd.edu/~abrinke1/ElectronEffectiveArea.h -O ElectronEffectiveArea.h
cd -
cvs co -r V01-04-23 RecoTauTag/RecoTau
cvs co -r V01-04-10 RecoTauTag/Configuration 
cvs co -r V00-04-00 CondFormats/EgammaObjects  
cvs co -r V00-02-10 -d CMGTools/External UserCode/CMG/CMGTools/External

scramv1 b -j 9
