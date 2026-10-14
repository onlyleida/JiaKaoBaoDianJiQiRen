package cn.mucang.android.jiakaoyi.teachingk2.model;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class TeachPlanItemModel implements Serializable {
    public long examSiteId;
    public int gearType;
    public long id;
    public int newCarTypeId;
    public String newCarTypeName;
    public String programmeName;
    public long schoolId;
    public String universalModelName;
    public int universalModelNum;
    public int version;

    public TeachPlanItemModel copy() {
        TeachPlanItemModel teachPlanItemModel = new TeachPlanItemModel();
        teachPlanItemModel.examSiteId = this.examSiteId;
        teachPlanItemModel.id = this.id;
        teachPlanItemModel.programmeName = this.programmeName;
        teachPlanItemModel.schoolId = this.schoolId;
        teachPlanItemModel.gearType = this.gearType;
        teachPlanItemModel.universalModelNum = this.universalModelNum;
        teachPlanItemModel.universalModelName = this.universalModelName;
        return teachPlanItemModel;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TeachPlanItemModel teachPlanItemModel = (TeachPlanItemModel) obj;
        return this.newCarTypeId == teachPlanItemModel.newCarTypeId && this.examSiteId == teachPlanItemModel.examSiteId && this.id == teachPlanItemModel.id && this.version == teachPlanItemModel.version && this.schoolId == teachPlanItemModel.schoolId && this.gearType == teachPlanItemModel.gearType && this.universalModelNum == teachPlanItemModel.universalModelNum && Objects.equals(this.newCarTypeName, teachPlanItemModel.newCarTypeName) && Objects.equals(this.universalModelName, teachPlanItemModel.universalModelName) && Objects.equals(this.programmeName, teachPlanItemModel.programmeName);
    }

    @JSONField(serialize = false)
    public String getVersionText() {
        if (this.version < 2) {
            return "V1.0";
        }
        return ExifInterface.GPS_MEASUREMENT_INTERRUPTED + this.version + ".0";
    }
}
