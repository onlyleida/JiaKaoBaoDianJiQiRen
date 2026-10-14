.class public final Lcn/mucang/android/facelib/model/FaceHistoryEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/facelib/model/FaceHistoryEntity;",
        "Lcn/mucang/android/core/db/IdEntity;",
        "()V",
        "mark",
        "",
        "getMark",
        "()Ljava/lang/String;",
        "setMark",
        "(Ljava/lang/String;)V",
        "mucangId",
        "getMucangId",
        "setMucangId",
        "updateTime",
        "",
        "getUpdateTime",
        "()J",
        "setUpdateTime",
        "(J)V",
        "facelib_release"
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
.field private mark:Ljava/lang/String;

.field private mucangId:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->mark:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->mucangId:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->updateTime:J

    return-void
.end method


# virtual methods
.method public final getMark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->mark:Ljava/lang/String;

    return-object v0
.end method

.method public final getMucangId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->mucangId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->updateTime:J

    return-wide v0
.end method

.method public final setMark(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->mark:Ljava/lang/String;

    return-void
.end method

.method public final setMucangId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->mucangId:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->updateTime:J

    return-void
.end method
