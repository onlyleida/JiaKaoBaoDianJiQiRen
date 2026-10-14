package f.a.a.a.p009n;

import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import cn.mucang.android.core.permission.model.PermissionModel;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.core.utils.z;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mobile.auth.gatewayauth.Constant;
import f.a.a.a.p009n.c.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.k;
import kotlin.collections.v;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.a.n.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J+\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016¢\u0006\u0002\u0010\u0016J\u001b\u0010\u0017\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013H\u0002¢\u0006\u0002\u0010\u0018J%\u0010\u0019\u001a\u00020\u000b2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/core/permission/PermissionRequestFragment;", "Landroid/app/Fragment;", "()V", "grantedPermissions", "", "", "mListener", "Lcn/mucang/android/core/permission/callbacks/PermissionsCallback;", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "callBack", "", "permissionsResult", "Lcn/mucang/android/core/permission/model/PermissionsResult;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onRequestPermissionsResult", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "requestPermission", "([Ljava/lang/String;)V", "requestPermissions", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "(Lcn/mucang/android/core/permission/callbacks/PermissionsCallback;[Ljava/lang/String;)V", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionRequestFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14469a = 42;
    private List<String> b = new ArrayList();
    private a c;

    private final void a(PermissionsResult permissionsResult) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.permissionsResult(permissionsResult);
        }
        this.c = null;
    }

    private final void b(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str = strArr[i];
            i++;
            if (z.a(str)) {
                this.b.add(str);
            } else {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(strArr.length);
            for (String str2 : strArr) {
                arrayList2.add(new PermissionModel(str2, true));
            }
            a(new PermissionsResult(true, arrayList2));
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            requestPermissions((String[]) array, this.f14469a);
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it = this.b.iterator();
        while (it.hasNext()) {
            arrayList3.add(new PermissionModel((String) it.next(), true));
        }
        ArrayList arrayList4 = new ArrayList(v.u(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList4.add(new PermissionModel((String) it2.next(), false, false));
        }
        arrayList3.addAll(arrayList4);
        a(new PermissionsResult(false, arrayList3));
    }

    public final void c(a aVar, String[] permissions) {
        r.e(permissions, "permissions");
        if (permissions.length == 0) {
            return;
        }
        this.c = aVar;
        String[] strArr = (!ArraysKt___ArraysKt.q(permissions, "android.permission.WRITE_EXTERNAL_STORAGE") || ArraysKt___ArraysKt.q(permissions, "android.permission.READ_EXTERNAL_STORAGE")) ? permissions : (String[]) k.k(permissions, "android.permission.READ_EXTERNAL_STORAGE");
        if (!ArraysKt___ArraysKt.q(permissions, "android.permission.WRITE_EXTERNAL_STORAGE") && ArraysKt___ArraysKt.q(permissions, "android.permission.READ_EXTERNAL_STORAGE")) {
            strArr = (String[]) k.k(permissions, "android.permission.WRITE_EXTERNAL_STORAGE");
        }
        b(strArr);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        boolean z;
        r.e(permissions, "permissions");
        r.e(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (this.c == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = this.b.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                break;
            } else {
                arrayList.add(new PermissionModel((String) it.next(), true));
            }
        }
        int length = permissions.length - 1;
        if (length >= 0) {
            int i = 0;
            boolean z2 = true;
            while (true) {
                int i2 = i + 1;
                String str = permissions[i];
                PermissionModel permissionModel = new PermissionModel(str);
                if (grantResults[i] == 0) {
                    permissionModel.setGranted(true);
                } else {
                    permissionModel.setShouldShowRequest(androidx.core.app.a.t(getActivity(), str));
                    z2 = false;
                }
                arrayList.add(permissionModel);
                if (i2 > length) {
                    break;
                } else {
                    i = i2;
                }
            }
            z = z2;
        }
        a(new PermissionsResult(z, arrayList));
    }
}
