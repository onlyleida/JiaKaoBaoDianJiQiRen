.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# instance fields
.field public degree:D

.field public degreeRadius:D

.field public distanceRadius:D

.field public range:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/e0;->b:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->position:I

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->degreeRadius:D

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    const/16 v1, 0x3c

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;-><init>(IIII)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->range:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    return-void
.end method
