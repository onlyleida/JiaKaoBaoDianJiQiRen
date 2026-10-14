package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum RFIDWithISO14443A$DESFireFileTypekEnum {
    Unknown((byte) 0),
    StandardDataFile((byte) 1),
    BackupDataFile((byte) 2),
    ValueFile((byte) 3),
    LinearRecordFile((byte) 4),
    CyclicRecordFile((byte) 5);

    private final byte value;

    RFIDWithISO14443A$DESFireFileTypekEnum(byte b) {
        this.value = b;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static RFIDWithISO14443A$DESFireFileTypekEnum[] valuesCustom() {
        RFIDWithISO14443A$DESFireFileTypekEnum[] rFIDWithISO14443A$DESFireFileTypekEnumArrValuesCustom = values();
        int length = rFIDWithISO14443A$DESFireFileTypekEnumArrValuesCustom.length;
        RFIDWithISO14443A$DESFireFileTypekEnum[] rFIDWithISO14443A$DESFireFileTypekEnumArr = new RFIDWithISO14443A$DESFireFileTypekEnum[length];
        System.arraycopy(rFIDWithISO14443A$DESFireFileTypekEnumArrValuesCustom, 0, rFIDWithISO14443A$DESFireFileTypekEnumArr, 0, length);
        return rFIDWithISO14443A$DESFireFileTypekEnumArr;
    }

    public byte getValue() {
        return this.value;
    }
}
