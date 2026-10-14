package com.amap.api.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.amap.api.maps.model.MyLocationStyle;
import com.iflytek.cloud.SpeechConstant;
import com.loc.fi;
import com.loc.fp;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class AMapLocation extends Location implements Parcelable, Cloneable {
    public static final String COORD_TYPE_GCJ02 = "GCJ02";
    public static final String COORD_TYPE_WGS84 = "WGS84";
    public static final Parcelable.Creator<AMapLocation> CREATOR = new Parcelable.Creator<AMapLocation>() { // from class: com.amap.api.location.AMapLocation.1
        private static AMapLocation a(Parcel parcel) {
            AMapLocation aMapLocation = new AMapLocation((Location) Location.CREATOR.createFromParcel(parcel));
            aMapLocation.f10395h = parcel.readString();
            aMapLocation.i = parcel.readString();
            aMapLocation.w = parcel.readString();
            aMapLocation.f10390a = parcel.readString();
            aMapLocation.f10392e = parcel.readString();
            aMapLocation.f10394g = parcel.readString();
            aMapLocation.k = parcel.readString();
            aMapLocation.f10393f = parcel.readString();
            aMapLocation.p = parcel.readInt();
            aMapLocation.q = parcel.readString();
            aMapLocation.b = parcel.readString();
            aMapLocation.A = parcel.readInt() != 0;
            aMapLocation.o = parcel.readInt() != 0;
            aMapLocation.t = parcel.readDouble();
            aMapLocation.r = parcel.readString();
            aMapLocation.s = parcel.readInt();
            aMapLocation.u = parcel.readDouble();
            aMapLocation.y = parcel.readInt() != 0;
            aMapLocation.n = parcel.readString();
            aMapLocation.j = parcel.readString();
            aMapLocation.f10391d = parcel.readString();
            aMapLocation.l = parcel.readString();
            aMapLocation.v = parcel.readInt();
            aMapLocation.x = parcel.readInt();
            aMapLocation.m = parcel.readString();
            aMapLocation.z = parcel.readString();
            aMapLocation.B = parcel.readString();
            aMapLocation.C = parcel.readInt();
            aMapLocation.D = parcel.readInt();
            return aMapLocation;
        }

        private static AMapLocation[] a(int i) {
            return new AMapLocation[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocation createFromParcel(Parcel parcel) {
            return a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocation[] newArray(int i) {
            return a(i);
        }
    };
    public static final int ERROR_CODE_AIRPLANEMODE_WIFIOFF = 18;
    public static final int ERROR_CODE_FAILURE_AUTH = 7;
    public static final int ERROR_CODE_FAILURE_CELL = 11;
    public static final int ERROR_CODE_FAILURE_CONNECTION = 4;
    public static final int ERROR_CODE_FAILURE_INIT = 9;
    public static final int ERROR_CODE_FAILURE_LOCATION = 6;
    public static final int ERROR_CODE_FAILURE_LOCATION_PARAMETER = 3;
    public static final int ERROR_CODE_FAILURE_LOCATION_PERMISSION = 12;
    public static final int ERROR_CODE_FAILURE_NOENOUGHSATELLITES = 14;
    public static final int ERROR_CODE_FAILURE_NOWIFIANDAP = 13;
    public static final int ERROR_CODE_FAILURE_PARSER = 5;
    public static final int ERROR_CODE_FAILURE_SIMULATION_LOCATION = 15;
    public static final int ERROR_CODE_FAILURE_WIFI_INFO = 2;
    public static final int ERROR_CODE_INVALID_PARAMETER = 1;
    public static final int ERROR_CODE_NOCGI_WIFIOFF = 19;
    public static final int ERROR_CODE_NO_COMPENSATION_CACHE = 33;
    public static final int ERROR_CODE_SERVICE_FAIL = 10;
    public static final int ERROR_CODE_UNKNOWN = 8;
    public static final int GPS_ACCURACY_BAD = 0;
    public static final int GPS_ACCURACY_GOOD = 1;
    public static final int GPS_ACCURACY_UNKNOWN = -1;
    public static final int LOCATION_COMPENSATION = 10;
    public static final int LOCATION_SUCCESS = 0;
    public static final int LOCATION_TYPE_AMAP = 7;
    public static final int LOCATION_TYPE_CELL = 6;
    public static final int LOCATION_TYPE_FAST = 3;
    public static final int LOCATION_TYPE_FIX_CACHE = 4;
    public static final int LOCATION_TYPE_GPS = 1;
    public static final int LOCATION_TYPE_LAST_LOCATION_CACHE = 9;
    public static final int LOCATION_TYPE_OFFLINE = 8;
    public static final int LOCATION_TYPE_SAME_REQ = 2;
    public static final int LOCATION_TYPE_WIFI = 5;
    public static final int TRUSTED_LEVEL_BAD = 4;
    public static final int TRUSTED_LEVEL_HIGH = 1;
    public static final int TRUSTED_LEVEL_LOW = 3;
    public static final int TRUSTED_LEVEL_NORMAL = 2;
    private boolean A;
    private String B;
    private int C;
    private int D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f10390a;
    protected String b;
    AMapLocationQualityReport c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10392e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f10393f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f10394g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f10395h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private boolean o;
    private int p;
    private String q;
    private String r;
    private int s;
    private double t;
    private double u;
    private int v;
    private String w;
    private int x;
    private boolean y;
    private String z;

    public AMapLocation(Location location) {
        super(location);
        this.f10391d = "";
        this.f10392e = "";
        this.f10393f = "";
        this.f10394g = "";
        this.f10395h = "";
        this.i = "";
        this.j = "";
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = "";
        this.o = true;
        this.p = 0;
        this.q = "success";
        this.r = "";
        this.s = 0;
        this.t = 0.0d;
        this.u = 0.0d;
        this.v = 0;
        this.w = "";
        this.x = -1;
        this.y = false;
        this.z = "";
        this.A = false;
        this.f10390a = "";
        this.b = "";
        this.c = new AMapLocationQualityReport();
        this.B = COORD_TYPE_GCJ02;
        this.C = 1;
        this.t = location.getLatitude();
        this.u = location.getLongitude();
    }

    public AMapLocation(String str) {
        super(str);
        this.f10391d = "";
        this.f10392e = "";
        this.f10393f = "";
        this.f10394g = "";
        this.f10395h = "";
        this.i = "";
        this.j = "";
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = "";
        this.o = true;
        this.p = 0;
        this.q = "success";
        this.r = "";
        this.s = 0;
        this.t = 0.0d;
        this.u = 0.0d;
        this.v = 0;
        this.w = "";
        this.x = -1;
        this.y = false;
        this.z = "";
        this.A = false;
        this.f10390a = "";
        this.b = "";
        this.c = new AMapLocationQualityReport();
        this.B = COORD_TYPE_GCJ02;
        this.C = 1;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AMapLocation m123clone() {
        try {
            super.clone();
        } catch (Throwable unused) {
        }
        AMapLocation aMapLocation = new AMapLocation(this);
        try {
            aMapLocation.setLatitude(this.t);
            aMapLocation.setLongitude(this.u);
            aMapLocation.setAdCode(this.f10395h);
            aMapLocation.setAddress(this.i);
            aMapLocation.setAoiName(this.w);
            aMapLocation.setBuildingId(this.f10390a);
            aMapLocation.setCity(this.f10392e);
            aMapLocation.setCityCode(this.f10394g);
            aMapLocation.setCountry(this.k);
            aMapLocation.setDistrict(this.f10393f);
            aMapLocation.setErrorCode(this.p);
            aMapLocation.setErrorInfo(this.q);
            aMapLocation.setFloor(this.b);
            aMapLocation.setFixLastLocation(this.A);
            aMapLocation.setOffset(this.o);
            aMapLocation.setLocationDetail(this.r);
            aMapLocation.setLocationType(this.s);
            aMapLocation.setMock(this.y);
            aMapLocation.setNumber(this.n);
            aMapLocation.setPoiName(this.j);
            aMapLocation.setProvince(this.f10391d);
            aMapLocation.setRoad(this.l);
            aMapLocation.setSatellites(this.v);
            aMapLocation.setGpsAccuracyStatus(this.x);
            aMapLocation.setStreet(this.m);
            aMapLocation.setDescription(this.z);
            aMapLocation.setExtras(getExtras());
            AMapLocationQualityReport aMapLocationQualityReport = this.c;
            if (aMapLocationQualityReport != null) {
                aMapLocation.setLocationQualityReport(aMapLocationQualityReport.m125clone());
            }
            aMapLocation.setCoordType(this.B);
            aMapLocation.setTrustedLevel(this.C);
            aMapLocation.setConScenario(this.D);
        } catch (Throwable th) {
            fi.a(th, "AMapLocation", "clone");
        }
        return aMapLocation;
    }

    @Override // android.location.Location, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.location.Location
    public float getAccuracy() {
        return super.getAccuracy();
    }

    public String getAdCode() {
        return this.f10395h;
    }

    public String getAddress() {
        return this.i;
    }

    @Override // android.location.Location
    public double getAltitude() {
        return super.getAltitude();
    }

    public String getAoiName() {
        return this.w;
    }

    @Override // android.location.Location
    public float getBearing() {
        return super.getBearing();
    }

    public String getBuildingId() {
        return this.f10390a;
    }

    public String getCity() {
        return this.f10392e;
    }

    public String getCityCode() {
        return this.f10394g;
    }

    public int getConScenario() {
        return this.D;
    }

    public String getCoordType() {
        return this.B;
    }

    public String getCountry() {
        return this.k;
    }

    public String getDescription() {
        return this.z;
    }

    public String getDistrict() {
        return this.f10393f;
    }

    public int getErrorCode() {
        return this.p;
    }

    public String getErrorInfo() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.q);
        if (this.p != 0) {
            sb.append(" 请到http://lbs.amap.com/api/android-location-sdk/guide/utilities/errorcode/查看错误码说明");
            sb.append(",错误详细信息:" + this.r);
        }
        return sb.toString();
    }

    public String getFloor() {
        return this.b;
    }

    public int getGpsAccuracyStatus() {
        return this.x;
    }

    @Override // android.location.Location
    public double getLatitude() {
        return this.t;
    }

    public String getLocationDetail() {
        return this.r;
    }

    public AMapLocationQualityReport getLocationQualityReport() {
        return this.c;
    }

    public int getLocationType() {
        return this.s;
    }

    @Override // android.location.Location
    public double getLongitude() {
        return this.u;
    }

    public String getPoiName() {
        return this.j;
    }

    @Override // android.location.Location
    public String getProvider() {
        return super.getProvider();
    }

    public String getProvince() {
        return this.f10391d;
    }

    public String getRoad() {
        return this.l;
    }

    public int getSatellites() {
        return this.v;
    }

    @Override // android.location.Location
    public float getSpeed() {
        return super.getSpeed();
    }

    public String getStreet() {
        return this.m;
    }

    public String getStreetNum() {
        return this.n;
    }

    public int getTrustedLevel() {
        return this.C;
    }

    public boolean isFixLastLocation() {
        return this.A;
    }

    @Override // android.location.Location
    public boolean isMock() {
        return this.y;
    }

    public boolean isOffset() {
        return this.o;
    }

    public void setAdCode(String str) {
        this.f10395h = str;
    }

    public void setAddress(String str) {
        this.i = str;
    }

    public void setAoiName(String str) {
        this.w = str;
    }

    public void setBuildingId(String str) {
        this.f10390a = str;
    }

    public void setCity(String str) {
        this.f10392e = str;
    }

    public void setCityCode(String str) {
        this.f10394g = str;
    }

    public void setConScenario(int i) {
        this.D = i;
    }

    public void setCoordType(String str) {
        this.B = str;
    }

    public void setCountry(String str) {
        this.k = str;
    }

    public void setDescription(String str) {
        this.z = str;
    }

    public void setDistrict(String str) {
        this.f10393f = str;
    }

    public void setErrorCode(int i) {
        if (this.p != 0) {
            return;
        }
        this.q = fp.a(i);
        this.p = i;
    }

    public void setErrorInfo(String str) {
        this.q = str;
    }

    public void setFixLastLocation(boolean z) {
        this.A = z;
    }

    public void setFloor(String str) {
        if (!TextUtils.isEmpty(str)) {
            str = str.replace("F", "");
            try {
                Integer.parseInt(str);
            } catch (Throwable th) {
                fi.a(th, "AmapLoc", "setFloor");
                str = null;
            }
        }
        this.b = str;
    }

    public void setGpsAccuracyStatus(int i) {
        this.x = i;
    }

    @Override // android.location.Location
    public void setLatitude(double d2) {
        this.t = d2;
    }

    public void setLocationDetail(String str) {
        this.r = str;
    }

    public void setLocationQualityReport(AMapLocationQualityReport aMapLocationQualityReport) {
        if (aMapLocationQualityReport == null) {
            return;
        }
        this.c = aMapLocationQualityReport;
    }

    public void setLocationType(int i) {
        this.s = i;
    }

    @Override // android.location.Location
    public void setLongitude(double d2) {
        this.u = d2;
    }

    @Override // android.location.Location
    public void setMock(boolean z) {
        this.y = z;
    }

    public void setNumber(String str) {
        this.n = str;
    }

    public void setOffset(boolean z) {
        this.o = z;
    }

    public void setPoiName(String str) {
        this.j = str;
    }

    public void setProvince(String str) {
        this.f10391d = str;
    }

    public void setRoad(String str) {
        this.l = str;
    }

    public void setSatellites(int i) {
        this.v = i;
    }

    public void setStreet(String str) {
        this.m = str;
    }

    public void setTrustedLevel(int i) {
        this.C = i;
    }

    public JSONObject toJson(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return jSONObject;
                    }
                }
                jSONObject.put("provider", getProvider());
                jSONObject.put("lon", getLongitude());
                jSONObject.put("lat", getLatitude());
                jSONObject.put("accuracy", getAccuracy());
                jSONObject.put("isOffset", this.o);
                jSONObject.put("isFixLastLocation", this.A);
                jSONObject.put("coordType", this.B);
                return jSONObject;
            }
            try {
                jSONObject.put("altitude", getAltitude());
                jSONObject.put(SpeechConstant.SPEED, getSpeed());
                jSONObject.put("bearing", getBearing());
            } catch (Throwable unused) {
            }
            jSONObject.put("citycode", this.f10394g);
            jSONObject.put("adcode", this.f10395h);
            jSONObject.put("country", this.k);
            jSONObject.put("province", this.f10391d);
            jSONObject.put("city", this.f10392e);
            jSONObject.put("district", this.f10393f);
            jSONObject.put("road", this.l);
            jSONObject.put("street", this.m);
            jSONObject.put(Constant.LOGIN_ACTIVITY_NUMBER, this.n);
            jSONObject.put("poiname", this.j);
            jSONObject.put(MyLocationStyle.ERROR_CODE, this.p);
            jSONObject.put(MyLocationStyle.ERROR_INFO, this.q);
            jSONObject.put(MyLocationStyle.LOCATION_TYPE, this.s);
            jSONObject.put("locationDetail", this.r);
            jSONObject.put("aoiname", this.w);
            jSONObject.put("address", this.i);
            jSONObject.put("poiid", this.f10390a);
            jSONObject.put("floor", this.b);
            jSONObject.put(SocialConstants.PARAM_COMMENT, this.z);
            jSONObject.put("time", getTime());
            jSONObject.put("provider", getProvider());
            jSONObject.put("lon", getLongitude());
            jSONObject.put("lat", getLatitude());
            jSONObject.put("accuracy", getAccuracy());
            jSONObject.put("isOffset", this.o);
            jSONObject.put("isFixLastLocation", this.A);
            jSONObject.put("coordType", this.B);
            return jSONObject;
        } catch (Throwable th) {
            fi.a(th, "AmapLoc", "toStr");
            return null;
        }
    }

    public String toStr() {
        return toStr(1);
    }

    public String toStr(int i) {
        JSONObject json;
        try {
            json = toJson(i);
        } catch (Throwable th) {
            fi.a(th, "AMapLocation", "toStr part2");
            json = null;
        }
        if (json == null) {
            return null;
        }
        return json.toString();
    }

    @Override // android.location.Location
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append("latitude=" + this.t + "#");
            stringBuffer.append("longitude=" + this.u + "#");
            stringBuffer.append("province=" + this.f10391d + "#");
            stringBuffer.append("coordType=" + this.B + "#");
            stringBuffer.append("city=" + this.f10392e + "#");
            stringBuffer.append("district=" + this.f10393f + "#");
            stringBuffer.append("cityCode=" + this.f10394g + "#");
            stringBuffer.append("adCode=" + this.f10395h + "#");
            stringBuffer.append("address=" + this.i + "#");
            stringBuffer.append("country=" + this.k + "#");
            stringBuffer.append("road=" + this.l + "#");
            stringBuffer.append("poiName=" + this.j + "#");
            stringBuffer.append("street=" + this.m + "#");
            stringBuffer.append("streetNum=" + this.n + "#");
            stringBuffer.append("aoiName=" + this.w + "#");
            stringBuffer.append("poiid=" + this.f10390a + "#");
            stringBuffer.append("floor=" + this.b + "#");
            stringBuffer.append("errorCode=" + this.p + "#");
            stringBuffer.append("errorInfo=" + this.q + "#");
            stringBuffer.append("locationDetail=" + this.r + "#");
            stringBuffer.append("description=" + this.z + "#");
            stringBuffer.append("locationType=" + this.s + "#");
            StringBuilder sb = new StringBuilder("conScenario=");
            sb.append(this.D);
            stringBuffer.append(sb.toString());
        } catch (Throwable unused) {
        }
        return stringBuffer.toString();
    }

    @Override // android.location.Location, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        try {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f10395h);
            parcel.writeString(this.i);
            parcel.writeString(this.w);
            parcel.writeString(this.f10390a);
            parcel.writeString(this.f10392e);
            parcel.writeString(this.f10394g);
            parcel.writeString(this.k);
            parcel.writeString(this.f10393f);
            parcel.writeInt(this.p);
            parcel.writeString(this.q);
            parcel.writeString(this.b);
            int i2 = 1;
            parcel.writeInt(this.A ? 1 : 0);
            parcel.writeInt(this.o ? 1 : 0);
            parcel.writeDouble(this.t);
            parcel.writeString(this.r);
            parcel.writeInt(this.s);
            parcel.writeDouble(this.u);
            if (!this.y) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            parcel.writeString(this.n);
            parcel.writeString(this.j);
            parcel.writeString(this.f10391d);
            parcel.writeString(this.l);
            parcel.writeInt(this.v);
            parcel.writeInt(this.x);
            parcel.writeString(this.m);
            parcel.writeString(this.z);
            parcel.writeString(this.B);
            parcel.writeInt(this.C);
            parcel.writeInt(this.D);
        } catch (Throwable th) {
            fi.a(th, "AMapLocation", "writeToParcel");
        }
    }
}
