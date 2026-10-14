package cn.mucang.android.core.api.verify;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import cn.mucang.android.core.api.verify.captcha.CaptchaConstant;
import cn.mucang.android.core.api.verify.geetest.GeetestCheckInfo;
import cn.mucang.android.core.utils.k;
import cn.mucang.android.framework.core.R;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import f.a.a.a.activity.h;

/* JADX INFO: loaded from: classes.dex */
public class GeetestVerifyActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.core.api.verify.c f2431a = new cn.mucang.android.core.api.verify.c();
    private View b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressDialog f2432d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GeetestVerifyActivity.this.finish();
        }
    }

    class b implements cn.mucang.android.core.api.c.a<GeetestCheckInfo> {
        b() {
        }

        @Override // cn.mucang.android.core.api.c.a
        public void a() {
        }

        @Override // cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            Toast.makeText(GeetestVerifyActivity.this, exc.getMessage(), 0).show();
            GeetestVerifyActivity.this.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        public void d() {
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(GeetestCheckInfo geetestCheckInfo) {
            k.b(GeetestVerifyActivity.this.f2432d);
            GeetestVerifyActivity.this.c = geetestCheckInfo.getReqId();
            JSONObject object = JSON.parseObject(geetestCheckInfo.getContent());
            GeetestVerifyActivity.this.k(object.getString("gt"), object.getString("challenge"), object.getBoolean("success").booleanValue());
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public GeetestCheckInfo request() throws Exception {
            return GeetestVerifyActivity.this.f2431a.c();
        }
    }

    class c implements DialogInterface.OnCancelListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            Toast.makeText(GeetestVerifyActivity.this, "取消验证", 0).show();
            GeetestVerifyActivity.this.finish();
        }
    }

    class d implements cn.mucang.android.core.api.verify.geetest.b.InterfaceC0069b {
        d() {
        }

        @Override // cn.mucang.android.core.api.verify.geetest.b.InterfaceC0069b
        public void a() {
            Toast.makeText(GeetestVerifyActivity.this, CaptchaConstant.TOAST_LOAD_ERROR, 0).show();
            GeetestVerifyActivity.this.finish();
        }

        @Override // cn.mucang.android.core.api.verify.geetest.b.InterfaceC0069b
        public void b() {
            GeetestVerifyActivity.this.finish();
        }

        @Override // cn.mucang.android.core.api.verify.geetest.b.InterfaceC0069b
        public void c(Boolean bool) {
            k.b(GeetestVerifyActivity.this.f2432d);
        }

        @Override // cn.mucang.android.core.api.verify.geetest.b.InterfaceC0069b
        public void d(boolean z, String str) {
            if (!z) {
                Toast.makeText(GeetestVerifyActivity.this, "验证失败", 0).show();
            } else {
                JSONObject object = JSON.parseObject(str);
                GeetestVerifyActivity.this.l(object.getString("geetest_challenge"), object.getString("geetest_validate"), object.getString("geetest_seccode"));
            }
        }
    }

    class e implements cn.mucang.android.core.api.c.a<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2437a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        e(String str, String str2, String str3) {
            this.f2437a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // cn.mucang.android.core.api.c.a
        public void a() {
        }

        @Override // cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            GeetestVerifyActivity.this.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        public void d() {
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(Void r3) {
            cn.mucang.android.core.api.verify.e eVarH = GeetestVerifyActivity.this.h();
            if (eVarH != null) {
                eVarH.c(true, null);
            }
            GeetestVerifyActivity.this.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Void request() throws Exception {
            GeetestVerifyActivity.this.f2431a.d(GeetestVerifyActivity.this.c, this.f2437a, this.b, this.c);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public cn.mucang.android.core.api.verify.e h() {
        f.a.a.a.activity.c cVarA = h.a(ErrorAction.VERIFY_GEETEST.url);
        if (cVarA instanceof cn.mucang.android.core.api.verify.e) {
            return (cn.mucang.android.core.api.verify.e) cVarA;
        }
        return null;
    }

    public static void i(Context context) {
        Intent intent = new Intent(context, (Class<?>) GeetestVerifyActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    private void j() {
        this.f2432d.setMessage("正在加载验证码");
        this.f2432d.show();
        cn.mucang.android.core.api.c.b.b(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(String str, String str2, boolean z) {
        cn.mucang.android.core.api.verify.geetest.b bVar = new cn.mucang.android.core.api.verify.geetest.b(this, "请完成下方的验证任务", str, str2, Boolean.valueOf(z));
        bVar.setOnCancelListener(new c());
        bVar.j(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str, String str2, String str3) {
        this.f2432d.setMessage("正在验证");
        cn.mucang.android.core.api.c.b.b(new e(str, str2, str3));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.core__api_verify_activity_geetest);
        View viewFindViewById = findViewById(R.id.back);
        this.b = viewFindViewById;
        viewFindViewById.setOnClickListener(new a());
        this.f2432d = new ProgressDialog(this);
        j();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.core.api.verify.e eVarH = h();
        if (eVarH != null) {
            eVarH.c(false, null);
        }
    }
}
