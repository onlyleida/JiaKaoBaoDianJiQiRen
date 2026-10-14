.class public final Lkotlin/reflect/jvm/internal/impl/load/java/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/name/c;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/name/c;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/load/java/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/load/java/t<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/reflect/jvm/internal/impl/load/java/o;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "org.jspecify.nullness"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/n;->a:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v2, "org.checkerframework.checker.nullness.compatqual"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/n;->b:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 3
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;

    const/16 v3, 0x10

    new-array v3, v3, [Lkotlin/Pair;

    .line 4
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v5, "org.jetbrains.annotations"

    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/o;->d:Lkotlin/reflect/jvm/internal/impl/load/java/o$a;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 5
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v6, "androidx.annotation"

    invoke-direct {v4, v6}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 6
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v7, "android.support.annotation"

    invoke-direct {v4, v7}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 7
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v7, "android.annotation"

    invoke-direct {v4, v7}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    .line 8
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v7, "com.android.annotations"

    invoke-direct {v4, v7}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v3, v7

    .line 9
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v7, "org.eclipse.jdt.annotation"

    invoke-direct {v4, v7}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v3, v7

    .line 10
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v7, "org.checkerframework.checker.nullness.qual"

    invoke-direct {v4, v7}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v3, v7

    .line 11
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v3, v4

    .line 12
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v8, "javax.annotation"

    invoke-direct {v1, v8}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x8

    aput-object v1, v3, v8

    .line 13
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v8, "edu.umd.cs.findbugs.annotations"

    invoke-direct {v1, v8}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x9

    aput-object v1, v3, v8

    .line 14
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v8, "io.reactivex.annotations"

    invoke-direct {v1, v8}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0xa

    aput-object v1, v3, v8

    .line 15
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v8, "androidx.annotation.RecentlyNullable"

    invoke-direct {v1, v8}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/o;

    .line 16
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v8

    move-object v10, v15

    .line 17
    invoke-direct/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/o;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/d;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;ILkotlin/jvm/internal/o;)V

    invoke-static {v1, v8}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0xb

    aput-object v1, v3, v8

    .line 18
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v8, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v1, v8}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/o;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/d;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;ILkotlin/jvm/internal/o;)V

    invoke-static {v1, v8}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0xc

    aput-object v1, v3, v8

    .line 19
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v8, "lombok"

    invoke-direct {v1, v8}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v5, 0xd

    aput-object v1, v3, v5

    .line 20
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/o;

    .line 21
    new-instance v5, Lkotlin/d;

    invoke-direct {v5, v6, v7}, Lkotlin/d;-><init>(II)V

    .line 22
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->STRICT:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    .line 23
    invoke-direct {v1, v15, v5, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/o;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/d;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;)V

    invoke-static {v0, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v3, v1

    .line 24
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "io.reactivex.rxjava3.annotations"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/o;

    .line 25
    new-instance v5, Lkotlin/d;

    invoke-direct {v5, v6, v4}, Lkotlin/d;-><init>(II)V

    .line 26
    invoke-direct {v1, v15, v5, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/o;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/d;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;)V

    invoke-static {v0, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v3, v1

    .line 27
    invoke-static {v3}, Lkotlin/collections/l0;->k([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 28
    invoke-direct {v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;-><init>(Ljava/util/Map;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/n;->c:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    .line 29
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/o;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/o;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/d;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;ILkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/n;->d:Lkotlin/reflect/jvm/internal/impl/load/java/o;

    return-void
.end method

.method public static final a(Lkotlin/d;)Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;
    .locals 6

    const-string v0, "configuredKotlinVersion"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/n;->d:Lkotlin/reflect/jvm/internal/impl/load/java/o;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->d()Lkotlin/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->d()Lkotlin/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lkotlin/d;->a(Lkotlin/d;)I

    move-result p0

    if-gtz p0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->b()Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->c()Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 4
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->c(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object v2

    .line 5
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Ljava/util/Map;ILkotlin/jvm/internal/o;)V

    return-object p0
.end method

.method public static synthetic b(Lkotlin/d;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lkotlin/d;->e:Lkotlin/d;

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->a(Lkotlin/d;)Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;
    .locals 1

    const-string v0, "globalReportLevel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;
    .locals 3

    const-string v0, "annotationFqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a:Lkotlin/reflect/jvm/internal/impl/load/java/t$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/t$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/t;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->g(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/load/java/t;Lkotlin/d;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p0

    return-object p0
.end method

.method public static final e()Lkotlin/reflect/jvm/internal/impl/name/c;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/n;->a:Lkotlin/reflect/jvm/internal/impl/name/c;

    return-object v0
.end method

.method public static final f(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/load/java/t;Lkotlin/d;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/c;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/t<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;",
            ">;",
            "Lkotlin/d;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;"
        }
    .end annotation

    const-string v0, "annotation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuredReportLevels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuredKotlinVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a(Lkotlin/reflect/jvm/internal/impl/name/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-nez p1, :cond_2

    .line 2
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/n;->c:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a(Lkotlin/reflect/jvm/internal/impl/name/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/o;

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->IGNORE:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->d()Lkotlin/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->d()Lkotlin/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lkotlin/d;->a(Lkotlin/d;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->b()Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->c()Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    return-object p1
.end method

.method public static synthetic g(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/load/java/t;Lkotlin/d;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lkotlin/d;->e:Lkotlin/d;

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->f(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/load/java/t;Lkotlin/d;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p0

    return-object p0
.end method
