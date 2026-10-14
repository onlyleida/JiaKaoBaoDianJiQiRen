package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum RFIDWithISO14443A$DESFireEncryptionTypekEnum {
    Unknown((byte) 0),
    Transparent((byte) 1),
    DES((byte) 2);

    private final byte value;

    RFIDWithISO14443A$DESFireEncryptionTypekEnum(byte b) {
        this.value = b;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithISO14443A$DESFireEncryptionTypekEnum[] valuesCustom() {
        RFIDWithISO14443A$DESFireEncryptionTypekEnum[] rFIDWithISO14443A$DESFireEncryptionTypekEnumArrValuesCustom = values();
        int length = rFIDWithISO14443A$DESFireEncryptionTypekEnumArrValuesCustom.length;
        RFIDWithISO14443A$DESFireEncryptionTypekEnum[] rFIDWithISO14443A$DESFireEncryptionTypekEnumArr = new RFIDWithISO14443A$DESFireEncryptionTypekEnum[length];
        System.arraycopy(rFIDWithISO14443A$DESFireEncryptionTypekEnumArrValuesCustom, 0, rFIDWithISO14443A$DESFireEncryptionTypekEnumArr, 0, length);
        return rFIDWithISO14443A$DESFireEncryptionTypekEnumArr;
    }

    public byte getValue() {
        return this.value;
    }
}
