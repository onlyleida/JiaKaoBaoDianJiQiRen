package kotlin.reflect.jvm.internal.impl.metadata.jvm.a;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.n0;
import kotlin.collections.u;
import kotlin.collections.u0;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements kotlin.reflect.jvm.internal.impl.metadata.c.c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f15375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final List<String> f15376f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JvmProtoBuf.StringTableTypes f15377a;
    private final String[] b;
    private final Set<Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<JvmProtoBuf.StringTableTypes.Record> f15378d;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15379a;

        static {
            int[] iArr = new int[JvmProtoBuf.StringTableTypes.Record.Operation.values().length];
            iArr[JvmProtoBuf.StringTableTypes.Record.Operation.NONE.ordinal()] = 1;
            iArr[JvmProtoBuf.StringTableTypes.Record.Operation.INTERNAL_TO_CLASS_ID.ordinal()] = 2;
            iArr[JvmProtoBuf.StringTableTypes.Record.Operation.DESC_TO_CLASS_ID.ordinal()] = 3;
            f15379a = iArr;
        }
    }

    static {
        String strM0 = CollectionsKt___CollectionsKt.m0(u.m('k', 'o', 't', 'l', 'i', 'n'), "", null, null, 0, null, null, 62, null);
        f15375e = strM0;
        List<String> listM = u.m(r.m(strM0, "/Any"), r.m(strM0, "/Nothing"), r.m(strM0, "/Unit"), r.m(strM0, "/Throwable"), r.m(strM0, "/Number"), r.m(strM0, "/Byte"), r.m(strM0, "/Double"), r.m(strM0, "/Float"), r.m(strM0, "/Int"), r.m(strM0, "/Long"), r.m(strM0, "/Short"), r.m(strM0, "/Boolean"), r.m(strM0, "/Char"), r.m(strM0, "/CharSequence"), r.m(strM0, "/String"), r.m(strM0, "/Comparable"), r.m(strM0, "/Enum"), r.m(strM0, "/Array"), r.m(strM0, "/ByteArray"), r.m(strM0, "/DoubleArray"), r.m(strM0, "/FloatArray"), r.m(strM0, "/IntArray"), r.m(strM0, "/LongArray"), r.m(strM0, "/ShortArray"), r.m(strM0, "/BooleanArray"), r.m(strM0, "/CharArray"), r.m(strM0, "/Cloneable"), r.m(strM0, "/Annotation"), r.m(strM0, "/collections/Iterable"), r.m(strM0, "/collections/MutableIterable"), r.m(strM0, "/collections/Collection"), r.m(strM0, "/collections/MutableCollection"), r.m(strM0, "/collections/List"), r.m(strM0, "/collections/MutableList"), r.m(strM0, "/collections/Set"), r.m(strM0, "/collections/MutableSet"), r.m(strM0, "/collections/Map"), r.m(strM0, "/collections/MutableMap"), r.m(strM0, "/collections/Map.Entry"), r.m(strM0, "/collections/MutableMap.MutableEntry"), r.m(strM0, "/collections/Iterator"), r.m(strM0, "/collections/MutableIterator"), r.m(strM0, "/collections/ListIterator"), r.m(strM0, "/collections/MutableListIterator"));
        f15376f = listM;
        Iterable<IndexedValue> iterableS0 = CollectionsKt___CollectionsKt.S0(listM);
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(n0.d(v.u(iterableS0, 10)), 16));
        for (IndexedValue indexedValue : iterableS0) {
            linkedHashMap.put((String) indexedValue.d(), Integer.valueOf(indexedValue.c()));
        }
    }

    public f(JvmProtoBuf.StringTableTypes types, String[] strings) {
        Set<Integer> setQ0;
        r.e(types, "types");
        r.e(strings, "strings");
        this.f15377a = types;
        this.b = strings;
        List<Integer> localNameList = types.getLocalNameList();
        if (localNameList.isEmpty()) {
            setQ0 = u0.b();
        } else {
            r.d(localNameList, "");
            setQ0 = CollectionsKt___CollectionsKt.Q0(localNameList);
        }
        this.c = setQ0;
        ArrayList arrayList = new ArrayList();
        List<JvmProtoBuf.StringTableTypes.Record> recordList = c().getRecordList();
        arrayList.ensureCapacity(recordList.size());
        for (JvmProtoBuf.StringTableTypes.Record record : recordList) {
            int range = record.getRange();
            for (int i = 0; i < range; i++) {
                arrayList.add(record);
            }
        }
        arrayList.trimToSize();
        kotlin.v vVar = kotlin.v.f15822a;
        this.f15378d = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.c.c
    public boolean a(int i) {
        return this.c.contains(Integer.valueOf(i));
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.c.c
    public String b(int i) {
        return getString(i);
    }

    public final JvmProtoBuf.StringTableTypes c() {
        return this.f15377a;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    @Override // kotlin.reflect.jvm.internal.impl.metadata.c.c
    public String getString(int i) {
        String string;
        JvmProtoBuf.StringTableTypes.Record record = this.f15378d.get(i);
        if (record.hasString()) {
            string = record.getString();
        } else if (record.hasPredefinedIndex()) {
            List<String> list = f15376f;
            int size = list.size() - 1;
            int predefinedIndex = record.getPredefinedIndex();
            if (predefinedIndex >= 0 && predefinedIndex <= size) {
                string = list.get(record.getPredefinedIndex());
            } else {
                string = this.b[i];
            }
        } else {
            string = this.b[i];
        }
        if (record.getSubstringIndexCount() >= 2) {
            List<Integer> substringIndexList = record.getSubstringIndexList();
            r.d(substringIndexList, "substringIndexList");
            Integer begin = substringIndexList.get(0);
            Integer end = substringIndexList.get(1);
            r.d(begin, "begin");
            if (begin.intValue() >= 0) {
                int iIntValue = begin.intValue();
                r.d(end, "end");
                if (iIntValue <= end.intValue() && end.intValue() <= string.length()) {
                    r.d(string, "string");
                    string = string.substring(begin.intValue(), end.intValue());
                    r.d(string, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                }
            }
        }
        String string2 = string;
        if (record.getReplaceCharCount() >= 2) {
            List<Integer> replaceCharList = record.getReplaceCharList();
            r.d(replaceCharList, "replaceCharList");
            Integer num = replaceCharList.get(0);
            Integer num2 = replaceCharList.get(1);
            r.d(string2, "string");
            string2 = t.w(string2, (char) num.intValue(), (char) num2.intValue(), false, 4, null);
        }
        String string3 = string2;
        JvmProtoBuf.StringTableTypes.Record.Operation operation = record.getOperation();
        if (operation == null) {
            operation = JvmProtoBuf.StringTableTypes.Record.Operation.NONE;
        }
        int i2 = a.f15379a[operation.ordinal()];
        if (i2 == 2) {
            r.d(string3, "string");
            string3 = t.w(string3, '$', '.', false, 4, null);
        } else if (i2 == 3) {
            if (string3.length() >= 2) {
                r.d(string3, "string");
                string3 = string3.substring(1, string3.length() - 1);
                r.d(string3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            String string4 = string3;
            r.d(string4, "string");
            string3 = t.w(string4, '$', '.', false, 4, null);
        }
        r.d(string3, "string");
        return string3;
    }
}
