/*

	Complete - 수정사항 없음

*/
package application.model;

import javafx.beans.property.IntegerProperty;
import javafx.beans.property.StringProperty;

public class Data {
	private IntegerProperty id;
	private IntegerProperty MSSubClass;
	private StringProperty MSZoning;
	private IntegerProperty LotFrontage;
	private IntegerProperty LotArea;
	private StringProperty Street;
	private StringProperty Alley;
	private StringProperty LotShape;
	private StringProperty LandContour;
	private StringProperty Utilities;
	private StringProperty LotConfig;
	private StringProperty LandSlope;
	private StringProperty Neighborhood;
	private StringProperty Condition1;
	private StringProperty Condition2;
	private StringProperty BldgType;
	private StringProperty HouseStyle;
	private IntegerProperty OverallQual;
	private IntegerProperty OverallCond;
	private StringProperty YearBuilt;
	private StringProperty YearRemodAdd;
	private StringProperty RoofStyle;
	private StringProperty RoofMatl;
	private StringProperty Exterior1st;
	private StringProperty Exterior2nd;
	private StringProperty MasVnrType;
	private IntegerProperty MasVnrArea;
	private StringProperty ExterQual;
	private StringProperty ExterCond;
	private StringProperty Foundation;
	private StringProperty BsmtQual;
	private StringProperty BsmtCond;
	private StringProperty BsmtExposure;
	private StringProperty BsmtFinType1;
	private IntegerProperty BsmtFinSF1;
	private StringProperty BsmtFinType2;
	private IntegerProperty BsmtFinSF2;
	private IntegerProperty BsmtUnfSF;
	private IntegerProperty TotalBsmtSF;
	private StringProperty Heating;
	private StringProperty HeatingQC;
	private StringProperty CentralAir;
	private StringProperty Electrical;
	private IntegerProperty r1stFlrSF;
	private IntegerProperty r2ndFlrSF;
	private IntegerProperty LowQualFinSF;
	private IntegerProperty GrLivArea;
	private IntegerProperty BsmtFullBath;
	private IntegerProperty BsmtHalfBath;
	private IntegerProperty FullBath;
	private IntegerProperty HalfBath;
	private IntegerProperty BedroomAbvGr;
	private IntegerProperty KitchenAbvGr;
	private StringProperty KitchenQual;
	private IntegerProperty TotRmsAbvGrd;
	private StringProperty Functional;
	private IntegerProperty Fireplaces;
	private StringProperty FireplaceQu;
	private StringProperty GrageType;
	private StringProperty GarageYrBlt;
	private StringProperty GarageFinish;
	private IntegerProperty GrageCars;
	private IntegerProperty GrageArea;
	private StringProperty GarageQual;
	private StringProperty GrageCond;
	private StringProperty PavedDrive;
	private IntegerProperty WoodDeckSF;
	private IntegerProperty OpenPorchSF;
	private IntegerProperty EnclosedPorch;
	private IntegerProperty r3SsnPorch;
	private IntegerProperty ScreenPorch;
	private IntegerProperty PoolArea;
	private StringProperty PoolQC;
	private StringProperty Fence;
	private StringProperty MiscFeature;
	private IntegerProperty MiscVal;
	private IntegerProperty MoSold;
	private StringProperty YrSold;
	private StringProperty SaleType;
	private StringProperty SaleCondition;
	private IntegerProperty SalePrice;
	
