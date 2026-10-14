package cn.mucang.sundial.android.tcp.data;

import android.content.ContentValues;
import android.text.TextUtils;
import cn.mucang.android.core.db.a;
import cn.mucang.android.core.db.e;
import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.android.db.SundialDb;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.CourseRecord;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.db.entity.DeviceParameter;
import cn.mucang.sundial.android.db.entity.Gnss;
import cn.mucang.sundial.android.db.entity.PhotoRecord;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.PreferenceUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class DataManager {
    private CoachInfo coachInfo;
    private DeviceConfig deviceConfig;
    private DeviceInfo deviceInfo;
    private RegisterInfo registerInfo;
    private StudentInfo studentInfo;

    private static class DataManagerHolder {
        private static final DataManager sInstance = new DataManager();

        private DataManagerHolder() {
        }
    }

    private a getDb() {
        return SundialDb.getInstance().getDb();
    }

    public static DataManager getInstance() {
        return DataManagerHolder.sInstance;
    }

    private void updateDeviceParameterByDeviceInfo(DeviceInfo deviceInfo) {
        saveDeviceParameter(Parameter.create(131L, deviceInfo.getCarNo()));
    }

    public void clearPhotoRecord(String str) {
        SundialDb.getInstance().getDb().j(PhotoRecord.class, " photo_id = ? ", new String[]{str});
    }

    public void clearRegisterInfo() {
        SundialDb.getInstance().getDb().j(RegisterInfo.class, "", null);
        this.registerInfo = null;
    }

    public void deleteAllUploadedCourseRecord() {
        SundialDb.getInstance().getDb().k("t_course_record", "upload_status=?", new String[]{"1"});
    }

    public int deletePhotoRecordBefore(long j) {
        return SundialDb.getInstance().getDb().j(PhotoRecord.class, "record_time < ?", new String[]{String.valueOf(j)});
    }

    public void deleteStudent(Long l) {
        SundialDb.getInstance().getDb().h(StudentInfo.class, l.longValue());
    }

    public int deleteUploadedCourseRecordBefore(long j) {
        return SundialDb.getInstance().getDb().j(CourseRecord.class, "record_time < ?", new String[]{String.valueOf(j)});
    }

    public boolean deviceConfigSpeechExtraInfo() {
        DeviceConfig deviceConfig = getDeviceConfig();
        return deviceConfig == null || deviceConfig.getSpeakExtraInfo() == 1;
    }

    public long deviceParameterCount() {
        return SundialDb.getInstance().getDb().e(DeviceParameter.class);
    }

    public CoachInfo getCoachInfo(String str) {
        return (CoachInfo) SundialDb.getInstance().getDb().n(CoachInfo.class, e.d("select * from t_coach_info where coach_no = ?", str));
    }

    public List<CourseRecord> getCourseRecordByCount(int i, boolean z) {
        String str = z ? " where upload_status != 1 " : "";
        return SundialDb.getInstance().getDb().y(CourseRecord.class, e.d("select * from t_course_record" + str + " order by record_time desc limit ?", String.valueOf(i)));
    }

    public List<CourseRecord> getCourseRecordByTime(long j, long j2) {
        return SundialDb.getInstance().getDb().y(CourseRecord.class, e.d("select * from t_course_record where record_time >= ? and record_time < ?", String.valueOf(j), String.valueOf(j2)));
    }

    public DeviceConfig getDeviceConfig() {
        if (this.deviceConfig == null) {
            this.deviceConfig = (DeviceConfig) SundialDb.getInstance().getDb().n(DeviceConfig.class, e.d("select * from t_device_config", new String[0]));
        }
        return this.deviceConfig;
    }

    public DeviceInfo getDeviceInfo() {
        DeviceInfo deviceInfo = this.deviceInfo;
        if (deviceInfo == null) {
            DeviceInfo deviceInfo2 = (DeviceInfo) SundialDb.getInstance().getDb().n(DeviceInfo.class, e.d("select * from t_device_info", new String[0]));
            this.deviceInfo = deviceInfo2;
            if (deviceInfo2 != null && n0.e(deviceInfo2.getImei())) {
                this.deviceInfo.setImei(DeviceUtils.getImei());
            }
        } else {
            String imei = deviceInfo.getImei();
            String imei2 = DeviceUtils.getImei();
            if (n0.e(imei) || (n0.g(imei2) && !imei2.equals(imei))) {
                this.deviceInfo.setImei(imei2);
            }
        }
        return this.deviceInfo;
    }

    public Object getDeviceParameterValue(long j) {
        DeviceParameter deviceParameter = (DeviceParameter) SundialDb.getInstance().getDb().n(DeviceParameter.class, e.d("select * from t_device_parameter where parameter_id = ?", String.valueOf(j)));
        if (deviceParameter != null) {
            return Parameter.from(deviceParameter).getObjectValue();
        }
        return null;
    }

    public CoachInfo getLastCoach() {
        List listY;
        if (this.coachInfo == null && (listY = SundialDb.getInstance().getDb().y(CoachInfo.class, e.d("select * from t_coach_info order by update_time desc", new String[0]))) != null && listY.size() > 0) {
            this.coachInfo = (CoachInfo) listY.get(0);
        }
        return this.coachInfo;
    }

    public StudentInfo getLastStudent() {
        List listY;
        if (this.studentInfo == null && (listY = SundialDb.getInstance().getDb().y(StudentInfo.class, e.d("select * from t_student_info order by update_time desc", new String[0]))) != null && listY.size() > 0) {
            this.studentInfo = (StudentInfo) listY.get(0);
        }
        return this.studentInfo;
    }

    public List<StudentInfo> getLastTenStudentInfo(long j) {
        List<StudentInfo> listY = SundialDb.getInstance().getDb().y(StudentInfo.class, e.d("select * from t_student_info where update_time > " + j + " order by update_time desc limit 30", new String[0]));
        return listY != null ? listY : new ArrayList();
    }

    public PhotoRecord getPhotoRecord(String str) {
        return (PhotoRecord) SundialDb.getInstance().getDb().n(PhotoRecord.class, e.d("select * from t_photo_record where photo_id = ?", str));
    }

    public List<PhotoRecord> getPhotoRecordByClassroom(long j) {
        return SundialDb.getInstance().getDb().y(PhotoRecord.class, e.d("select * from t_photo_record where classroom_id = ? and upload_status = ?", String.valueOf(j), "0"));
    }

    public List<PhotoRecord> getPhotoRecordByTime(long j, long j2) {
        return SundialDb.getInstance().getDb().y(PhotoRecord.class, e.d("select * from t_photo_record where record_time >= ? and record_time < ? and upload_mode != -1", String.valueOf(j), String.valueOf(j2)));
    }

    public List<Gnss> getRecentGnssData(int i) {
        return getDb().y(Gnss.class, e.d("select * from t_gnss where upload_status != 1 order by create_time desc limit ?", String.valueOf(i)));
    }

    public RegisterInfo getRegisterInfo() {
        if (this.registerInfo == null) {
            this.registerInfo = (RegisterInfo) SundialDb.getInstance().getDb().n(RegisterInfo.class, e.d("select * from t_register_info", new String[0]));
        }
        return this.registerInfo;
    }

    public StudentInfo getStudentInfo(String str) {
        return (StudentInfo) SundialDb.getInstance().getDb().n(StudentInfo.class, e.d("select * from t_student_info where student_no = ?", str));
    }

    public void insertCourseRecord(CourseRecord courseRecord) {
        deleteUploadedCourseRecordBefore(courseRecord.getRecordTime() - TimeUnit.DAYS.toMillis(3L));
        SundialDb.getInstance().getDb().u(courseRecord);
    }

    public boolean isTrainingDisable() {
        return PreferenceUtils.getBoolean(PreferenceUtils.KEY_DISABLE_TRAINING_STATUS, false);
    }

    public void removeOldGnssData() {
        getDb().j(Gnss.class, "create_time < ?", new String[]{String.valueOf(System.currentTimeMillis() - 172800000)});
    }

    public void saveCoach(CoachInfo coachInfo) {
        if (coachInfo == null || !coachInfo.infoValid()) {
            return;
        }
        CoachInfo coachInfo2 = (CoachInfo) SundialDb.getInstance().getDb().n(CoachInfo.class, e.d("select * from t_coach_info where coach_no = ?", coachInfo.getCoachNo()));
        if (coachInfo2 == null) {
            SundialDb.getInstance().getDb().u(coachInfo);
        } else {
            coachInfo.setId(coachInfo2.getId());
            SundialDb.getInstance().getDb().E(coachInfo);
        }
        this.coachInfo = coachInfo;
    }

    public void saveDeviceConfig(DeviceConfig deviceConfig) {
        this.deviceConfig = null;
        DeviceConfig deviceConfig2 = (DeviceConfig) SundialDb.getInstance().getDb().n(DeviceConfig.class, e.d("select * from t_device_config", new String[0]));
        if (deviceConfig2 == null) {
            SundialDb.getInstance().getDb().u(deviceConfig);
        } else {
            deviceConfig.setId(deviceConfig2.getId());
            SundialDb.getInstance().getDb().E(deviceConfig);
        }
    }

    public void saveDeviceParameter(Map<String, String> map) {
        if (map == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            try {
                if (!n0.e(entry.getValue())) {
                    int iIntValue = Integer.decode(entry.getKey()).intValue();
                    arrayList2.add(String.valueOf(iIntValue));
                    arrayList.add(DeviceParameter.from(Parameter.create(iIntValue, entry.getValue())));
                }
            } catch (Exception unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        SundialDb.getInstance().getDb().j(DeviceParameter.class, "parameter_id in (" + TextUtils.join(",", arrayList2) + ")", null);
        SundialDb.getInstance().getDb().v(arrayList);
    }

    public void saveGnss(Gnss gnss) {
        getDb().w(gnss);
    }

    public void savePhotoRecord(PhotoRecord photoRecord) {
        if (photoRecord == null) {
            return;
        }
        PhotoRecord photoRecord2 = getPhotoRecord(photoRecord.getPhotoId());
        if (photoRecord2 == null) {
            SundialDb.getInstance().getDb().u(photoRecord);
        } else {
            photoRecord.setId(photoRecord2.getId());
            SundialDb.getInstance().getDb().E(photoRecord);
        }
    }

    public void saveRegisterInfo(RegisterInfo registerInfo) {
        SundialDb.getInstance().getDb().w(registerInfo);
        this.registerInfo = null;
    }

    public void saveStudent(StudentInfo studentInfo) {
        if (studentInfo == null || !studentInfo.infoValid()) {
            return;
        }
        StudentInfo studentInfo2 = (StudentInfo) SundialDb.getInstance().getDb().n(StudentInfo.class, e.d("select * from t_student_info where student_no = ?", studentInfo.getStudentNo()));
        if (studentInfo2 == null) {
            SundialDb.getInstance().getDb().u(studentInfo);
        } else {
            studentInfo.setId(studentInfo2.getId());
            SundialDb.getInstance().getDb().E(studentInfo);
        }
        this.studentInfo = studentInfo;
    }

    public void setPhotoRecordUploaded(String str) {
        PhotoRecord photoRecord = getPhotoRecord(str);
        if (photoRecord != null) {
            photoRecord.setUploadStatus(1);
            getDb().E(photoRecord);
        }
    }

    public void setTrainingDisable(boolean z) {
        PreferenceUtils.putBoolean(PreferenceUtils.KEY_DISABLE_TRAINING_STATUS, z);
    }

    public void updateCoachStatus(String str, CoachInfo.STATUS status) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Integer.valueOf(status.getValue()));
        contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
        SundialDb.getInstance().getDb().D("t_coach_info", contentValues, "coach_no = ?", new String[]{str});
        this.coachInfo = null;
    }

    public void updateDeviceInfo(DeviceInfo deviceInfo) {
        if (deviceInfo != null) {
            SundialDb.getInstance().getDb().E(deviceInfo);
            updateDeviceParameterByDeviceInfo(deviceInfo);
            this.deviceInfo = null;
        }
    }

    public void updateStudentStatus(String str, StudentInfo.STATUS status) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Integer.valueOf(status.getValue()));
        contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
        SundialDb.getInstance().getDb().D("t_student_info", contentValues, "student_no = ?", new String[]{str});
        this.studentInfo = null;
    }

    private DataManager() {
    }

    public void saveDeviceParameter(Parameter parameter) {
        if (parameter == null) {
            return;
        }
        DeviceParameter deviceParameterFrom = DeviceParameter.from(parameter);
        DeviceParameter deviceParameter = (DeviceParameter) SundialDb.getInstance().getDb().n(DeviceParameter.class, e.d("select * from t_device_parameter where parameter_id = ?", String.valueOf(parameter.getParameterId())));
        if (deviceParameter == null) {
            SundialDb.getInstance().getDb().u(deviceParameterFrom);
        } else {
            deviceParameterFrom.setId(deviceParameter.getId());
            SundialDb.getInstance().getDb().E(deviceParameterFrom);
        }
    }
}
