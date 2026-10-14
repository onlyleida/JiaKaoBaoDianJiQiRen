package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum RFIDWithUHF$BankEnum {
    RESERVED((byte) 0),
    UII((byte) 1),
    TID((byte) 2),
    USER((byte) 3),
    DIGITAL_SIGNATURE((byte) 4);

    private final byte value;

    RFIDWithUHF$BankEnum(byte b) {
        this.value = b;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithUHF$BankEnum[] valuesCustom() {
        RFIDWithUHF$BankEnum[] rFIDWithUHF$BankEnumArrValuesCustom = values();
        int length = rFIDWithUHF$BankEnumArrValuesCustom.length;
        RFIDWithUHF$BankEnum[] rFIDWithUHF$BankEnumArr = new RFIDWithUHF$BankEnum[length];
        System.arraycopy(rFIDWithUHF$BankEnumArrValuesCustom, 0, rFIDWithUHF$BankEnumArr, 0, length);
        return rFIDWithUHF$BankEnumArr;
    }

    public byte getValue() {
        return this.value;
    }
}
