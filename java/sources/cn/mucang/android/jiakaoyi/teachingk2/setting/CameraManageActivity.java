package cn.mucang.android.jiakaoyi.teachingk2.setting;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.view.Surface;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCameraManageBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemCameraManageBinding;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.android.jky.camera.UsbCameraThread;
import cn.mucang.android.jky.camera.UsbSerial;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.iflytek.speech.UtilityConfig;
import com.serenegiant.usb.widget.CameraViewInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u001c\u001dB\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0014J\b\u0010\r\u001a\u00020\fH\u0014J,\u0010\u000e\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u001c\u0010\u0015\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u001c\u0010\u0016\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J&\u0010\u0017\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u001a\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u001b\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;", "Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "previewId", "", "getStatName", "", "init", "", "onDestroy", "onSurfaceChanged", "view", "Lcom/serenegiant/usb/widget/CameraViewInterface;", "surface", "Landroid/view/Surface;", "width", "height", "onSurfaceCreated", "onSurfaceDestroy", "startPreview", UtilityConfig.KEY_DEVICE_INFO, "Landroid/hardware/usb/UsbDevice;", "showText", "stopPreview", "CameraItemBinder", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CameraManageActivity extends BaseViewBindingActivity<ActivityCameraManageBinding> implements CameraViewInterface.Callback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f7910d = new b(null);
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private int c;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0002J\u001e\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0017R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$CameraItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jky/camera/CameraIntent;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V", "strList", "", "", "getResId", "", "intent", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<CameraIntent, ItemCameraManageBinding> {
        private final List<String> b;
        final /* synthetic */ CameraManageActivity c;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.setting.CameraManageActivity$a$a, reason: collision with other inner class name */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        public /* synthetic */ class C0136a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f7911a;

            static {
                int[] iArr = new int[CameraIntent.values().length];
                iArr[CameraIntent.FACE.ordinal()] = 1;
                f7911a = iArr;
            }
        }

        public a(CameraManageActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.c = this$0;
            ArrayList arrayList = new ArrayList();
            this.b = arrayList;
            arrayList.add("不绑定");
            Iterator<T> it = UsbCameraManager.INSTANCE.getUsbSerialList().iterator();
            while (it.hasNext()) {
                arrayList.add(kotlin.jvm.internal.r.m("USB", Integer.valueOf(((UsbSerial) it.next()).getDevBus())));
            }
        }

        private final int n(CameraIntent cameraIntent) {
            return C0136a.f7911a[cameraIntent.ordinal()] == 1 ? R.drawable.setting_camera_face : R.drawable.setting_ic_camera;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(final ViewBindingHolder holder, CameraManageActivity this$0, final a this$1, final CameraIntent item, View view) {
            kotlin.jvm.internal.r.e(holder, "$holder");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            kotlin.jvm.internal.r.e(item, "$item");
            ((ItemCameraManageBinding) holder.getViewBinding()).usbTv.setSelected(true);
            final androidx.appcompat.widget.d0 d0Var = new androidx.appcompat.widget.d0(this$0);
            d0Var.l(new ArrayAdapter(this$0, R.layout.item_select_usb, this$1.b));
            d0Var.P(-2);
            d0Var.G(-2);
            d0Var.B(view);
            d0Var.setBackgroundDrawable(null);
            d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.e0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                    CameraManageActivity.a.t(holder, this$1, item, d0Var, adapterView, view2, i, j);
                }
            });
            d0Var.J(new PopupWindow.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.c0
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    CameraManageActivity.a.u(holder);
                }
            });
            d0Var.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(ViewBindingHolder holder, a this$0, CameraIntent item, androidx.appcompat.widget.d0 pop, AdapterView adapterView, View view, int i, long j) {
            kotlin.jvm.internal.r.e(holder, "$holder");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(pop, "$pop");
            ((ItemCameraManageBinding) holder.getViewBinding()).usbTv.setText(this$0.b.get(i));
            if (i > 0) {
                item.bindSerial(UsbCameraManager.INSTANCE.getUsbSerialList().get(i - 1).getSerial());
            } else {
                item.bindSerial("");
            }
            pop.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void u(ViewBindingHolder holder) {
            kotlin.jvm.internal.r.e(holder, "$holder");
            ((ItemCameraManageBinding) holder.getViewBinding()).usbTv.setSelected(false);
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ItemCameraManageBinding> holder, final CameraIntent item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemCameraManageBinding) holder.getViewBinding()).intentTv.setText(item.getDesc());
            ((ItemCameraManageBinding) holder.getViewBinding()).iconIv.setImageResource(n(item));
            Iterator<UsbSerial> it = UsbCameraManager.INSTANCE.getUsbSerialList().iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (kotlin.jvm.internal.r.a(it.next().getSerial(), item.getBindSerial())) {
                    break;
                } else {
                    i++;
                }
            }
            TextView textView = ((ItemCameraManageBinding) holder.getViewBinding()).usbTv;
            String str = (String) kotlin.collections.s.f0(this.b, i + 1);
            if (str == null) {
                str = "NULL";
            }
            textView.setText(str);
            TextView textView2 = ((ItemCameraManageBinding) holder.getViewBinding()).usbTv;
            final CameraManageActivity cameraManageActivity = this.c;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CameraManageActivity.a.s(holder, cameraManageActivity, this, item, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CameraManageActivity.class));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.setting.CameraManageActivity$init$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.setting.CameraManageActivity$init$3", f = "CameraManageActivity.kt", l = {87}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return CameraManageActivity.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass3) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.s0.a(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            CharSequence text = CameraManageActivity.this.g().previewTv.getText();
            kotlin.jvm.internal.r.d(text, "viewBinding.previewTv.text");
            if (text.length() == 0) {
                LinkedHashMap<String, UsbDevice> connectedPortList = UsbCameraManager.INSTANCE.getConnectedPortList();
                Set<String> setKeySet = connectedPortList.keySet();
                kotlin.jvm.internal.r.d(setKeySet, "usbList.keys");
                String str = (String) kotlin.collections.s.d0(setKeySet);
                CameraManageActivity.this.s(connectedPortList.get(str), CameraManageActivity.this.g().cameraView.getSurface(), str);
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CameraManageActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(final CameraManageActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        if (usbCameraManager.getCameraMap().isEmpty()) {
            cn.mucang.android.core.utils.u.h("没有连接的摄像头");
            return;
        }
        this$0.g().previewTv.setSelected(true);
        final androidx.appcompat.widget.d0 d0Var = new androidx.appcompat.widget.d0(this$0);
        final LinkedHashMap<String, UsbDevice> connectedPortList = usbCameraManager.getConnectedPortList();
        Set<String> setKeySet = connectedPortList.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "usbList.keys");
        final List listM0 = CollectionsKt___CollectionsKt.M0(setKeySet);
        d0Var.l(new ArrayAdapter(this$0, R.layout.item_select_usb, listM0));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.setBackgroundDrawable(null);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.i0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                CameraManageActivity.m(d0Var, this$0, listM0, connectedPortList, adapterView, view2, i, j);
            }
        });
        d0Var.J(new PopupWindow.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.g0
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                CameraManageActivity.n(this.f7953a);
            }
        });
        d0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(androidx.appcompat.widget.d0 pop, CameraManageActivity this$0, List strList, LinkedHashMap usbList, AdapterView adapterView, View view, int i, long j) {
        kotlin.jvm.internal.r.e(pop, "$pop");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(strList, "$strList");
        kotlin.jvm.internal.r.e(usbList, "$usbList");
        pop.dismiss();
        if (kotlin.jvm.internal.r.a(this$0.g().previewTv.getText(), strList.get(i))) {
            return;
        }
        this$0.t((UsbDevice) usbList.get(this$0.g().previewTv.getText()));
        this$0.s((UsbDevice) usbList.get(strList.get(i)), this$0.g().cameraView.getSurface(), (String) strList.get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CameraManageActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().previewTv.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(UsbDevice usbDevice, Surface surface, String str) {
        this.c = surface == null ? 0 : surface.hashCode();
        UsbCameraThread usbCameraThread = UsbCameraManager.INSTANCE.getCameraMap().get(usbDevice);
        if (usbCameraThread != null) {
            usbCameraThread.startPreviewCamera(surface, this.c);
        }
        g().previewTv.setText(str);
    }

    private final void t(UsbDevice usbDevice) {
        UsbCameraThread usbCameraThread = UsbCameraManager.INSTANCE.getCameraMap().get(usbDevice);
        if (usbCameraThread == null) {
            return;
        }
        usbCameraThread.stopPreviewCamera(this.c);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "摄像头管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraManageActivity.k(this.f7951a, view);
            }
        });
        g().title.titleTv.setText("摄像头管理");
        g().dataRv.setLayoutManager(new LinearLayoutManager(this));
        g().dataRv.setAdapter(this.b);
        this.b.g(CameraIntent.class, new a(this));
        this.b.i(CameraIntent.INSTANCE.getCacheList());
        g().cameraView.setCallback(this);
        g().previewTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraManageActivity.l(this.f7955a, view);
            }
        });
        UsbCameraManager.INSTANCE.tryOpenAllDevice();
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new AnonymousClass3(null), 3, null);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        UsbCameraManager.INSTANCE.tryCloseNoUseCamera();
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceChanged(CameraViewInterface view, Surface surface, int width, int height) {
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceCreated(CameraViewInterface view, Surface surface) {
        LinkedHashMap<String, UsbDevice> connectedPortList = UsbCameraManager.INSTANCE.getConnectedPortList();
        Set<String> setKeySet = connectedPortList.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "usbList.keys");
        String str = (String) kotlin.collections.s.d0(setKeySet);
        s(connectedPortList.get(str), surface, str);
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceDestroy(CameraViewInterface view, Surface surface) {
    }
}
