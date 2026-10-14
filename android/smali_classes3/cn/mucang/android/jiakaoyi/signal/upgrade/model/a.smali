.class public final Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "state",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;",
        "desc",
        "",
        "(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "setDesc",
        "(Ljava/lang/String;)V",
        "getInfo",
        "()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "setInfo",
        "(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V",
        "getState",
        "()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;",
        "setState",
        "(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;)V",
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


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

.field private b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    return-object v0
.end method

.method public final c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    return-object v0
.end method
