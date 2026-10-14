package cn.mucang.android.selectcity;

import android.os.Parcel;
import android.os.Parcelable;
import cn.mucang.jiakaoyi.uilib.ui.billing.StudentModel;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes4.dex */
public class Area implements Parcelable {
    private String areaCode;
    private String areaName;
    private boolean disableDelete;
    private String disableDeleteReason;
    private String firstLetter;
    private String fullAreaName;
    private boolean isAdministeredCounty;
    private boolean isMunicipality;
    private String parentCode;
    private String pinyin;
    public static final Area WHOLE_COUNTRY = new Area(StudentModel.DefaultID, "全国", "quanguo", true, Marker.ANY_MARKER, StudentModel.DefaultID, false);
    public static final Parcelable.Creator<Area> CREATOR = new a();

    class a implements Parcelable.Creator<Area> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Area createFromParcel(Parcel parcel) {
            return new Area(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Area[] newArray(int i) {
            return new Area[i];
        }
    }

    /* synthetic */ Area(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.areaCode.equals(((Area) obj).areaCode);
    }

    public String getAreaCode() {
        return this.areaCode;
    }

    public String getAreaName() {
        return this.areaName;
    }

    public String getDisableDeleteReason() {
        return this.disableDeleteReason;
    }

    public String getFirstLetter() {
        return this.firstLetter;
    }

    public String getFullAreaName() {
        return this.fullAreaName;
    }

    public String getParentCode() {
        return this.parentCode;
    }

    public String getPinyin() {
        return this.pinyin;
    }

    public int hashCode() {
        return this.areaCode.hashCode();
    }

    public boolean isAdministeredCounty() {
        return this.isAdministeredCounty;
    }

    public boolean isDisableDelete() {
        return this.disableDelete;
    }

    public boolean isMunicipality() {
        return this.isMunicipality;
    }

    public void setAreaCode(String str) {
        this.areaCode = str;
    }

    public void setAreaName(String str) {
        this.areaName = str;
    }

    public void setDisableDelete(boolean z) {
        this.disableDelete = z;
    }

    public void setDisableDeleteReason(String str) {
        this.disableDeleteReason = str;
    }

    public void setFirstLetter(String str) {
        this.firstLetter = str;
    }

    public void setFullAreaName(String str) {
        this.fullAreaName = str;
    }

    public void setIsAdministeredCounty(boolean z) {
        this.isAdministeredCounty = z;
    }

    public void setIsMunicipality(boolean z) {
        this.isMunicipality = z;
    }

    public void setParentCode(String str) {
        this.parentCode = str;
    }

    public void setPinyin(String str) {
        this.pinyin = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.areaCode);
        parcel.writeString(this.areaName);
        parcel.writeString(this.pinyin);
        parcel.writeByte(this.isMunicipality ? (byte) 1 : (byte) 0);
        parcel.writeString(this.firstLetter);
        parcel.writeString(this.parentCode);
        parcel.writeByte(this.isAdministeredCounty ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.disableDelete ? (byte) 1 : (byte) 0);
        parcel.writeString(this.disableDeleteReason);
        parcel.writeString(this.fullAreaName);
    }

    public Area() {
        this.areaCode = "110000";
        this.areaName = "北京市";
    }

    public Area(String str, String str2) {
        this.areaCode = str;
        this.areaName = str2;
        this.fullAreaName = str2;
    }

    public Area(String str, String str2, String str3, boolean z, String str4, String str5, boolean z2) {
        this(str, str2, str3, z, str4, str5, z2, str2);
    }

    public Area(String str, String str2, String str3, boolean z, String str4, String str5, boolean z2, String str6) {
        this.areaCode = str;
        this.areaName = str2;
        this.pinyin = str3;
        this.isMunicipality = z;
        this.firstLetter = str4;
        this.parentCode = str5;
        this.isAdministeredCounty = z2;
        this.fullAreaName = str6;
    }

    private Area(Parcel parcel) {
        this.areaCode = parcel.readString();
        this.areaName = parcel.readString();
        this.pinyin = parcel.readString();
        this.isMunicipality = parcel.readByte() == 1;
        this.firstLetter = parcel.readString();
        this.parentCode = parcel.readString();
        this.isAdministeredCounty = parcel.readByte() == 1;
        this.disableDelete = parcel.readByte() == 1;
        this.disableDeleteReason = parcel.readString();
        this.fullAreaName = parcel.readString();
    }
}
