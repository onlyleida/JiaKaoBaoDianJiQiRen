package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum Fingerprint$BufferEnum {
    B1(1),
    B2(2),
    B11(17),
    B12(18);

    private final int value;

    Fingerprint$BufferEnum(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static Fingerprint$BufferEnum[] valuesCustom() {
        Fingerprint$BufferEnum[] fingerprint$BufferEnumArrValuesCustom = values();
        int length = fingerprint$BufferEnumArrValuesCustom.length;
        Fingerprint$BufferEnum[] fingerprint$BufferEnumArr = new Fingerprint$BufferEnum[length];
        System.arraycopy(fingerprint$BufferEnumArrValuesCustom, 0, fingerprint$BufferEnumArr, 0, length);
        return fingerprint$BufferEnumArr;
    }

    public int getValue() {
        return this.value;
    }
}
