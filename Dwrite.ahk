;;
;;IDWriteFactory
;;
class IDWriteFactory
{
  __new(){
		DllCall("LoadLibrary","str","dwrite.dll")
		DllCall("dwrite\DWriteCreateFactory","uint",0,"ptr",GUID(CLSID,"{b859ee5a-d838-4b5b-a2e8-1adc7d93db48}"),"ptr*",pIFactory)
		this._p:=pIFactory
		this._i:={3:"GetSystemFontCollection",4:"CreateCustomFontCollection",5:"RegisterFontCollectionLoader",6:"UnregisterFontCollectionLoader",7:"CreateFontFileReference",8:"CreateCustomFontFileReference",9:"CreateFontFace",10:"CreateRenderingParams",11:"CreateMonitorRenderingParams",12:"CreateCustomRenderingParams",13:"RegisterFontFileLoader",14:"UnregisterFontFileLoader",15:"CreateTextFormat",16:"CreateTypography",17:"GetGdiInterop",18:"CreateTextLayout",19:"CreateGdiCompatibleTextLayout",20:"CreateEllipsisTrimmingSign",21:"CreateTextAnalyzer",22:"CreateNumberSubstitution",23:"CreateGlyphRunAnalysis"}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this._p)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}

  GetSystemFontCollection(checkForUpdates){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",fontCollection,"uint",checkForUpdates),"GetSystemFontCollection")
	return fontCollection
  }

  CreateCustomFontCollection(collectionLoader,collectionKey,collectionKeySize){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",collectionLoader,"ptr",collectionKey,"uint",collectionKeySize,"ptr*",fontCollection),"CreateCustomFontCollection")
	return fontCollection
  }

  RegisterFontCollectionLoader(fontCollectionLoader){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",fontCollectionLoader),"RegisterFontCollectionLoader")
  }

  UnregisterFontCollectionLoader(fontCollectionLoader){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",fontCollectionLoader),"UnregisterFontCollectionLoader")
  }

  CreateFontFileReference(filePath,lastWriteTime){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"str",filePath,"ptr",lastWriteTime,"ptr*",fontFile),"CreateFontFileReference")
	return fontFile
  }

  CreateCustomFontFileReference(fontFileReferenceKey,fontFileReferenceKeySize,fontFileLoader){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",fontFileReferenceKey,"uint",fontFileReferenceKeySize,"ptr",fontFileLoader,"ptr*",fontFile),"CreateCustomFontFileReference")
	return fontFile
  }

  CreateFontFace(fontFaceType,numberOfFiles,fontFiles,faceIndex,fontFaceSimulationFlags){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"uint",fontFaceType,"uint",numberOfFiles,"ptr",fontFiles,"uint",faceIndex,"uint",fontFaceSimulationFlags,"ptr*",fontFace),"CreateFontFace")
	return fontFace
  }

  CreateRenderingParams(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr*",renderingParams),"CreateRenderingParams")
	return renderingParams
  }

  CreateMonitorRenderingParams(monitor){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"uint",monitor,"ptr*",renderingParams),"CreateMonitorRenderingParams")
	return renderingParams
  }

  CreateCustomRenderingParams(gamma,enhancedContrast,clearTypeLevel,pixelGeometry,renderingMode){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"float",gamma,"float",enhancedContrast,"float",clearTypeLevel,"uint",pixelGeometry,"uint",renderingMode,"ptr*",renderingParams),"CreateCustomRenderingParams")
	return renderingParams
  }

  RegisterFontFileLoader(fontFileLoader){
	return _Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr",fontFileLoader),"RegisterFontFileLoader")
  }

  UnregisterFontFileLoader(fontFileLoader){
	return _Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr",fontFileLoader),"UnregisterFontFileLoader")
  }

  CreateTextFormat(fontFamilyName,fontCollection,fontWeight,fontStyle,fontStretch,fontSize,localeName){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"str",fontFamilyName,"ptr",fontCollection,"uint",fontWeight,"uint",fontStyle,"uint",fontStretch,"float",fontSize,"str",localeName,"ptr*",textFormat),"CreateTextFormat")
	return textFormat
  }

  CreateTypography(){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"ptr*",typography),"CreateTypography")
	return typography
  }

  GetGdiInterop(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr*",gdiInterop),"GetGdiInterop")
	return gdiInterop
  }

  CreateTextLayout(string,stringLength,textFormat,maxWidth,maxHeight){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"str",string,"uint",stringLength,"ptr",textFormat,"float",maxWidth,"float",maxHeight,"ptr*",textLayout),"CreateTextLayout")
	return textLayout
  }

  CreateGdiCompatibleTextLayout(string,stringLength,textFormat,layoutWidth,layoutHeight,pixelsPerDip,transform,useGdiNatural){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"str",string,"uint",stringLength,"ptr",textFormat,"float",layoutWidth,"float",layoutHeight,"float",pixelsPerDip,"ptr",transform,"uint",useGdiNatural,"ptr*",textLayout),"CreateGdiCompatibleTextLayout")
	return textLayout
  }

  CreateEllipsisTrimmingSign(textFormat){
	_Error(DllCall(vt(this._p,20),"ptr",this._p,"ptr",textFormat,"ptr*",trimmingSign),"CreateEllipsisTrimmingSign")
	return trimmingSign
  }

  CreateTextAnalyzer(){
	_Error(DllCall(vt(this._p,21),"ptr",this._p,"ptr*",textAnalyzer),"CreateTextAnalyzer")
	return textAnalyzer
  }

  CreateNumberSubstitution(substitutionMethod,localeName,ignoreUserOverride){
	_Error(DllCall(vt(this._p,22),"ptr",this._p,"uint",substitutionMethod,"str",localeName,"uint",ignoreUserOverride,"ptr*",numberSubstitution),"CreateNumberSubstitution")
	return numberSubstitution
  }

  CreateGlyphRunAnalysis(glyphRun,pixelsPerDip,transform,renderingMode,measuringMode,baselineOriginX,baselineOriginY){
	_Error(DllCall(vt(this._p,23),"ptr",this._p,"ptr",glyphRun,"float",pixelsPerDip,"ptr",transform,"uint",renderingMode,"uint",measuringMode,"float",baselineOriginX,"float",baselineOriginY,"ptr*",glyphRunAnalysis),"CreateGlyphRunAnalysis")
	return glyphRunAnalysis
  }
}
;;
;;IDWriteText
;;
class IDWriteText
{

