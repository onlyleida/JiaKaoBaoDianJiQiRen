.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;
.super Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->StopCar:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    return-void
.end method
