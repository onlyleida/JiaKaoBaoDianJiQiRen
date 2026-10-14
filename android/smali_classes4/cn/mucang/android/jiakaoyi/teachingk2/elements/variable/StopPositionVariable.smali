.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# instance fields
.field public center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/16 v0, 0x41

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    return-void
.end method
