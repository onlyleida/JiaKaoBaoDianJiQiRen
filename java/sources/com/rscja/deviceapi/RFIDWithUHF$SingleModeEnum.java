package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum RFIDWithUHF$SingleModeEnum {
    SINGEL((byte) 0),
    MORE((byte) 1);

    private final byte value;

    RFIDWithUHF$SingleModeEnum(byte b) {
        this.value = b;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithUHF$SingleModeEnum[] valuesCustom() {
        RFIDWithUHF$SingleModeEnum[] rFIDWithUHF$SingleModeEnumArrValuesCustom = values();
        int length = rFIDWithUHF$SingleModeEnumArrValuesCustom.length;
        RFIDWithUHF$SingleModeEnum[] rFIDWithUHF$SingleModeEnumArr = new RFIDWithUHF$SingleModeEnum[length];
        System.arraycopy(rFIDWithUHF$SingleModeEnumArrValuesCustom, 0, rFIDWithUHF$SingleModeEnumArr, 0, length);
        return rFIDWithUHF$SingleModeEnumArr;
    }

    public byte getValue() {
        return this.value;
    }
}
