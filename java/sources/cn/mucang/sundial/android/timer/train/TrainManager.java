package cn.mucang.sundial.android.timer.train;

import android.content.ContentValues;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.LongSparseArray;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.SundialDb;
import cn.mucang.sundial.android.db.entity.CourseRecord;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CourseTimeChangeEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.model.KeyState;
import cn.mucang.sundial.android.tcp.PacketResponseObserver;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.android.tcp.message.training.send.ReportCourseRecordRequest;
import cn.mucang.sundial.android.utils.DistanceUtil;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.mobile.auth.gatewayauth.ResultCode;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class TrainManager {
    private static final int MSG_LITTLE_TICK = 1;
    private static final int MSG_MINUTE_TICK = 2;
    private static final String TAG = "TrainManager";
    private double currentTotalDistance;
    private GNSSData gnssData;
    private Handler handler;
    private volatile boolean isUploading;
    private double lastReportTotalDistance;
    private final LongSparseArray<ReportCourseRecordRequest> localIdToRequests;
    private volatile boolean localRecordsDirty;
    private long mFlameOutTime;
    private long mInvalidTime;
    private BigDecimal mLastOdo;
    private long mLastRecordElapsedTime;
    private final long mSchedulePeriod;
    private BigDecimal maxSpeed;
    private long nextLittleTickTime;
    private long nextMinuteTickTime;
    private int serialNo;
    private long startTime;
    private HandlerThread timerThread;
    private final List<ReportCourseRecordRequest> uploadingCourseRecords;

    private static class TrainManagerHolder {
        private static final TrainManager sManager = new TrainManager();

        private TrainManagerHolder() {
        }
    }

    private void addCourseRecord(int i, boolean z, CourseRecord courseRecord, boolean z2) {
        addCourseRecords(i, z, Collections.singletonList(courseRecord), z2);
    }

    private BigDecimal getCurrentDistance() {
        CarModel carModel = OBDManager.getCarModel();
        return carModel == null ? BigDecimal.ZERO : BigDecimal.valueOf(carModel.currentDistance);
    }

    public static TrainManager getInstance() {
        return TrainManagerHolder.sManager;
    }

    private boolean isSameDay(long j, long j2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j2);
        return simpleDateFormat.format(calendar.getTime()).equals(simpleDateFormat.format(calendar2.getTime()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void littleTick(long j) {
        CarModel carModel = OBDManager.getCarModel();
        if (carModel != null) {
            this.maxSpeed = BigDecimal.valueOf(Math.max(this.maxSpeed.floatValue(), carModel.speed));
        }
        if (carModel == null || carModel.keyState.id <= KeyState.Lock.id) {
            this.mFlameOutTime += 500;
        }
        if (carModel == null || carModel.keyState.id <= KeyState.Lock.id || DataManager.getInstance().isTrainingDisable()) {
            this.mInvalidTime += 500;
        }
        BigDecimal currentDistance = getCurrentDistance();
        double dMax = this.lastReportTotalDistance + Math.max(0.0d, currentDistance.doubleValue() < this.mLastOdo.doubleValue() ? currentDistance.doubleValue() : currentDistance.doubleValue() - this.mLastOdo.doubleValue());
        this.currentTotalDistance = dMax;
        if (j % 1000 < 500) {
            LiveBus.post(new CourseTimeChangeEvent(j - this.mInvalidTime, dMax));
        }
        long j2 = this.mLastRecordElapsedTime;
        if (j - j2 < 30000 || j - j2 >= DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS || this.gnssData != null) {
            return;
        }
        this.gnssData = GNSSData.getGNSSData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void minuteTick(long j) {
        this.mLastRecordElapsedTime = j - this.startTime;
        CourseRecord courseRecord = new CourseRecord();
        courseRecord.setRecordStatus(DataManager.getInstance().isTrainingDisable() ? 1 : 0);
        courseRecord.setMaxSpeed(this.maxSpeed);
        courseRecord.setClassroomId(DataManager.getInstance().getLastStudent().getClassroomId());
        courseRecord.setCoachNo(DataManager.getInstance().getLastCoach().getCoachNo());
        courseRecord.setStudentNo(DataManager.getInstance().getLastStudent().getStudentNo());
        courseRecord.setCourseCode(SundialManager.getInstance().getLastStudent().getCourseCode());
        BigDecimal currentDistance = getCurrentDistance();
        double d2 = this.currentTotalDistance - this.lastReportTotalDistance;
        courseRecord.setMileage(BigDecimal.valueOf(DistanceUtil.optimization(Math.max(0.0d, d2), SundialManager.getInstance().getMileageAccuracy())));
        this.serialNo = (int) ((((28800000 + j) % 86400000) / DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) + 1);
        courseRecord.setRecordTime(j);
        courseRecord.setRecordNo(CourseRecord.createRecordNo(courseRecord.getRecordTime(), this.serialNo));
        GNSSData gNSSData = this.gnssData;
        if (gNSSData != null) {
            courseRecord.setGnssData(GNSSData.toString(gNSSData.encode()));
        }
        SundialLog.normal("保存学时记录：" + courseRecord);
        DataManager.getInstance().insertCourseRecord(courseRecord);
        this.localRecordsDirty = true;
        addCourseRecord(1, true, courseRecord, true);
        t.h(TAG, "Add a record, time: " + j);
        SundialLog.com("Add a record, time: " + j);
        this.maxSpeed = BigDecimal.ZERO;
        if (d2 * 1000.0d > SundialManager.getInstance().getMileageAccuracy()) {
            this.mLastOdo = currentDistance;
        }
        this.lastReportTotalDistance = this.currentTotalDistance;
        this.gnssData = null;
    }

    private void resetTime() {
        this.mLastRecordElapsedTime = 0L;
        this.mInvalidTime = 0L;
        this.mFlameOutTime = 0L;
        this.currentTotalDistance = 0.0d;
        this.lastReportTotalDistance = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleLittleTick() {
        this.handler.removeMessages(1);
        this.handler.sendEmptyMessageDelayed(1, this.nextLittleTickTime - System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleMinuteTick() {
        this.handler.sendEmptyMessageDelayed(2, this.nextMinuteTickTime - System.currentTimeMillis());
    }

    public void addCourseRecords(int i, boolean z, List<CourseRecord> list, boolean z2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        synchronized (this) {
            ArrayList arrayList = new ArrayList(list.size());
            for (CourseRecord courseRecord : list) {
                ReportCourseRecordRequest reportCourseRecordRequest = this.localIdToRequests.get(courseRecord.getId().longValue());
                if (reportCourseRecordRequest == null) {
                    ReportCourseRecordRequest reportCourseRecordRequestFrom = ReportCourseRecordRequest.from(courseRecord, i, z);
                    arrayList.add(reportCourseRecordRequestFrom);
                    this.localIdToRequests.put(courseRecord.getId().longValue(), reportCourseRecordRequestFrom);
                } else {
                    reportCourseRecordRequest.setReportType(i);
                    reportCourseRecordRequest.setRealtimeMessage(z);
                }
            }
            if (z2) {
                this.uploadingCourseRecords.addAll(0, arrayList);
            } else {
                this.uploadingCourseRecords.addAll(arrayList);
            }
        }
    }

    public BigDecimal getCurrentMileage() {
        return BigDecimal.valueOf(this.currentTotalDistance);
    }

    public long getFlameOutTime() {
        return this.mFlameOutTime;
    }

    public List<CourseRecord> queryCourseRecordUpload(long j, long j2) {
        return DataManager.getInstance().getCourseRecordByTime(j, j2);
    }

    public synchronized void setUploading(boolean z) {
        this.isUploading = z;
    }

    public void start(double d2) {
        if (this.timerThread == null) {
            synchronized (this) {
                List<CourseRecord> courseRecordByCount = DataManager.getInstance().getCourseRecordByCount(100, true);
                addCourseRecords(1, false, courseRecordByCount, false);
                t.h(TAG, "初始化读取本地学时。。。Count: " + g.g(courseRecordByCount));
                SundialLog.com("初始化读取本地学时。。。Count: " + g.g(courseRecordByCount));
            }
            resetTime();
            this.mLastOdo = getCurrentDistance();
            this.currentTotalDistance = d2;
            this.lastReportTotalDistance = d2;
            HandlerThread handlerThread = new HandlerThread("TrainTimer");
            this.timerThread = handlerThread;
            handlerThread.start();
            if (this.handler == null) {
                this.handler = new Handler(this.timerThread.getLooper()) { // from class: cn.mucang.sundial.android.timer.train.TrainManager.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        try {
                            int i = message.what;
                            if (i == 1) {
                                long j = TrainManager.this.nextLittleTickTime;
                                TrainManager.this.nextLittleTickTime += 500;
                                TrainManager.this.scheduleLittleTick();
                                TrainManager trainManager = TrainManager.this;
                                trainManager.littleTick(j - trainManager.startTime);
                                TrainManager.this.startUploadCourseRecords();
                            } else if (i == 2) {
                                long j2 = TrainManager.this.nextMinuteTickTime;
                                TrainManager.this.nextMinuteTickTime += DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS;
                                TrainManager.this.scheduleMinuteTick();
                                TrainManager.this.minuteTick(j2);
                                TrainManager.this.startUploadCourseRecords();
                            }
                        } catch (Exception e2) {
                            SundialLog.normal("TrainManager start: " + e2.getLocalizedMessage());
                        }
                    }
                };
            }
            this.handler.removeCallbacksAndMessages(null);
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.startTime = jCurrentTimeMillis;
            this.nextMinuteTickTime = DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS + jCurrentTimeMillis;
            this.nextLittleTickTime = jCurrentTimeMillis + 500;
            scheduleLittleTick();
            scheduleMinuteTick();
            t.h(TAG, "timer start...");
            SundialLog.com("TrainManager timer start...");
        }
    }

    public void startUploadCourseRecords() {
        int iIndexOfValue;
        if (this.isUploading) {
            return;
        }
        final ReportCourseRecordRequest reportCourseRecordRequest = null;
        final long jKeyAt = -1;
        synchronized (this) {
            if (this.localRecordsDirty && this.uploadingCourseRecords.isEmpty()) {
                this.localRecordsDirty = false;
                List<CourseRecord> courseRecordByCount = DataManager.getInstance().getCourseRecordByCount(100, true);
                SundialLog.com("读取本地学时: " + g.g(courseRecordByCount) + "个");
                addCourseRecords(1, false, courseRecordByCount, false);
            }
            if (!this.uploadingCourseRecords.isEmpty() && (iIndexOfValue = this.localIdToRequests.indexOfValue((reportCourseRecordRequest = this.uploadingCourseRecords.get(0)))) >= 0) {
                jKeyAt = this.localIdToRequests.keyAt(iIndexOfValue);
            }
        }
        if (reportCourseRecordRequest != null) {
            getInstance().setUploading(true);
            SundialLog.com("上报查询到的学时。。。Local ID: " + jKeyAt);
            SundialLog.com("上报查询到的学时: " + reportCourseRecordRequest.toString());
            SundialManager.getInstance().reportCourseRecord(reportCourseRecordRequest, new PacketResponseObserver.RequestResultListener() { // from class: cn.mucang.sundial.android.timer.train.TrainManager.2
                @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
                public void onResult(boolean z) {
                    if (z) {
                        synchronized (TrainManager.this) {
                            TrainManager.this.uploadingCourseRecords.remove(reportCourseRecordRequest);
                            if (jKeyAt >= 0) {
                                TrainManager.this.localIdToRequests.remove(jKeyAt);
                            }
                        }
                        if (jKeyAt >= 0) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("upload_status", (Integer) 1);
                            SundialDb.getInstance().getDb().C("t_course_record", contentValues, jKeyAt);
                        }
                    } else {
                        reportCourseRecordRequest.setRealtimeMessage(false);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("上报查询到的学时");
                    sb.append(z ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                    sb.append("。。。Local ID: ");
                    sb.append(jKeyAt);
                    SundialLog.com(sb.toString());
                    TrainManager.getInstance().setUploading(false);
                }

                @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
                public void onTimeout() {
                    reportCourseRecordRequest.setRealtimeMessage(false);
                    SundialLog.com("上报查询到的学时超时。。。Local ID: " + jKeyAt);
                    TrainManager.getInstance().setUploading(false);
                }
            });
        }
    }

    public void stop() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        HandlerThread handlerThread = this.timerThread;
        if (handlerThread != null) {
            handlerThread.quit();
            this.timerThread = null;
        }
        resetTime();
        t.h(TAG, "timer stop...");
        SundialLog.com("TrainManager timer stop...");
    }

    public void uploadAllQueuedRecords() {
        while (!this.uploadingCourseRecords.isEmpty()) {
            startUploadCourseRecords();
        }
    }

    private TrainManager() {
        this.mSchedulePeriod = 500L;
        this.mLastRecordElapsedTime = 0L;
        this.mInvalidTime = 0L;
        this.mFlameOutTime = 0L;
        this.currentTotalDistance = 0.0d;
        this.lastReportTotalDistance = 0.0d;
        BigDecimal bigDecimal = BigDecimal.ZERO;
        this.maxSpeed = bigDecimal;
        this.mLastOdo = bigDecimal;
        this.uploadingCourseRecords = new LinkedList();
        this.localIdToRequests = new LongSparseArray<>();
        this.localRecordsDirty = false;
        this.isUploading = false;
    }

    public List<CourseRecord> queryCourseRecordUpload(int i) {
        return DataManager.getInstance().getCourseRecordByCount(i, false);
    }
}
