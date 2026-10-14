.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;",
        "Ljava/io/Serializable;",
        "()V",
        "coordinate",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "getCoordinate",
        "()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "setCoordinate",
        "(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V",
        "enable",
        "",
        "getEnable",
        "()Z",
        "setEnable",
        "(Z)V",
        "isCamera",
        "setCamera",
        "proportion",
        "getProportion",
        "setProportion",
        "rotation",
        "getRotation",
        "setRotation",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
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
.field private coordinate:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private enable:Z

.field private isCamera:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isCamera"
    .end annotation
.end field

.field private proportion:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private rotation:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoordinate()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->coordinate:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public final getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->enable:Z

    return v0
.end method

.method public final getProportion()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->proportion:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public final getRotation()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->rotation:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->isCamera:Z

    return v0
.end method

.method public final setCamera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->isCamera:Z

    return-void
.end method

.method public final setCoordinate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->coordinate:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->enable:Z

    return-void
.end method

.method public final setProportion(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->proportion:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public final setRotation(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->rotation:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->type:Ljava/lang/String;

    return-void
.end method
