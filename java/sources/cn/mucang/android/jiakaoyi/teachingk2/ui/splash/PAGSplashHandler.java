package cn.mucang.android.jiakaoyi.teachingk2.ui.splash;

import androidx.lifecycle.s;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTeachingSplashV11Binding;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.libpag.PAGFile;
import org.libpag.PAGView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;", "", "binding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;", "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;)V", "showProgress", "", TtmlNode.START, "activity", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;", "SimplePAGViewListener", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PAGSplashHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ActivityTeachingSplashV11Binding f8260a;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$SimplePAGViewListener;", "Lorg/libpag/PAGView$PAGViewListener;", "()V", "onAnimationCancel", "", "p0", "Lorg/libpag/PAGView;", "onAnimationEnd", "onAnimationRepeat", "onAnimationStart", "onAnimationUpdate", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static class a implements PAGView.PAGViewListener {
        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationCancel(PAGView p0) {
        }

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationEnd(PAGView p0) {
        }

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationStart(PAGView p0) {
        }

        @Override // org.libpag.PAGView.PAGViewListener
        public void onAnimationUpdate(PAGView p0) {
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$start$1", "Lorg/libpag/PAGView$PAGFlushListener;", "onFlush", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements PAGView.PAGFlushListener {

        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$start$1$onFlush$1", "Lorg/libpag/PAGView$PAGFlushListener;", "onFlush", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a implements PAGView.PAGFlushListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ PAGSplashHandler f8262a;

            a(PAGSplashHandler pAGSplashHandler) {
                this.f8262a = pAGSplashHandler;
            }

            @Override // org.libpag.PAGView.PAGFlushListener
            public void onFlush() {
                this.f8262a.f8260a.maskView.setVisibility(8);
                this.f8262a.f8260a.pagView.removePAGFlushListener(this);
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.PAGSplashHandler$b$b, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$start$1$onFlush$2", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$SimplePAGViewListener;", "onAnimationRepeat", "", "p0", "Lorg/libpag/PAGView;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class C0141b extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ PAGSplashHandler f8263a;

            C0141b(PAGSplashHandler pAGSplashHandler) {
                this.f8263a = pAGSplashHandler;
            }

            @Override // org.libpag.PAGView.PAGViewListener
            public void onAnimationRepeat(PAGView p0) {
                this.f8263a.f8260a.pagView.setProgress(0.5d);
            }
        }

        b() {
        }

        @Override // org.libpag.PAGView.PAGFlushListener
        public void onFlush() {
            PAGSplashHandler.this.f8260a.pagView.removePAGFlushListener(this);
            PAGSplashHandler.this.f8260a.pagView.addPAGFlushListener(new a(PAGSplashHandler.this));
            PAGSplashHandler.this.f8260a.pagView.setProgress(0.0d);
            PAGSplashHandler.this.f8260a.pagView.addListener(new C0141b(PAGSplashHandler.this));
            PAGSplashHandler.this.f8260a.pagView.setRepeatCount(0);
            PAGSplashHandler.this.f8260a.pagView.play();
        }
    }

    public PAGSplashHandler(ActivityTeachingSplashV11Binding binding) {
        r.e(binding, "binding");
        this.f8260a = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        this.f8260a.descLl.animate().alphaBy(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(400L).start();
        this.f8260a.progressBar.animate().alphaBy(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(400L).start();
    }

    public final void d(TeachSplashActivity activity) {
        r.e(activity, "activity");
        this.f8260a.pagView.setComposition(PAGFile.Load(activity.getAssets(), "splash.pag"));
        this.f8260a.pagView.setProgress(0.21d);
        this.f8260a.pagView.setScaleMode(3);
        this.f8260a.pagView.addPAGFlushListener(new b());
        kotlinx.coroutines.g.b(s.a(activity), null, null, new PAGSplashHandler$start$2(this, null), 3, null);
    }
}
