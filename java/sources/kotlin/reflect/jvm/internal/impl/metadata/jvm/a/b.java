package kotlin.reflect.jvm.internal.impl.metadata.jvm.a;

import androidx.exifinterface.media.ExifInterface;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15369a = CollectionsKt___CollectionsKt.m0(u.m('k', 'o', 't', 'l', 'i', 'n'), "", null, null, 0, null, null, 62, null);
    private static final Map<String, String> b;

    static {
        int i = 0;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listM = u.m("Boolean", "Z", "Char", "C", "Byte", "B", "Short", ExifInterface.LATITUDE_SOUTH, "Int", "I", "Float", "F", "Long", "J", "Double", "D");
        int iB = kotlin.internal.c.b(0, listM.size() - 1, 2);
        if (iB >= 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 2;
                StringBuilder sb = new StringBuilder();
                String str = f15369a;
                sb.append(str);
                sb.append('/');
                sb.append((String) listM.get(i2));
                int i4 = i2 + 1;
                linkedHashMap.put(sb.toString(), listM.get(i4));
                linkedHashMap.put(str + '/' + ((String) listM.get(i2)) + "Array", r.m("[", listM.get(i4)));
                if (i2 == iB) {
                    break;
                } else {
                    i2 = i3;
                }
            }
        }
        linkedHashMap.put(r.m(f15369a, "/Unit"), ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        a(linkedHashMap, "Any", "java/lang/Object");
        a(linkedHashMap, "Nothing", "java/lang/Void");
        a(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : u.m("String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum")) {
            a(linkedHashMap, str2, r.m("java/lang/", str2));
        }
        for (String str3 : u.m("Iterator", "Collection", "List", "Set", "Map", "ListIterator")) {
            a(linkedHashMap, r.m("collections/", str3), r.m("java/util/", str3));
            a(linkedHashMap, r.m("collections/Mutable", str3), r.m("java/util/", str3));
        }
        a(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        a(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        while (true) {
            int i5 = i + 1;
            String strM = r.m("Function", Integer.valueOf(i));
            StringBuilder sb2 = new StringBuilder();
            String str4 = f15369a;
            sb2.append(str4);
            sb2.append("/jvm/functions/Function");
            sb2.append(i);
            a(linkedHashMap, strM, sb2.toString());
            a(linkedHashMap, r.m("reflect/KFunction", Integer.valueOf(i)), r.m(str4, "/reflect/KFunction"));
            if (i5 > 22) {
                break;
            } else {
                i = i5;
            }
        }
        for (String str5 : u.m("Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum")) {
            a(linkedHashMap, r.m(str5, ".Companion"), f15369a + "/jvm/internal/" + str5 + "CompanionObject");
        }
        b = linkedHashMap;
    }

    private static final void a(Map<String, String> map, String str, String str2) {
        map.put(f15369a + '/' + str, 'L' + str2 + ';');
    }

    public static final String b(String classId) {
        r.e(classId, "classId");
        String str = b.get(classId);
        if (str != null) {
            return str;
        }
        return 'L' + t.w(classId, '.', '$', false, 4, null) + ';';
    }
}
