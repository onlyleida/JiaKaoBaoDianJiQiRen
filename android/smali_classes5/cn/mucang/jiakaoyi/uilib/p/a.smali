.class public final Lcn/mucang/jiakaoyi/uilib/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/manager/SignalValueManager;",
        "",
        "()V",
        "isSetupDefaultValue",
        "",
        "loadReverseSignals",
        "uploadReverseSignals",
        "canTry",
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/p/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/p/a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/p/a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/p/a;->a:Lcn/mucang/jiakaoyi/uilib/p/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/p/a;ZILjava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/p/a;->c(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/p;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/p;-><init>()V

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/i/p;->m()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->i()Ljava/util/Set;

    move-result-object v2

    const-string v3, "getInstance().reverseConfig"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;

    .line 5
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;->getSignalId()I

    move-result v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 7
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;->getStatus()Z

    move-result v3

    if-eq v3, v5, :cond_1

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u53cd\u8f6c\u914d\u7f6e\u6570\u636e\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method

.method public final c(Z)Z
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;

    invoke-direct {v6}, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;-><init>()V

    .line 5
    iget-object v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    const-string v8, "carSignal.signalName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;->setName(Ljava/lang/String;)V

    .line 6
    iget v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    invoke-virtual {v6, v7}, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;->setSignalId(I)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->m(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z

    move-result v5

    invoke-virtual {v6, v5}, Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;->setStatus(Z)V

    .line 8
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/q;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/q;-><init>()V

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/q;->m(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-static {v1}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0a\u4f20\u53cd\u8f6c\u4fe1\u53f7\u5931\u8d25 \uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x2710

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 13
    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/p/a;->c(Z)Z

    :cond_1
    return v0
.end method