	public IntegerProperty getId() {
		return id;
	}
	public void setId(int id) {
		this.id.set(id);
	}
	public IntegerProperty getMSSubClass() {
		return MSSubClass;
	}
	public void setMSSubClass(int mSSubClass) {
		MSSubClass.set(mSSubClass);
	}
	public String getMSZoning() {
		return MSZoning.get();
	}
	public void setMSZoning(String mSZoning) {
		this.MSZoning.set(mSZoning);
	}
	public StringProperty MSZoningProperty(){
		return MSZoning;
	}
	public IntegerProperty getLotFrontage() {
		return LotFrontage;
	}
	public void setLotFrontage(int lotFrontage) {
		LotFrontage.set(lotFrontage);
	}
	public IntegerProperty getLotArea() {
		return LotArea;
	}
	public void setLotArea(int lotArea) {
		LotArea.set(lotArea);
	}
	public StringProperty getStreet() {
		return Street;
	}
	public void setStreet(String street) {
		Street.set(street);
	}
	public StringProperty getAlley() {
		return Alley;
	}
	public void setAlley(String alley) {
		Alley.set(alley);
	}
	public StringProperty getLotShape() {
		return LotShape;
	}
	public void setLotShape(String lotShape) {
		LotShape.set(lotShape);
	}
	public StringProperty getLandContour() {
		return LandContour;
	}
	public void setLandContour(String landContour) {
		LandContour.set(landContour);
	}
	public StringProperty getUtilities() {
		return Utilities;
	}
	public void setUtilities(String utilities) {
		Utilities.set(utilities);
	}
	public StringProperty getLotConfig() {
		return LotConfig;
	}
	public void setLotConfig(String lotConfig) {
		LotConfig.set(lotConfig);
	}
	public StringProperty getLandSlope() {
		return LandSlope;
	}
	public void setLandSlope(String landSlope) {
		LandSlope.set(landSlope);
	}
	public StringProperty getNeighborhood() {
		return Neighborhood;
	}
	public void setNeighborhood(String neighborhood) {
		Neighborhood.set(neighborhood);
	}
	public StringProperty getCondition1() {
		return Condition1;
	}
	public void setCondition1(String condition1) {
		Condition1.set(condition1);
	}
	public StringProperty getCondition2() {
		return Condition2;
	}
	public void setCondition2(String condition2) {
		Condition2.set(condition2);
	}
	public StringProperty getBldgType() {
		return BldgType;
	}
	public void setBldgType(String bldgType) {
		BldgType.set(bldgType);
	}
	public StringProperty getHouseStyle() {
		return HouseStyle;
	}
	public void setHouseStyle(String houseStyle) {
		HouseStyle.set(houseStyle);
	}
	public IntegerProperty getOverallQual() {
		return OverallQual;
	}
	public void setOverallQual(int overallQual) {
		this.OverallQual.set(overallQual);
	}
	public IntegerProperty getOverallCond() {
		return OverallCond;
	}
	public void setOverallCond(int overallCond) {
		OverallCond.set(overallCond);
	}
	public StringProperty getYearBuilt() {
		return YearBuilt;
	}
	public void setYearBuilt(String yearBuilt) {
		YearBuilt.set(yearBuilt);
	}
	public StringProperty getYearRemodAdd() {
		return YearRemodAdd;
	}
	public void setYearRemodAdd(String yearRemodAdd) {
		YearRemodAdd.set(yearRemodAdd);
	}
	public StringProperty getRoofStyle() {
		return RoofStyle;
	}
	public void setRoofStyle(String roofStyle) {
		RoofStyle.set(roofStyle);
	}
	public StringProperty getRoofMatl() {
		return RoofMatl;
	}
	public void setRoofMatl(String roofMatl) {
		RoofMatl.set(roofMatl);
	}
	public StringProperty getExterior1st() {
		return Exterior1st;
	}
	public void setExterior1st(String exterior1st) {
		Exterior1st.set(exterior1st);
	}
	///////////////////////////////////////////////////////////
	public StringProperty getExterior2nd() {
		return Exterior2nd;
	}
	public void setExterior2nd(String exterior2nd) {
		Exterior2nd.set(exterior2nd);
	}
	public StringProperty getMasVnrType() {
		return MasVnrType;
	}
	public void setMasVnrType(String masVnrType) {
		MasVnrType.set(masVnrType);
	}
	public IntegerProperty getMasVnrArea() {
		return MasVnrArea;
	}
	public void setMasVnrArea(int masVnrArea) {
		MasVnrArea.set(masVnrArea);
	}
	public StringProperty getExterQual() {
		return ExterQual;
	}
	public void setExterQual(String exterQual) {
		ExterQual.set(exterQual);
	}
	public StringProperty getExterCond() {
		return ExterCond;
	}
	public void setExterCond(String exterCond) {
		ExterCond.set(exterCond);
	}
	public StringProperty getFoundation() {
		return Foundation;
	}
	public void setFoundation(String foundation) {
		Foundation.set(foundation);
	}
	public StringProperty getBsmtQual() {
		return BsmtQual;
	}
	public void setBsmtQual(String bsmtQual) {
		BsmtQual.set(bsmtQual);
	}
	public StringProperty getBsmtCond() {
		return BsmtCond;
	}
	public void setBsmtCond(String bsmtCond) {
		BsmtCond.set(bsmtCond);
	}
	public StringProperty getBsmtExposure() {
		return BsmtExposure;
	}
	public void setBsmtExposure(String bsmtExposure) {
		BsmtExposure.set(bsmtExposure);
	}
	public StringProperty getBsmtFinType1() {
		return BsmtFinType1;
	}
	public void setBsmtFinType1(String bsmtFinType1) {
		BsmtFinType1.set(bsmtFinType1);
	}
	public IntegerProperty getBsmtFinSF1() {
		return BsmtFinSF1;
	}
	public void setBsmtFinSF1(int bsmtFinSF1) {
		BsmtFinSF1.set(bsmtFinSF1);
	}
	public StringProperty getBsmtFinType2() {
		return BsmtFinType2;
	}
	public void setBsmtFinType2(String bsmtFinType2) {
		BsmtFinType2.set(bsmtFinType2);
	}
	public IntegerProperty getBsmtFinSF2() {
		return BsmtFinSF2;
	}
	public void setBsmtFinSF2(int bsmtFinSF2) {
		BsmtFinSF2.set(bsmtFinSF2);
	}
	public IntegerProperty getBsmtUnfSF() {
		return BsmtUnfSF;
	}
	public void setBsmtUnfSF(int bsmtUnfSF) {
		BsmtUnfSF.set(bsmtUnfSF);
	}
	public IntegerProperty getTotalBsmtSF() {
		return TotalBsmtSF;
	}
	public void setTotalBsmtSF(int totalBsmtSF) {
		TotalBsmtSF.set(totalBsmtSF);
	}
	public StringProperty getHeating() {
		return Heating;
	}
	public void setHeating(String heating) {
		Heating.set(heating);
	}
	public StringProperty getHeatingQC() {
		return HeatingQC;
	}
	public void setHeatingQC(String heatingQC) {
		HeatingQC.set(heatingQC);
	}
	public StringProperty getCentralAir() {
		return CentralAir;
	}
	public void setCentralAir(String centralAir) {
		CentralAir.set(centralAir);
	}
	public StringProperty getElectrical() {
		return Electrical;
	}
	public void setElectrical(String electrical) {
		Electrical.set(electrical);
	}
	public IntegerProperty getR1stFlrSF() {
		return r1stFlrSF;
	}
	public void setR1stFlrSF(int r1stFlrSF) {
		this.r1stFlrSF.set(r1stFlrSF);
	}
	public IntegerProperty getR2ndFlrSF() {
		return r2ndFlrSF;
	}
	public void setR2ndFlrSF(int r2ndFlrSF) {
		this.r2ndFlrSF.set(r2ndFlrSF);
	}
	public IntegerProperty getLowQualFinSF() {
		return LowQualFinSF;
	}
	public void setLowQualFinSF(int lowQualFinSF) {
		LowQualFinSF.set(lowQualFinSF);
	}
	public IntegerProperty getGrLivArea() {
		return GrLivArea;
	}
	public void setGrLivArea(int grLivArea) {
		GrLivArea.set(grLivArea);
	}
	public IntegerProperty getBsmtFullBath() {
		return BsmtFullBath;
	}
	public void setBsmtFullBath(int bsmtFullBath) {
		BsmtFullBath.set(bsmtFullBath);
	}
	public IntegerProperty getBsmtHalfBath() {
		return BsmtHalfBath;
	}
	public void setBsmtHalfBath(int bsmtHalfBath) {
		BsmtHalfBath.set(bsmtHalfBath);
	}
	public IntegerProperty getFullBath() {
		return FullBath;
	}
	public void setFullBath(int fullBath) {
		FullBath.set(fullBath);
	}
	public IntegerProperty getHalfBath() {
		return HalfBath;
	}
	public void setHalfBath(int halfBath) {
		HalfBath.set(halfBath);
	}
	public IntegerProperty getBedroomAbvGr() {
		return BedroomAbvGr;
	}
	public void setBedroomAbvGr(int bedroomAbvGr) {
		BedroomAbvGr.set(bedroomAbvGr);
	}
	public IntegerProperty getKitchenAbvGr() {
		return KitchenAbvGr;
	}
	public void setKitchenAbvGr(int kitchenAbvGr) {
		KitchenAbvGr.set(kitchenAbvGr);
	}
	public StringProperty getKitchenQual() {
		return KitchenQual;
	}
	public void setKitchenQual(String kitchenQual) {
		KitchenQual.set(kitchenQual);
	}
	public IntegerProperty getTotRmsAbvGrd() {
		return TotRmsAbvGrd;
	}
	public void setTotRmsAbvGrd(int totRmsAbvGrd) {
		TotRmsAbvGrd.set(totRmsAbvGrd);
	}
	public StringProperty getFunctional() {
		return Functional;
	}
	public void setFunctional(String functional) {
		Functional.set(functional);
	}
	public IntegerProperty getFireplaces() {
		return Fireplaces;
	}
	public void setFireplaces(int fireplaces) {
		Fireplaces.set(fireplaces);
	}
	public StringProperty getFireplaceQu() {
		return FireplaceQu;
	}
	public void setFireplaceQu(String fireplaceQu) {
		FireplaceQu.set(fireplaceQu); 
	}
	public StringProperty getGrageType() {
		return GrageType;
	}
	public void setGrageType(String grageType) {
		GrageType.set(grageType);
	}
	public StringProperty getGarageYrBlt() {
		return GarageYrBlt;
	}
	public void setGarageYrBlt(String garageYrBlt) {
		GarageYrBlt.set(garageYrBlt);
	}
	public StringProperty getGarageFinish() {
		return GarageFinish;
	}
	public void setGarageFinish(String garageFinish) {
		GarageFinish.set(garageFinish);
	}
	public IntegerProperty getGrageCars() {
		return GrageCars;
	}
	public void setGrageCars(int grageCars) {
		GrageCars.set(grageCars);
	}
	public IntegerProperty getGrageArea() {
		return GrageArea;
	}
	public void setGrageArea(int grageArea) {
		GrageArea.set(grageArea);
	}
	public StringProperty getGarageQual() {
		return GarageQual;
	}
	public void setGarageQual(String garageQual) {
		GarageQual.set(garageQual);
	}
	public StringProperty getGrageCond() {
		return GrageCond;
	}
	public void setGrageCond(String grageCond) {
		GrageCond.set(grageCond);
	}
	public StringProperty getPavedDrive() {
		return PavedDrive;
	}
	public void setPavedDrive(String pavedDrive) {
		PavedDrive.set(pavedDrive);
	}
	public IntegerProperty getWoodDeckSF() {
		return WoodDeckSF;
	}
	public void setWoodDeckSF(int woodDeckSF) {
		WoodDeckSF.set(woodDeckSF);
	}
	public IntegerProperty getOpenPorchSF() {
		return OpenPorchSF;
	}
	public void setOpenPorchSF(int openPorchSF) {
		OpenPorchSF.set(openPorchSF);
	}
	public IntegerProperty getEnclosedPorch() {
		return EnclosedPorch;
	}
	public void setEnclosedPorch(int enclosedPorch) {
		EnclosedPorch.set(enclosedPorch);
	}
	public IntegerProperty getR3SsnPorch() {
		return r3SsnPorch;
	}
	public void setR3SsnPorch(int r3SsnPorch) {
		this.r3SsnPorch.set(r3SsnPorch);
	}
	public IntegerProperty getScreenPorch() {
		return ScreenPorch;
	}
	public void setScreenPorch(int screenPorch) {
		ScreenPorch.set(screenPorch);
	}
	public IntegerProperty getPoolArea() {
		return PoolArea;
	}
	public void setPoolArea(int poolArea) {
		PoolArea.set(poolArea);
	}
	public StringProperty getPoolQC() {
		return PoolQC;
	}
	public void setPoolQC(String poolQC) {
		PoolQC.set(poolQC);
	}
	public StringProperty getFence() {
		return Fence;
	}
	public void setFence(String fence) {
		Fence.set(fence);
	}
	public StringProperty getMiscFeature() {
		return MiscFeature;
	}
	public void setMiscFeature(String miscFeature) {
		MiscFeature.set(miscFeature);
	}
	public IntegerProperty getMiscVal() {
		return MiscVal;
	}
	public void setMiscVal(int miscVal) {
		MiscVal.set(miscVal);
	}
	public IntegerProperty getMoSold() {
		return MoSold;
	}
	public void setMoSold(int moSold) {
		MoSold.set(moSold);
	}
	//
	public StringProperty getYrSold() {
		return YrSold;
	}
	public void setYrSold(StringProperty yrSold) {
		YrSold = yrSold;
	}
	public StringProperty getSaleType() {
		return SaleType;
	}
	public void setSaleType(String saleType) {
		SaleType.set(saleType);
	}
	public StringProperty getSaleCondition() {
		return SaleCondition;
	}
	public void setSaleCondition(String saleCondition) {
		SaleCondition.set(saleCondition);
	}
	public IntegerProperty getSalePrice() {
		return SalePrice;
	}
	public void setSalePrice(int salePrice) {
		SalePrice.set(salePrice);
	}
	
}
