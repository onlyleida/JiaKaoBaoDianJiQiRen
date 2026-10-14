package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class PredefinedEnhancementInfoKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f15151a = new e(NullabilityQualifier.NULLABLE, null, false, false, 8, null);
    private static final e b;
    private static final e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, h> f15152d;

    static {
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        b = new e(nullabilityQualifier, null, false, false, 8, null);
        c = new e(nullabilityQualifier, null, true, false, 8, null);
        final SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f15194a;
        final String strH = signatureBuildingComponents.h("Object");
        final String strG = signatureBuildingComponents.g("Predicate");
        final String strG2 = signatureBuildingComponents.g("Function");
        final String strG3 = signatureBuildingComponents.g("Consumer");
        final String strG4 = signatureBuildingComponents.g("BiFunction");
        final String strG5 = signatureBuildingComponents.g("BiConsumer");
        final String strG6 = signatureBuildingComponents.g("UnaryOperator");
        final String strI = signatureBuildingComponents.i("stream/Stream");
        final String strI2 = signatureBuildingComponents.i("Optional");
        i iVar = new i();
        new i.a(iVar, signatureBuildingComponents.i("Iterator")).a("forEachRemaining", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strG3, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        new i.a(iVar, signatureBuildingComponents.h("Iterable")).a("spliterator", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$2$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.d(signatureBuildingComponents.i("Spliterator"), PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        i.a aVar = new i.a(iVar, signatureBuildingComponents.i("Collection"));
        aVar.a("removeIf", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strG, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
                function.e(JvmPrimitiveType.BOOLEAN);
            }
        });
        aVar.a("stream", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$3$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.d(strI, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar.a("parallelStream", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$3$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.d(strI, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        new i.a(iVar, signatureBuildingComponents.i("List")).a("replaceAll", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$4$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strG6, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        i.a aVar2 = new i.a(iVar, signatureBuildingComponents.i("Map"));
        aVar2.a("forEach", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strG5, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar2.a("putIfAbsent", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.d(strH, PredefinedEnhancementInfoKt.f15151a);
            }
        });
        aVar2.a("replace", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.d(strH, PredefinedEnhancementInfoKt.f15151a);
            }
        });
        aVar2.a("replace", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.e(JvmPrimitiveType.BOOLEAN);
            }
        });
        aVar2.a("replaceAll", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar2.a("compute", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.f15151a, PredefinedEnhancementInfoKt.f15151a);
                function.d(strH, PredefinedEnhancementInfoKt.f15151a);
            }
        });
        aVar2.a("computeIfAbsent", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strG2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
                function.d(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar2.a("computeIfPresent", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.f15151a);
                function.d(strH, PredefinedEnhancementInfoKt.f15151a);
            }
        });
        aVar2.a("merge", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.c);
                function.c(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.f15151a);
                function.d(strH, PredefinedEnhancementInfoKt.f15151a);
            }
        });
        i.a aVar3 = new i.a(iVar, strI2);
        aVar3.a("empty", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$6$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.d(strI2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("of", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$6$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.c);
                function.d(strI2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("ofNullable", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$6$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.f15151a);
                function.d(strI2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("get", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$6$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.d(strH, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("ifPresent", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$6$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strG3, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        new i.a(iVar, signatureBuildingComponents.h("ref/Reference")).a("get", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$7$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.d(strH, PredefinedEnhancementInfoKt.f15151a);
            }
        });
        new i.a(iVar, strG).a("test", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$8$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.e(JvmPrimitiveType.BOOLEAN);
            }
        });
        new i.a(iVar, signatureBuildingComponents.g("BiPredicate")).a("test", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$9$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.e(JvmPrimitiveType.BOOLEAN);
            }
        });
        new i.a(iVar, strG3).a("accept", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$10$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new i.a(iVar, strG5).a("accept", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$11$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new i.a(iVar, strG2).a("apply", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$12$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.d(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new i.a(iVar, strG4).a("apply", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$13$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.c(strH, PredefinedEnhancementInfoKt.b);
                function.d(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new i.a(iVar, signatureBuildingComponents.g("Supplier")).a("get", new Function1<i.a.C0334a, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$14$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(i.a.C0334a c0334a) {
                invoke2(c0334a);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(i.a.C0334a function) {
                r.e(function, "$this$function");
                function.d(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        f15152d = iVar.b();
    }

    public static final Map<String, h> d() {
        return f15152d;
    }
}
