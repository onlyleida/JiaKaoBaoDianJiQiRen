.class public final Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J*\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00082\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0013H\u0007J\u0018\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\nH\u0007J\'\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0007R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;",
        "",
        "()V",
        "configList",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "loadedSuccess",
        "",
        "retryCount",
        "",
        "changeConfig",
        "",
        "activity",
        "Landroid/app/Activity;",
        "config",
        "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;",
        "value",
        "onSuccess",
        "Lkotlin/Function0;",
        "getBoolean",
        "getConfig",
        "needRetry",
        "force",
        "onLoaded",
        "getInt",
        "default",
        "loadConfig",
        "serverList",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;",
        "(ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadConfig",
        "teachbase_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;ZLjava/util/List;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->n(ZLjava/util/List;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u914d\u7f6e,code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->setCode(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->setValue(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    const-string p1, "\u4fee\u6539\u4e2d"

    const-string p2, "\u4fee\u6539\u5931\u8d25"

    invoke-virtual {v1, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 4

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onSuccess"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/f;-><init>()V

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toJSONString(list)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/i/f;->o(Lcn/mucang/jiakaoyi/uilib/i/f;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 2

    const-string v0, "$config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onSuccess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->setValue(Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z
    .locals 2

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final g(ZLkotlin/jvm/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->i(ZZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method public static final h(ZZLkotlin/jvm/b/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->d:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const-string p0, "\u914d\u7f6e\u5df2\u7ecf\u6210\u529f\u62c9\u53d6\u8fc7\uff0c\u76f4\u63a5\u8fd4\u56de"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c:I

    .line 5
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;

    const/4 p1, 0x0

    invoke-direct {v3, p2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;-><init>(Lkotlin/jvm/b/a;ZLkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic i(ZZLkotlin/jvm/b/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->h(ZZLkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final j(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;I)I
    .locals 2

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    return p1
.end method

.method public static synthetic k(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->e(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V

    return-void
.end method

.method private final n(ZLjava/util/List;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;

    invoke-direct {v0, p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$1:Ljava/lang/Object;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, v2

    goto/16 :goto_3

    :cond_3
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "\u8bbe\u5907\u53f7\u4e3a\u7a7a\uff0c\u4f7f\u7528\u672c\u5730\u9ed8\u8ba4\u914d\u7f6e"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 7
    :cond_4
    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 8
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/i/f;

    invoke-direct {p3}, Lcn/mucang/jiakaoyi/uilib/i/f;-><init>()V

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/i/f;->m()Ljava/util/List;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v2, v4

    :cond_5
    check-cast v2, Ljava/lang/String;

    const-string v6, "\u62c9\u53d6\u670d\u52a1\u7aef\u914d\u7f6e\u9879:"

    .line 10
    invoke-static {v6, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_6
    sput-boolean v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->d:Z

    .line 14
    sget-object p3, Lkotlin/v;->a:Lkotlin/v;

    .line 15
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p3

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 16
    :goto_2
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz p1, :cond_8

    .line 17
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c:I

    const/16 v6, 0xa

    if-ge p1, v6, :cond_8

    add-int/2addr p1, v5

    .line 18
    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c:I

    const-wide/16 v6, 0x3e8

    .line 19
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, v2

    .line 20
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u62c9\u53d6\u670d\u52a1\u7aef\u914d\u7f6e\u9879\u5931\u8d25\uff0c\u91cd\u8bd5:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u3002\u9519\u8bef\uff1a"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;

    iput-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->label:I

    invoke-direct {p1, v5, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->n(ZLjava/util/List;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 22
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u62c9\u53d6\u670d\u52a1\u7aef\u914d\u7f6e\u9879\u5931\u8d25\uff0c\u4f7f\u7528\u672c\u5730\u914d\u7f6e\u3002\u9519\u8bef\uff1a"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public static final o(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u914d\u7f6e\u4ec5\u4e0a\u62a5,code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/c;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V
    .locals 3

    const-string v0, "$config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->setCode(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->setValue(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 6
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/f;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/i/f;-><init>()V

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toJSONString(list)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/f;->o(Lcn/mucang/jiakaoyi/uilib/i/f;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 7
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
