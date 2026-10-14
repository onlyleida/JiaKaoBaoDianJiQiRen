package cn.mucang.android.core.config.mapping;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import f.a.a.a.storage.EncryptionStorage;
import f.a.a.a.storage.SpStorage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u0004\u0018\u00010\u0007J\r\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011H\u0007J\b\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0015\u0010\u0016\u001a\u00020\u00132\b\u0010\u0017\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0018J \u0010\u0019\u001a\u00020\u00132\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00112\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/core/config/mapping/ProfileStorage;", "", "()V", "KEY_PROFILE_ID_SP_NAME", "", "cache", "Ljava/util/ArrayList;", "Lcn/mucang/android/core/config/mapping/ProfileJsonData;", "Lkotlin/collections/ArrayList;", "profileStorage", "Lcn/mucang/android/core/storage/EncryptionStorage;", "tokenStorage", "getCurrentProfile", "getCurrentProfileIdFromSp", "", "()Ljava/lang/Long;", "getProfiles", "", "init", "", "removeSuffix", "str", "setCurrentProfileId", TtmlNode.ATTR_ID, "(Ljava/lang/Long;)V", "updateProfiles", "profiles", "token", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProfileStorage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProfileStorage f2487a = new ProfileStorage();
    private static final EncryptionStorage b = new EncryptionStorage(new SpStorage("__core_profile_list__"), null, 2, null);
    private static final EncryptionStorage c = new EncryptionStorage(new SpStorage("__core_profile_token__"), null, 2, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ArrayList<ProfileJsonData> f2488d = new ArrayList<>();

    private ProfileStorage() {
    }

    public static final List<ProfileJsonData> c() {
        ArrayList<ProfileJsonData> arrayList = f2488d;
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        try {
            List array = JSON.parseArray(b.get(), ProfileJsonData.class);
            arrayList.clear();
            arrayList.addAll(array);
            return arrayList;
        } catch (Exception unused) {
            return u.j();
        }
    }

    public static final void d() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.config.mapping.g
            @Override // java.lang.Runnable
            public final void run() {
                ProfileStorage.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e() {
        String str = c.get();
        if (str == null || str.length() == 0) {
            f2487a.i(null, null);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (new ProfileAdminApi(str).e()) {
                ProfileAdminApi profileAdminApi = new ProfileAdminApi(str);
                ProfileStorage profileStorage = f2487a;
                profileStorage.i(profileAdminApi.c(profileStorage.b()), str);
            }
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    private final String g(String str) {
        if (!t.o(str, "/", false, 2, null)) {
            return str;
        }
        int length = str.length() - 1;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(0, length);
        r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final ProfileJsonData a() {
        Object obj;
        Object next;
        List<ProfileJsonData> listC = c();
        Long lB = b();
        Iterator<T> it = listC.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(lB != null && ((ProfileJsonData) next).getId() == lB.longValue()));
        ProfileJsonData profileJsonData = (ProfileJsonData) next;
        if (profileJsonData != null) {
            return profileJsonData;
        }
        for (Object obj2 : listC) {
            if (r.a(((ProfileJsonData) obj2).getName(), "product")) {
                obj = obj2;
                break;
            }
        }
        ProfileJsonData profileJsonData2 = (ProfileJsonData) obj;
        return profileJsonData2 == null ? (ProfileJsonData) s.e0(listC) : profileJsonData2;
    }

    public final Long b() {
        String strF = j0.f("__core_profile_id__", "currentProfileId", "");
        if (strF == null) {
            return null;
        }
        return kotlin.text.s.l(strF);
    }

    public final void h(Long l) {
        j0.k("__core_profile_id__", "currentProfileId", l == null ? null : l.toString());
    }

    public final void i(List<ProfileJsonData> list, String str) {
        if (!(list == null || list.isEmpty())) {
            if (!(str == null || str.length() == 0)) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    for (ProfileHostJsonData profileHostJsonData : ((ProfileJsonData) it.next()).getList()) {
                        ProfileStorage profileStorage = f2487a;
                        profileHostJsonData.setName(profileStorage.g(profileHostJsonData.getName()));
                        profileHostJsonData.setValue(profileStorage.g(profileHostJsonData.getValue()));
                    }
                }
                ArrayList<ProfileJsonData> arrayList = f2488d;
                arrayList.clear();
                arrayList.addAll(list);
                b.b(JSON.toJSONString(list));
                c.b(str);
                return;
            }
        }
        b.b(null);
        c.b(null);
    }
}
