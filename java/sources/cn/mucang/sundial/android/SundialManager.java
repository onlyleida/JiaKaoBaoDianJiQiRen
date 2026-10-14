package cn.mucang.sundial.android;

import android.annotation.SuppressLint;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.PacketResponseObserver;
import cn.mucang.sundial.android.tcp.SocketManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.message.NextMessageSequenceGenerator;
import cn.mucang.sundial.android.tcp.message.RawMessage;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.send.RegisterRequest;
import cn.mucang.sundial.android.tcp.message.send.UnregisterRequest;
import cn.mucang.sundial.android.tcp.message.training.send.CoachLoginRequest;
import cn.mucang.sundial.android.tcp.message.training.send.CoachLogoutRequest;
import cn.mucang.sundial.android.tcp.message.training.send.QueryCodeRequest;
import cn.mucang.sundial.android.tcp.message.training.send.ReportCourseRecordRequest;
import cn.mucang.sundial.android.tcp.message.training.send.StudentForceLogoutRequest;
import cn.mucang.sundial.android.tcp.message.training.send.StudentLoginRequest;
import cn.mucang.sundial.android.tcp.message.training.send.StudentLogoutRequest;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.PreferenceUtils;
import cn.mucang.sundial.android.timer.alive.HeartBeatManager;
import cn.mucang.sundial.android.timer.location.LocationReportManager;
import cn.mucang.sundial.android.timer.train.TrainManager;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.sql.Timestamp;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SundialManager {
    private SocketManager mSocketManager;

    private static class SundialManagerHolder {
        private static final SundialManager sManager = new SundialManager();

        private SundialManagerHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(SendMessage sendMessage, PacketResponseObserver.RequestResultListener requestResultListener) {
        this.mSocketManager.sendMessage(sendMessage, requestResultListener);
    }

    @SuppressLint({"MissingPermission"})
    private void fixDeviceInfo(DeviceInfo deviceInfo) {
        if (deviceInfo == null) {
            return;
        }
        String imei = DeviceUtils.getImei();
        if ("13301289901".equals(deviceInfo.getImei()) && n0.g(imei)) {
            deviceInfo.setImei(imei);
        }
        if (n0.e(deviceInfo.getSerialNo())) {
            deviceInfo.setSerialNo("P777");
        }
    }

    public static SundialManager getInstance() {
        return SundialManagerHolder.sManager;
    }

    public void asyncSendMessage(final SendMessage sendMessage, final PacketResponseObserver.RequestResultListener requestResultListener) {
        if (this.mSocketManager != null) {
            ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.android.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f10350a.b(sendMessage, requestResultListener);
                }
            });
        } else {
            requestResultListener.onResult(false);
        }
    }

    public boolean coachLogin(CoachInfo coachInfo) {
        if (coachInfo == null) {
            return false;
        }
        coachInfo.setStatus(0);
        coachInfo.setUpdateTime(System.currentTimeMillis());
        DataManager.getInstance().saveCoach(coachInfo);
        if (this.mSocketManager == null) {
            return false;
        }
        CoachLoginRequest coachLoginRequest = new CoachLoginRequest();
        coachLoginRequest.setCoachNo(coachInfo.getCoachNo());
        coachLoginRequest.setIdCard(coachInfo.getIdCard());
        coachLoginRequest.setTeachType(coachInfo.getTeachType());
        coachLoginRequest.setGnssData(GNSSData.getGNSSData());
        SundialLog.com("Socket发送：" + coachLoginRequest);
        return this.mSocketManager.sendMessage(coachLoginRequest);
    }

    public boolean coachLoginSuccess() {
        CoachInfo lastCoach = getLastCoach();
        return lastCoach != null && lastCoach.getStatus() == CoachInfo.STATUS.LOGIN.getValue();
    }

    public boolean coachLogout(String str) {
        if (this.mSocketManager == null) {
            return false;
        }
        CoachLogoutRequest coachLogoutRequest = new CoachLogoutRequest();
        coachLogoutRequest.setCoachNo(str);
        coachLogoutRequest.setGnssData(GNSSData.getGNSSData());
        SundialLog.com("Socket发送：" + coachLogoutRequest);
        return this.mSocketManager.sendMessage(coachLogoutRequest);
    }

    public String createCourseCode(String str, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(1);
        sb.append(DeviceUtils.getCarTypeCode(str));
        sb.append(i);
        sb.append(i == 2 ? 13 : 36);
        sb.append("0000");
        return sb.toString();
    }

    public List<RawMessage> createRawMessage(SendMessage sendMessage) {
        SocketManager socketManager = this.mSocketManager;
        if (socketManager != null) {
            return socketManager.createRawMessage(sendMessage);
        }
        return null;
    }

    public void destroy() {
        SocketManager socketManager = this.mSocketManager;
        if (socketManager != null) {
            socketManager.destroy();
            this.mSocketManager = null;
        }
        HeartBeatManager.getInstance().stop();
        LocationReportManager.getInstance().stop();
    }

    public int getAccuracyMultiplier() {
        int i = PreferenceUtils.getInt(PreferenceUtils.KEY_MILEAGE_ACCURACY, 100);
        return 1000 / (i > 0 ? i : 100);
    }

    public long getClearRecordTime() {
        return PreferenceUtils.getLong(PreferenceUtils.KEY_CLEAR_RECORD_TIMESTAMP, 0L);
    }

    public CoachInfo getCoachInfo(String str) {
        return DataManager.getInstance().getCoachInfo(str);
    }

    public int getCourseTypeByCourseCode(String str) {
        if (str == null || str.length() != 10) {
            return 0;
        }
        return Integer.parseInt(str.substring(3, 4));
    }

    public DeviceInfo getDeviceInfo() {
        return DataManager.getInstance().getDeviceInfo();
    }

    public float getK2LearnDataFactor() {
        return PreferenceUtils.getFloat(PreferenceUtils.KEY_K2_LEARN_DATA_FACTOR, 1.2f);
    }

    public float getK3LearnDataFactor() {
        return PreferenceUtils.getFloat(PreferenceUtils.KEY_K3_LEARN_DATA_FACTOR, 1.2f);
    }

    public CoachInfo getLastCoach() {
        return DataManager.getInstance().getLastCoach();
    }

    public StudentInfo getLastStudent() {
        return DataManager.getInstance().getLastStudent();
    }

    public List<StudentInfo> getLastStudents() {
        return DataManager.getInstance().getLastTenStudentInfo(getClearRecordTime());
    }

    public long getLastTimeStamps() {
        return PreferenceUtils.getLong(PreferenceUtils.KEY_LAST_TIME_STAMP, 1669357278403L);
    }

    public float getLearnDataFactor() {
        return PreferenceUtils.getFloat(PreferenceUtils.KEY_LEARN_DATA_FACTOR, 1.0f);
    }

    public int getLiveImageSecond() {
        int i = PreferenceUtils.getInt(PreferenceUtils.KEY_LIVE_IMAGE_SECOND, 5);
        if (i >= 5 && i <= 90) {
            return i;
        }
        SundialLog.normal("拍照倒计时保护数: " + i + " to 5");
        return 5;
    }

    public int getLogInOutSecond() {
        int i = PreferenceUtils.getInt(PreferenceUtils.KEY_LOGIN_OUT_SECOND, 5);
        if (i >= 3 && i <= 90) {
            return i;
        }
        SundialLog.normal("拍照倒计时保护数: " + i + " to 5");
        return 5;
    }

    public float getMaxSpeedLimit() {
        return PreferenceUtils.getFloat(PreferenceUtils.KEY_MAX_SPEED_LIMIT, 60.0f);
    }

    public int getMileageAccuracy() {
        return PreferenceUtils.getInt(PreferenceUtils.KEY_MILEAGE_ACCURACY, 100);
    }

    public NextMessageSequenceGenerator getNextMessageSequenceGenerator() {
        SocketManager socketManager = this.mSocketManager;
        if (socketManager != null) {
            return socketManager.getNextMessageSequenceGenerator();
        }
        return null;
    }

    public RegisterInfo getRegisterInfo() {
        return DataManager.getInstance().getRegisterInfo();
    }

    public StudentInfo getStudentInfo(String str) {
        return DataManager.getInstance().getStudentInfo(str);
    }

    public int getTakePhotoDelay() {
        int i = PreferenceUtils.getInt(PreferenceUtils.KEY_TAKE_PHOTO_DELAY, 3);
        if (i >= 3 && i <= 90) {
            return i;
        }
        SundialLog.normal("拍照倒计时保护数: " + i + " to 5");
        return 5;
    }

    public boolean hasConnection() {
        SocketManager socketManager = this.mSocketManager;
        return socketManager != null && socketManager.hasConnection();
    }

    public void init() {
        if (this.mSocketManager == null) {
            SocketManager socketManager = SocketManager.getInstance();
            this.mSocketManager = socketManager;
            socketManager.start();
        }
    }

    public boolean isLocationDataStrategy() {
        return PreferenceUtils.getBoolean(PreferenceUtils.KEY_LOCATION_DATA_STRATEGY, true);
    }

    public boolean isOBDLocationStrategy() {
        return PreferenceUtils.getBoolean(PreferenceUtils.KEY_OBD_LOCATION_STRATEGY, false);
    }

    public boolean isOnlyGZMiniQRCode() {
        return PreferenceUtils.getInt(PreferenceUtils.KEY_LOGIN_MODE, 0) == 2;
    }

    public boolean isOnlyIcCarMode() {
        return PreferenceUtils.getInt(PreferenceUtils.KEY_LOGIN_MODE, 0) == 1;
    }

    public boolean isRegister() {
        return (this.mSocketManager == null || DataManager.getInstance().getRegisterInfo() == null) ? false : true;
    }

    public boolean isTrainingDisable() {
        return DataManager.getInstance().isTrainingDisable();
    }

    public boolean playTakePhotoVoice() {
        return PreferenceUtils.getBoolean(PreferenceUtils.KEY_TAKE_PHOTO_VOICE, true);
    }

    public void queryGlobalCode(int i, String str) {
        if (this.mSocketManager != null) {
            QueryCodeRequest queryCodeRequest = new QueryCodeRequest();
            queryCodeRequest.setCodeType(i);
            queryCodeRequest.setQueryField(str);
            SundialLog.com("Socket发送：" + queryCodeRequest);
            this.mSocketManager.sendMessage(queryCodeRequest);
        }
    }

    public boolean register(DeviceInfo deviceInfo) {
        if (isRegister() || this.mSocketManager == null) {
            return false;
        }
        RegisterRequest registerRequest = new RegisterRequest();
        if (deviceInfo == null) {
            deviceInfo = DataManager.getInstance().getDeviceInfo();
            fixDeviceInfo(deviceInfo);
        } else {
            fixDeviceInfo(deviceInfo);
            DataManager.getInstance().updateDeviceInfo(deviceInfo);
        }
        registerRequest.setProvinceId(deviceInfo.getProvinceId());
        registerRequest.setCityId(deviceInfo.getCityId());
        registerRequest.setManufacturer(deviceInfo.getManufacturer());
        registerRequest.setSerialNo(deviceInfo.getSerialNo());
        registerRequest.setDeviceModel(deviceInfo.getDeviceModel());
        registerRequest.setColor(deviceInfo.getColor());
        registerRequest.setImei(deviceInfo.getImei());
        registerRequest.setCarno(deviceInfo.getCarNo());
        SundialLog.com("Socket发送：" + registerRequest);
        return this.mSocketManager.sendMessage(registerRequest);
    }

    public void reportCourseRecord(ReportCourseRecordRequest reportCourseRecordRequest, PacketResponseObserver.RequestResultListener requestResultListener) {
        asyncSendMessage(reportCourseRecordRequest, requestResultListener);
    }

    public void resendPacket(int i, int[] iArr) {
        SocketManager socketManager = this.mSocketManager;
        if (socketManager != null) {
            socketManager.resendPacket(i, iArr);
        }
    }

    public void saveCoach(CoachInfo coachInfo) {
        DataManager.getInstance().saveCoach(coachInfo);
    }

    public void saveStudent(StudentInfo studentInfo) {
        DataManager.getInstance().saveStudent(studentInfo);
    }

    public void sendMessage(SendMessage sendMessage) {
        sendMessage(sendMessage, null);
    }

    public boolean sendRawMessage(RawMessage rawMessage) {
        SocketManager socketManager = this.mSocketManager;
        if (socketManager != null) {
            return socketManager.sendRawMessage(rawMessage);
        }
        return false;
    }

    public void setClearRecordTime(long j) {
        PreferenceUtils.putLong(PreferenceUtils.KEY_CLEAR_RECORD_TIMESTAMP, j);
    }

    public void setK2LearnDataFactor(float f2) {
        PreferenceUtils.putFloat(PreferenceUtils.KEY_K2_LEARN_DATA_FACTOR, f2);
    }

    public void setK3LearnDataFactor(float f2) {
        PreferenceUtils.putFloat(PreferenceUtils.KEY_K3_LEARN_DATA_FACTOR, f2);
    }

    public void setLastTimeStamps(long j) {
        PreferenceUtils.putLong(PreferenceUtils.KEY_LAST_TIME_STAMP, j);
    }

    public void setLearnDataFactor(float f2) {
        PreferenceUtils.putFloat(PreferenceUtils.KEY_LEARN_DATA_FACTOR, f2);
    }

    public void setLiveImageSecond(int i) {
        PreferenceUtils.putInt(PreferenceUtils.KEY_LIVE_IMAGE_SECOND, i);
    }

    public void setLocationDataStrategy(boolean z) {
        PreferenceUtils.putBoolean(PreferenceUtils.KEY_LOCATION_DATA_STRATEGY, z);
    }

    public void setLogInOutSecond(int i) {
        PreferenceUtils.putInt(PreferenceUtils.KEY_LOGIN_OUT_SECOND, i);
    }

    public void setLoginMode(int i) {
        PreferenceUtils.putInt(PreferenceUtils.KEY_LOGIN_MODE, i);
    }

    public void setMaxSpeedLimit(float f2) {
        if (f2 < 60.0f) {
            f2 = 60.0f;
        }
        if (f2 > 90.0f) {
            f2 = 90.0f;
        }
        PreferenceUtils.putFloat(PreferenceUtils.KEY_MAX_SPEED_LIMIT, f2);
    }

    public void setMileageAccuracy(int i) {
        PreferenceUtils.putInt(PreferenceUtils.KEY_MILEAGE_ACCURACY, i);
    }

    public void setOBDLocationStrategy(boolean z) {
        PreferenceUtils.putBoolean(PreferenceUtils.KEY_OBD_LOCATION_STRATEGY, z);
    }

    public void setTakePhotoDelay(int i) {
        PreferenceUtils.putInt(PreferenceUtils.KEY_TAKE_PHOTO_DELAY, i);
    }

    public void setTakePhotoVoice(boolean z) {
        PreferenceUtils.putBoolean(PreferenceUtils.KEY_TAKE_PHOTO_VOICE, z);
    }

    public boolean studentForceLogout(String str, long j) {
        StudentInfo studentInfo;
        if (this.mSocketManager == null || (studentInfo = DataManager.getInstance().getStudentInfo(str)) == null) {
            return false;
        }
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        StudentForceLogoutRequest studentForceLogoutRequest = new StudentForceLogoutRequest();
        studentForceLogoutRequest.setStudentNo(str);
        studentForceLogoutRequest.setClassroomId(studentInfo.getClassroomId());
        studentForceLogoutRequest.setGnssData(GNSSData.getGNSSData(j));
        studentForceLogoutRequest.setTimestamp(new Timestamp(j));
        studentForceLogoutRequest.setCurrentDuration((int) ((j - studentInfo.getUpdateTime()) / DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS));
        SundialLog.com("Socket发送：" + studentForceLogoutRequest);
        return this.mSocketManager.sendMessage(studentForceLogoutRequest);
    }

    public boolean studentLogin(StudentInfo studentInfo, long j) {
        if (studentInfo != null && studentInfo.infoValid()) {
            studentInfo.setStatus(0);
            studentInfo.setUpdateTime(j);
            if (studentInfo.getClassroomId() <= 0) {
                studentInfo.setClassroomId(j / 1000);
            }
            DataManager.getInstance().saveStudent(studentInfo);
            if (this.mSocketManager != null) {
                StudentLoginRequest studentLoginRequest = new StudentLoginRequest();
                studentLoginRequest.setStudentNo(studentInfo.getStudentNo());
                studentLoginRequest.setCoachNo(studentInfo.getCoachNo());
                studentLoginRequest.setCourseCode(studentInfo.getCourseCode());
                studentLoginRequest.setClassroomId(studentInfo.getClassroomId());
                studentLoginRequest.setGnssData(GNSSData.getGNSSData(j));
                SundialLog.com("Socket发送：" + studentLoginRequest);
                return this.mSocketManager.sendMessage(studentLoginRequest);
            }
        }
        return false;
    }

    public boolean studentLoginSuccess() {
        StudentInfo lastStudent = getLastStudent();
        return lastStudent != null && lastStudent.getStatus() == CoachInfo.STATUS.LOGIN.getValue();
    }

    public boolean studentLogout(String str, long j) {
        StudentInfo studentInfo;
        if (this.mSocketManager == null || (studentInfo = DataManager.getInstance().getStudentInfo(str)) == null) {
            return false;
        }
        int iDoubleValue = (int) (TrainManager.getInstance().getCurrentMileage().doubleValue() * ((double) getInstance().getAccuracyMultiplier()));
        if (iDoubleValue < 0 || iDoubleValue > 65535) {
            SundialLog.normal("本次培训总里程超限制: " + TrainManager.getInstance().getCurrentMileage());
            return studentForceLogout(str, j);
        }
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        StudentLogoutRequest studentLogoutRequest = new StudentLogoutRequest();
        studentLogoutRequest.setStudentNo(str);
        studentLogoutRequest.setClassroomId(studentInfo.getClassroomId());
        studentLogoutRequest.setGnssData(GNSSData.getGNSSData(j));
        studentLogoutRequest.setTimestamp(new Timestamp(j));
        studentLogoutRequest.setCurrentDuration((int) ((j - studentInfo.getUpdateTime()) / DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS));
        studentLogoutRequest.setCurrentMileage(TrainManager.getInstance().getCurrentMileage());
        SundialLog.com("Socket发送：" + studentLogoutRequest);
        return this.mSocketManager.sendMessage(studentLogoutRequest);
    }

    public boolean unregister() {
        if (this.mSocketManager == null) {
            return false;
        }
        SundialLog.com("Socket发送：终端注销");
        return this.mSocketManager.sendMessage(new UnregisterRequest());
    }

    private SundialManager() {
    }

    public boolean sendMessage(SendMessage sendMessage, PacketResponseObserver.RequestResultListener requestResultListener) {
        SocketManager socketManager = this.mSocketManager;
        if (socketManager != null) {
            return socketManager.sendMessage(sendMessage, requestResultListener);
        }
        requestResultListener.onResult(false);
        return false;
    }
}