  SetTextAlignment(textAlignment){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"uint",textAlignment),"SetTextAlignment")
  }

  SetParagraphAlignment(paragraphAlignment){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"uint",paragraphAlignment),"SetParagraphAlignment")
  }

  SetWordWrapping(wordWrapping){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"uint",wordWrapping),"SetWordWrapping")
  }

  SetReadingDirection(readingDirection){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"uint",readingDirection),"SetReadingDirection")
  }

  SetFlowDirection(flowDirection){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p,"uint",flowDirection),"SetFlowDirection")
  }

  SetIncrementalTabStop(incrementalTabStop){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"float",incrementalTabStop),"SetIncrementalTabStop")
  }

  SetTrimming(trimmingOptions,Byref trimmingSign){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",trimmingOptions,"ptr*",trimmingSign),"SetTrimming")
  }

  SetLineSpacing(lineSpacingMethod,lineSpacing,baseline){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"uint",lineSpacingMethod,"float",lineSpacing,"float",baseline),"SetLineSpacing")
  }

  GetTextAlignment(){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p),"GetTextAlignment")
  }

  GetParagraphAlignment(){
	return _Error(DllCall(vt(this._p,12),"ptr",this._p),"GetParagraphAlignment")
  }

  GetWordWrapping(){
	return _Error(DllCall(vt(this._p,13),"ptr",this._p),"GetWordWrapping")
  }

  GetReadingDirection(){
	return _Error(DllCall(vt(this._p,14),"ptr",this._p),"GetReadingDirection")
  }

  GetFlowDirection(){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p),"GetFlowDirection")
  }

  GetIncrementalTabStop(){
	return _Error(DllCall(vt(this._p,16),"ptr",this._p,"float"),"GetIncrementalTabStop")
  }

  GetTrimming(trimmingOptions){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr",trimmingOptions,"ptr*",trimmingSign),"GetTrimming")
	return trimmingSign
  }

  GetLineSpacing(){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"uint*",lineSpacingMethod,"float*",lineSpacing,"float*",baseline),"GetLineSpacing")
	return [lineSpacingMethod,lineSpacing,baseline]
  }

  GetFontCollection(){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr*",fontCollection),"GetFontCollection")
	return fontCollection
  }

  GetFontFamilyNameLength(){
	return _Error(DllCall(vt(this._p,20),"ptr",this._p),"GetFontFamilyNameLength")
  }

  GetFontFamilyName(fontFamilyName,nameSize){
	return _Error(DllCall(vt(this._p,21),"ptr",this._p,"str",fontFamilyName,"uint",nameSize),"GetFontFamilyName")
  }

  GetFontWeight(){
	return _Error(DllCall(vt(this._p,22),"ptr",this._p),"GetFontWeight")
  }

  GetFontStyle(){
	return _Error(DllCall(vt(this._p,23),"ptr",this._p),"GetFontStyle")
  }

  GetFontStretch(){
	return _Error(DllCall(vt(this._p,24),"ptr",this._p),"GetFontStretch")
  }

  GetFontSize(){
	return _Error(DllCall(vt(this._p,25),"ptr",this._p,"float"),"GetFontSize")
  }

  GetLocaleNameLength(){
	return _Error(DllCall(vt(this._p,26),"ptr",this._p),"GetLocaleNameLength")
  }

  GetLocaleName(localeName,nameSize){
	return _Error(DllCall(vt(this._p,27),"ptr",this._p,"str",localeName,"uint",nameSize),"GetLocaleName")
  }

  SetMaxWidth(maxWidth){
	return _Error(DllCall(vt(this._p,28),"ptr",this._p,"float",maxWidth),"SetMaxWidth")
  }

  SetMaxHeight(maxHeight){
	return _Error(DllCall(vt(this._p,29),"ptr",this._p,"float",maxHeight),"SetMaxHeight")
  }

  SetFontCollection(fontCollection,textRange){
	return _Error(DllCall(vt(this._p,30),"ptr",this._p,"ptr",fontCollection,"ptr",textRange),"SetFontCollection")
  }

  SetFontFamilyName(fontFamilyName,startPosition,length){
	return _Error(DllCall(vt(this._p,31),"ptr",this._p,"str",fontFamilyName,"uint",startPosition,"uint",length),"SetFontFamilyName")
  }

  SetFontWeight(fontWeight,startPosition,length){
	return _Error(DllCall(vt(this._p,32),"ptr",this._p,"uint",fontWeight,"uint",startPosition,"uint",length),"SetFontWeight")
  }

  SetFontStyle(fontStyle,startPosition,length){
	return _Error(DllCall(vt(this._p,33),"ptr",this._p,"uint",fontStyle,"uint",startPosition,"uint",length),"SetFontStyle")
  }

  SetFontStretch(fontStretch,startPosition,length){
	return _Error(DllCall(vt(this._p,34),"ptr",this._p,"uint",fontStretch,"uint",startPosition,"uint",length),"SetFontStretch")
  }

  SetFontSize(fontSize,startPosition,length){
	return _Error(DllCall(vt(this._p,35),"ptr",this._p,"float",fontSize,"uint",startPosition,"uint",length),"SetFontSize")
  }

  SetUnderline(hasUnderline,startPosition,length){
	return _Error(DllCall(vt(this._p,36),"ptr",this._p,"int",hasUnderline,"uint",startPosition,"uint",length),"SetUnderline")
  }

  SetStrikethrough(hasStrikethrough,startPosition,length){
	return _Error(DllCall(vt(this._p,37),"ptr",this._p,"int",hasStrikethrough,"uint",startPosition,"uint",length),"SetStrikethrough")
  }

  SetDrawingEffect(drawingEffect,startPosition,length){
	return _Error(DllCall(vt(this._p,38),"ptr",this._p,"ptr",drawingEffect,"uint",startPosition,"uint",length),"SetDrawingEffect")
  }

  SetInlineObject(inlineObject,startPosition,length){
	return _Error(DllCall(vt(this._p,39),"ptr",this._p,"ptr",inlineObject,"uint",startPosition,"uint",length),"SetInlineObject")
  }

  SetTypography(typography,startPosition,length){
	return _Error(DllCall(vt(this._p,40),"ptr",this._p,"ptr",typography,"uint",startPosition,"uint",length),"SetTypography")
  }

  SetLocaleName(localeName,startPosition,length){
	return _Error(DllCall(vt(this._p,41),"ptr",this._p,"str",localeName,"uint",startPosition,"uint",length),"SetLocaleName")
  }

  GetMaxWidth(){
	return _Error(DllCall(vt(this._p,42),"ptr",this._p,"float"),"GetMaxWidth")
  }

  GetMaxHeight(){
	return _Error(DllCall(vt(this._p,43),"ptr",this._p,"float"),"GetMaxHeight")
  }

  GetFontCollection(currentPosition){
	_Error(DllCall(vt(this._p,44),"ptr",this._p,"uint",currentPosition,"ptr*",fontCollection,"uint*",startPosition,"uint*",length),"GetFontCollection")
	return [fontCollection,startPosition,length]
  }

  GetFontFamilyNameLength(currentPosition,nameLength){
	_Error(DllCall(vt(this._p,45),"ptr",this._p,"uint",currentPosition,"uint",nameLength,"uint*",startPosition,"uint*",length),"GetFontFamilyNameLength")
	return [startPosition,length]
  }

  GetFontFamilyName(currentPosition,nameSize,startPosition,Byref length){
	return _Error(DllCall(vt(this._p,46),"ptr",this._p,"uint",currentPosition,"str",nameSize,"uint",startPosition,"uint*",length),"GetFontFamilyName")
	
  }

  GetFontWeight(currentPosition){
	_Error(DllCall(vt(this._p,47),"ptr",this._p,"uint",currentPosition,"uint*",fontWeight,"uint*",startPosition,"uint*",length),"GetFontWeight")
	return [fontWeight,startPosition,length]
  }

  GetFontStyle(currentPosition){
	_Error(DllCall(vt(this._p,48),"ptr",this._p,"uint",currentPosition,"uint*",fontStyle,"uint*",startPosition,"uint*",length),"GetFontStyle")
	return [fontStyle,startPosition,length]
  }

  GetFontStretch(currentPosition){
	_Error(DllCall(vt(this._p,49),"ptr",this._p,"uint",currentPosition,"uint*",fontStretch,"uint*",startPosition,"uint*",length),"GetFontStretch")
	return [fontStretch,startPosition,length]
  }

  GetFontSize(currentPosition){
	_Error(DllCall(vt(this._p,50),"ptr",this._p,"uint",currentPosition,"float*",fontSize,"uint*",startPosition,"uint*",length),"GetFontSize")
	return [fontSize,startPosition,length]
  }

  GetUnderline(currentPosition){
	_Error(DllCall(vt(this._p,51),"ptr",this._p,"uint",currentPosition,"int*",hasUnderline,"uint*",startPosition,"uint*",length),"GetUnderline")
	return [hasUnderline,startPosition,length]
  }

  GetStrikethrough(currentPosition){
	_Error(DllCall(vt(this._p,52),"ptr",this._p,"uint",currentPosition,"int*",hasStrikethrough,"uint*",startPosition,"uint*",length),"GetStrikethrough")
	return [hasStrikethrough,startPosition,length]
  }

  GetDrawingEffect(currentPosition){
	_Error(DllCall(vt(this._p,53),"ptr",this._p,"uint",currentPosition,"ptr*",drawingEffect,"uint*",startPosition,"uint*",length),"GetDrawingEffect")
	return [drawingEffect,startPosition,length]
  }

  GetInlineObject(currentPosition){
	_Error(DllCall(vt(this._p,54),"ptr",this._p,"uint",currentPosition,"ptr*",inlineObject,"uint*",startPosition,"uint*",length),"GetInlineObject")
	return [inlineObject,startPosition,length]
  }

  GetTypography(currentPosition){
	_Error(DllCall(vt(this._p,55),"ptr",this._p,"uint",currentPosition,"ptr*",typography,"uint*",startPosition,"uint*",length),"GetTypography")
	return [typography,startPosition,length]
  }

  GetLocaleNameLength(currentPosition){
	_Error(DllCall(vt(this._p,56),"ptr",this._p,"uint",currentPosition,"uint*",nameLength,"uint*",startPosition,"uint*",length),"GetLocaleNameLength")
	return [nameLength,startPosition,length]
  }

  GetLocaleName(currentPosition,localeName,nameSize){
	_Error(DllCall(vt(this._p,57),"ptr",this._p,"uint",currentPosition,"str",localeName,"uint",nameSize,"uint*",startPosition,"uint*",length),"GetLocaleName")
	return [startPosition,length]
  }

  Draw(clientDrawingContext,renderer,originX,originY){
	return _Error(DllCall(vt(this._p,58),"ptr",this._p,"ptr",clientDrawingContext,"ptr",renderer,"float",originX,"float",originY),"Draw")
  }

  GetLineMetrics(lineMetrics,maxLineCount){
	_Error(DllCall(vt(this._p,59),"ptr",this._p,"ptr",lineMetrics,"uint",maxLineCount,"uint*",actualLineCount),"GetLineMetrics")
	return actualLineCount
  }

  GetMetrics(textMetrics){
	return _Error(DllCall(vt(this._p,60),"ptr",this._p,"ptr",textMetrics),"GetMetrics")
  }

  GetOverhangMetrics(overhangs){
	return _Error(DllCall(vt(this._p,61),"ptr",this._p,"ptr",overhangs),"GetOverhangMetrics")
  }

  GetClusterMetrics(clusterMetrics,maxClusterCount){
	_Error(DllCall(vt(this._p,62),"ptr",this._p,"ptr",clusterMetrics,"uint",maxClusterCount,"uint*",actualClusterCount),"GetClusterMetrics")
	return actualClusterCount
  }

  DetermineMinWidth(){
	_Error(DllCall(vt(this._p,63),"ptr",this._p,"float*",minWidth),"DetermineMinWidth")
	return minWidth
  }

  HitTestPoint(pointX,pointY,hitTestMetrics){
	_Error(DllCall(vt(this._p,64),"ptr",this._p,"float",pointX,"float",pointY,"int*",isTrailingHit,"int*",isInside,"ptr",hitTestMetrics),"HitTestPoint")
	return [isTrailingHit,isInside]
  }

  HitTestTextPosition(textPosition,isTrailingHit,hitTestMetrics){
	_Error(DllCall(vt(this._p,65),"ptr",this._p,"uint",textPosition,"int",isTrailingHit,"float*",pointX,"float*",pointY,"ptr",hitTestMetrics),"HitTestTextPosition")
	return [pointX,pointY]
  }

  HitTestTextRange(textPosition,textLength,originX,originY,maxHitTestMetricsCount){
	return _Error(DllCall(vt(this._p,66),"ptr",this._p,"uint",textPosition,"uint",textLength,"float",originX,"float",originY,"ptr",maxHitTestMetricsCount),"HitTestTextRange")
  }
}

;;
;;IDWriteFont
;;


;;
;;
;;


;;
;;
;;


;;
;;
;;


