.class public final Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus$Companion;",
        "",
        "()V",
        "getB2RobotCheckList",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "getRobotCheckList",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 4
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_10101:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_10102:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_10103:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
