package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum RFIDWithISO15693$TagType {
    ICODE2(0),
    TI2048(4),
    STLRIS64K(8),
    NUll_(100);

    private final int value;

    RFIDWithISO15693$TagType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithISO15693$TagType[] valuesCustom() {
        RFIDWithISO15693$TagType[] rFIDWithISO15693$TagTypeArrValuesCustom = values();
        int length = rFIDWithISO15693$TagTypeArrValuesCustom.length;
        RFIDWithISO15693$TagType[] rFIDWithISO15693$TagTypeArr = new RFIDWithISO15693$TagType[length];
        System.arraycopy(rFIDWithISO15693$TagTypeArrValuesCustom, 0, rFIDWithISO15693$TagTypeArr, 0, length);
        return rFIDWithISO15693$TagTypeArr;
    }

    public int getValue() {
        return this.value;
    }
}
