.class public Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public id:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;->id:Ljava/lang/Long;

    .line 3
    iput-object p1, p0, Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;->id:Ljava/lang/Long;

    return-void
.end method
