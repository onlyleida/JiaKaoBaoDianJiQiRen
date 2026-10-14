.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# instance fields
.field public centerCoordinate:Z

.field public radius:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/e0;->b:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->position:I

    const/16 v0, 0x3f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->radius:D

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->centerCoordinate:Z

    return-void
.end method
