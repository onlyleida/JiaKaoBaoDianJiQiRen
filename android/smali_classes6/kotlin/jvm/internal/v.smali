.class public Lkotlin/jvm/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/jvm/internal/w;

.field private static final b:[Lkotlin/reflect/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.l"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/w;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/w;

    invoke-direct {v0}, Lkotlin/jvm/internal/w;-><init>()V

    :goto_1
    sput-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/reflect/d;

    .line 4
    sput-object v0, Lkotlin/jvm/internal/v;->b:[Lkotlin/reflect/d;

    return-void
.end method

.method public static a(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/g;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->a(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lkotlin/reflect/d;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lkotlin/reflect/f;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/w;->c(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/f;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/f;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/w;->c(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/f;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/i;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->d(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/i;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->e(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/k;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->f(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/k;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/m;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->g(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/m;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/n;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/n;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/o;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->i(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/o;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lkotlin/jvm/internal/p;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->j(Lkotlin/jvm/internal/p;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/v;->a:Lkotlin/jvm/internal/w;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/w;->k(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
