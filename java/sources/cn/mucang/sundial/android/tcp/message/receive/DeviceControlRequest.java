package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;
import com.iflytek.speech.VoiceWakeuperAidl;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceControlRequest extends BaseReceiveMessage implements ReceiveMessage {
    private static final int MESSAGE_ID = 33029;
    private DeviceControl control;

    public static class ConnectControl extends DeviceControl {
        private String apn;
        private String authCode;
        private int connectDuration;
        private int control;
        private String ip;
        private String password;
        private Integer tcpPort;
        private Integer udpPort;
        private String username;

        public ConnectControl(byte[] bArr) {
            BytesDecoder bytesDecoder = new BytesDecoder(bArr);
            bytesDecoder.readBYTE();
            int i = bytesDecoder.readBYTE();
            this.control = i;
            if (i != 1) {
                String[] strArrSplit = bytesDecoder.readString().split(VoiceWakeuperAidl.PARAMS_SEPARATE);
                this.authCode = strArrSplit[0];
                this.apn = strArrSplit[1];
                this.username = strArrSplit[2];
                this.password = strArrSplit[3];
                this.ip = strArrSplit[4];
                if (n0.g(strArrSplit[5])) {
                    this.tcpPort = Integer.valueOf(strArrSplit[5]);
                }
                if (n0.g(strArrSplit[6])) {
                    this.udpPort = Integer.valueOf(strArrSplit[6]);
                }
                if (n0.g(strArrSplit[7])) {
                    this.connectDuration = Integer.parseInt(strArrSplit[7]);
                }
            }
        }

        public String getApn() {
            return this.apn;
        }

        public String getAuthCode() {
            return this.authCode;
        }

        public int getConnectDuration() {
            return this.connectDuration;
        }

        public int getControl() {
            return this.control;
        }

        public String getIp() {
            return this.ip;
        }

        public String getPassword() {
            return this.password;
        }

        public Integer getTcpPort() {
            return this.tcpPort;
        }

        public Integer getUdpPort() {
            return this.udpPort;
        }

        public String getUsername() {
            return this.username;
        }
    }

    public static abstract class DeviceControl {
        public int getId() {
            return DeviceControlRequest.MESSAGE_ID;
        }
    }

    public static class FlightModeControl extends DeviceControl {
    }

    public static class PowerOffControl extends DeviceControl {
    }

    public static class RecoverControl extends DeviceControl {
    }

    public static class ResetControl extends DeviceControl {
    }

    public static class TurnOffConnectivityControl extends DeviceControl {
    }

    public static class UpdateControl extends DeviceControl {
        private String apn;
        private int connectDuration;
        private String firmwareVersion;
        private String hardwareVersion;
        private String ip;
        private String manufacturer;
        private String password;
        private Integer tcpPort;
        private Integer udpPort;
        private String url;
        private String username;

        public UpdateControl(byte[] bArr) {
            this.tcpPort = null;
            BytesDecoder bytesDecoder = new BytesDecoder(bArr);
            bytesDecoder.readBYTE();
            String[] strArrSplit = bytesDecoder.readString().split(VoiceWakeuperAidl.PARAMS_SEPARATE);
            this.url = strArrSplit[0];
            this.apn = strArrSplit[1];
            this.username = strArrSplit[2];
            this.password = strArrSplit[3];
            this.ip = strArrSplit[4];
            if (n0.g(strArrSplit[5])) {
                this.tcpPort = Integer.valueOf(strArrSplit[5]);
            }
            if (n0.g(strArrSplit[6])) {
                this.udpPort = Integer.valueOf(strArrSplit[6]);
            }
            this.manufacturer = strArrSplit[7];
            this.hardwareVersion = strArrSplit[8];
            this.firmwareVersion = strArrSplit[9];
            if (n0.g(strArrSplit[10])) {
                this.connectDuration = Integer.parseInt(strArrSplit[10]);
            }
        }

        public String getApn() {
            return this.apn;
        }

        public int getConnectDuration() {
            return this.connectDuration;
        }

        public String getFirmwareVersion() {
            return this.firmwareVersion;
        }

        public String getHardwareVersion() {
            return this.hardwareVersion;
        }

        public String getIp() {
            return this.ip;
        }

        public String getManufacturer() {
            return this.manufacturer;
        }

        public String getPassword() {
            return this.password;
        }

        public Integer getTcpPort() {
            return this.tcpPort;
        }

        public Integer getUdpPort() {
            return this.udpPort;
        }

        public String getUrl() {
            return this.url;
        }

        public String getUsername() {
            return this.username;
        }
    }

    private static void appendIfNotNull(BytesEncoder bytesEncoder, Object obj) {
        appendIfNotNull(bytesEncoder, obj, true);
    }

    public DeviceControl getControl() {
        return this.control;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return MESSAGE_ID;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        switch (bArr[0]) {
            case 1:
                this.control = new UpdateControl(bArr);
                break;
            case 2:
                this.control = new ConnectControl(bArr);
                break;
            case 3:
                this.control = new PowerOffControl();
                break;
            case 4:
                this.control = new ResetControl();
                break;
            case 5:
                this.control = new RecoverControl();
                break;
            case 6:
                this.control = new TurnOffConnectivityControl();
                break;
            case 7:
                this.control = new FlightModeControl();
                break;
        }
    }

    private static void appendIfNotNull(BytesEncoder bytesEncoder, Object obj, boolean z) {
        if (obj != null) {
            if (obj instanceof String) {
                bytesEncoder.appendString((String) obj);
            } else if (obj instanceof Integer) {
                bytesEncoder.appendString(String.valueOf(obj));
            } else if (obj instanceof byte[]) {
                bytesEncoder.appendString(new String((byte[]) obj));
            }
        }
        if (z) {
            bytesEncoder.appendBYTE(59);
        }
    }

    private static void appendIfNotNull(StringBuilder sb, Object obj) {
        appendIfNotNull(sb, obj, true);
    }

    private static void appendIfNotNull(StringBuilder sb, Object obj, boolean z) {
        if (obj != null) {
            if (obj instanceof byte[]) {
                sb.append(new String((byte[]) obj));
            } else {
                sb.append(obj);
            }
        }
        if (z) {
            sb.append(';');
        }
    }
}
