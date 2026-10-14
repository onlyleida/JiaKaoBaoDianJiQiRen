package cn.mucang.android.core.identity;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Process;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import com.google.android.gms.actions.SearchIntents;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\nH\u0016¢\u0006\u0002\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016JK\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0002\u0010\u0016J9\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\nH\u0016¢\u0006\u0002\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/core/identity/OaidProviderForInit;", "Landroid/content/ContentProvider;", "()V", InputIdCardActivity.DELETE, "", "uri", "Landroid/net/Uri;", "selection", "", "selectionArgs", "", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getType", "insert", "values", "Landroid/content/ContentValues;", "onCreate", "", SearchIntents.EXTRA_QUERY, "Landroid/database/Cursor;", "projection", "sortOrder", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OaidProviderForInit extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2538a = new a(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/core/identity/OaidProviderForInit$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(Context context) {
            r.e(context, "$context");
            try {
                if (OaidStorage.f2568a.get() == null && new OaidConfig("MdidSdkHelper.InitSdk").d()) {
                    if (!PrivacyAgreementSetting.d()) {
                        PrivacyAgreementSetting.c("oaid");
                        return;
                    }
                    if (!PrivacyDataManager.d("_oaid_req_", null, 2, null)) {
                        l0.a("core", "OAID:不启动进程-time-limit");
                        OaidStorage.c();
                        return;
                    }
                    t.a("core", "oaid init start");
                    context.getContentResolver().insert(Uri.parse("content://" + ((Object) context.getPackageName()) + ".oaid.no.one.use/init"), new ContentValues());
                    PrivacyDataManager.q("_oaid_req_");
                    return;
                }
                l0.a("core", "OAID:不启动进程");
                OaidStorage.c();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        public final synchronized void b(final Context context) {
            r.e(context, "context");
            a0.a();
            new Thread(new Runnable() { // from class: cn.mucang.android.core.identity.e
                @Override // java.lang.Runnable
                public final void run() {
                    OaidProviderForInit.a.c(context);
                }
            }).start();
        }
    }

    public static final synchronized void c(Context context) {
        f2538a.b(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(OaidProviderForInit this$0) {
        r.e(this$0, "this$0");
        try {
            Thread.sleep(3000L);
            if (new OaidConfig("MdidSdkHelper.InitSdk").d() && this$0.getContext() != null) {
                OaIdFetcher.f2563a.p(new Runnable() { // from class: cn.mucang.android.core.identity.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        OaidProviderForInit.e();
                    }
                });
                OaIdFetcher.g();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e() {
        t.d("core", "oaid done with:" + ((Object) OaidStorage.f2568a.get()) + ",process suicide");
        Process.killProcess(Process.myPid());
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        r.e(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        r.e(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        r.e(uri, "uri");
        return uri;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        new Thread(new Runnable() { // from class: cn.mucang.android.core.identity.f
            @Override // java.lang.Runnable
            public final void run() {
                OaidProviderForInit.d(this.f2548a);
            }
        }).start();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        r.e(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        r.e(uri, "uri");
        return 0;
    }
}
