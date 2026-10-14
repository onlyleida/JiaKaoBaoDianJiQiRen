package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import com.mobile.auth.gatewayauth.ResultCode;

/* JADX INFO: loaded from: classes5.dex */
public class RegisterResponse extends BaseReceiveMessage implements ReceiveMessage {
    private RegisterInfo registerInfo;
    private int responseSerialNo;
    private Result result;

    public enum Result {
        SUCCESS(0, ResultCode.MSG_SUCCESS),
        VEHICLE_REGISTERED(1, "车辆已被注册"),
        VEHICLE_NOT_FOUND(2, "数据库中无该车辆"),
        DEVICE_REGISTERED(3, "终端已被注册"),
        DEVICE_NOT_FOUND(4, "数据库中无该终端");

        public final String message;
        final int value;

        Result(int i, String str) {
            this.value = i;
            this.message = str;
        }
    }

    private Result findResultByValue(int i) {
        for (Result result : Result.values()) {
            if (result.value == i) {
                return result;
            }
        }
        throw new IllegalArgumentException("注册终端，服务器返回非法的value:" + i);
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33024;
    }

    public RegisterInfo getRegisterInfo() {
        return this.registerInfo;
    }

    public int getResponseSerialNo() {
        return this.responseSerialNo;
    }

    public Result getResult() {
        return this.result;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.responseSerialNo = bytesDecoder.readWORD();
        Result resultFindResultByValue = findResultByValue(bytesDecoder.readBYTE());
        this.result = resultFindResultByValue;
        if (resultFindResultByValue == Result.SUCCESS) {
            RegisterInfo registerInfo = new RegisterInfo();
            registerInfo.setPlatformCode(bytesDecoder.readString(5));
            registerInfo.setInsCode(bytesDecoder.readString(16));
            registerInfo.setDeviceCode(bytesDecoder.readString(16));
            registerInfo.setCertPassword(bytesDecoder.readString(12));
            registerInfo.setDeviceCertificate(bytesDecoder.readString());
            if (DeviceUtils.readPrivateKey(registerInfo) == null) {
                throw new IllegalArgumentException("服务器返回的证书格式非法");
            }
            this.registerInfo = registerInfo;
        }
    }
}
