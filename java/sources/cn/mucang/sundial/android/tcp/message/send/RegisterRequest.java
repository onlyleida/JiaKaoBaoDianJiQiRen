package cn.mucang.sundial.android.tcp.message.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.SendMessage;

/* JADX INFO: loaded from: classes5.dex */
public class RegisterRequest implements SendMessage, Request {
    private String carno;
    private int cityId;
    private int color;
    private String deviceModel;
    private String imei;
    private String manufacturer;
    private int provinceId;
    private String serialNo;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendWORD(this.provinceId);
        bytesEncoder.appendWORD(this.cityId);
        bytesEncoder.appendString(this.manufacturer, 5);
        bytesEncoder.appendString(this.deviceModel, 20);
        bytesEncoder.appendString(this.serialNo, 7);
        bytesEncoder.appendString(this.imei, 15);
        bytesEncoder.appendBYTE(this.color);
        bytesEncoder.appendString(this.carno);
        return bytesEncoder.toByteArray();
    }

    public String getCarno() {
        return this.carno;
    }

    public int getCityId() {
        return this.cityId;
    }

    public int getColor() {
        return this.color;
    }

    public String getDeviceModel() {
        return this.deviceModel;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 256;
    }

    public String getImei() {
        return this.imei;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public int getProvinceId() {
        return this.provinceId;
    }

    public String getSerialNo() {
        return this.serialNo;
    }

    public void setCarno(String str) {
        this.carno = str;
    }

    public void setCityId(int i) {
        this.cityId = i;
    }

    public void setColor(int i) {
        this.color = i;
    }

    public void setDeviceModel(String str) {
        this.deviceModel = str;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setProvinceId(int i) {
        this.provinceId = i;
    }

    public void setSerialNo(String str) {
        this.serialNo = str;
    }

    public String toString() {
        return "RegisterRequest{provinceId=" + this.provinceId + ", cityId=" + this.cityId + ", manufacturer='" + this.manufacturer + "', deviceModel='" + this.deviceModel + "', serialNo='" + this.serialNo + "', imei='" + this.imei + "', color=" + this.color + ", carno='" + this.carno + "'}";
    }
}
