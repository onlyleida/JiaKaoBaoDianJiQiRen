.class public final Lcn/mucang/android/jiakaoyi/k3setting/teach/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachDataLoader;",
        "",
        "()V",
        "loadTeachData",
        "",
        "ruleExamSiteId",
        "",
        "finishCallback",
        "Lkotlin/Function0;",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/k3setting/teach/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;->a:Lcn/mucang/android/jiakaoyi/k3setting/teach/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;->f(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;->e(Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/k3setting/teach/w;Ljava/lang/String;Lkotlin/jvm/b/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;->c(Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final e(Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 2

    const-string v0, "$ruleExamSiteId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u62c9\u53d6\u6559\u5b66\u6570\u636e\u5931\u8d25:"

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/b;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->transformTeachData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createDefault()Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->saveTeachDataToLocal(Ljava/lang/String;Ljava/util/List;)V

    .line 7
    new-instance p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/f;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/f;-><init>(Lkotlin/jvm/b/a;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Lkotlin/jvm/b/a;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ruleExamSiteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/g;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/g;-><init>(Ljava/lang/String;Lkotlin/jvm/b/a;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
