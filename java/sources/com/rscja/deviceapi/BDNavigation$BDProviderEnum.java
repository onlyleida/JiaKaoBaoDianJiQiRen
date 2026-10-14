package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum BDNavigation$BDProviderEnum {
    GPS,
    BD,
    GPSandBD;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static BDNavigation$BDProviderEnum[] valuesCustom() {
        BDNavigation$BDProviderEnum[] bDNavigation$BDProviderEnumArrValuesCustom = values();
        int length = bDNavigation$BDProviderEnumArrValuesCustom.length;
        BDNavigation$BDProviderEnum[] bDNavigation$BDProviderEnumArr = new BDNavigation$BDProviderEnum[length];
        System.arraycopy(bDNavigation$BDProviderEnumArrValuesCustom, 0, bDNavigation$BDProviderEnumArr, 0, length);
        return bDNavigation$BDProviderEnumArr;
    }
}
