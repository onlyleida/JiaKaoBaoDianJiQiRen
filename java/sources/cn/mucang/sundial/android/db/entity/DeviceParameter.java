package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.sundial.android.tcp.message.Parameter;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceParameter extends IdEntity {
    private long parameterId;
    private String value;

    public static DeviceParameter from(Parameter parameter) {
        DeviceParameter deviceParameter = new DeviceParameter();
        deviceParameter.parameterId = parameter.getParameterId();
        try {
            deviceParameter.value = new String(parameter.getValue(), "GBK");
        } catch (UnsupportedEncodingException unused) {
            deviceParameter.value = new String(parameter.getValue());
        }
        return deviceParameter;
    }

    @Override // cn.mucang.android.core.db.IdEntity
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && super.equals(obj) && this.parameterId == ((DeviceParameter) obj).parameterId;
    }

    public long getParameterId() {
        return this.parameterId;
    }

    public String getValue() {
        return this.value;
    }

    @Override // cn.mucang.android.core.db.IdEntity
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        long j = this.parameterId;
        return iHashCode + ((int) (j ^ (j >>> 32)));
    }

    public void setParameterId(long j) {
        this.parameterId = j;
    }

    public void setValue(String str) {
        this.value = str;
    }
}
