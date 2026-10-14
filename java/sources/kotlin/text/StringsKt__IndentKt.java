package kotlin.text;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0002\b\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002¢\u0006\u0002\b\u0007\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\b¢\u0006\u0002\b\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002¨\u0006\u0015"}, d2 = {"getIndentFunction", "Lkotlin/Function1;", "", "indent", "getIndentFunction$StringsKt__IndentKt", "indentWidth", "", "indentWidth$StringsKt__IndentKt", "prependIndent", "reindent", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "replaceIndent", "newIndent", "replaceIndentByMargin", "marginPrefix", "trimIndent", "trimMargin", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xi = 1, xs = "kotlin/text/StringsKt")
public class StringsKt__IndentKt extends m {
    private static final Function1<String, String> b(final String str) {
        return str.length() == 0 ? new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String line) {
                kotlin.jvm.internal.r.e(line, "line");
                return line;
            }
        } : new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String line) {
                kotlin.jvm.internal.r.e(line, "line");
                return str + line;
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    private static final int c(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (!b.c(str.charAt(i))) {
                if (i == -1) {
                    return str.length();
                }
                return i;
            }
            i++;
        }
        i = -1;
        if (i == -1) {
            return str.length();
        }
        return i;
    }

    public static final String d(String replaceIndent, String newIndent) throws IOException {
        String strInvoke;
        kotlin.jvm.internal.r.e(replaceIndent, "$this$replaceIndent");
        kotlin.jvm.internal.r.e(newIndent, "newIndent");
        List<String> listC0 = StringsKt__StringsKt.c0(replaceIndent);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listC0) {
            if (!t.r((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(c((String) it.next())));
        }
        Integer num = (Integer) kotlin.collections.s.t0(arrayList2);
        int i = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = replaceIndent.length() + (newIndent.length() * listC0.size());
        Function1<String, String> function1B = b(newIndent);
        int iL = kotlin.collections.u.l(listC0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listC0) {
            int i2 = i + 1;
            String str = null;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            String str2 = (String) obj2;
            if ((i != 0 && i != iL) || !t.r(str2)) {
                String strK0 = v.K0(str2, iIntValue);
                str = (strK0 == null || (strInvoke = function1B.invoke(strK0)) == null) ? str2 : strInvoke;
            }
            if (str != null) {
                arrayList3.add(str);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        kotlin.collections.s.k0(arrayList3, sb, "\n", null, null, 0, null, null, 124, null);
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    public static String e(String trimIndent) {
        kotlin.jvm.internal.r.e(trimIndent, "$this$trimIndent");
        return d(trimIndent, "");
    }
}
