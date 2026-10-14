.class public final Lcn/mucang/jiakaoyi/uilib/rule/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0002J \u0010\u000b\u001a\u00020\n2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/RuleSyncManager;",
        "",
        "()V",
        "retrySyncMyData",
        "",
        "examSiteId",
        "",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "recordActionLog",
        "",
        "syncBatch",
        "list",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
        "syncMyData",
        "uilib_release"
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/rule/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/j0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/rule/j0;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rule/j0;->a:Lcn/mucang/jiakaoyi/uilib/rule/j0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->g(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    return-void
.end method

.method private final b(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcn/mucang/jiakaoyi/uilib/m/b;->u(Ljava/lang/Long;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "\u540c\u6b65\u6211\u7684\u89c4\u5219\u5931\u8d25"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcn/mucang/jiakaoyi/uilib/rule/j0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->b(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/jiakaoyi/uilib/rule/j0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->e(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    return-void
.end method

.method private static final g(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V
    .locals 7

    const-string v0, "$keMu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u62c9\u4e2a\u4eba\u89c4\u5219\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", \u79d1\u76ee\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcn/mucang/jiakaoyi/uilib/m/b;->u(Ljava/lang/Long;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z

    move-result v0

    const-string v1, "\u89c4\u5219\u62c9\u53d6\u662f\u5426\u6210\u529f\uff1a"

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuleSyncManager : \u540c\u6b65\u6211\u7684\u89c4\u5219\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 5
    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-string v0, "\u8bb0\u5f55\u4e00\u6b21\u91cd\u7f6e\u62c9\u53d6\u670d\u52a1\u5668\u89c4\u5219\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    :cond_0
    const-string p3, "\u540c\u6b65\u6211\u7684\u89c4\u5219\u5931\u8d25"

    .line 6
    invoke-static {p3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rule/j0;->a:Lcn/mucang/jiakaoyi/uilib/rule/j0;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-wide v1, p0

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->c(Lcn/mucang/jiakaoyi/uilib/rule/j0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")Z"
        }
    .end annotation

    const-string v0, "keMu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/n;

    invoke-direct {v0, p2}, Lcn/mucang/jiakaoyi/uilib/i/n;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/i/n;->p(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "syncBatch rule \uff1a "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final e(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V
    .locals 1

    const-string v0, "keMu"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/v;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/rule/v;-><init>(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->b(Ljava/lang/Runnable;)V

    return-void
.end method
