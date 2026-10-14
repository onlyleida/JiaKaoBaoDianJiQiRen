package cn.mucang.sundial.android.utils;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.sundial.android.log.SundialLog;
import com.iflytek.cloud.SpeechConstant;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\b\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u0010R\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcn/mucang/sundial/android/utils/DistanceUtil;", "", "", "distance", "", "mileageAccuracy", "optimization", "(DI)D", "", "", "args", "Lkotlin/v;", "main", "([Ljava/lang/String;)V", "srcData", "parseGpsData", "(Ljava/lang/String;)V", "dm", "dm2dd", "(Ljava/lang/String;)D", "times", "I", "gpsType", "Ljava/lang/String;", "getGpsType", "()Ljava/lang/String;", "setGpsType", "Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;", "gpsContent", "Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;", "getGpsContent", "()Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;", "setGpsContent", "(Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;)V", "lastDistance", "D", "<init>", "()V", "GpsContent", "base_release"}, k = 1, mv = {1, 1, 15})
public final class DistanceUtil {
    private static int times;
    public static final DistanceUtil INSTANCE = new DistanceUtil();
    private static double lastDistance = -1.0d;
    private static GpsContent gpsContent = new GpsContent();
    private static String gpsType = "";

    @Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b4\u00105R*\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0005\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\tR\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0005\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\tR\"\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\"\u0010\"\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b)\u0010+\"\u0004\b,\u0010-R\"\u0010.\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0019\u001a\u0004\b/\u0010\u001b\"\u0004\b0\u0010\u001dR\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u0005\u001a\u0004\b2\u0010\u0007\"\u0004\b3\u0010\t¨\u00066"}, d2 = {"Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;", "", "", "value", "angle", "I", "getAngle", "()I", "setAngle", "(I)V", "", SpeechConstant.SPEED, "F", "getSpeed", "()F", "setSpeed", "(F)V", "usedCnt", "getUsedCnt", "setUsedCnt", "viewCnt", "getViewCnt", "setViewCnt", "", "lat", "D", "getLat", "()D", "setLat", "(D)V", "altitude", "getAltitude", "setAltitude", "", "dateTime", "J", "getDateTime", "()J", "setDateTime", "(J)V", "", "isValid", "Z", "()Z", "setValid", "(Z)V", "lng", "getLng", "setLng", "state", "getState", "setState", "<init>", "()V", "base_release"}, k = 1, mv = {1, 1, 15})
    public static final class GpsContent {
        private double altitude;
        private int angle;
        private long dateTime;
        private boolean isValid;
        private double lat;
        private double lng;
        private float speed;
        private int state;
        private int usedCnt;
        private int viewCnt;

        public final double getAltitude() {
            return this.altitude;
        }

        public final int getAngle() {
            return this.angle;
        }

        public final long getDateTime() {
            return this.dateTime;
        }

        public final double getLat() {
            return this.lat;
        }

        public final double getLng() {
            return this.lng;
        }

        public final float getSpeed() {
            return this.speed;
        }

        public final int getState() {
            return this.state;
        }

        public final int getUsedCnt() {
            return this.usedCnt;
        }

        public final int getViewCnt() {
            return this.viewCnt;
        }

        /* JADX INFO: renamed from: isValid, reason: from getter */
        public final boolean getIsValid() {
            return this.isValid;
        }

        public final void setAltitude(double d2) {
            this.altitude = d2;
        }

        public final void setAngle(int i) {
            if (i < 0 || i > 359) {
                i = 0;
            }
            this.angle = i;
        }

        public final void setDateTime(long j) {
            this.dateTime = j;
        }

        public final void setLat(double d2) {
            this.lat = d2;
        }

        public final void setLng(double d2) {
            this.lng = d2;
        }

        public final void setSpeed(float f2) {
            this.speed = f2;
        }

        public final void setState(int i) {
            this.state = i;
        }

        public final void setUsedCnt(int i) {
            this.usedCnt = i;
        }

        public final void setValid(boolean z) {
            this.isValid = z;
        }

        public final void setViewCnt(int i) {
            this.viewCnt = i;
        }
    }

    private DistanceUtil() {
    }

    public static final void main(String[] args) {
        r.e(args, "args");
        parseGpsData("3,71,69,70,85,,,,,,,1.17,0.67,0.96*11\nGPGSV,4,1,16,02,54,073,39,05,68,334,45,06,12,100,38,11,46,072,32*71\nGPGSV,4,2,16,12,13,211,38,13,49,149,34,15,30,196,45,18,07,298,26*75\nGPGSV,4,3,16GNRMC,105824.00,A,3048.86972,N,10357.49120,E,0.533,285.37,160522,,,D*70\nGNVTG,285.37,T,,M,0.533,N,0.987,K,D*2E\nGNGGA,105824.00,3048.86972,N,10357.49120,E,2,12,0.69,529.6,M,-30.1,M,,0000*6");
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    public static final double optimization(double distance, int mileageAccuracy) {
        int i = 1000 / (mileageAccuracy > 0 ? mileageAccuracy : 100);
        double d2 = ((double) mileageAccuracy) / 1000.0d;
        double d3 = lastDistance;
        if (d3 != -1.0d) {
            double d4 = i;
            if (((int) (distance * d4)) == ((int) (d3 * d4))) {
                times++;
            } else {
                times = 0;
            }
        } else {
            times = 0;
        }
        if (times >= 3) {
            double d5 = 0;
            if (distance > d5) {
                double d6 = distance - d2;
                if (d6 >= d2) {
                    SundialLog.normal("里程优化第" + (times + 1) + "次：大于最小精度时，减去最小精度，" + distance + " - " + d2 + " = " + d6);
                    distance = d6;
                } else if (d6 >= d5) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("里程优化第");
                    sb.append(times + 1);
                    sb.append("次：等于最小精度时，加上最小精度，");
                    sb.append(distance);
                    sb.append(" + ");
                    sb.append(d2);
                    sb.append(" = ");
                    distance += d2;
                    sb.append(distance);
                    SundialLog.normal(sb.toString());
                }
                times = 0;
            }
        }
        lastDistance = distance;
        return distance;
    }

    public static final void parseGpsData(String srcData) {
        if (srcData == null || srcData.length() == 0) {
            return;
        }
        try {
            Iterator it = StringsKt__StringsKt.p0(srcData, new String[]{"\n"}, false, 0, 6, null).iterator();
            while (it.hasNext()) {
                Object[] array = StringsKt__StringsKt.p0((String) it.next(), new String[]{","}, false, 20, 2, null).toArray(new String[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                String[] strArr = (String[]) array;
                if (strArr.length >= 12 && StringsKt__StringsKt.G(strArr[0], "GGA", false, 2, null)) {
                    if (strArr[2].length() > 0) {
                        gpsContent.setLat(INSTANCE.dm2dd(strArr[2]));
                    }
                    if (strArr[4].length() > 0) {
                        gpsContent.setLng(INSTANCE.dm2dd(strArr[4]));
                    }
                    if (strArr[6].length() > 0) {
                        GpsContent gpsContent2 = gpsContent;
                        Integer numValueOf = Integer.valueOf(strArr[6]);
                        r.d(numValueOf, "Integer.valueOf(sValues[6])");
                        gpsContent2.setState(numValueOf.intValue());
                    }
                    if (strArr[7].length() > 0) {
                        GpsContent gpsContent3 = gpsContent;
                        Integer numValueOf2 = Integer.valueOf(strArr[7]);
                        r.d(numValueOf2, "Integer.valueOf(sValues[7])");
                        gpsContent3.setUsedCnt(numValueOf2.intValue());
                    }
                    if (strArr[9].length() > 0) {
                        GpsContent gpsContent4 = gpsContent;
                        Double dValueOf = Double.valueOf(strArr[9]);
                        r.d(dValueOf, "java.lang.Double.valueOf(sValues[9])");
                        gpsContent4.setAltitude(dValueOf.doubleValue());
                    }
                } else if (strArr.length >= 7 && StringsKt__StringsKt.G(strArr[0], "GSV", false, 2, null)) {
                    if (strArr[3].length() > 0) {
                        GpsContent gpsContent5 = gpsContent;
                        Integer numValueOf3 = Integer.valueOf(strArr[3]);
                        r.d(numValueOf3, "Integer.valueOf(sValues[3])");
                        gpsContent5.setViewCnt(numValueOf3.intValue());
                    }
                    if (strArr[6].length() > 0) {
                        GpsContent gpsContent6 = gpsContent;
                        Integer numValueOf4 = Integer.valueOf(strArr[6]);
                        r.d(numValueOf4, "Integer.valueOf(sValues[6])");
                        gpsContent6.setAngle(numValueOf4.intValue());
                    }
                } else if (strArr.length >= 12 && StringsKt__StringsKt.G(strArr[0], "RMC", false, 2, null)) {
                    if (r.a(strArr[2], ExifInterface.GPS_MEASUREMENT_IN_PROGRESS)) {
                        gpsContent.setValid(true);
                        if (strArr[7].length() > 0) {
                            GpsContent gpsContent7 = gpsContent;
                            Float fValueOf = Float.valueOf(strArr[7]);
                            r.d(fValueOf, "java.lang.Float.valueOf(sValues[7])");
                            gpsContent7.setSpeed(fValueOf.floatValue() * 0.5145f);
                        }
                        if (strArr[11].length() > 0) {
                            GpsContent gpsContent8 = gpsContent;
                            Integer numValueOf5 = Integer.valueOf(strArr[11]);
                            r.d(numValueOf5, "Integer.valueOf(sValues[11])");
                            gpsContent8.setAngle(numValueOf5.intValue());
                        }
                    } else {
                        gpsContent.setValid(false);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public final double dm2dd(String dm) {
        r.e(dm, "dm");
        int iS = StringsKt__StringsKt.S(dm, '.', 0, false, 6, null);
        if (iS < 2) {
            return 0.0d;
        }
        int i = iS - 2;
        String strSubstring = dm.substring(0, i);
        r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        double dIntValue = Integer.valueOf(strSubstring).intValue();
        String strSubstring2 = dm.substring(i);
        r.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        return dIntValue + (Double.valueOf(strSubstring2).doubleValue() / 60.0d);
    }

    public final GpsContent getGpsContent() {
        return gpsContent;
    }

    public final String getGpsType() {
        return gpsType;
    }

    public final void setGpsContent(GpsContent gpsContent2) {
        r.e(gpsContent2, "<set-?>");
        gpsContent = gpsContent2;
    }

    public final void setGpsType(String str) {
        r.e(str, "<set-?>");
        gpsType = str;
    }
}
