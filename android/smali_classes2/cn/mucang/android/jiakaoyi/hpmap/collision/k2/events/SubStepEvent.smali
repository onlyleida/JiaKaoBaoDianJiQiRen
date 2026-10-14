.class public final Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
        "Ljava/io/Serializable;",
        "subStep",
        "",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "subStepName",
        "",
        "(ILcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V",
        "getStep",
        "()Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "getSubStep",
        "()I",
        "getSubStepName",
        "()Ljava/lang/String;",
        "hpmap_release"
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
.field private final step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private final subStep:I

.field private final subStepName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V
    .locals 1

    const-string v0, "step"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subStepName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->subStep:I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->subStepName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public final getSubStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->subStep:I

    return v0
.end method

.method public final getSubStepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->subStepName:Ljava/lang/String;

    return-object v0
.end method
