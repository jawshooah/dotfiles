import scalariform.formatter.preferences._

scalariformSettings

addCommandAlias("format", "scalariformFormat")

ScalariformKeys.preferences := ScalariformKeys.preferences.value
  .setPreference(RewriteArrowSymbols, false)
  .setPreference(IndentSpaces, 2)
  .setPreference(SpaceBeforeColon, false)
  .setPreference(CompactStringConcatenation, false)
  .setPreference(PreserveSpaceBeforeArguments, true)
  .setPreference(AlignParameters, true)
  .setPreference(AlignArguments, true)
  .setPreference(DoubleIndentClassDeclaration, true)
  .setPreference(FormatXml, false)
  .setPreference(IndentPackageBlocks, true)
  .setPreference(AlignSingleLineCaseStatements, true)
  .setPreference(AlignSingleLineCaseStatements.MaxArrowIndent, 40)
  .setPreference(IndentLocalDefs, false)
  .setPreference(SpaceInsideParentheses, false)
  .setPreference(SpaceInsideBrackets, false)
  .setPreference(SpacesWithinPatternBinders, true)
  .setPreference(SpacesAroundMultiImports, true)
  .setPreference(MultilineScaladocCommentsStartOnFirstLine, false)
  .setPreference(IndentWithTabs, false)
  .setPreference(CompactControlReadability, true)
  .setPreference(PlaceScaladocAsterisksBeneathSecondAsterisk, false)
