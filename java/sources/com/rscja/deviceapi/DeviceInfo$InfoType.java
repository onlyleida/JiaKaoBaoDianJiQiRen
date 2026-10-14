package com.rscja.deviceapi;

/* JADX INFO: loaded from: classes6.dex */
public enum DeviceInfo$InfoType {
    CPUTEMPERATURE;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static DeviceInfo$InfoType[] valuesCustom() {
        DeviceInfo$InfoType[] deviceInfo$InfoTypeArrValuesCustom = values();
        int length = deviceInfo$InfoTypeArrValuesCustom.length;
        DeviceInfo$InfoType[] deviceInfo$InfoTypeArr = new DeviceInfo$InfoType[length];
        System.arraycopy(deviceInfo$InfoTypeArrValuesCustom, 0, deviceInfo$InfoTypeArr, 0, length);
        return deviceInfo$InfoTypeArr;
    }
}
