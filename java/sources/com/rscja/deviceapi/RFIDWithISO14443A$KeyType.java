package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum RFIDWithISO14443A$KeyType {
    TypeA,
    TypeB,
    TypeDes;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithISO14443A$KeyType[] valuesCustom() {
        RFIDWithISO14443A$KeyType[] rFIDWithISO14443A$KeyTypeArrValuesCustom = values();
        int length = rFIDWithISO14443A$KeyTypeArrValuesCustom.length;
        RFIDWithISO14443A$KeyType[] rFIDWithISO14443A$KeyTypeArr = new RFIDWithISO14443A$KeyType[length];
        System.arraycopy(rFIDWithISO14443A$KeyTypeArrValuesCustom, 0, rFIDWithISO14443A$KeyTypeArr, 0, length);
        return rFIDWithISO14443A$KeyTypeArr;
    }
}
