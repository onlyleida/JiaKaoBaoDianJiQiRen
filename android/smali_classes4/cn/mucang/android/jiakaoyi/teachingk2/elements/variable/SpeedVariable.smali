.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# instance fields
.field public mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public speed:I

.field public speedMax:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/e0;->d:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->position:I

    return-void
.end method
