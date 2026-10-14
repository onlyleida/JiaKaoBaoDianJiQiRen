package cn.mucang.jiakaoyi.uilib.ui.login;

import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u0;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import f.a.a.a.p009n.dialog.SafeDialogFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.login.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u0016\u001a\u00020\fH\u0016J\b\u0010\u0017\u001a\u00020\fH\u0016J\b\u0010\u0018\u001a\u00020\fH\u0016J\u001a\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0018\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00050\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/login/CoachLoginFragment;", "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;", "()V", "loginCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "loginSuccess", "kotlin.jvm.PlatformType", "webView", "Lcn/mucang/android/core/webview/core/MucangWebView;", "getWebUrl", "onActivityCreated", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onDestroy", "onPause", "onResume", "onViewCreated", "view", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CoachLoginFragment extends SafeDialogFragment {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f9866d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MucangWebView f9867a;
    private cn.mucang.android.jiakaoyi.framework.h.b<String> b;
    private final cn.mucang.android.jiakaoyi.framework.h.b<String> c = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.login.a
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            CoachLoginFragment.v(this.f9861a, (String) obj);
        }
    };

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.login.f$a */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\b¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/login/CoachLoginFragment$Companion;", "", "()V", "show", "", "fm", "Landroidx/fragment/app/FragmentManager;", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(FragmentManager fm, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
            r.e(fm, "fm");
            CoachLoginFragment coachLoginFragment = new CoachLoginFragment();
            coachLoginFragment.b = bVar;
            coachLoginFragment.show(fm, "LoginFragment");
        }
    }

    private final String s() {
        return MucangConfig.v() ? "https://share-m.ttt.kakamobi.com/activity.kakamobi.com/jiakaobaodian-sakaar/qrcode.html" : "https://share-m.kakamobi.com/activity.kakamobi.com/jiakaobaodian-sakaar/qrcode.html";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(CoachLoginFragment this$0, String data) {
        r.e(this$0, "this$0");
        r.e(data, "data");
        if (this$0.isDetached() || !this$0.isAdded()) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.h.b<String> bVar = this$0.b;
        if (bVar != null) {
            bVar.callback(data);
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(CoachLoginFragment this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        JkyJsBridge.e(this.c);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        return inflater.inflate(R.layout.dialog_login, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MucangWebView mucangWebView = this.f9867a;
        if (mucangWebView == null) {
            r.u("webView");
            throw null;
        }
        u0.c(mucangWebView);
        JkyJsBridge.e(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        MucangWebView mucangWebView = this.f9867a;
        if (mucangWebView != null) {
            mucangWebView.onPause();
        } else {
            r.u("webView");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) (((double) displayMetrics.heightPixels) * 0.75d);
        int i2 = (int) (((double) displayMetrics.widthPixels) * 0.69d);
        Dialog dialog = getDialog();
        r.c(dialog);
        Window window = dialog.getWindow();
        r.c(window);
        WindowManager.LayoutParams attributes = window.getAttributes();
        r.d(attributes, "dialog!!.window!!.attributes");
        ((ViewGroup.LayoutParams) attributes).width = i2;
        ((ViewGroup.LayoutParams) attributes).height = i;
        Dialog dialog2 = getDialog();
        r.c(dialog2);
        Window window2 = dialog2.getWindow();
        r.c(window2);
        window2.setAttributes(attributes);
        super.onResume();
        MucangWebView mucangWebView = this.f9867a;
        if (mucangWebView != null) {
            mucangWebView.onResume();
        } else {
            r.u("webView");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        view.findViewById(R.id.close_dialog).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.login.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CoachLoginFragment.w(this.f9862a, view2);
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.dialog_title);
        TextView textView2 = (TextView) view.findViewById(R.id.wxTip);
        View viewFindViewById = view.findViewById(R.id.phone_login);
        textView.setText("教练登录");
        textView2.setText("使用微信扫码登录");
        viewFindViewById.setVisibility(8);
        View viewFindViewById2 = view.findViewById(R.id.web_view);
        r.d(viewFindViewById2, "view.findViewById<MucangWebView>(R.id.web_view)");
        MucangWebView mucangWebView = (MucangWebView) viewFindViewById2;
        this.f9867a = mucangWebView;
        if (mucangWebView == null) {
            r.u("webView");
            throw null;
        }
        mucangWebView.loadUrl(((Object) s()) + "?deviceNum=" + DeviceUtils.c() + "&type=2&kemu=" + getResources().getInteger(R.integer.core_kemu) + "&isLogout=false");
    }
}
