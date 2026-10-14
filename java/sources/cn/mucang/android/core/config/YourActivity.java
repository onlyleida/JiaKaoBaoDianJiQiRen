package cn.mucang.android.core.config;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.CompoundButton;
import android.widget.TextView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.mapping.ProfileStorage;
import cn.mucang.android.core.config.your.YourViewCategoryAddedTopTop;
import cn.mucang.android.core.location.LocationUtils;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.v0;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.framework.core.databinding.CoreYourBinding;
import com.alibaba.fastjson.JSON;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class YourActivity extends n implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2466a;
    private CoreYourBinding b;

    class a implements DialogInterface.OnClickListener {
        a(YourActivity yourActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    private static class b extends cn.mucang.android.core.api.a {
        private b() {
        }

        String b() {
            try {
                return httpGet("/api/open/v1/test-user/is-test-user.htm").isSuccess() ? "是" : "否";
            } catch (ApiException unused) {
                return "否";
            } catch (HttpException | InternalException unused2) {
                return "查询失败";
            }
        }

        @Override // cn.mucang.android.core.api.a
        protected String getApiHost() {
            return "https://product.kakamobi.com";
        }

        @Override // cn.mucang.android.core.api.a
        protected String getSignKey() {
            return "pscELfrL6fmznhWgez";
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    private void g() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this);
        for (cn.mucang.android.core.config.your.b bVar : f.a.a.a.h.b().c()) {
            boolean z = bVar instanceof YourViewCategoryAddedTopTop;
            ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R.layout.core__your_extra_category, (ViewGroup) this.b.container, false);
            if (z) {
                this.b.container.addView(viewGroup, 0);
            } else {
                this.b.container.addView(viewGroup);
            }
            ((TextView) viewGroup.findViewById(android.R.id.text1)).setText(bVar.b());
            Iterator<cn.mucang.android.core.config.your.c> it = bVar.a().iterator();
            while (it.hasNext()) {
                viewGroup.addView(it.next().a(layoutInflaterFrom, viewGroup));
            }
        }
    }

    private void h() {
        this.b.btnSpClear.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.config.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2472a.j(view);
            }
        });
        this.b.btnSpCheck.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.config.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2474a.l(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(View view) {
        String strTrim = this.b.editSpFileName.getText().toString().trim();
        if (strTrim.isEmpty()) {
            cn.mucang.android.core.utils.u.h("Sp 文件名不能为空");
            return;
        }
        String strTrim2 = this.b.editSpKey.getText().toString().trim();
        SharedPreferences sharedPreferencesB = j0.b(strTrim);
        if (strTrim2.isEmpty()) {
            sharedPreferencesB.edit().clear().apply();
            cn.mucang.android.core.utils.u.h("整个配置文件清空完成");
        } else {
            sharedPreferencesB.edit().remove(strTrim2).apply();
            cn.mucang.android.core.utils.u.h("单个key移除完成");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l(View view) {
        String strTrim = this.b.editSpFileName.getText().toString().trim();
        if (strTrim.isEmpty()) {
            cn.mucang.android.core.utils.u.h("Sp 文件名不能为空");
            return;
        }
        String strTrim2 = this.b.editSpKey.getText().toString().trim();
        SharedPreferences sharedPreferencesB = j0.b(strTrim);
        if (strTrim2.isEmpty()) {
            r(strTrim + "文件的所有配置", JSON.toJSONString(sharedPreferencesB.getAll()));
            return;
        }
        r(strTrim + "文件，key：" + strTrim2 + "的配置", sharedPreferencesB.getString(strTrim2, ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(String str) {
        this.b.testDevice.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q() {
        final String strB = new b(null).b();
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.core.config.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f2473a.o(strB);
            }
        });
    }

    private void r(String str, String str2) {
        new androidx.appcompat.app.c.a(this).setTitle(str).setMessage(str2).setPositiveButton("关闭", new a(this)).show();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "Your";
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.debug_on) {
            MucangConfig.z(true);
            return;
        }
        if (id == R.id.debug_off) {
            MucangConfig.z(false);
            return;
        }
        if (id == R.id.webview_debug_on) {
            WebView.setWebContentsDebuggingEnabled(true);
            return;
        }
        if (id == R.id.webview_debug_off) {
            WebView.setWebContentsDebuggingEnabled(false);
            return;
        }
        if (id == R.id.btn_view_objects) {
            new androidx.appcompat.app.c.a(this).setTitle("内存对象").setMessage(cn.mucang.android.core.utils.v.a()).setPositiveButton("确定", (DialogInterface.OnClickListener) null).show();
            return;
        }
        if (id == R.id.btn_select_city) {
            return;
        }
        if (id == R.id.btn_submit_city) {
            try {
                if (MucangConfig.v()) {
                    cn.mucang.android.core.location.c cVar = new cn.mucang.android.core.location.c();
                    cVar.m(this.b.cityName.getText().toString());
                    cVar.l(this.b.cityCode.getText().toString());
                    cVar.p(Double.parseDouble(this.b.cityLongitude.getText().toString()));
                    cVar.o(Double.parseDouble(this.b.cityLatitude.getText().toString()));
                    LocationUtils.r(cVar);
                    cn.mucang.android.core.utils.u.h("设置成功");
                } else {
                    cn.mucang.android.core.utils.u.h("当前不是调试模式，不能设置调试位置");
                }
                return;
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("默认替换", e2);
                cn.mucang.android.core.utils.u.h(e2.toString());
                return;
            }
        }
        if (id == R.id.btn_appuser) {
            cn.mucang.android.core.utils.j.u(cn.mucang.android.core.identity.i.b());
            cn.mucang.android.core.utils.u.h("已复制appuser至粘帖板");
            return;
        }
        if (id == R.id.btn_mucangid) {
            if (n0.e(this.f2466a)) {
                cn.mucang.android.core.utils.u.h("木仓Id为空");
                return;
            } else {
                cn.mucang.android.core.utils.j.u(this.f2466a);
                cn.mucang.android.core.utils.u.h("已复制mucangId至粘帖板");
                return;
            }
        }
        if (id == R.id.btn_log_level) {
            try {
                if (MucangConfig.v()) {
                    cn.mucang.android.core.utils.t.j(Integer.parseInt(this.b.logLevelEdit.getText().toString()));
                    cn.mucang.android.core.utils.u.h("设置成功");
                } else {
                    cn.mucang.android.core.utils.u.h("当前不是调试模式，不能设置日志级别");
                }
                return;
            } catch (Exception e3) {
                cn.mucang.android.core.utils.u.h(e3.toString());
                return;
            }
        }
        if (id == R.id.btn_view_modules) {
            Map<String, StringBuilder> mapA = v0.a();
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, StringBuilder> entry : mapA.entrySet()) {
                sb.append(entry.getKey());
                sb.append(":");
                sb.append((CharSequence) entry.getValue());
                sb.append("\n");
                sb.append("========================\n");
            }
            new androidx.appcompat.app.c.a(this).setTitle("模块内容").setMessage(sb.toString()).setPositiveButton("确定", (DialogInterface.OnClickListener) null).show();
            cn.mucang.android.core.utils.j.u(sb.toString());
            cn.mucang.android.core.utils.u.h("已复制当前内容至粘帖板");
            return;
        }
        if (id == R.id.url_ok) {
            String string = this.b.editUrl.getText().toString();
            if (n0.e(string)) {
                cn.mucang.android.core.utils.u.h("请输入URL");
                return;
            } else {
                f.a.a.a.activity.h.d(this, string, true);
                return;
            }
        }
        if (id == R.id.edit_autoclick_on) {
            f.a.a.a.d.f(true);
            return;
        }
        if (id == R.id.edit_autoclick_off) {
            f.a.a.a.d.f(false);
            return;
        }
        if (id == R.id.btn_androidid) {
            cn.mucang.android.core.utils.j.u(cn.mucang.android.core.identity.i.a());
            cn.mucang.android.core.utils.u.h("已复制androidId至粘帖板");
        } else if (id == R.id.remote_config_ok) {
            new androidx.appcompat.app.c.a(this).setTitle("远程配置").setMessage(s.h().e(this.b.editRemoteConfig.getText().toString())).setPositiveButton("确定", (DialogInterface.OnClickListener) null).show();
        } else if (id == R.id.btn_test_h5_protocol) {
            f.a.a.a.activity.h.d(view.getContext(), "https://share-m.kakamobi.com/activity.kakamobi.com/webview-full/", true);
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (cn.mucang.android.core.utils.g.b(ProfileStorage.c())) {
            finish();
            cn.mucang.android.core.utils.u.h("非法启动");
            return;
        }
        CoreYourBinding coreYourBindingInflate = CoreYourBinding.inflate(getLayoutInflater());
        this.b = coreYourBindingInflate;
        setContentView(coreYourBindingInflate.getRoot());
        cn.mucang.android.core.location.c cVarD = LocationUtils.d();
        if (cVarD != null) {
            this.b.cityName.setText(cVarD.c());
            this.b.cityCode.setText(cVarD.b());
            this.b.cityLongitude.setText(String.valueOf(cVarD.f()));
            this.b.cityLatitude.setText(String.valueOf(cVarD.e()));
        } else {
            this.b.cityName.setText("");
            this.b.cityCode.setText("");
            this.b.cityLongitude.setText("");
            this.b.cityLatitude.setText("");
        }
        if (MucangConfig.v()) {
            this.b.debugOn.setChecked(true);
        } else {
            this.b.debugOff.setChecked(true);
        }
        this.b.appuser.setText(cn.mucang.android.core.identity.i.b());
        String strF = j0.f("_am_am_.db", "mucangId", "");
        this.f2466a = strF;
        this.b.mucangid.setText(strF);
        this.b.logLevelEdit.setText(String.valueOf(cn.mucang.android.core.utils.t.f()));
        this.b.qudao.setText(cn.mucang.android.core.utils.p.h());
        this.b.renyuan.setText(cn.mucang.android.core.utils.p.i());
        this.b.androidid.setText(cn.mucang.android.core.identity.i.a());
        this.b.emulator.setText(cn.mucang.android.core.utils.l.a() ? "是" : "否");
        if (f.a.a.a.d.a()) {
            this.b.editAutoclickOn.setChecked(true);
        } else {
            this.b.editAutoclickOff.setChecked(true);
        }
        this.b.swEncodeBaseParams.setChecked(f.a.a.a.d.e());
        this.b.swEncodeBaseParams.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.core.config.h
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                f.a.a.a.d.g(z);
            }
        });
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.config.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f2470a.q();
            }
        });
        g();
        this.b.debugOn.setOnClickListener(this);
        this.b.debugOff.setOnClickListener(this);
        this.b.btnViewObjects.setOnClickListener(this);
        this.b.btnSelectCity.setOnClickListener(this);
        this.b.btnAppuser.setOnClickListener(this);
        this.b.btnLogLevel.setOnClickListener(this);
        this.b.btnViewModules.setOnClickListener(this);
        this.b.urlOk.setOnClickListener(this);
        this.b.btnMucangid.setOnClickListener(this);
        this.b.btnSubmitCity.setOnClickListener(this);
        this.b.btnAndroidid.setOnClickListener(this);
        this.b.editAutoclickOn.setOnClickListener(this);
        this.b.editAutoclickOff.setOnClickListener(this);
        this.b.remoteConfigOk.setOnClickListener(this);
        this.b.btnTestH5Protocol.setOnClickListener(this);
        this.b.webviewDebugOn.setOnClickListener(this);
        this.b.webviewDebugOff.setOnClickListener(this);
        h();
    }
}
