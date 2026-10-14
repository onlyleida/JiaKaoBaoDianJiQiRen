package cn.mucang.sundial.library.entity;

import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;
import com.alibaba.fastjson.JSON;
import java.io.Serializable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R2\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcn/mucang/sundial/library/entity/DefaultConfig;", "Ljava/io/Serializable;", "", "toString", "()Ljava/lang/String;", "", "appParam", "Ljava/util/Map;", "getAppParam", "()Ljava/util/Map;", "setAppParam", "(Ljava/util/Map;)V", "Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;", "deviceConfig", "Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;", "getDeviceConfig", "()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;", "setDeviceConfig", "(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V", "Lcn/mucang/sundial/library/entity/DefaultConfig$Info;", "info", "Lcn/mucang/sundial/library/entity/DefaultConfig$Info;", "getInfo", "()Lcn/mucang/sundial/library/entity/DefaultConfig$Info;", "setInfo", "(Lcn/mucang/sundial/library/entity/DefaultConfig$Info;)V", "<init>", "()V", "Info", "library_release"}, k = 1, mv = {1, 1, 15})
public final class DefaultConfig implements Serializable {
    private Map<String, String> appParam;
    private DeviceConfig deviceConfig;
    private Info info;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0011"}, d2 = {"Lcn/mucang/sundial/library/entity/DefaultConfig$Info;", "Ljava/io/Serializable;", "", "carNo", "Ljava/lang/String;", "getCarNo", "()Ljava/lang/String;", "setCarNo", "(Ljava/lang/String;)V", "phone", "getPhone", "setPhone", "serialNo", "getSerialNo", "setSerialNo", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Info implements Serializable {
        private String carNo;
        private String phone;
        private String serialNo;

        public final String getCarNo() {
            return this.carNo;
        }

        public final String getPhone() {
            return this.phone;
        }

        public final String getSerialNo() {
            return this.serialNo;
        }

        public final void setCarNo(String str) {
            this.carNo = str;
        }

        public final void setPhone(String str) {
            this.phone = str;
        }

        public final void setSerialNo(String str) {
            this.serialNo = str;
        }
    }

    public final Map<String, String> getAppParam() {
        return this.appParam;
    }

    public final DeviceConfig getDeviceConfig() {
        return this.deviceConfig;
    }

    public final Info getInfo() {
        return this.info;
    }

    public final void setAppParam(Map<String, String> map) {
        this.appParam = map;
    }

    public final void setDeviceConfig(DeviceConfig deviceConfig) {
        this.deviceConfig = deviceConfig;
    }

    public final void setInfo(Info info) {
        this.info = info;
    }

    public String toString() {
        String jSONString = JSON.toJSONString(this);
        r.d(jSONString, "JSON.toJSONString(this)");
        return jSONString;
    }
}
