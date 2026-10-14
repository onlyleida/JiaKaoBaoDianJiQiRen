package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum BDNavigation$BDStartModeEnum {
    COLD,
    WARM,
    HOT;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static BDNavigation$BDStartModeEnum[] valuesCustom() {
        BDNavigation$BDStartModeEnum[] bDNavigation$BDStartModeEnumArrValuesCustom = values();
        int length = bDNavigation$BDStartModeEnumArrValuesCustom.length;
        BDNavigation$BDStartModeEnum[] bDNavigation$BDStartModeEnumArr = new BDNavigation$BDStartModeEnum[length];
        System.arraycopy(bDNavigation$BDStartModeEnumArrValuesCustom, 0, bDNavigation$BDStartModeEnumArr, 0, length);
        return bDNavigation$BDStartModeEnumArr;
    }
}
