package cn.mucang.sundial.android.tcp.message;

import cn.mucang.sundial.android.db.entity.DeviceParameter;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.utils.ArrayUtils;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class Parameter {
    public static final int BRIGHTNESS = 113;
    public static final int HEARTBEAT_TIMEOUT = 1;
    public static final int IMAGE_QUALITY = 112;
    public static final int LOCATION_REPORT_DISTANCE = 44;
    public static final int LOCATION_REPORT_INTERVAL = 41;
    public static final int LOCATION_REPORT_NO_DRIVER_DISTANCE = 45;
    public static final int LOCATION_REPORT_NO_DRIVER_INTERVAL = 34;
    public static final int LOCATION_REPORT_STRATEGY = 32;
    public static final int MILEAGE = 128;
    public static final int OVER_SPEED = 85;
    public static final int OVER_SPEED_TIME = 86;
    public static final int TCP_RETRY_TIME = 3;
    public static final int TCP_TIMEOUT = 2;
    private long parameterId;
    private byte[] value;

    private Parameter(long j) {
        DeviceUtils.checkDWORD(j);
        this.parameterId = j;
    }

    public static Parameter create(long j, String str) {
        Parameter parameter = new Parameter(j);
        new BytesEncoder().appendString(str);
        parameter.setValue(parameter.getBytesValue(str));
        return parameter;
    }

    public static Parameter from(long j, byte[] bArr) {
        Parameter parameter = new Parameter(j);
        parameter.setValue(bArr);
        return parameter;
    }

    private byte[] getBytesValue(String str) {
        Class<?> valueClass = getValueClass((int) this.parameterId);
        BytesEncoder bytesEncoder = new BytesEncoder();
        if (valueClass == Long.TYPE) {
            bytesEncoder.appendDWORD(Long.parseLong(str));
        } else if (valueClass == Integer.TYPE) {
            bytesEncoder.appendWORD(Integer.parseInt(str));
        } else if (valueClass == Byte.TYPE) {
            bytesEncoder.appendBYTE(Integer.parseInt(str));
        } else {
            bytesEncoder.appendString(str);
        }
        return bytesEncoder.toByteArray();
    }

    public static int getIntParameter(long j, int i) {
        Object deviceParameterValue = DataManager.getInstance().getDeviceParameterValue(j);
        if (deviceParameterValue instanceof Long) {
            Long l = (Long) deviceParameterValue;
            if (l.longValue() > 0) {
                return l.intValue();
            }
        }
        if (deviceParameterValue instanceof Integer) {
            Integer num = (Integer) deviceParameterValue;
            if (num.intValue() > 0) {
                return num.intValue();
            }
        }
        return i;
    }

    private Class<?> getValueClass(int i) {
        if (i != 24 && i != 25) {
            if (i == 132) {
                return Byte.TYPE;
            }
            if (i != 133) {
                switch (i) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        break;
                    default:
                        switch (i) {
                            case 32:
                            case 33:
                            case 34:
                                break;
                            default:
                                switch (i) {
                                    case 39:
                                    case 40:
                                    case 41:
                                        break;
                                    default:
                                        switch (i) {
                                            case 44:
                                            case 45:
                                            case 46:
                                            case 47:
                                            case 48:
                                                break;
                                            default:
                                                switch (i) {
                                                    case 69:
                                                    case 70:
                                                    case 71:
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case 80:
                                                            case 81:
                                                            case 82:
                                                            case 83:
                                                            case 84:
                                                            case 85:
                                                            case 86:
                                                            case 87:
                                                            case 88:
                                                            case 89:
                                                            case 90:
                                                                break;
                                                            default:
                                                                switch (i) {
                                                                    case 112:
                                                                    case 113:
                                                                    case 114:
                                                                    case 115:
                                                                    case 116:
                                                                        break;
                                                                    default:
                                                                        switch (i) {
                                                                            case 128:
                                                                                break;
                                                                            case 129:
                                                                            case 130:
                                                                                return Integer.TYPE;
                                                                            default:
                                                                                return String.class;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
        }
        return Long.TYPE;
    }

    private void setValue(byte[] bArr) {
        if (ArrayUtils.getLength(bArr) > 255) {
            throw new IllegalArgumentException("参数值的长度不能大于：255");
        }
        this.value = bArr;
    }

    public int getIntValue(int i) {
        Object objectValue = getObjectValue();
        if (objectValue instanceof Long) {
            return ((Long) objectValue).intValue();
        }
        return objectValue instanceof Integer ? ((Integer) objectValue).intValue() : i;
    }

    public long getLongValue(long j) {
        Object objectValue = getObjectValue();
        if (objectValue instanceof Long) {
            return ((Long) objectValue).longValue();
        }
        return objectValue instanceof Integer ? ((Integer) objectValue).longValue() : j;
    }

    public Object getObjectValue() {
        Class<?> valueClass = getValueClass((int) this.parameterId);
        if (valueClass == Long.TYPE) {
            return Long.valueOf(new BytesDecoder(this.value).readDWORD());
        }
        if (valueClass == Integer.TYPE) {
            return Integer.valueOf(new BytesDecoder(this.value).readWORD());
        }
        if (valueClass == Byte.TYPE) {
            return Byte.valueOf(this.value[0]);
        }
        try {
            return new String(this.value, "GBK");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public long getParameterId() {
        return this.parameterId;
    }

    public byte[] getValue() {
        return this.value;
    }

    public byte[] toBytes() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendDWORD(this.parameterId);
        bytesEncoder.appendBYTE(this.value.length);
        bytesEncoder.appendBytes(this.value);
        return bytesEncoder.toByteArray();
    }

    public static Parameter from(DeviceParameter deviceParameter) {
        Parameter parameter = new Parameter(deviceParameter.getParameterId());
        try {
            parameter.setValue(deviceParameter.getValue().getBytes("GBK"));
        } catch (UnsupportedEncodingException unused) {
            parameter.setValue(deviceParameter.getValue().getBytes());
        }
        return parameter;
    }
}
