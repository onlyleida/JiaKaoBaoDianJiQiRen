.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# instance fields
.field public notBrake:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;->notBrake:Z

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;->notBrake:Z

    const/4 v0, 0x6

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;->notBrake:Z

    return-void
.end method
