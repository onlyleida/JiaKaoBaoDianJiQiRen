.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# instance fields
.field public direction:I

.field public duration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/e0;->e:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->position:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->duration:I

    return-void
.end method
