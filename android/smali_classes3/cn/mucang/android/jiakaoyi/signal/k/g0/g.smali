.class public interface abstract Lcn/mucang/android/jiakaoyi/signal/k/g0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J(\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH&J(\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\'J\u0018\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\'J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/SingleFirmwareUpgradeCallback;",
        "",
        "onFailOnTime",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "msg",
        "",
        "time",
        "",
        "isRetry",
        "",
        "onHardwareUpgrading",
        "receiveUpgradingInfo",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveUpgradingInfo;",
        "onPackageUpdateFinish",
        "onProgress",
        "progress",
        "total",
        "onReportUpgradeState",
        "uuid",
        "state",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;",
        "extraInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;",
        "onRetry",
        "onStartOnTime",
        "onSuccessOnTime",
        "onUpgradeFail",
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


# virtual methods
.method public abstract a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
.end method

.method public abstract b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
.end method

.method public abstract c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;)V
.end method

.method public abstract d(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
.end method

.method public abstract e(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
.end method

.method public abstract f(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
.end method

.method public abstract g(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
.end method

.method public abstract h(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;III)V
.end method

.method public abstract i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V
.end method
