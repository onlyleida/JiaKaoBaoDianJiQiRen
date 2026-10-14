package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
enum RFIDWithUHF$SingelModeEnum {
    SINGEL((byte) 0),
    MORE((byte) 1);

    private final byte value;

    RFIDWithUHF$SingelModeEnum(byte b) {
        this.value = b;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithUHF$SingelModeEnum[] valuesCustom() {
        RFIDWithUHF$SingelModeEnum[] rFIDWithUHF$SingelModeEnumArrValuesCustom = values();
        int length = rFIDWithUHF$SingelModeEnumArrValuesCustom.length;
        RFIDWithUHF$SingelModeEnum[] rFIDWithUHF$SingelModeEnumArr = new RFIDWithUHF$SingelModeEnum[length];
        System.arraycopy(rFIDWithUHF$SingelModeEnumArrValuesCustom, 0, rFIDWithUHF$SingelModeEnumArr, 0, length);
        return rFIDWithUHF$SingelModeEnumArr;
    }

    public byte getValue() {
        return this.value;
    }
}
