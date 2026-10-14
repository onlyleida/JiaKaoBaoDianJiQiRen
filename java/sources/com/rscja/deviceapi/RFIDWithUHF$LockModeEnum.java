package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public enum RFIDWithUHF$LockModeEnum {
    HOLD((byte) 0),
    LOCK((byte) 1),
    UNLOCK((byte) 2),
    PLOCK((byte) 3),
    PUNLOCK((byte) 4);

    private final byte value;

    RFIDWithUHF$LockModeEnum(byte b) {
        this.value = b;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithUHF$LockModeEnum[] valuesCustom() {
        RFIDWithUHF$LockModeEnum[] rFIDWithUHF$LockModeEnumArrValuesCustom = values();
        int length = rFIDWithUHF$LockModeEnumArrValuesCustom.length;
        RFIDWithUHF$LockModeEnum[] rFIDWithUHF$LockModeEnumArr = new RFIDWithUHF$LockModeEnum[length];
        System.arraycopy(rFIDWithUHF$LockModeEnumArrValuesCustom, 0, rFIDWithUHF$LockModeEnumArr, 0, length);
        return rFIDWithUHF$LockModeEnumArr;
    }

    public byte getValue() {
        return this.value;
    }
}
