package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum RFIDWithISO14443A$TagType {
    Ultra_light,
    S50,
    S70,
    Mifare_DESFire,
    Mifare_Pro,
    Mifare_ProX,
    Mifare_plus,
    Mifare_plus_4k,
    Mifare_plus_2k,
    Mifare_Mini,
    Unknow;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithISO14443A$TagType[] valuesCustom() {
        RFIDWithISO14443A$TagType[] rFIDWithISO14443A$TagTypeArrValuesCustom = values();
        int length = rFIDWithISO14443A$TagTypeArrValuesCustom.length;
        RFIDWithISO14443A$TagType[] rFIDWithISO14443A$TagTypeArr = new RFIDWithISO14443A$TagType[length];
        System.arraycopy(rFIDWithISO14443A$TagTypeArrValuesCustom, 0, rFIDWithISO14443A$TagTypeArr, 0, length);
        return rFIDWithISO14443A$TagTypeArr;
    }
}
