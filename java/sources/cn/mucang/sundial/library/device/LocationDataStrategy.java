package cn.mucang.sundial.library.device;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.UpdateSpeedEvent;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.location.DefaultLocationListener;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.model.KeyState;
import cn.mucang.sundial.android.tcp.data.gnss.BaseDataStrategy;
import cn.mucang.sundial.android.tcp.data.gnss.DataCallBack;
import cn.mucang.sundial.android.utils.CPUUtils;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.LoginUtil;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.blankj.utilcode.util.Utils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.ranges.f;
import kotlin.v;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000W\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u001e\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u0004R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\rR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcn/mucang/sundial/library/device/LocationDataStrategy;", "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;", "Lkotlin/v;", "setRpmAndGpsSpeed", "()V", "readSavedMileageIfNeed", "Landroid/content/Context;", "context", TtmlNode.START, "(Landroid/content/Context;)V", "stop", "", "lastSavedTime", "J", "lastLocationTime", "Ljava/util/Random;", "random", "Ljava/util/Random;", "Landroid/content/SharedPreferences;", "pref", "Landroid/content/SharedPreferences;", "Landroid/location/Location;", "lastLocation", "Landroid/location/Location;", "", "lastCourseCode", "Ljava/lang/String;", "", "factor", "F", "cn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1", "locationListener", "Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;", "Lcn/mucang/sundial/android/model/CarModel;", "carModel", "Lcn/mucang/sundial/android/model/CarModel;", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LocationDataStrategy extends BaseDataStrategy {
    private static final String KEY_MILEAGE = "mileage";
    private static final String PREF_NAME = "loc_mileage";
    private final CarModel carModel;
    private float factor;
    private String lastCourseCode;
    private Location lastLocation;
    private long lastLocationTime;
    private long lastSavedTime;
    private final LocationDataStrategy$locationListener$1 locationListener;
    private SharedPreferences pref;
    private final Random random;

    /* JADX WARN: Type inference failed for: r0v4, types: [cn.mucang.sundial.library.device.LocationDataStrategy$locationListener$1] */
    public LocationDataStrategy() {
        CarModel carModel = new CarModel();
        carModel.keyState = KeyState.Start;
        v vVar = v.f15822a;
        this.carModel = carModel;
        this.random = new Random();
        this.lastCourseCode = "";
        this.factor = 1.0f;
        this.locationListener = new DefaultLocationListener() { // from class: cn.mucang.sundial.library.device.LocationDataStrategy$locationListener$1
            @Override // cn.mucang.sundial.android.location.DefaultLocationListener
            public void onLocationChanged(Location location) {
                String courseCode;
                r.e(location, "location");
                this.this$0.readSavedMileageIfNeed();
                Location location2 = this.this$0.lastLocation;
                long j = this.this$0.lastLocationTime;
                if (location2 != null && location.getLatitude() == location2.getLatitude() && location.getLongitude() == location2.getLongitude()) {
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.this$0.lastLocation = location;
                this.this$0.lastLocationTime = jCurrentTimeMillis;
                if (location2 == null || j <= 0) {
                    this.this$0.setRpmAndGpsSpeed();
                    DataCallBack dataCallBack = ((BaseDataStrategy) this.this$0).dataCallBack;
                    if (dataCallBack != null) {
                        dataCallBack.onResult(this.this$0.carModel);
                    }
                    LiveBus.Companion.post(new UpdateSpeedEvent());
                    return;
                }
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                float maxSpeedLimit = sundialManager.getMaxSpeedLimit();
                String str = "";
                float f2 = 1.0f;
                if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                    SundialManager sundialManager2 = SundialManager.getInstance();
                    r.d(sundialManager2, "SundialManager.getInstance()");
                    StudentInfo lastStudent = sundialManager2.getLastStudent();
                    if (!r.a(this.this$0.lastCourseCode, lastStudent != null ? lastStudent.getCourseCode() : null)) {
                        LocationDataStrategy locationDataStrategy = this.this$0;
                        if (lastStudent != null && (courseCode = lastStudent.getCourseCode()) != null) {
                            str = courseCode;
                        }
                        locationDataStrategy.lastCourseCode = str;
                        int courseTypeByCourseCode = SundialManager.getInstance().getCourseTypeByCourseCode(lastStudent != null ? lastStudent.getCourseCode() : null);
                        SundialManager sundialManager3 = SundialManager.getInstance();
                        r.d(sundialManager3, "SundialManager.getInstance()");
                        float k2LearnDataFactor = sundialManager3.getK2LearnDataFactor();
                        SundialManager sundialManager4 = SundialManager.getInstance();
                        r.d(sundialManager4, "SundialManager.getInstance()");
                        float k3LearnDataFactor = sundialManager4.getK3LearnDataFactor();
                        LocationDataStrategy locationDataStrategy2 = this.this$0;
                        if (courseTypeByCourseCode == 2) {
                            f2 = k2LearnDataFactor;
                        } else if (courseTypeByCourseCode == 3) {
                            f2 = k3LearnDataFactor;
                        }
                        locationDataStrategy2.factor = f2;
                        SundialLog.normal("切换科目：" + courseTypeByCourseCode + " 放大因子：" + this.this$0.factor + " 最大时速：" + maxSpeedLimit);
                    }
                } else if (this.this$0.factor != 1.0f) {
                    this.this$0.factor = 1.0f;
                    this.this$0.lastCourseCode = "";
                    SundialLog.normal("无科目训练 放大因子：" + this.this$0.factor + " 最大时速：" + maxSpeedLimit);
                }
                long j2 = jCurrentTimeMillis - j;
                float fA = f.a(location.distanceTo(location2) * this.this$0.factor, 0.3f) / 1000.0f;
                if (j2 > 0) {
                    float f3 = j2;
                    float f4 = 3600;
                    float f5 = (f3 / 1000.0f) / f4;
                    if (f5 > 0) {
                        float f6 = fA / f5;
                        this.this$0.carModel.speed = f6;
                        if (f6 > maxSpeedLimit) {
                            SundialLog.normal("当前超速：" + f6 + " km/h");
                            SundialLog.normal("位置移动：" + location2.getLongitude() + ' ' + location2.getLatitude() + " to " + location.getLongitude() + ' ' + location.getLatitude());
                        }
                        if (f6 > maxSpeedLimit) {
                            float f7 = 50;
                            if (maxSpeedLimit > f7) {
                                this.this$0.carModel.speed = (float) (((double) 50) + (((double) (maxSpeedLimit - f7)) * Math.random()));
                                fA = ((this.this$0.carModel.speed / f4) / 1000) * f3;
                            }
                        }
                    }
                }
                if (fA > 0) {
                    this.this$0.carModel.currentDistance += fA;
                    this.this$0.carModel.totalDistance += fA;
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (jCurrentTimeMillis2 - this.this$0.lastSavedTime > CMAESOptimizer.DEFAULT_MAXITERATIONS) {
                        SharedPreferences.Editor editor = LocationDataStrategy.access$getPref$p(this.this$0).edit();
                        r.d(editor, "editor");
                        editor.putFloat("mileage", this.this$0.carModel.totalDistance);
                        editor.commit();
                        this.this$0.lastSavedTime = jCurrentTimeMillis2;
                        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.device.LocationDataStrategy$locationListener$1$onLocationChanged$2
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (CPUUtils.performance() > 50) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("CPU Temperature: ");
                                    SundialDevice device = GlobalData.INSTANCE.getDevice();
                                    Application applicationD = Utils.d();
                                    r.d(applicationD, "Utils.getApp()");
                                    sb.append(device.deviceHelper(applicationD).temperature());
                                    SundialLog.normal(sb.toString());
                                }
                            }
                        });
                    }
                }
                this.this$0.setRpmAndGpsSpeed();
                DataCallBack dataCallBack2 = ((BaseDataStrategy) this.this$0).dataCallBack;
                if (dataCallBack2 != null) {
                    dataCallBack2.onResult(this.this$0.carModel);
                }
            }
        };
    }

    public static final /* synthetic */ SharedPreferences access$getPref$p(LocationDataStrategy locationDataStrategy) {
        SharedPreferences sharedPreferences = locationDataStrategy.pref;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        r.u("pref");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void readSavedMileageIfNeed() {
        float f2 = 0;
        if (this.carModel.totalDistance <= f2) {
            SharedPreferences sharedPreferences = this.pref;
            if (sharedPreferences == null) {
                r.u("pref");
                throw null;
            }
            float fNextInt = sharedPreferences.getFloat(KEY_MILEAGE, BitmapDescriptorFactory.HUE_RED);
            if (fNextInt <= f2) {
                fNextInt = this.random.nextInt(345) + 5898;
            }
            CarModel carModel = this.carModel;
            carModel.totalDistance = fNextInt;
            carModel.currentDistance = BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRpmAndGpsSpeed() {
        CarModel carModel = this.carModel;
        carModel.rpm = ((int) (carModel.speed * 8)) + Videoio.CAP_OPENNI + this.random.nextInt(50);
        this.carModel.gpsSpeed = (float) AppLocation.gpsSpeed;
    }

    @Override // cn.mucang.sundial.android.tcp.data.gnss.DataStrategy
    public void start(Context context) {
        r.e(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREF_NAME, 0);
        r.d(sharedPreferences, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)");
        this.pref = sharedPreferences;
        AppLocation.addListener(this.locationListener);
    }

    @Override // cn.mucang.sundial.android.tcp.data.gnss.DataStrategy
    public void stop() {
        AppLocation.removeListener(this.locationListener);
    }
}
