.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;
.super Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;",
        "()V",
        "viewAngle",
        "",
        "getViewAngle",
        "()F",
        "setViewAngle",
        "(F)V",
        "viewPosition",
        "",
        "getViewPosition",
        "()I",
        "setViewPosition",
        "(I)V",
        "TeachingK2_release"
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
.field private viewAngle:F

.field private viewPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;-><init>()V

    const-string v0, "201"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->setType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getViewAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;->viewAngle:F

    return v0
.end method

.method public final getViewPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;->viewPosition:I

    return v0
.end method

.method public final setViewAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;->viewAngle:F

    return-void
.end method

.method public final setViewPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;->viewPosition:I

    return-void
.end method
