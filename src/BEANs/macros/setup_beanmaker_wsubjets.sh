setenv SCRAM_ARCH slc5_amd64_gcc462
scram project -s CMSSW CMSSW_5_3_8_patch1
cd CMSSW_5_3_8_patch1/src/
cmsenv

cvs co -d PhysicsTools/NtupleUtils UserCode/Bicocca/PhysicsTools/NtupleUtils
cvs co -d NtupleMaker -r HEAD UserCode/BEAN/NtupleMaker
cvs co -d ProductArea -r HEAD UserCode/BEAN/ProductArea
cvs co -d SusyAnalysis -r V01-02-02 SusyAnalysis/EventSelector/interface/uncorrectionTypeMET.h
cvs co -r V00-00-13 -d EGamma/EGammaAnalysisTools UserCode/EGamma/EGammaAnalysisTools
cd EGamma/EGammaAnalysisTools/data
cat download.url | xargs wget
cd -
cd EGamma/EGammaAnalysisTools/interface/
wget -r http://nd.edu/~abrinke1/ElectronEffectiveArea.h -O ElectronEffectiveArea.h
cd -
cvs co -d Muon/MuonAnalysisTools UserCode/sixie/Muon/MuonAnalysisTools
cvs co -r V00-02-10 -d CMGTools/External UserCode/CMG/CMGTools/External

addpkg TopQuarkAnalysis/Configuration V07-00-01
addpkg TopQuarkAnalysis/TopTools V06-07-11-01
addpkg DataFormats/PatCandidates V06-05-06-07
addpkg DataFormats/StdDictionaries V00-02-14
addpkg FWCore/GuiBrowsers V00-00-70
addpkg PhysicsTools/PatAlgos V08-09-52
addpkg PhysicsTools/PatUtils V03-09-23
addpkg CommonTools/ParticleFlow V00-03-15
addpkg CommonTools/RecoUtils V00-00-12
addpkg JetMETCorrections/Type1MET V04-06-09
addpkg RecoBTag/SecondaryVertex V01-08-00
addpkg RecoMET/METAnalyzers V00-00-08
addpkg RecoMET/METFilters V00-00-07
addpkg RecoParticleFlow/PFProducer V15-01-11
addpkg RecoVertex/AdaptiveVertexFinder V02-02-00
addpkg HiggsAnalysis/CombinedLimit V02-06-00
addpkg RecoTauTag/RecoTau V01-04-23
addpkg RecoTauTag/Configuration V01-04-10
addpkg CondFormats/EgammaObjects V00-04-00

addpkg RecoJets/JetProducers V05-11-01
addpkg RecoJets/JetAlgorithms V04-05-01
addpkg RecoJets/JetAssociationAlgorithms V03-01-01-00 
addpkg RecoJets/JetAssociationProducers V03-02-01 
addpkg TopQuarkAnalysis/TopPairBSM V04-02-09
addpkg RecoMET/METFilters

cvs co -d KStenson/TrackingFilters UserCode/KStenson/TrackingFilters
cp KStenson/TrackingFilters/plugins/TobTecFakesFilter.cc RecoMET/METFilters/plugins/
cp KStenson/TrackingFilters/python/tobtecfakesfilter_cfi.py RecoMET/METFilters/python
rm -r KStenson/TrackingFilters

scramv1 b -j 9

