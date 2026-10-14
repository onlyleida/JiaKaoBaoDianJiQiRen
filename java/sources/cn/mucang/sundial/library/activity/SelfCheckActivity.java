package cn.mucang.sundial.library.activity;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.location.Location;
import android.media.AudioManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.location.DefaultLocationListener;
import cn.mucang.sundial.android.location.LocationStrategy;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.UtilsKt;
import cn.mucang.sundial.library.databinding.TtActivitySelfCheckBinding;
import cn.mucang.sundial.library.util.AppUtil;
import cn.mucang.sundial.library.util.KtxsKt;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.a;
import com.google.android.exoplayer2.SimpleExoPlayer;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b2\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0018\u0010\u0004J\u0019\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0017¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u001d\u0010.\u001a\u00020)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0016\u00100\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101¨\u00063"}, d2 = {"Lcn/mucang/sundial/library/activity/SelfCheckActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "checkGPS", "()V", "checkNetwork", "checkVolume", "Landroid/view/animation/RotateAnimation;", "rotate", "()Landroid/view/animation/RotateAnimation;", "Landroid/widget/TextView;", "tv", "Landroid/view/ViewGroup;", "loadView", "", "successMsg", "normal", "(Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V", "errorMsg", "error", "", "isLoading", "(Landroid/view/ViewGroup;)Z", "checkVisible", "retest", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onClickedRightFull", "isHiddenSelfCheckBtn", "()Z", "Ljava/lang/Runnable;", "gpsError", "Ljava/lang/Runnable;", "startCheck", "Z", "Landroid/location/Location;", "lastLocation", "Landroid/location/Location;", "Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;", "viewBinding$delegate", "Lkotlin/f;", "getViewBinding", "()Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;", "viewBinding", "", "relaunchApp", "I", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SelfCheckActivity extends BaseActivity {
    private Location lastLocation;
    private int relaunchApp;
    private boolean startCheck;

    /* JADX INFO: renamed from: viewBinding$delegate, reason: from kotlin metadata */
    private final Lazy viewBinding = new ViewBindingLazy(TtActivitySelfCheckBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });
    private final Runnable gpsError = new Runnable() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$gpsError$1
        @Override // java.lang.Runnable
        public final void run() {
            SelfCheckActivity selfCheckActivity = this.this$0;
            TextView textView = selfCheckActivity.getViewBinding().ckGps;
            r.d(textView, "viewBinding.ckGps");
            LinearLayout linearLayout = this.this$0.getViewBinding().load1;
            r.d(linearLayout, "viewBinding.load1");
            selfCheckActivity.error(textView, linearLayout, "未获取到经纬度");
        }
    };

    /* JADX INFO: renamed from: cn.mucang.sundial.library.activity.SelfCheckActivity$checkGPS$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"cn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1", "Lcn/mucang/sundial/android/location/DefaultLocationListener;", "Landroid/location/Location;", "location", "Lkotlin/v;", "onLocationChanged", "(Landroid/location/Location;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class AnonymousClass1 implements DefaultLocationListener {
        AnonymousClass1() {
        }

        @Override // cn.mucang.sundial.android.location.DefaultLocationListener
        public void onLocationChanged(final Location location) {
            r.e(location, "location");
            AppLocation.removeListener(this);
            if (SelfCheckActivity.this.isFinishing() || SelfCheckActivity.this.isDestroyed()) {
                return;
            }
            SelfCheckActivity.this.lastLocation = location;
            Location location2 = SelfCheckActivity.this.lastLocation;
            r.c(location2);
            Bundle extras = location2.getExtras();
            r.c(extras);
            final String string = extras.getString(AppLocation.SatelliteCount);
            Location location3 = SelfCheckActivity.this.lastLocation;
            r.c(location3);
            Bundle extras2 = location3.getExtras();
            r.c(extras2);
            final long j = extras2.getLong(AppLocation.TimeToFirstFix);
            u.e(SelfCheckActivity.this.gpsError);
            u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$checkGPS$1$onLocationChanged$1
                @Override // java.lang.Runnable
                public final void run() {
                    String str = "正常";
                    if (!TextUtils.isEmpty(string)) {
                        str = "正常，卫星：" + string;
                    }
                    if (j > 0) {
                        str = str + "，启动：" + j + 's';
                    }
                    SundialLog.normal("当前经纬度：" + location.getLatitude() + "  " + location.getLongitude());
                    SelfCheckActivity selfCheckActivity = SelfCheckActivity.this;
                    TextView textView = selfCheckActivity.getViewBinding().ckGps;
                    r.d(textView, "viewBinding.ckGps");
                    LinearLayout linearLayout = SelfCheckActivity.this.getViewBinding().load1;
                    r.d(linearLayout, "viewBinding.load1");
                    selfCheckActivity.normal(textView, linearLayout, str);
                }
            }, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
    }

    private final void checkGPS() {
        AppLocation.addListener(new AnonymousClass1());
        u.e(this.gpsError);
        u.d(this.gpsError, 10000L);
    }

    private final void checkNetwork() {
        new Thread(new Runnable() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity.checkNetwork.1
            /* JADX WARN: Code duplicated, block: B:29:0x0091  */
            /* JADX WARN: Type inference failed for: r2v9, types: [T, java.lang.Object, java.lang.String] */
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                float f2;
                final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
                ref$FloatRef.element = BitmapDescriptorFactory.HUE_RED;
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.element = "";
                try {
                    Process p = Runtime.getRuntime().exec("ping -i 1 -s 16 www.baidu.com");
                    r.d(p, "p");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(p.getInputStream()));
                    int i = 0;
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        int iT = -1;
                        int iT2 = (line != null ? StringsKt__StringsKt.T(line, "time=", 0, false, 6, null) : -1) + 5;
                        if (line != null) {
                            iT = StringsKt__StringsKt.T(line, "ms", 0, false, 6, null);
                        }
                        if (iT2 > 0 && iT > 0 && iT > iT2) {
                            if (line == null) {
                                f2 = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                if (line == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                                }
                                String strSubstring = line.substring(iT2, iT);
                                r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                if (strSubstring == null) {
                                    f2 = BitmapDescriptorFactory.HUE_RED;
                                } else {
                                    if (strSubstring == null) {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                                    }
                                    String string = StringsKt__StringsKt.J0(strSubstring).toString();
                                    if (string != null) {
                                        f2 = Float.parseFloat(string);
                                    } else {
                                        f2 = BitmapDescriptorFactory.HUE_RED;
                                    }
                                }
                            }
                            float f3 = ref$FloatRef.element;
                            if (f3 != BitmapDescriptorFactory.HUE_RED) {
                                f2 = (f3 + f2) / 2;
                            }
                            ref$FloatRef.element = f2;
                        }
                        i++;
                        if (i > 4) {
                            o.a(bufferedReader);
                            break;
                        }
                    }
                    File file = new File(SelfCheckActivity.this.getCacheDir(), "speed.txt");
                    if (file.exists()) {
                        file.delete();
                    }
                    long jDownloadURLToFile = UtilsKt.downloadURLToFile("http://sundial-app-file.mucang.cn/sundial-app/2022/11/08/18/f199b03138af454e877b60c5d0535d8b.txt", file, null);
                    SundialLog.normal("下载1KB文件耗时: " + jDownloadURLToFile);
                    if (jDownloadURLToFile > 0) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                        ?? r2 = String.format("，网速%.1fKB/s", Arrays.copyOf(new Object[]{Float.valueOf(1000.0f / jDownloadURLToFile)}, 1));
                        r.d(r2, "java.lang.String.format(format, *args)");
                        ref$ObjectRef.element = r2;
                    }
                } catch (Exception unused) {
                    SundialLog.normal("下载测速文件失败");
                }
                u.c(new Runnable() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity.checkNetwork.1.2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public final void run() {
                        NetworkUtils.NetworkType networkTypeB = NetworkUtils.b();
                        SundialLog.normal("当前网络类型：" + networkTypeB);
                        StringBuilder sb = new StringBuilder();
                        sb.append("，延迟");
                        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
                        String str = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(ref$FloatRef.element)}, 1));
                        r.d(str, "java.lang.String.format(format, *args)");
                        sb.append(str);
                        sb.append("ms");
                        String string2 = sb.toString();
                        if (networkTypeB == NetworkUtils.NetworkType.NETWORK_4G || networkTypeB == NetworkUtils.NetworkType.NETWORK_WIFI) {
                            SelfCheckActivity selfCheckActivity = SelfCheckActivity.this;
                            TextView textView = selfCheckActivity.getViewBinding().ckNetwork;
                            r.d(textView, "viewBinding.ckNetwork");
                            LinearLayout linearLayout = SelfCheckActivity.this.getViewBinding().load2;
                            r.d(linearLayout, "viewBinding.load2");
                            selfCheckActivity.normal(textView, linearLayout, (char) 24378 + string2 + ((String) ref$ObjectRef.element));
                        } else if (networkTypeB == NetworkUtils.NetworkType.NETWORK_2G || networkTypeB == NetworkUtils.NetworkType.NETWORK_3G) {
                            SelfCheckActivity selfCheckActivity2 = SelfCheckActivity.this;
                            TextView textView2 = selfCheckActivity2.getViewBinding().ckNetwork;
                            r.d(textView2, "viewBinding.ckNetwork");
                            LinearLayout linearLayout2 = SelfCheckActivity.this.getViewBinding().load2;
                            r.d(linearLayout2, "viewBinding.load2");
                            selfCheckActivity2.normal(textView2, linearLayout2, (char) 20013 + string2 + ((String) ref$ObjectRef.element));
                        } else {
                            SelfCheckActivity selfCheckActivity3 = SelfCheckActivity.this;
                            TextView textView3 = selfCheckActivity3.getViewBinding().ckNetwork;
                            r.d(textView3, "viewBinding.ckNetwork");
                            LinearLayout linearLayout3 = SelfCheckActivity.this.getViewBinding().load2;
                            r.d(linearLayout3, "viewBinding.load2");
                            selfCheckActivity3.error(textView3, linearLayout3, (char) 24369 + string2 + ((String) ref$ObjectRef.element));
                        }
                        SundialLog.normal("测速结果" + string2 + ((String) ref$ObjectRef.element));
                    }
                });
            }
        }).start();
    }

    private final void checkVisible() {
        LinearLayout linearLayout = getViewBinding().load1;
        r.d(linearLayout, "viewBinding.load1");
        if (linearLayout.getVisibility() == 8) {
            LinearLayout linearLayout2 = getViewBinding().load2;
            r.d(linearLayout2, "viewBinding.load2");
            if (linearLayout2.getVisibility() == 8) {
                LinearLayout linearLayout3 = getViewBinding().load4;
                r.d(linearLayout3, "viewBinding.load4");
                if (linearLayout3.getVisibility() == 8) {
                    TextView textView = getViewBinding().reCheck;
                    r.d(textView, "viewBinding.reCheck");
                    textView.setVisibility(0);
                    this.startCheck = false;
                }
            }
        }
    }

    private final void checkVolume() {
        u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity.checkVolume.1
            @Override // java.lang.Runnable
            public final void run() {
                Object systemService = SelfCheckActivity.this.getSystemService("audio");
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
                AudioManager audioManager = (AudioManager) systemService;
                int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                int streamVolume = audioManager.getStreamVolume(3);
                SundialLog.normal("当前多媒体音量：" + streamVolume);
                double d2 = (double) ((((float) streamVolume) * 1.0f) / ((float) streamMaxVolume));
                if (d2 > 0.5d) {
                    SelfCheckActivity selfCheckActivity = SelfCheckActivity.this;
                    TextView textView = selfCheckActivity.getViewBinding().ckVolume;
                    r.d(textView, "viewBinding.ckVolume");
                    LinearLayout linearLayout = SelfCheckActivity.this.getViewBinding().load4;
                    r.d(linearLayout, "viewBinding.load4");
                    selfCheckActivity.normal(textView, linearLayout, "高音量");
                    return;
                }
                if (d2 > 0.25d) {
                    SelfCheckActivity selfCheckActivity2 = SelfCheckActivity.this;
                    TextView textView2 = selfCheckActivity2.getViewBinding().ckVolume;
                    r.d(textView2, "viewBinding.ckVolume");
                    LinearLayout linearLayout2 = SelfCheckActivity.this.getViewBinding().load4;
                    r.d(linearLayout2, "viewBinding.load4");
                    selfCheckActivity2.normal(textView2, linearLayout2, "中音量");
                    return;
                }
                SelfCheckActivity selfCheckActivity3 = SelfCheckActivity.this;
                TextView textView3 = selfCheckActivity3.getViewBinding().ckVolume;
                r.d(textView3, "viewBinding.ckVolume");
                LinearLayout linearLayout3 = SelfCheckActivity.this.getViewBinding().load4;
                r.d(linearLayout3, "viewBinding.load4");
                selfCheckActivity3.error(textView3, linearLayout3, "低音量");
            }
        }, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void error(TextView tv, ViewGroup loadView, String errorMsg) {
        if (isLoading(loadView)) {
            getViewBinding();
            loadView.setVisibility(8);
            tv.setVisibility(0);
            tv.setText(errorMsg);
            tv.setTextColor(Color.parseColor("#FD2525"));
        }
        checkVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TtActivitySelfCheckBinding getViewBinding() {
        return (TtActivitySelfCheckBinding) this.viewBinding.getValue();
    }

    private final boolean isLoading(ViewGroup loadView) {
        return loadView.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void normal(TextView tv, ViewGroup loadView, String successMsg) {
        getViewBinding();
        loadView.setVisibility(8);
        tv.setVisibility(0);
        tv.setText(successMsg);
        tv.setTextColor(Color.parseColor("#5ADF6F"));
        checkVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void retest() {
        if (this.startCheck) {
            return;
        }
        this.startCheck = true;
        LinearLayout linearLayout = getViewBinding().load1;
        r.d(linearLayout, "viewBinding.load1");
        linearLayout.setVisibility(0);
        LinearLayout linearLayout2 = getViewBinding().load2;
        r.d(linearLayout2, "viewBinding.load2");
        linearLayout2.setVisibility(0);
        LinearLayout linearLayout3 = getViewBinding().load4;
        r.d(linearLayout3, "viewBinding.load4");
        linearLayout3.setVisibility(0);
        TextView textView = getViewBinding().ckGps;
        r.d(textView, "viewBinding.ckGps");
        textView.setVisibility(8);
        TextView textView2 = getViewBinding().ckNetwork;
        r.d(textView2, "viewBinding.ckNetwork");
        textView2.setVisibility(8);
        TextView textView3 = getViewBinding().ckVolume;
        r.d(textView3, "viewBinding.ckVolume");
        textView3.setVisibility(8);
        checkGPS();
        checkNetwork();
        checkVolume();
        TextView textView4 = getViewBinding().reCheck;
        r.d(textView4, "viewBinding.reCheck");
        textView4.setVisibility(8);
    }

    private final RotateAnimation rotate() {
        RotateAnimation rotateAnimation = new RotateAnimation(360.0f, BitmapDescriptorFactory.HUE_RED, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setFillAfter(true);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setDuration(1000L);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        return rotateAnimation;
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public boolean isHiddenSelfCheckBtn() {
        return true;
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    protected void onClickedRightFull() {
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    @SuppressLint({"UseCompatLoadingForDrawables"})
    public View onCreateView(Bundle savedInstanceState) {
        final TtActivitySelfCheckBinding viewBinding = getViewBinding();
        viewBinding.llBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$onCreateView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.finish();
            }
        });
        TextView ckGps = viewBinding.ckGps;
        r.d(ckGps, "ckGps");
        ckGps.setText("正在刷新...");
        TextView ckNetwork = viewBinding.ckNetwork;
        r.d(ckNetwork, "ckNetwork");
        ckNetwork.setText("正在刷新...");
        TextView ckVolume = viewBinding.ckVolume;
        r.d(ckVolume, "ckVolume");
        ckVolume.setText("正在刷新...");
        RotateAnimation rotateAnimationRotate = rotate();
        ImageView ivRefresh = viewBinding.ivRefresh;
        r.d(ivRefresh, "ivRefresh");
        ivRefresh.setAnimation(rotateAnimationRotate);
        ImageView ivRefresh2 = viewBinding.ivRefresh2;
        r.d(ivRefresh2, "ivRefresh2");
        ivRefresh2.setAnimation(rotateAnimationRotate);
        ImageView ivRefresh4 = viewBinding.ivRefresh4;
        r.d(ivRefresh4, "ivRefresh4");
        ivRefresh4.setAnimation(rotateAnimationRotate);
        rotateAnimationRotate.start();
        RadioGroup radioGps = viewBinding.radioGps;
        r.d(radioGps, "radioGps");
        radioGps.setVisibility(AppUtil.isCW() ? 0 : 8);
        viewBinding.radioGps.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$onCreateView$1$2
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                TtActivitySelfCheckBinding ttActivitySelfCheckBinding = viewBinding;
                RadioButton rbCold = ttActivitySelfCheckBinding.rbCold;
                r.d(rbCold, "rbCold");
                if (i == rbCold.getId()) {
                    SundialLog.normal("选择冷启动模式");
                    LocationStrategy locationStrategy = AppLocation.INSTANCE.getLocationStrategy();
                    if (locationStrategy != null) {
                        locationStrategy.setStartMode(1);
                    }
                    u.j("请按右侧电源键重启设备");
                    return;
                }
                RadioButton rbWarm = ttActivitySelfCheckBinding.rbWarm;
                r.d(rbWarm, "rbWarm");
                if (i == rbWarm.getId()) {
                    SundialLog.normal("选择温启动模式");
                    LocationStrategy locationStrategy2 = AppLocation.INSTANCE.getLocationStrategy();
                    if (locationStrategy2 != null) {
                        locationStrategy2.setStartMode(2);
                        return;
                    }
                    return;
                }
                RadioButton rbHot = ttActivitySelfCheckBinding.rbHot;
                r.d(rbHot, "rbHot");
                if (i == rbHot.getId()) {
                    SundialLog.normal("选择热启动模式");
                    LocationStrategy locationStrategy3 = AppLocation.INSTANCE.getLocationStrategy();
                    if (locationStrategy3 != null) {
                        locationStrategy3.setStartMode(3);
                    }
                }
            }
        });
        viewBinding.reCheck.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$onCreateView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.retest();
            }
        });
        viewBinding.ckCamera.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$onCreateView$$inlined$with$lambda$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击自检摄像头按钮");
                KtxsKt.safeStartActivity$default(this.this$0, CameTestActivity.class, null, 2, null);
            }
        });
        TextView reboot = viewBinding.reboot;
        r.d(reboot, "reboot");
        reboot.setVisibility(DeviceUtils.isSingleApk(this) ? 0 : 8);
        viewBinding.reboot.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$onCreateView$$inlined$with$lambda$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.relaunchApp++;
                if (this.this$0.relaunchApp < 2) {
                    u.h("再点一次重启APP");
                } else {
                    a.o(true);
                }
                u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity$onCreateView$$inlined$with$lambda$4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SelfCheckActivity$onCreateView$$inlined$with$lambda$4.this.this$0.relaunchApp = 0;
                    }
                }, 3000L);
            }
        });
        u.d(new Runnable() { // from class: cn.mucang.sundial.library.activity.SelfCheckActivity.onCreateView.2
            @Override // java.lang.Runnable
            public final void run() {
                SelfCheckActivity.this.retest();
            }
        }, 500L);
        FrameLayout root = getViewBinding().getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }
}
